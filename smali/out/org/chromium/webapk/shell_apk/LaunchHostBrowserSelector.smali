.class public Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;
.super Ljava/lang/Object;
.source "LaunchHostBrowserSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;
    }
.end annotation


# static fields
.field private static final LAST_RESORT_HOST_BROWSER:Ljava/lang/String; = "com.sec.android.app.sbrowser"

.field private static final LAST_RESORT_HOST_BROWSER_APPLICATION_NAME:Ljava/lang/String; = "Samsung Internet"

.field private static final TAG:Ljava/lang/String; = "LaunchHBS"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mParentActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->mParentActivity:Landroid/app/Activity;

    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->installBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->enableBrowser(Ljava/lang/String;)V

    return-void
.end method

.method private static createInstallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    return-object v1
.end method

.method private deleteInternalStorage()V
    .registers 4

    .prologue
    .line 113
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/webapk/shell_apk/DexLoader;->deletePath(Ljava/io/File;)V

    .line 114
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/webapk/shell_apk/DexLoader;->deletePath(Ljava/io/File;)V

    .line 115
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->mContext:Landroid/content/Context;

    const-string v1, "dex"

    const/4 v2, 0x0

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lorg/chromium/webapk/shell_apk/DexLoader;->deletePath(Ljava/io/File;)V

    .line 117
    return-void
.end method

.method private deleteSharedPref()V
    .registers 4

    .prologue
    .line 102
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.terrace.browser.webapk.shell_apk"

    const/4 v2, 0x0

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    return-void
.end method

.method private enableBrowser(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 134
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 136
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 140
    :goto_2b
    return-void

    .line 138
    :catch_2c
    move-exception v0

    goto :goto_2b
.end method

.method private installBrowser(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->mParentActivity:Landroid/app/Activity;

    invoke-static {p1}, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->createInstallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    .line 127
    :goto_9
    return-void

    .line 125
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method private showEnableHostBrowserDialog(Landroid/os/Bundle;Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;)V
    .registers 8

    .prologue
    .line 182
    const-string v0, "com.sec.terrace.browser.webapk.shell_apk.runtimeHost"

    .line 183
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    const-string v0, "com.sec.terrace.browser.webapk.shell_apk.runtimeHostApplicationName"

    .line 185
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 190
    const-string v1, "com.sec.android.app.sbrowser"

    .line 191
    const-string v0, "Samsung Internet"

    .line 194
    :cond_16
    new-instance v2, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$2;

    invoke-direct {v2, p0, p2}, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$2;-><init>(Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;)V

    .line 209
    iget-object v3, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->mParentActivity:Landroid/app/Activity;

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.name"

    .line 210
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4, v1, v0}, Lorg/chromium/webapk/shell_apk/EnableHostBrowserDialog;->show(Landroid/content/Context;Lorg/chromium/webapk/shell_apk/EnableHostBrowserDialog$DialogListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method private showInstallHostBrowserDialog(Landroid/os/Bundle;Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;)V
    .registers 8

    .prologue
    .line 146
    const-string v0, "com.sec.terrace.browser.webapk.shell_apk.runtimeHost"

    .line 147
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    const-string v0, "com.sec.terrace.browser.webapk.shell_apk.runtimeHostApplicationName"

    .line 149
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 154
    const-string v1, "com.sec.android.app.sbrowser"

    .line 155
    const-string v0, "Samsung Internet"

    .line 158
    :cond_16
    new-instance v2, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$1;

    invoke-direct {v2, p0, p2}, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$1;-><init>(Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;)V

    .line 173
    iget-object v3, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->mParentActivity:Landroid/app/Activity;

    const-string v4, "com.sec.terrace.browser.webapk.shell_apk.name"

    .line 174
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4, v1, v0}, Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog;->show(Landroid/content/Context;Lorg/chromium/webapk/shell_apk/InstallHostBrowserDialog$DialogListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method


# virtual methods
.method public selectHostBrowser(Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 69
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->readMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 70
    if-nez v0, :cond_e

    .line 71
    const/4 v0, 0x0

    invoke-interface {p1, v0, v5}, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;->onBrowserSelected(Ljava/lang/String;Z)V

    .line 96
    :goto_d
    return-void

    .line 75
    :cond_e
    iget-object v1, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v2, "LaunchHBS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name of the WebAPK:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {v1}, Lorg/chromium/webapk/shell_apk/HostBrowserUtils;->getHostBrowserFromSharedPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/webapk/shell_apk/HostBrowserUtils;->getHostBrowserPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 83
    invoke-direct {p0}, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->deleteSharedPref()V

    .line 84
    invoke-direct {p0}, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->deleteInternalStorage()V

    .line 87
    :cond_4a
    iget-object v1, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->isDisabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 88
    invoke-direct {p0, v0, p1}, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->showEnableHostBrowserDialog(Landroid/os/Bundle;Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;)V

    goto :goto_d

    .line 89
    :cond_5a
    iget-object v1, p0, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->isInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 90
    invoke-direct {p0, v0, p1}, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector;->showInstallHostBrowserDialog(Landroid/os/Bundle;Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;)V

    goto :goto_d

    .line 91
    :cond_6a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 92
    invoke-interface {p1, v2, v5}, Lorg/chromium/webapk/shell_apk/LaunchHostBrowserSelector$Callback;->onBrowserSelected(Ljava/lang/String;Z)V

    goto :goto_d

    .line 94
    :cond_74
    const-string v0, "LaunchHBS"

    const-string v1, "HostBrowserPackageName of WebAPK is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method
