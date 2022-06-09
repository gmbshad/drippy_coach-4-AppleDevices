.class public Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;
.super Landroid/app/Activity;
.source "TransparentLauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance v2, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;

    invoke-direct {v2, p0}, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;-><init>(Landroid/app/Activity;)V

    new-instance v3, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity$1;

    invoke-direct {v3, p0, v0, v1}, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity$1;-><init>(Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;J)V

    invoke-virtual {v2, v3}, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->selectHostBrowser(Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;)V

    .line 42
    return-void
.end method

.method protected onHostBrowserSelected(Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)V
    .registers 3

    .prologue
    .line 45
    if-eqz p1, :cond_c

    .line 46
    invoke-virtual {p0}, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->grantUriPermissionToHostBrowserIfShare(Landroid/content/Context;Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)V

    .line 47
    invoke-static {p0, p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncher;->launch(Landroid/content/Context;Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)V

    .line 49
    :cond_c
    return-void
.end method
