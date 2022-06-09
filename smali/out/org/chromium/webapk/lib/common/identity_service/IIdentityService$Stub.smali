.class public abstract Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub;
.super Landroid/os/Binder;
.source "IIdentityService.java"

# interfaces
.implements Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.chromium.webapk.lib.common.identity_service.IIdentityService"

.field static final TRANSACTION_getRuntimeHostBrowserPackageName:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "org.chromium.webapk.lib.common.identity_service.IIdentityService"

    invoke-virtual {p0, p0, v0}, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;
    .registers 3

    .prologue
    .line 37
    if-nez p0, :cond_4

    .line 38
    const/4 v0, 0x0

    .line 44
    :goto_3
    return-object v0

    .line 40
    :cond_4
    const-string v0, "org.chromium.webapk.lib.common.identity_service.IIdentityService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_13

    instance-of v1, v0, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;

    if-eqz v1, :cond_13

    .line 42
    check-cast v0, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;

    goto :goto_3

    .line 44
    :cond_13
    new-instance v0, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method public static getDefaultImpl()Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;
    .registers 1

    .prologue
    .line 122
    sget-object v0, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub$Proxy;->sDefaultImpl:Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;

    return-object v0
.end method

.method public static setDefaultImpl(Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;)Z
    .registers 2

    .prologue
    .line 115
    sget-object v0, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub$Proxy;->sDefaultImpl:Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 116
    sput-object p0, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub$Proxy;->sDefaultImpl:Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;

    .line 117
    const/4 v0, 0x1

    .line 119
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 52
    const-string v1, "org.chromium.webapk.lib.common.identity_service.IIdentityService"

    .line 53
    sparse-switch p1, :sswitch_data_1e

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    .line 57
    :sswitch_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 62
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub;->getRuntimeHostBrowserPackageName()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 53
    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
