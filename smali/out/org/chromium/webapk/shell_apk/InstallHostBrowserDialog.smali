.class public Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog;
.super Ljava/lang/Object;
.source "InstallHostBrowserDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$DialogListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$DialogListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 46
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/webapk/R$layout;->host_browser_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 47
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 48
    sget v0, Lorg/chromium/webapk/R$string;->install_host_browser_dialog_title:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p4, v3, v5

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-static {p0, v1, v2}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->applyAlertDialogContentStyle(Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;)V

    .line 53
    sget v0, Lorg/chromium/webapk/R$id;->install_description:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    sget v3, Lorg/chromium/webapk/R$string;->install_host_browser_dialog_description:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    aput-object p4, v4, v6

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x1030132

    invoke-direct {v3, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 62
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/chromium/webapk/R$string;->install_host_browser_dialog_quit:I

    new-instance v3, Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$2;

    invoke-direct {v3, p1}, Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$2;-><init>(Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$DialogListener;)V

    .line 63
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/chromium/webapk/R$string;->install_host_browser_dialog_download:I

    new-instance v3, Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$1;

    invoke-direct {v3, p1, p3}, Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$1;-><init>(Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$DialogListener;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 78
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 79
    new-instance v1, Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$3;

    invoke-direct {v1, p1}, Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$3;-><init>(Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$DialogListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 85
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 86
    return-void
.end method
