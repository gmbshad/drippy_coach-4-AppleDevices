.class Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIdentityService.java"

# interfaces
.implements Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 80
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    const-string v0, "org.chromium.webapk.lib.common.identity_service.IIdentityService"

    return-object v0
.end method

.method public getRuntimeHostBrowserPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 94
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 97
    :try_start_8
    const-string v0, "org.chromium.webapk.lib.common.identity_service.IIdentityService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 99
    if-nez v0, :cond_2c

    invoke-static {}, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub;->getDefaultImpl()Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 100
    invoke-static {}, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub;->getDefaultImpl()Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;->getRuntimeHostBrowserPackageName()Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result-object v0

    .line 106
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 109
    :goto_2b
    return-object v0

    .line 102
    :cond_2c
    :try_start_2c
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 103
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result-object v0

    .line 106
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 106
    :catchall_3a
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 108
    throw v0
.end method
