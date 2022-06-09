.class public Lorg/chromium/webapk/shell_apk/DexLoader;
.super Ljava/lang/Object;
.source "DexLoader.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "cr.DexLoader"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deletePath(Ljava/io/File;)V
    .registers 5

    .prologue
    .line 30
    if-nez p0, :cond_3

    .line 46
    :cond_2
    :goto_2
    return-void

    .line 34
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 35
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 36
    if-eqz v1, :cond_1b

    .line 37
    array-length v2, v1

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v2, :cond_1b

    aget-object v3, v1, v0

    .line 38
    invoke-static {v3}, Lorg/chromium/webapk/shell_apk/DexLoader;->deletePath(Ljava/io/File;)V

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 43
    :cond_1b
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 44
    const-string v0, "cr.DexLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static extractAsset(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 115
    .line 118
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_3a

    move-result-object v3

    .line 119
    :try_start_a
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_3e

    .line 120
    const/16 v2, 0x4000

    :try_start_11
    new-array v2, v2, [B

    .line 122
    :goto_13
    const/4 v4, 0x0

    const/16 v5, 0x4000

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2e

    .line 123
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_21} :catch_22

    goto :goto_13

    .line 128
    :catch_22
    move-exception v2

    .line 129
    :goto_23
    if-eqz v3, :cond_28

    .line 131
    :try_start_25
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_36

    .line 135
    :cond_28
    :goto_28
    if-eqz v1, :cond_2d

    .line 137
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_38

    .line 142
    :cond_2d
    :goto_2d
    return v0

    .line 125
    :cond_2e
    :try_start_2e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 126
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_22

    .line 127
    const/4 v0, 0x1

    goto :goto_2d

    .line 132
    :catch_36
    move-exception v2

    goto :goto_28

    .line 138
    :catch_38
    move-exception v1

    goto :goto_2d

    .line 128
    :catch_3a
    move-exception v1

    move-object v1, v2

    move-object v3, v2

    goto :goto_23

    :catch_3e
    move-exception v1

    move-object v1, v2

    goto :goto_23
.end method

.method private static tryCreatingClassLoader(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/lang/ClassLoader;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 158
    :try_start_1
    new-instance v0, Ldalvik/system/BaseDexClassLoader;

    .line 159
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v2, p2, v3, v4}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 162
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_14

    move-object v1, v0

    .line 169
    :goto_13
    return-object v1

    .line 164
    :catch_14
    move-exception v0

    move-object v2, v0

    .line 165
    if-nez p2, :cond_43

    move-object v0, v1

    .line 166
    :goto_19
    const-string v3, "cr.DexLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load dex from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with optimized directory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    .line 165
    :cond_43
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method


# virtual methods
.method public deleteCachedDexes(Ljava/io/File;)V
    .registers 2

    .prologue
    .line 103
    invoke-static {p1}, Lorg/chromium/webapk/shell_apk/DexLoader;->deletePath(Ljava/io/File;)V

    .line 104
    return-void
.end method

.method public load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/lang/ClassLoader;
    .registers 14

    .prologue
    const/4 v1, 0x0

    .line 62
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p5, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    if-eqz p4, :cond_1b

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 70
    invoke-static {p3, p4, v1}, Lorg/chromium/webapk/shell_apk/DexLoader;->tryCreatingClassLoader(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_1b

    .line 94
    :goto_1a
    return-object v0

    .line 78
    :cond_1b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_48

    .line 79
    :cond_2b
    invoke-virtual {p5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_39

    invoke-virtual {p5}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_39

    move-object v0, v1

    .line 80
    goto :goto_1a

    .line 83
    :cond_39
    invoke-static {p1, p2, v2}, Lorg/chromium/webapk/shell_apk/DexLoader;->extractAsset(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 84
    const-string v0, "cr.DexLoader"

    const-string v2, "Could not extract dex from assets"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 85
    goto :goto_1a

    .line 89
    :cond_48
    new-instance v0, Ljava/io/File;

    const-string v3, "optimized"

    invoke-direct {v0, p5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_5d

    move-object v0, v1

    .line 91
    goto :goto_1a

    .line 94
    :cond_5d
    invoke-static {p3, v2, v0}, Lorg/chromium/webapk/shell_apk/DexLoader;->tryCreatingClassLoader(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1a
.end method
