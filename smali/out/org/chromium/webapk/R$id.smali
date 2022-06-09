.class public final Lorg/chromium/webapk/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/webapk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static install_description:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/high16 v0, 0x7f090000

    sput v0, Lorg/chromium/webapk/R$id;->install_description:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
