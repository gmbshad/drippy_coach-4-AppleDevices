.class public interface abstract Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;
.super Ljava/lang/Object;
.source "IIdentityService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub;,
        Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Default;
    }
.end annotation


# virtual methods
.method public abstract getRuntimeHostBrowserPackageName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
