.class public Lorg/chromium/webapk/shell_apk/IdentityService;
.super Landroid/app/Service;
.source "IdentityService.java"


# instance fields
.field private final mBinder:Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 16
    new-instance v0, Lorg/chromium/webapk/shell_apk/IdentityService$1;

    invoke-direct {v0, p0}, Lorg/chromium/webapk/shell_apk/IdentityService$1;-><init>(Lorg/chromium/webapk/shell_apk/IdentityService;)V

    iput-object v0, p0, Lorg/chromium/webapk/shell_apk/IdentityService;->mBinder:Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/IdentityService;->mBinder:Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub;

    return-object v0
.end method
