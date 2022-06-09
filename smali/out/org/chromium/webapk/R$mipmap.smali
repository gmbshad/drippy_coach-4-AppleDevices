.class public final Lorg/chromium/webapk/R$mipmap;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/webapk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "mipmap"
.end annotation


# static fields
.field public static app_icon:I

.field public static ic_launcher:I

.field public static ic_launcher_round:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const/high16 v0, 0x7f030000

    sput v0, Lorg/chromium/webapk/R$mipmap;->app_icon:I

    .line 50
    const v0, 0x7f030001

    sput v0, Lorg/chromium/webapk/R$mipmap;->ic_launcher:I

    .line 51
    const v0, 0x7f030002

    sput v0, Lorg/chromium/webapk/R$mipmap;->ic_launcher_round:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
