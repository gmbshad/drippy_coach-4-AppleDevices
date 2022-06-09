.class public Lorg/chromium/webapk/shell_apk/HostBrowserUtils;
.super Ljava/lang/Object;
.source "HostBrowserUtils.java"


# static fields
.field public static final SHARED_PREF_RUNTIME_HOST:Ljava/lang/String; = "runtime_host"

.field private static sBrowsersSupportingWebApk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHostPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.sec.android.app.sbrowser"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.sec.android.app.sbrowser.beta"

    aput-object v3, v1, v2

    .line 34
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/chromium/webapk/shell_apk/HostBrowserUtils;->sBrowsersSupportingWebApk:Ljava/util/List;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrowsersSupportingWebApk()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lorg/chromium/webapk/shell_apk/HostBrowserUtils;->sBrowsersSupportingWebApk:Ljava/util/List;

    return-object v0
.end method

.method public static getHostBrowserContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 4

    .prologue
    .line 64
    :try_start_0
    invoke-static {p0}, Lorg/chromium/webapk/shell_apk/HostBrowserUtils;->getHostBrowserPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v0

    .line 69
    :goto_d
    return-object v0

    .line 66
    :catch_e
    move-exception v0

    .line 67
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 69
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static getHostBrowserFromSharedPreference(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 117
    const-string v0, "com.sec.terrace.browser.webapk.shell_apk"

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    const-string v1, "runtime_host"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHostBrowserPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    sget-object v0, Lorg/chromium/webapk/shell_apk/HostBrowserUtils;->sHostPackage:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 81
    const-string v0, "com.sec.terrace.browser.webapk.shell_apk.runtimeHost"

    invoke-static {p0, v0}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->readMetaDataFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/webapk/shell_apk/HostBrowserUtils;->sHostPackage:Ljava/lang/String;

    .line 83
    sget-object v0, Lorg/chromium/webapk/shell_apk/HostBrowserUtils;->sHostPackage:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 84
    sget-object v0, Lorg/chromium/webapk/shell_apk/HostBrowserUtils;->sHostPackage:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/chromium/webapk/shell_apk/HostBrowserUtils;->writeHostBrowserToSharedPref(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    :cond_15
    sget-object v0, Lorg/chromium/webapk/shell_apk/HostBrowserUtils;->sHostPackage:Ljava/lang/String;

    return-object v0
.end method

.method public static getHostBrowserUid(Landroid/content/Context;)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 98
    invoke-static {p0}, Lorg/chromium/webapk/shell_apk/HostBrowserUtils;->getHostBrowserPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 99
    if-nez v1, :cond_8

    .line 110
    :goto_7
    return v0

    .line 103
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 104
    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 106
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_7

    .line 107
    :catch_15
    move-exception v1

    .line 108
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_7
.end method

.method public static queryHostBrowserMajorChromiumVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 146
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_21

    move-result-object v1

    .line 150
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 151
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 152
    if-gez v2, :cond_15

    .line 158
    :goto_14
    return v0

    .line 156
    :cond_15
    const/4 v3, 0x0

    :try_start_16
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1d} :catch_1f

    move-result v0

    goto :goto_14

    .line 157
    :catch_1f
    move-exception v1

    goto :goto_14

    .line 147
    :catch_21
    move-exception v1

    goto :goto_14
.end method

.method public static resetCachedHostPackageForTesting()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/webapk/shell_apk/HostBrowserUtils;->sHostPackage:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static writeHostBrowserToSharedPref(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 137
    :goto_6
    return-void

    .line 132
    :cond_7
    const-string v0, "com.sec.terrace.browser.webapk.shell_apk"

    const/4 v1, 0x0

    .line 133
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    const-string v1, "runtime_host"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_6
.end method
