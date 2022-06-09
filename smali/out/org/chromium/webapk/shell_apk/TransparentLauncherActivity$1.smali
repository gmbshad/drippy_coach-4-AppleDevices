.class Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity$1;
.super Ljava/lang/Object;
.source "TransparentLauncherActivity.java"

# interfaces
.implements Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;

.field final synthetic val$activityStartTimeMs:J


# direct methods
.method constructor <init>(Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;J)V
    .registers 4

    .prologue
    .line 24
    iput-object p1, p0, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity$1;->this$0:Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;

    iput-wide p2, p0, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity$1;->val$activityStartTimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrowserSelected(Ljava/lang/String;Z)V
    .registers 9

    .prologue
    .line 28
    if-nez p1, :cond_8

    .line 29
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity$1;->this$0:Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;

    invoke-virtual {v0}, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;->finish()V

    .line 40
    :goto_7
    return-void

    .line 32
    :cond_8
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity$1;->this$0:Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;

    iget-object v1, p0, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity$1;->this$0:Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;

    .line 35
    invoke-virtual {v1}, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-wide v4, p0, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity$1;->val$activityStartTimeMs:J

    move-object v2, p1

    move v3, p2

    .line 34
    invoke-static/range {v0 .. v5}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->createForIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZJ)Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity$1;->this$0:Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;

    invoke-virtual {v1, v0}, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;->onHostBrowserSelected(Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)V

    .line 39
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity$1;->this$0:Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;

    invoke-virtual {v0}, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;->finish()V

    goto :goto_7
.end method
