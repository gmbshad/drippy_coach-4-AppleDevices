.class public final Lorg/chromium/webapk/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/webapk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static dialog_content_padding:I

.field public static dialog_content_top_padding:I

.field public static headline_size_medium:I

.field public static list_column_padding:I

.field public static text_size_large:I

.field public static text_size_medium_dense:I

.field public static title_bottom_padding:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const v0, 0x7f070003

    sput v0, Lorg/chromium/webapk/R$dimen;->dialog_content_padding:I

    .line 25
    const v0, 0x7f070004

    sput v0, Lorg/chromium/webapk/R$dimen;->dialog_content_top_padding:I

    .line 28
    const/high16 v0, 0x7f070000

    sput v0, Lorg/chromium/webapk/R$dimen;->headline_size_medium:I

    .line 29
    const v0, 0x7f070006

    sput v0, Lorg/chromium/webapk/R$dimen;->list_column_padding:I

    .line 30
    const v0, 0x7f070001

    sput v0, Lorg/chromium/webapk/R$dimen;->text_size_large:I

    .line 31
    const v0, 0x7f070002

    sput v0, Lorg/chromium/webapk/R$dimen;->text_size_medium_dense:I

    .line 32
    const v0, 0x7f070005

    sput v0, Lorg/chromium/webapk/R$dimen;->title_bottom_padding:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
