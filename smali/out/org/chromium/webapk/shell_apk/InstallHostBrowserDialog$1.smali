.class final Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$1;
.super Ljava/lang/Object;
.source "InstallHostBrowserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog;->show(Landroid/content/Context;Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$DialogListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$hostBrowserPackageName:Ljava/lang/String;

.field final synthetic val$listener:Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$DialogListener;


# direct methods
.method constructor <init>(Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$DialogListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 71
    iput-object p1, p0, Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$1;->val$listener:Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$DialogListener;

    iput-object p2, p0, Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$1;->val$hostBrowserPackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 74
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$1;->val$listener:Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$DialogListener;

    iget-object v1, p0, Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$1;->val$hostBrowserPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$DialogListener;->onConfirmInstall(Ljava/lang/String;)V

    .line 75
    return-void
.end method
