.class public Lorg/chromium/webapk/shell_apk/HostBrowserLauncher;
.super Ljava/lang/Object;
.source "HostBrowserLauncher.java"


# static fields
.field public static final ACTION_START_WEBAPK:Ljava/lang/String; = ".webapp.WebappManager.ACTION_START_WEBAPP"

.field private static final TAG:Ljava/lang/String; = "cr_HostBrowserLauncher"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static launch(Landroid/content/Context;Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)V
    .registers 7

    .prologue
    .line 35
    const-string v0, "cr_HostBrowserLauncher"

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

    .line 37
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 38
    invoke-static {p0}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->readMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.sec.terrace.browser.webapk.shell_apk.runtimeHost"

    invoke-static {v1, v3}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".webapp.WebappManager.ACTION_START_WEBAPP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.sec.terrace.browser.webapp_id"

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.webappId"

    .line 42
    invoke-static {v1, v4}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.sec.terrace.browser.webapp_name"

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.name"

    .line 44
    invoke-static {v1, v4}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.sec.terrace.browser.webapp_short_name"

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.shortName"

    .line 46
    invoke-static {v1, v4}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.sec.terrace.browser.orientation"

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.orientation"

    .line 48
    invoke-static {v1, v4}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.sec.terrace.browser.theme_color"

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.themeColor"

    .line 50
    invoke-static {v1, v4}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.sec.terrace.browser.background_color"

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.backgroundColor"

    .line 53
    invoke-static {v1, v4}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.sec.terrace.browser.webapp_icon_adaptive"

    const-string v4, "com.sec.terrace.browser.webapp_icon_adaptive"

    .line 55
    invoke-static {v1, v4}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->getMetaDataBoolean(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 54
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.is_icon_generated"

    const/4 v3, 0x0

    .line 57
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getHostBrowserPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getOriginalIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_b5

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 65
    :cond_b5
    const-string v1, "com.sec.terrace.browser.webapp_url"

    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getStartUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.webapp_source"

    .line 66
    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getSource()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.webapk_package_name"

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.webapk.selected_share_target_activity_class_name"

    .line 69
    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getSelectedShareTargetActivityClassName()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.webapk_force_navigation"

    .line 70
    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getForceNavigation()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->wasDialogShown()Z

    move-result v1

    if-nez v1, :cond_f5

    .line 75
    const-string v1, "com.sec.terrace.browser.browser.webapk_launch_time"

    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getLaunchTimeMs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 79
    :cond_f5
    :try_start_f5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_f8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f5 .. :try_end_f8} :catch_f9

    .line 84
    :goto_f8
    return-void

    .line 80
    :catch_f9
    move-exception v0

    .line 81
    const-string v1, "cr_HostBrowserLauncher"

    const-string v2, "Unable to launch browser in WebAPK mode."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_f8
.end method

.method public static launchBrowserInWebApkMode(Landroid/app/Activity;Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;Landroid/os/Bundle;IZ)V
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    invoke-static {p0}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->readMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.sec.terrace.browser.webapk.shell_apk.runtimeHost"

    invoke-static {v1, v3}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".webapp.WebappManager.ACTION_START_WEBAPP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.sec.terrace.browser.webapp_id"

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.webappId"

    .line 94
    invoke-static {v1, v4}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.sec.terrace.browser.webapp_name"

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.name"

    .line 96
    invoke-static {v1, v4}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.sec.terrace.browser.webapp_short_name"

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.shortName"

    .line 98
    invoke-static {v1, v4}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.sec.terrace.browser.orientation"

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.orientation"

    .line 100
    invoke-static {v1, v4}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.sec.terrace.browser.theme_color"

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.themeColor"

    .line 102
    invoke-static {v1, v4}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.sec.terrace.browser.background_color"

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.backgroundColor"

    .line 105
    invoke-static {v1, v4}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.sec.terrace.browser.webapp_icon_adaptive"

    const-string v4, "com.sec.terrace.browser.webapp_icon_adaptive"

    .line 107
    invoke-static {v1, v4}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->getMetaDataBoolean(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 106
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.is_icon_generated"

    .line 109
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getHostBrowserPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const/4 v1, -0x1

    if-eq p3, v1, :cond_8d

    .line 112
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 114
    :cond_8d
    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getOriginalIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_9a

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 118
    :cond_9a
    if-eqz p2, :cond_9f

    .line 119
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 122
    :cond_9f
    const-string v1, "com.sec.terrace.browser.webapp_url"

    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getStartUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.webapp_source"

    .line 123
    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getSource()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.webapk_package_name"

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.webapk.selected_share_target_activity_class_name"

    .line 126
    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getSelectedShareTargetActivityClassName()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.webapk_force_navigation"

    .line 127
    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getForceNavigation()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->wasDialogShown()Z

    move-result v1

    if-nez v1, :cond_df

    .line 132
    const-string v1, "com.sec.terrace.browser.browser.webapk_launch_time"

    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getLaunchTimeMs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 136
    :cond_df
    if-eqz p4, :cond_e6

    .line 138
    const/4 v1, 0x0

    :try_start_e2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 146
    :goto_e5
    return-void

    .line 140
    :cond_e6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_e9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e2 .. :try_end_e9} :catch_ea

    goto :goto_e5

    .line 142
    :catch_ea
    move-exception v0

    .line 143
    const-string v1, "cr_HostBrowserLauncher"

    const-string v2, "Unable to launch browser in WebAPK mode."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_e5
.end method
