.class public Lorg/chromium/webapk/shell_apk/h2o/H2OLauncher;
.super Ljava/lang/Object;
.source "H2OLauncher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "cr_H2OLauncher"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeEnabledComponentsAndKillShellApk(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-static {p0}, Lorg/chromium/webapk/shell_apk/WebApkSharedPreferences;->flushPendingWrites(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p1, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 56
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 58
    return-void
.end method

.method public static copyIntentExtrasAndLaunch(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLandroid/content/ComponentName;)V
    .registers 11

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 85
    invoke-virtual {v0, p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 86
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_1c

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 94
    :cond_1c
    if-eqz p2, :cond_23

    .line 95
    const-string v1, "com.sec.terrace.browser.webapk.selected_share_target_activity_class_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    :cond_23
    const-wide/16 v2, -0x1

    cmp-long v1, p3, v2

    if-eqz v1, :cond_2e

    .line 100
    const-string v1, "com.sec.terrace.browser.browser.webapk_launch_time"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 103
    :cond_2e
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method public static didRequestRelaunchFromHostBrowserWithinLastMs(Landroid/content/Context;J)Z
    .registers 10

    .prologue
    .line 33
    invoke-static {p0}, Lorg/chromium/webapk/shell_apk/WebApkSharedPreferences;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 35
    const-string v1, "org.chromium.webapk.shell_apk.request_host_browser_relaunch_timestamp"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 37
    sub-long v0, v2, v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static launch(Landroid/app/Activity;Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 64
    const-string v0, "cr_H2OLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebAPK Launch URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getStartUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    const-string v1, "com.sec.terrace.browser.webapk.use_same_task_activity"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1, v3}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncher;->launchBrowserInWebApkMode(Landroid/app/Activity;Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;Landroid/os/Bundle;IZ)V

    .line 70
    return-void
.end method

.method public static requestRelaunchFromHostBrowser(Landroid/app/Activity;Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)V
    .registers 6

    .prologue
    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 112
    invoke-static {p0}, Lorg/chromium/webapk/shell_apk/WebApkSharedPreferences;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 113
    const-string v3, "org.chromium.webapk.shell_apk.request_host_browser_relaunch_timestamp"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    const-string v1, "com.sec.terrace.browser.webapk.relaunch"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    const/high16 v1, 0x10000000

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncher;->launchBrowserInWebApkMode(Landroid/app/Activity;Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;Landroid/os/Bundle;IZ)V

    .line 121
    return-void
.end method
