.class public final Lorg/chromium/webapk/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/webapk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static enable_host_browser_dialog_description:I

.field public static enable_host_browser_dialog_settings:I

.field public static enable_host_browser_dialog_title:I

.field public static install_host_browser_dialog_description:I

.field public static install_host_browser_dialog_download:I

.field public static install_host_browser_dialog_quit:I

.field public static install_host_browser_dialog_title:I

.field public static notification_channel_name:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 144
    const v0, 0x7f080005

    sput v0, Lorg/chromium/webapk/R$string;->enable_host_browser_dialog_description:I

    .line 235
    const v0, 0x7f080006

    sput v0, Lorg/chromium/webapk/R$string;->enable_host_browser_dialog_settings:I

    .line 326
    const v0, 0x7f080004

    sput v0, Lorg/chromium/webapk/R$string;->enable_host_browser_dialog_title:I

    .line 417
    const v0, 0x7f080001

    sput v0, Lorg/chromium/webapk/R$string;->install_host_browser_dialog_description:I

    .line 508
    const v0, 0x7f080002

    sput v0, Lorg/chromium/webapk/R$string;->install_host_browser_dialog_download:I

    .line 599
    const v0, 0x7f080003

    sput v0, Lorg/chromium/webapk/R$string;->install_host_browser_dialog_quit:I

    .line 690
    const/high16 v0, 0x7f080000

    sput v0, Lorg/chromium/webapk/R$string;->install_host_browser_dialog_title:I

    .line 781
    const v0, 0x7f080007

    sput v0, Lorg/chromium/webapk/R$string;->notification_channel_name:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
