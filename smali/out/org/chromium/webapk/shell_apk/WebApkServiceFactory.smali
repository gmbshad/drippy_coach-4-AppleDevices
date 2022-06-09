.class public Lorg/chromium/webapk/shell_apk/WebApkServiceFactory;
.super Landroid/app/Service;
.source "WebApkServiceFactory.java"


# static fields
.field public static final KEY_HOST_BROWSER_UID:Ljava/lang/String; = "host_browser_uid"

.field private static final KEY_SMALL_ICON_ID:Ljava/lang/String; = "small_icon_id"

.field private static final TAG:Ljava/lang/String; = "cr_WebApkServiceFactory"

.field private static final WEBAPK_SERVICE_IMPL_CLASS_NAME:Ljava/lang/String; = "org.chromium.webapk.lib.runtime_library.WebApkServiceImpl"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 44
    const-string v0, "org.chromium.webapk.lib.runtime_library.WebApkServiceImpl"

    .line 45
    invoke-static {p0, v0}, Lorg/chromium/webapk/shell_apk/HostBrowserClassLoader;->getClassLoaderInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 46
    if-nez v0, :cond_12

    .line 47
    const-string v0, "cr_WebApkServiceFactory"

    const-string v2, "Unable to create ClassLoader."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 66
    :goto_11
    return-object v0

    .line 52
    :cond_12
    :try_start_12
    const-string v2, "org.chromium.webapk.lib.runtime_library.WebApkServiceImpl"

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 54
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 56
    invoke-static {p0}, Lorg/chromium/webapk/shell_apk/HostBrowserUtils;->getHostBrowserUid(Landroid/content/Context;)I

    move-result v3

    .line 57
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string v4, "small_icon_id"

    sget v5, Lorg/chromium/webapk/R$drawable;->notification_badge:I

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    const-string v4, "host_browser_uid"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 61
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 62
    new-instance v2, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;

    invoke-direct {v2, p0, v0, v3}, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;-><init>(Landroid/content/Context;Landroid/os/IBinder;I)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_52} :catch_54

    move-object v0, v2

    goto :goto_11

    .line 63
    :catch_54
    move-exception v0

    .line 64
    const-string v2, "cr_WebApkServiceFactory"

    const-string v3, "Unable to create WebApkServiceImpl."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 66
    goto :goto_11
.end method
