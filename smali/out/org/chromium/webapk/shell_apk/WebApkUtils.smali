.class public Lorg/chromium/webapk/shell_apk/WebApkUtils;
.super Ljava/lang/Object;
.source "WebApkUtils.java"


# static fields
.field private static final CONTRAST_LIGHT_ITEM_THRESHOLD:F = 3.0f

.field private static final DARKEN_COLOR_FRACTION:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "cr_WebApkUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyAlertDialogContentStyle(Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;)V
    .registers 6

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 154
    sget v1, Lorg/chromium/webapk/R$color;->black_alpha_87:I

    invoke-static {v0, v1}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    const/4 v1, 0x0

    sget v2, Lorg/chromium/webapk/R$dimen;->headline_size_medium:I

    .line 156
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 155
    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 157
    sget v1, Lorg/chromium/webapk/R$dimen;->dialog_content_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 158
    sget v2, Lorg/chromium/webapk/R$dimen;->title_bottom_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 159
    invoke-static {p2, v1, v1, v1, v2}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->setPaddingInPixel(Landroid/view/View;IIII)V

    .line 162
    sget v2, Lorg/chromium/webapk/R$dimen;->dialog_content_top_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 163
    invoke-static {p1, v1, v0, v1, v1}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->setPaddingInPixel(Landroid/view/View;IIII)V

    .line 165
    return-void
.end method

.method public static computeScreenLockOrientationFromMetaData(Landroid/content/Context;Landroid/os/Bundle;)I
    .registers 7

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 302
    const-string v3, "com.sec.terrace.browser.webapk.shell_apk.orientation"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 303
    if-nez v3, :cond_c

    .line 336
    :cond_b
    :goto_b
    return v0

    .line 305
    :cond_c
    const-string v4, "portrait-primary"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move v0, v1

    .line 306
    goto :goto_b

    .line 307
    :cond_16
    const-string v4, "portrait-secondary"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 308
    const/16 v0, 0x9

    goto :goto_b

    .line 309
    :cond_21
    const-string v4, "landscape-primary"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    move v0, v2

    .line 310
    goto :goto_b

    .line 311
    :cond_2b
    const-string v4, "landscape-secondary"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 312
    const/16 v0, 0x8

    goto :goto_b

    .line 313
    :cond_36
    const-string v4, "portrait"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 314
    const/4 v0, 0x7

    goto :goto_b

    .line 315
    :cond_40
    const-string v4, "landscape"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 316
    const/4 v0, 0x6

    goto :goto_b

    .line 317
    :cond_4a
    const-string v4, "any"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 318
    const/16 v0, 0xa

    goto :goto_b

    .line 319
    :cond_55
    const-string v4, "natural"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 320
    const-string v0, "window"

    .line 321
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 322
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 324
    if-eqz v3, :cond_72

    const/4 v4, 0x2

    if-ne v3, v4, :cond_80

    .line 325
    :cond_72
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    if-lt v3, v0, :cond_7e

    move v0, v1

    .line 326
    goto :goto_b

    :cond_7e
    move v0, v2

    .line 328
    goto :goto_b

    .line 330
    :cond_80
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    if-ge v3, v0, :cond_8c

    move v0, v1

    .line 331
    goto :goto_b

    :cond_8c
    move v0, v2

    .line 333
    goto/16 :goto_b
.end method

.method public static fetchTopActivityComponent(Landroid/content/Context;I)Landroid/content/ComponentName;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_9

    move-object v0, v1

    .line 298
    :goto_8
    return-object v0

    .line 287
    :cond_9
    const-string v0, "activity"

    .line 288
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 289
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 291
    :try_start_25
    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_19

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v3, p1, :cond_19

    .line 293
    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_31} :catch_34

    goto :goto_8

    :cond_32
    move-object v0, v1

    .line 298
    goto :goto_8

    .line 295
    :catch_34
    move-exception v0

    goto :goto_19
.end method

