.class Lorg/chromium/webapk/shell_apk/IdentityService$1;
.super Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub;
.source "IdentityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/webapk/shell_apk/IdentityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/webapk/shell_apk/IdentityService;


# direct methods
.method constructor <init>(Lorg/chromium/webapk/shell_apk/IdentityService;)V
    .registers 2

    .prologue
    .line 16
    iput-object p1, p0, Lorg/chromium/webapk/shell_apk/IdentityService$1;->this$0:Lorg/chromium/webapk/shell_apk/IdentityService;

    invoke-direct {p0}, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getRuntimeHostBrowserPackageName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 19
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 21
    :try_start_4
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/IdentityService$1;->this$0:Lorg/chromium/webapk/shell_apk/IdentityService;

    invoke-virtual {v0}, Lorg/chromium/webapk/shell_apk/IdentityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/webapk/shell_apk/HostBrowserUtils;->getHostBrowserPackageName(Landroid/content/Context;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    move-result-object v0

    .line 23
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 21
    return-object v0

    .line 23
    :catchall_12
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 24
    throw v0
.end method
