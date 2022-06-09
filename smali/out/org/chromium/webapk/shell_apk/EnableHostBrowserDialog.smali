.class public Lorg/chromium/webapk/shell_apk/EnableHostBrowserDialog;
.super Ljava/lang/Object;
.source "EnableHostBrowserDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/webapk/shell_apk/EnableHostBrowserDialog$DialogListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Lorg/chromium/webapk/shell_apk/EnableHostBrowserDialog$DialogListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 44
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/webapk/R$layout;->host_browser_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 45
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 46
    sget v0, Lorg/chromium/webapk/R$string;->enable_host_browser_dialog_title:I

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p4, v3, v5

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {p0, v1, v2}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->applyAlertDialogContentStyle(Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;)V

    .line 51
    sget v0, Lorg/chromium/webapk/R$id;->install_description:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    sget v3, Lorg/chromium/webapk/R$string;->enable_host_browser_dialog_description:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x1030132

    invoke-direct {v3, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 59
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/chromium/webapk/R$string;->install_host_browser_dialog_quit:I

    new-instance v3, Lorg/chromium/webapk/shell_apk/EnableHostBrowserDialog$2;

    invoke-direct {v3, p1}, Lorg/chromium/webapk/shell_apk/EnableHostBrowserDialog$2;-><init>(Lorg/chromium/webapk/shell_apk/EnableHostBrowserDialog$DialogListener;)V

    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/chromium/webapk/R$string;->enable_host_browser_dialog_settings:I

    new-instance v3, Lorg/chromium/webapk/shell_apk/EnableHostBrowserDialog$1;

    invoke-direct {v3, p1, p3}, Lorg/chromium/webapk/shell_apk/EnableHostBrowserDialog$1;-><init>(Lorg/chromium/webapk/shell_apk/EnableHostBrowserDialog$DialogListener;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 76
    new-instance v1, Lorg/chromium/webapk/shell_apk/EnableHostBrowserDialog$3;

    invoke-direct {v1, p1}, Lorg/chromium/webapk/shell_apk/EnableHostBrowserDialog$3;-><init>(Lorg/chromium/webapk/shell_apk/EnableHostBrowserDialog$DialogListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 82
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 83
    return-void
.end method
