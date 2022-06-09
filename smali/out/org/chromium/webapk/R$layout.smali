.class public final Lorg/chromium/webapk/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/webapk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static host_browser_list_item:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const/high16 v0, 0x7f040000

    sput v0, Lorg/chromium/webapk/R$layout;->host_browser_list_item:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
