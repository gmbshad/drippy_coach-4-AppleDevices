.class Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$2;
.super Ljava/lang/Object;
.source "LaunchHostBrowserSelector.java"

# interfaces
.implements Lorg/chromium/webapk/shell_apk/EnableHostBrowserDialog$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->showEnableHostBrowserDialog(Landroid/os/Bundle;Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;

.field final synthetic val$selectCallback:Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;


# direct methods
.method constructor <init>(Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;)V
    .registers 3

    .prologue
    .line 195
    iput-object p1, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$2;->this$0:Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;

    iput-object p2, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$2;->val$selectCallback:Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmQuit()V
    .registers 4

    .prologue
    .line 205
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$2;->val$selectCallback:Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;->onBrowserSelected(Ljava/lang/String;Z)V

    .line 206
    return-void
.end method

.method public onConfirmSettings(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 198
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$2;->this$0:Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;

    invoke-static {v0, p1}, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->access$200(Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$2;->this$0:Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;

    invoke-static {v0}, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->access$100(Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/webapk/shell_apk/HostBrowserUtils;->writeHostBrowserToSharedPref(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$2;->val$selectCallback:Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;->onBrowserSelected(Ljava/lang/String;Z)V

    .line 201
    return-void
.end method