.method public static getColor(Landroid/content/res/Resources;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_c

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 175
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_b
.end method

.method private static getContrastForColor(I)F
    .registers 13

    .prologue
    const v11, 0x414eb852    # 12.92f

    const v10, 0x3f870a3d    # 1.055f

    const v9, 0x3d6147ae    # 0.055f

    const v8, 0x3d20e411    # 0.03928f

    const-wide v6, 0x4003333340000000L    # 2.4000000953674316

    .line 184
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 185
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 186
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float v3, v2, v3

    .line 187
    cmpg-float v2, v0, v8

    if-gez v2, :cond_59

    div-float/2addr v0, v11

    move v2, v0

    .line 188
    :goto_30
    cmpg-float v0, v1, v8

    if-gez v0, :cond_63

    div-float v0, v1, v11

    move v1, v0

    .line 189
    :goto_37
    cmpg-float v0, v3, v8

    if-gez v0, :cond_6e

    div-float v0, v3, v11

    .line 190
    :goto_3d
    const v3, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v2, v3

    const v3, 0x3f371759    # 0.7152f

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    const v2, 0x3d93dd98    # 0.0722f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 191
    const v1, 0x3f866666    # 1.05f

    const v2, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v2

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 187
    :cond_59
    add-float/2addr v0, v9

    div-float/2addr v0, v10

    float-to-double v4, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    move v2, v0

    goto :goto_30

    .line 188
    :cond_63
    add-float v0, v1, v9

    div-float/2addr v0, v10

    float-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    move v1, v0

    goto :goto_37

    .line 189
    :cond_6e
    add-float v0, v3, v9

    div-float/2addr v0, v10

    float-to-double v4, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    goto :goto_3d
.end method

.method public static getDarkenedColor(IF)I
    .registers 5

    .prologue
    .line 202
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 203
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 204
    const/4 v1, 0x2

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 205
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method static getMetaDataBoolean(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 264
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 267
    :goto_8
    return-object v0

    .line 265
    :catch_9
    move-exception v0

    .line 267
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static grantUriPermissionToHostBrowserIfShare(Landroid/content/Context;Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;)V
    .registers 6

    .prologue
    .line 236
    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getSelectedShareTargetActivityClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 253
    :cond_6
    return-void

    .line 240
    :cond_7
    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getOriginalIntent()Landroid/content/Intent;

    move-result-object v2

    .line 241
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 242
    if-nez v0, :cond_26

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 245
    if-eqz v0, :cond_25

    .line 246
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    move-object v0, v1

    .line 249
    :cond_26
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 251
    invoke-virtual {p1}, Lorg/chromium/webapk/shell_apk/HostBrowserLauncherParams;->getHostBrowserPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 250
    invoke-virtual {p0, v2, v0, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_2a
.end method

.method public static isDisabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 79
    :cond_7
    :goto_7
    return v0

    .line 75
    :cond_8
    const/4 v1, 0x0

    :try_start_9
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_c} :catch_13

    move-result-object v1

    .line 79
    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    .line 76
    :catch_13
    move-exception v1

    goto :goto_7
.end method

.method public static isInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 62
    :goto_7
    return v0

    .line 58
    :cond_8
    const/4 v1, 0x0

    :try_start_9
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_c} :catch_e

    .line 62
    const/4 v0, 0x1

    goto :goto_7

    .line 59
    :catch_e
    move-exception v1

    goto :goto_7
.end method

.method public static readMetaData(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 98
    .line 100
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_11

    move-result-object v0

    .line 105
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :goto_10
    return-object v0

    .line 102
    :catch_11
    move-exception v0

    .line 103
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static readMetaDataFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 86
    invoke-static {p0}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->readMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 87
    if-nez v0, :cond_8

    .line 88
    const/4 v0, 0x0

    .line 91
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static rewriteIntentUrlIfNecessary(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 114
    const-string v0, "com.sec.terrace.browser.webapk.shell_apk.startUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    const-string v1, "com.sec.terrace.browser.webapk.shell_apk.loggedIntentUrlParam"

    .line 116
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 130
    :cond_12
    :goto_12
    return-object p0

    .line 122
    :cond_13
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 124
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 128
    :cond_27
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 130
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_12
.end method

.method public static setPaddingInPixel(Landroid/view/View;IIII)V
    .registers 7

    .prologue
    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    .line 140
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 144
    :goto_9
    return-void

    .line 142
    :cond_a
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_9
.end method

.method public static setStatusBarColor(Landroid/view/Window;I)V
    .registers 5

    .prologue
    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_7

    .line 229
    :goto_6
    return-void

    .line 227
    :cond_7
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 228
    const/16 v0, 0x29

    const/16 v1, 0x41

    const/16 v2, 0xbb

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_6
.end method

.method public static shouldUseLightForegroundOnBackground(I)Z
    .registers 3

    .prologue
    .line 216
    invoke-static {p0}, Lorg/chromium/webapk/shell_apk/WebApkUtils;->getContrastForColor(I)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
