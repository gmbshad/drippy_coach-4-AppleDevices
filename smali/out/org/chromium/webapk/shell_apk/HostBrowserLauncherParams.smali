.class public Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;
.super Ljava/lang/Object;
.source "HostBrowserLauncherParams.java"


# instance fields
.field private mDialogShown:Z

.field private mForceNavigation:Z

.field private mHostBrowserMajorChromiumVersion:I

.field private mHostBrowserPackageName:Ljava/lang/String;

.field private mLaunchTimeMs:J

.field private mOriginalIntent:Landroid/content/Intent;

.field private mSelectedShareTargetActivityClassName:Ljava/lang/String;

.field private mSource:I

.field private mStartUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;IZLandroid/content/Intent;Ljava/lang/String;IZJLjava/lang/String;)V
    .registers 11

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->mHostBrowserPackageName:Ljava/lang/String;

    .line 205
    iput p2, p0, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->mHostBrowserMajorChromiumVersion:I

    .line 206
    iput-boolean p3, p0, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->mDialogShown:Z

    .line 207
    iput-object p4, p0, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->mOriginalIntent:Landroid/content/Intent;

    .line 208
    iput-object p5, p0, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->mStartUrl:Ljava/lang/String;

    .line 209
    iput p6, p0, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->mSource:I

    .line 210
    iput-boolean p7, p0, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->mForceNavigation:Z

    .line 211
    iput-wide p8, p0, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->mLaunchTimeMs:J

    .line 212
    iput-object p10, p0, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->mSelectedShareTargetActivityClassName:Ljava/lang/String;

    .line 213
    return-void
.end method

.method private static computeStartUrlForGETShareTarget(Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 150
    const-string v0, "com.sec.terrace.browser.webapk.shell_apk.shareAction"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 152
    const/4 v0, 0x0

    .line 163
    :goto_d
    return-object v0

    .line 156
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    new-instance v2, Landroid/util/Pair;

    const-string v3, "com.sec.terrace.browser.webapk.shell_apk.shareParamTitle"

    .line 158
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.SUBJECT"

    .line 159
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v2, Landroid/util/Pair;

    const-string v3, "com.sec.terrace.browser.webapk.shell_apk.shareParamText"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.TEXT"

    .line 161
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-static {v0, v1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->createGETWebShareTargetUriString(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method protected static computeStartUrlForShareTarget(Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 131
    if-nez p0, :cond_4

    .line 132
    const/4 v0, 0x0

    .line 137
    :goto_3
    return-object v0

    .line 134
    :cond_4
    invoke-static {p0}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->doesShareTargetUsePost(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 135
    const-string v0, "com.sec.terrace.browser.webapk.shell_apk.shareAction"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 137
    :cond_11
    invoke-static {p0, p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->computeStartUrlForGETShareTarget(Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static createForIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZJ)Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;
    .registers 18

    .prologue
    .line 44
    invoke-static {p0}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->readMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 45
    if-nez v1, :cond_8

    .line 46
    const/4 v0, 0x0

    .line 95
    :goto_7
    return-object v0

    .line 49
    :cond_8
    invoke-static {p0, p2}, Lorg/chromium/webapk/shell_apk/HostBrowserUtils;->queryHostBrowserMajorChromiumVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 51
    const-string v0, "com.sec.terrace.browser.browser.webapk_launch_time"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 52
    const-wide/16 v4, 0x0

    cmp-long v0, v8, v4

    if-lez v0, :cond_8f

    .line 63
    :goto_1a
    const-string v0, "com.sec.terrace.browser.webapk.selected_share_target_activity_class_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 66
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    .line 67
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 68
    :cond_38
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    .line 71
    :cond_40
    if-eqz v10, :cond_5a

    .line 72
    new-instance v0, Landroid/content/ComponentName;

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {p0, v0}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->fetchActivityMetaData(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    .line 75
    invoke-static {v0, p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->computeStartUrlForShareTarget(Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 76
    const/16 v6, 0xd

    .line 77
    const/4 v7, 0x1

    .line 89
    :goto_56
    if-nez v0, :cond_81

    .line 90
    const/4 v0, 0x0

    goto :goto_7

    .line 78
    :cond_5a
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 79
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v3, "com.sec.terrace.browser.webapp_source"

    const/16 v4, 0x9

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 82
    const-string v3, "com.sec.terrace.browser.webapk_force_navigation"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_56

    .line 84
    :cond_78
    const-string v0, "com.sec.terrace.browser.webapk.shell_apk.startUrl"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    const/4 v6, 0x0

    .line 86
    const/4 v7, 0x0

    goto :goto_56

    .line 93
    :cond_81
    invoke-static {v0, v1}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->rewriteIntentUrlIfNecessary(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 95
    new-instance v0, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;

    move-object v1, p2

    move v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v10}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;-><init>(Ljava/lang/String;IZLandroid/content/Intent;Ljava/lang/String;IZJLjava/lang/String;)V

    goto/16 :goto_7

    :cond_8f
    move-wide/from16 v8, p4

    goto :goto_1a
.end method

.method protected static createGETWebShareTargetUriString(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 176
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 177
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 179
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_9

    .line 182
    :cond_35
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 190
    :goto_4b
    return-object p0

    .line 189
    :cond_4c
    const-string v2, "%20"

    const-string v3, "+"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 190
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4b
.end method

.method private static doesShareTargetUsePost(Landroid/os/Bundle;)Z
    .registers 4

    .prologue
    .line 116
    const-string v0, "com.sec.terrace.browser.webapk.shell_apk.shareMethod"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_d
    return v0

    :cond_e
    const-string v1, "POST"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_d
.end method

.method private static doesUrlUseHttpOrHttpsScheme(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 197
    if-eqz p0, :cond_14

    const-string v0, "http:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "https:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static fetchActivityMetaData(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/os/Bundle;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 104
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_a} :catch_11

    move-result-object v1

    .line 109
    if-nez v1, :cond_e

    .line 112
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_d

    .line 106
    :catch_11
    move-exception v1

    goto :goto_d
.end method


# virtual methods
.method public getForceNavigation()Z
    .registers 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->mForceNavigation:Z

    return v0
.end method

.method public getHostBrowserMajorChromiumVersion()I
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->mHostBrowserMajorChromiumVersion:I

    return v0
.end method

.method public getHostBrowserPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->mHostBrowserPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchTimeMs()J
    .registers 3

    .prologue
    .line 270
    iget-wide v0, p0, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->mLaunchTimeMs:J

    return-wide v0
.end method

.method public getOriginalIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->mOriginalIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getSelectedShareTargetActivityClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->mSelectedShareTargetActivityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .registers 2

    .prologue
    .line 255
    iget v0, p0, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->mSource:I

    return v0
.end method

.method public getStartUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->mStartUrl:Ljava/lang/String;

    return-object v0
.end method

.method public wasDialogShown()Z
    .registers 2

    .prologue
    .line 234
    iget-boolean v0, p0, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->mDialogShown:Z

    return v0
.end method
