.class public Lorg/chromium/webapk/lib/common/WebApkMetaDataUtils;
.super Ljava/lang/Object;
.source "WebApkMetaDataUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLongFromMetaData(Landroid/os/Bundle;Ljava/lang/String;J)J
    .registers 8

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_e

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 37
    :cond_e
    :goto_e
    return-wide p2

    .line 34
    :cond_f
    const/4 v1, 0x0

    :try_start_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_1d} :catch_1f

    move-result-wide p2

    goto :goto_e

    .line 35
    :catch_1f
    move-exception v0

    goto :goto_e
.end method
