.class public final Lorg/chromium/webapk/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/webapk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field public static app_icon:I

.field public static badge_icon:I

.field public static default_icon:I

.field public static ic_launcher:I

.field public static notification_badge:I

.field public static splash_image:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/high16 v0, 0x7f020000

    sput v0, Lorg/chromium/webapk/R$drawable;->app_icon:I

    .line 36
    const v0, 0x7f020001

    sput v0, Lorg/chromium/webapk/R$drawable;->badge_icon:I

    .line 37
    const v0, 0x7f020002

    sput v0, Lorg/chromium/webapk/R$drawable;->default_icon:I

    .line 38
    const v0, 0x7f020003

    sput v0, Lorg/chromium/webapk/R$drawable;->ic_launcher:I

    .line 39
    const v0, 0x7f020004

    sput v0, Lorg/chromium/webapk/R$drawable;->notification_badge:I

    .line 40
    const v0, 0x7f020005

    sput v0, Lorg/chromium/webapk/R$drawable;->splash_image:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
