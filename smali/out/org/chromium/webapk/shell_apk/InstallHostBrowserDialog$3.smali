.class final Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$3;
.super Ljava/lang/Object;
.source "InstallHostBrowserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog;->show(Landroid/content/Context;Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$DialogListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$DialogListener;


# direct methods
.method constructor <init>(Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$DialogListener;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$3;->val$listener:Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$DialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$3;->val$listener:Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$DialogListener;

    invoke-interface {v0}, Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$DialogListener;->onConfirmQuit()V

    .line 83
    return-void
.end method
