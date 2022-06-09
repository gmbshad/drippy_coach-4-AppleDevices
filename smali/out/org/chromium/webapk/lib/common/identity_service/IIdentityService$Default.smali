.class public Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Default;
.super Ljava/lang/Object;
.source "IIdentityService.java"

# interfaces
.implements Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRuntimeHostBrowserPackageName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method
