.class public final Lorg/chromium/webapk/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/webapk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static black_alpha_38:I

.field public static black_alpha_54:I

.field public static black_alpha_87:I

.field public static white_adaptive_ic_launcher_background:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/high16 v0, 0x7f060000

    sput v0, Lorg/chromium/webapk/R$color;->black_alpha_38:I

    .line 17
    const v0, 0x7f060001

    sput v0, Lorg/chromium/webapk/R$color;->black_alpha_54:I

    .line 18
    const v0, 0x7f060002

    sput v0, Lorg/chromium/webapk/R$color;->black_alpha_87:I

    .line 19
    const v0, 0x7f060003

    sput v0, Lorg/chromium/webapk/R$color;->white_adaptive_ic_launcher_background:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
