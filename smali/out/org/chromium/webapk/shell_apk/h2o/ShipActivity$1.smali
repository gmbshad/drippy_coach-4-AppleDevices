.class Lorg/chromium/webapk/shell_apk/h2o/ShipActivity$1;
.super Ljava/lang/Object;
.source "ShipActivity.java"

# interfaces
.implements Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->selectHostBrowser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;


# direct methods
.method constructor <init>(Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity$1;->this$0:Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrowserSelected(Ljava/lang/String;Z)V
    .registers 9

    .prologue
    .line 105
    if-nez p1, :cond_8

    .line 106
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity$1;->this$0:Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;

    invoke-virtual {v0}, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->finish()V

    .line 114
    :goto_7
    return-void

    .line 109
    :cond_8
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity$1;->this$0:Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;

    iget-object v1, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity$1;->this$0:Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;

    .line 111
    invoke-virtual {v1}, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-wide/16 v4, -0x1

    move-object v2, p1

    move v3, p2

    .line 110
    invoke-static/range {v0 .. v5}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->createForIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZJ)Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity$1;->this$0:Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;

    invoke-static {v1, v0}, Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;->access$000(Lorg/chromium/webapk/shell_apk/h2o/ShipActivity;Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)V

    goto :goto_7
.end method
