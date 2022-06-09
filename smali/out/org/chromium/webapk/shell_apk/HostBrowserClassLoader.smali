.class public Lorg/chromium/webapk/shell_apk/HostBrowserClassLoader;
.super Ljava/lang/Object;
.source "HostBrowserClassLoader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEX_DIR_NAME:Ljava/lang/String; = "dex"

.field private static final REMOTE_VERSION_CODE_PREF:Ljava/lang/String; = "org.chromium.webapk.shell_apk.version_code"

.field private static final RUNTIME_DEX_VERSION_PREF:Ljava/lang/String; = "org.chromium.webapk.shell_apk.dex_version"

.field private static final TAG:Ljava/lang/String; = "cr_HostBrowserClassLoader"

.field private static sClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lorg/chromium/webapk/shell_apk/HostBrowserClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/chromium/webapk/shell_apk/HostBrowserClassLoader;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assertRunningOnUiThread()V
    .registers 2

    .prologue
    .line 188
    sget-boolean v0, Lorg/chromium/webapk/shell_apk/HostBrowserClassLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_18

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 189
    :cond_18
    return-void
.end method

.method public static canReuseClassLoaderInstance(Landroid/content/Context;Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 110
    const-string v1, "com.sec.terrace.browser.webapk.shell_apk"

    .line 111
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 112
    const-string v2, "org.chromium.webapk.shell_apk.version_code"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 113
    invoke-static {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserClassLoader;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    .line 114
    if-ne v2, v1, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method private static checkForNewRuntimeDexVersion(Landroid/content/SharedPreferences;Landroid/content/Context;)I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 130
    invoke-static {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserClassLoader;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    .line 131
    const-string v2, "org.chromium.webapk.shell_apk.version_code"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 132
    if-ne v2, v1, :cond_e

    .line 141
    :goto_d
    return v0

    .line 136
    :cond_e
    const-string v0, "webapk_dex_version.txt"

    invoke-static {p1, v0}, Lorg/chromium/webapk/shell_apk/HostBrowserClassLoader;->readAssetContentsToInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 137
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 138
    const-string v3, "org.chromium.webapk.shell_apk.version_code"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 139
    const-string v1, "org.chromium.webapk.shell_apk.dex_version"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_d
.end method

.method public static createClassLoader(Landroid/content/Context;Landroid/content/Context;Lorg/chromium/webapk/shell_apk/DexLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 10

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 83
    const-string v0, "com.sec.terrace.browser.webapk.shell_apk"

    .line 84
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 86
    const-string v1, "org.chromium.webapk.shell_apk.dex_version"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 87
    invoke-static {v0, p1}, Lorg/chromium/webapk/shell_apk/HostBrowserClassLoader;->checkForNewRuntimeDexVersion(Landroid/content/SharedPreferences;Landroid/content/Context;)I

    move-result v0

    .line 88
    if-ne v0, v2, :cond_15

    move v0, v1

    .line 91
    :cond_15
    const-string v2, "dex"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 92
    if-eq v0, v1, :cond_27

    .line 93
    const-string v1, "cr_HostBrowserClassLoader"

    const-string v2, "Delete cached dex files."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p2, v5}, Lorg/chromium/webapk/shell_apk/DexLoader;->deleteCachedDexes(Ljava/io/File;)V

    .line 97
    :cond_27
    invoke-static {v0}, Lorg/chromium/webapk/lib/common/WebApkVersionUtils;->getRuntimeDexName(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    new-instance v4, Ljava/io/File;

    const-string v0, "dex"

    .line 99
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p2

    move-object v1, p1

    move-object v3, p3

    .line 100
    invoke-virtual/range {v0 .. v5}, Lorg/chromium/webapk/shell_apk/DexLoader;->load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getClassLoaderInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 4

    .prologue
    .line 58
    invoke-static {}, Lorg/chromium/webapk/shell_apk/HostBrowserClassLoader;->assertRunningOnUiThread()V

    .line 59
    invoke-static {p0}, Lorg/chromium/webapk/shell_apk/HostBrowserUtils;->getHostBrowserContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 60
    if-nez v0, :cond_12

    .line 61
    const-string v0, "cr_HostBrowserClassLoader"

    const-string v1, "Failed to get remote context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x0

    .line 69
    :goto_11
    return-object v0

    .line 65
    :cond_12
    sget-object v1, Lorg/chromium/webapk/shell_apk/HostBrowserClassLoader;->sClassLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_1c

    invoke-static {p0, v0}, Lorg/chromium/webapk/shell_apk/HostBrowserClassLoader;->canReuseClassLoaderInstance(Landroid/content/Context;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 66
    :cond_1c
    new-instance v1, Lorg/chromium/webapk/shell_apk/DexLoader;

    invoke-direct {v1}, Lorg/chromium/webapk/shell_apk/DexLoader;-><init>()V

    .line 67
    invoke-static {p0, v0, v1, p1}, Lorg/chromium/webapk/shell_apk/HostBrowserClassLoader;->createClassLoader(Landroid/content/Context;Landroid/content/Context;Lorg/chromium/webapk/shell_apk/DexLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lorg/chromium/webapk/shell_apk/HostBrowserClassLoader;->sClassLoader:Ljava/lang/ClassLoader;

    .line 69
    :cond_27
    sget-object v0, Lorg/chromium/webapk/shell_apk/HostBrowserClassLoader;->sClassLoader:Ljava/lang/ClassLoader;

    goto :goto_11
.end method

.method private static getVersionCode(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 149
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    .line 155
    :goto_f
    return v0

    .line 152
    :catch_10
    move-exception v0

    .line 153
    const-string v0, "cr_HostBrowserClassLoader"

    const-string v1, "Failed to get remote package info."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, -0x1

    goto :goto_f
.end method

.method private static readAssetContentsToInt(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 167
    const/4 v0, -0x1

    .line 169
    :try_start_2
    new-instance v1, Ljava/util/Scanner;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_1c
    .catchall {:try_start_2 .. :try_end_f} :catchall_26

    .line 170
    :try_start_f
    invoke-virtual {v1}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    .line 171
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_34
    .catchall {:try_start_f .. :try_end_16} :catchall_31

    .line 174
    if-eqz v1, :cond_1b

    .line 176
    :try_start_18
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_2d

    .line 181
    :cond_1b
    :goto_1b
    return v0

    .line 172
    :catch_1c
    move-exception v1

    move-object v1, v2

    .line 174
    :goto_1e
    if-eqz v1, :cond_1b

    .line 176
    :try_start_20
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_1b

    .line 177
    :catch_24
    move-exception v1

    goto :goto_1b

    .line 174
    :catchall_26
    move-exception v0

    :goto_27
    if-eqz v2, :cond_2c

    .line 176
    :try_start_29
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2f

    .line 180
    :cond_2c
    :goto_2c
    throw v0

    .line 177
    :catch_2d
    move-exception v1

    goto :goto_1b

    :catch_2f
    move-exception v1

    goto :goto_2c

    .line 174
    :catchall_31
    move-exception v0

    move-object v2, v1

    goto :goto_27

    .line 172
    :catch_34
    move-exception v2

    goto :goto_1e
.end method
