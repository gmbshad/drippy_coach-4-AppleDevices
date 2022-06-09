.class public final Lorg/chromium/webapk/R$xml;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/webapk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "xml"
.end annotation


# static fields
.field public static shortcuts:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 784
    const/high16 v0, 0x7f050000

    sput v0, Lorg/chromium/webapk/R$xml;->shortcuts:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
