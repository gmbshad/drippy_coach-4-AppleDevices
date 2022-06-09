.class public final Lorg/chromium/webapk/shell_apk/WebApkSharedPreferences;
.super Ljava/lang/Object;
.source "WebApkSharedPreferences.java"


# static fields
.field private static final PREF_PACKAGE:Ljava/lang/String; = "org.chromium.webapk.shell_apk"

.field public static final PREF_REQUEST_HOST_BROWSER_RELAUNCH_TIMESTAMP:Ljava/lang/String; = "org.chromium.webapk.shell_apk.request_host_browser_relaunch_timestamp"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flushPendingWrites(Landroid/content/Context;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p0}, Lorg/chromium/webapk/shell_apk/WebApkSharedPreferences;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 37
    return-void
.end method

.method public static getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 28
    const-string v0, "org.chromium.webapk.shell_apk"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
