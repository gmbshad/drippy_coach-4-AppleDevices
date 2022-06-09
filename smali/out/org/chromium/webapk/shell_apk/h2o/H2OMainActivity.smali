.class public Lorg/chromium/webapk/shell_apk/h2o/H2OMainActivity;
.super Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;
.source "H2OMainActivity.java"


# static fields
.field private static final MINIMUM_INTERVAL_BETWEEN_RELAUNCHES_MS:J = 0x4e20L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onHostBrowserSelected(Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)V
    .registers 6

    .prologue
    .line 28
    if-nez p1, :cond_3

    .line 46
    :goto_2
    return-void

    .line 32
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/webapk/shell_apk/h2o/H2OMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    const-wide/16 v2, 0x4e20

    invoke-static {v0, v2, v3}, Lorg/chromium/webapk/shell_apk/h2o/H2OLauncher;->didRequestRelaunchFromHostBrowserWithinLastMs(Landroid/content/Context;J)Z

    move-result v1

    if-nez v1, :cond_21

    .line 39
    invoke-static {p0, p1}, Lorg/chromium/webapk/shell_apk/h2o/H2OLauncher;->requestRelaunchFromHostBrowser(Landroid/app/Activity;Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)V

    .line 40
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lorg/chromium/webapk/shell_apk/h2o/H2OOpaqueMainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    invoke-virtual {p0}, Lorg/chromium/webapk/shell_apk/h2o/H2OMainActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 40
    invoke-static {v0, v1, v2}, Lorg/chromium/webapk/shell_apk/h2o/H2OLauncher;->changeEnabledComponentsAndKillShellApk(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    goto :goto_2

    .line 45
    :cond_21
    invoke-static {p0, p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncher;->launch(Landroid/content/Context;Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)V

    goto :goto_2
.end method
