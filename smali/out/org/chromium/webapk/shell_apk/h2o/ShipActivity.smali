.class public Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;
.super Landroid/app/Activity;
.source "ShipActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/webapk/shell_apk/h2o/ShipActivity$ActivityResult;
    }
.end annotation


# instance fields
.field private mParams:Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;

.field private mPendingLaunch:Z

.field private mResult:I

.field private mResumed:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->onHostBrowserSelected(Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)V

    return-void
.end method

.method private launch()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->mParams:Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;

    invoke-static {p0, v0}, Lorg/chromium/webapk/shell_apk/h2o/H2OLauncher;->launch(Landroid/app/Activity;Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->mParams:Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;

    .line 150
    return-void
.end method

.method private maybeLaunch()V
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->mParams:Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->mResumed:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->mPendingLaunch:Z

    if-nez v0, :cond_d

    .line 142
    :cond_c
    :goto_c
    return-void

    .line 140
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->mPendingLaunch:Z

    .line 141
    invoke-direct {p0}, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->launch()V

    goto :goto_c
.end method

.method private onHostBrowserSelected(Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)V
    .registers 2

    .prologue
    .line 122
    if-nez p1, :cond_6

    .line 123
    invoke-virtual {p0}, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->finish()V

    .line 129
    :goto_5
    return-void

    .line 127
    :cond_6
    iput-object p1, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->mParams:Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;

    .line 128
    invoke-direct {p0}, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->maybeLaunch()V

    goto :goto_5
.end method

.method private selectHostBrowser()V
    .registers 3

    .prologue
    .line 100
    new-instance v0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;

    invoke-direct {v0, p0}, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity$1;

    invoke-direct {v1, p0}, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity$1;-><init>(Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;)V

    invoke-virtual {v0, v1}, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->selectHostBrowser(Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;)V

    .line 116
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .prologue
    .line 59
    iget v0, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->mResult:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    if-nez p2, :cond_a

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->mResult:I

    .line 62
    :cond_a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {p0}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->readMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 42
    invoke-static {p0, v0}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->computeScreenLockOrientationFromMetaData(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v0

    .line 43
    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 44
    invoke-virtual {p0, v0}, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->setRequestedOrientation(I)V

    .line 46
    :cond_11
    invoke-direct {p0}, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->maybeLaunch()V

    .line 48
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    invoke-virtual {p0}, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->getTaskId()I

    move-result v1

    invoke-static {p0, v1}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->fetchTopActivityComponent(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 55
    :goto_29
    return-void

    .line 53
    :cond_2a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->mPendingLaunch:Z

    .line 54
    invoke-direct {p0}, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->selectHostBrowser()V

    goto :goto_29
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p0, p1}, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->setIntent(Landroid/content/Intent;)V

    .line 73
    const/4 v0, 0x2

    iput v0, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->mResult:I

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->mPendingLaunch:Z

    .line 77
    invoke-direct {p0}, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->selectHostBrowser()V

    .line 78
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->mResumed:Z

    .line 97
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    iput-boolean v1, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->mResumed:Z

    .line 84
    iget v0, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->mResult:I

    if-ne v0, v1, :cond_e

    .line 85
    invoke-virtual {p0}, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->finish()V

    .line 91
    :goto_d
    return-void

    .line 89
    :cond_e
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->mResult:I

    .line 90
    invoke-direct {p0}, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->maybeLaunch()V

    goto :goto_d
.end method
