.class public Lorg/chromium/webapk/shell_apk/h2o/H2OOpaqueMainActivity;
.super Landroid/app/Activity;
.source "H2OOpaqueMainActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static checkComponentEnabled(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 28
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lorg/chromium/webapk/shell_apk/h2o/H2OOpaqueMainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    .line 31
    if-eq v1, v0, :cond_14

    if-nez v1, :cond_15

    :cond_14
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lorg/chromium/webapk/shell_apk/h2o/H2OOpaqueMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 40
    invoke-virtual {p0, v0, v0}, Lorg/chromium/webapk/shell_apk/h2o/H2OOpaqueMainActivity;->overridePendingTransition(II)V

    .line 41
    invoke-virtual {p0}, Lorg/chromium/webapk/shell_apk/h2o/H2OOpaqueMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v6, Landroid/content/ComponentName;

    const-class v0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;

    invoke-direct {v6, v1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static/range {v1 .. v6}, Lorg/chromium/webapk/shell_apk/h2o/H2OLauncher;->copyIntentExtrasAndLaunch(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 43
    invoke-virtual {p0}, Lorg/chromium/webapk/shell_apk/h2o/H2OOpaqueMainActivity;->finish()V

    .line 44
    return-void
.end method
