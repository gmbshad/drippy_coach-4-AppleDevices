.class public Lorg/chromium/webapk/shell_apk/h2o/H2OTransparentLauncherActivity;
.super Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;
.source "H2OTransparentLauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;-><init>()V

    return-void
.end method

.method private relaunchIfNeeded(Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)Z
    .registers 9

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/chromium/webapk/shell_apk/h2o/H2OTransparentLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    const/4 v6, 0x0

    .line 55
    invoke-static {v0}, Lorg/chromium/webapk/shell_apk/h2o/H2OOpaqueMainActivity;->checkComponentEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 56
    new-instance v6, Landroid/content/ComponentName;

    const-class v1, Lorg/chromium/webapk/shell_apk/h2o/H2OMainActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    :cond_12
    if-nez v6, :cond_16

    .line 60
    const/4 v0, 0x0

    .line 66
    :goto_15
    return v0

    .line 63
    :cond_16
    invoke-virtual {p0}, Lorg/chromium/webapk/shell_apk/h2o/H2OTransparentLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/webapk/shell_apk/h2o/H2OTransparentLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 64
    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getSelectedShareTargetActivityClassName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    .line 63
    invoke-static/range {v1 .. v6}, Lorg/chromium/webapk/shell_apk/h2o/H2OLauncher;->copyIntentExtrasAndLaunch(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 66
    const/4 v0, 0x1

    goto :goto_15
.end method


# virtual methods
.method protected onHostBrowserSelected(Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)V
    .registers 9

    .prologue
    .line 22
    if-nez p1, :cond_3

    .line 40
    :cond_2
    :goto_2
    return-void

    .line 25
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/webapk/shell_apk/h2o/H2OTransparentLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->grantUriPermissionToHostBrowserIfShare(Landroid/content/Context;Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)V

    .line 27
    invoke-direct {p0, p1}, Lorg/chromium/webapk/shell_apk/h2o/H2OTransparentLauncherActivity;->relaunchIfNeeded(Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 36
    invoke-virtual {p0}, Lorg/chromium/webapk/shell_apk/h2o/H2OTransparentLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 37
    invoke-virtual {p0}, Lorg/chromium/webapk/shell_apk/h2o/H2OTransparentLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 38
    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getSelectedShareTargetActivityClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getLaunchTimeMs()J

    move-result-wide v4

    new-instance v6, Landroid/content/ComponentName;

    const-class v0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;

    invoke-direct {v6, v1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    invoke-static/range {v1 .. v6}, Lorg/chromium/webapk/shell_apk/h2o/H2OLauncher;->copyIntentExtrasAndLaunch(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLandroid/content/ComponentName;)V

    goto :goto_2
.end method
