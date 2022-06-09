.class public Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;
.super Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub;
.source "WebApkServiceImplWrapper.java"


# static fields
.field private static final DEFAULT_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "default_channel_id"

.field private static final FUNCTION_NAME_NOTIFY_NOTIFICATION:Ljava/lang/String; = "TRANSACTION_notifyNotification"

.field private static final TAG:Ljava/lang/String; = "cr_WebApkService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHostUid:I

.field private mIBinderDelegate:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;I)V
    .registers 4

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->mIBinderDelegate:Landroid/os/IBinder;

    .line 53
    iput p3, p0, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->mHostUid:I

    .line 54
    return-void
.end method

.method private delegateNotifyNotification(Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 9

    .prologue
    .line 179
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->mIBinderDelegate:Landroid/os/IBinder;

    if-nez v0, :cond_5

    .line 191
    :goto_4
    return-void

    .line 184
    :cond_5
    :try_start_5
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->mIBinderDelegate:Landroid/os/IBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "notifyNotification"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/app/Notification;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 186
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 187
    iget-object v1, p0, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->mIBinderDelegate:Landroid/os/IBinder;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3c} :catch_3d

    goto :goto_4

    .line 188
    :catch_3d
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private delegateOnTransactMethod(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->mIBinderDelegate:Landroid/os/IBinder;

    if-nez v0, :cond_7

    move v0, v1

    .line 160
    :goto_6
    return v0

    .line 152
    :cond_7
    :try_start_7
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->mIBinderDelegate:Landroid/os/IBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "onTransact"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/Parcel;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/os/Parcel;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 154
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 155
    iget-object v2, p0, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->mIBinderDelegate:Landroid/os/IBinder;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_50} :catch_52

    move-result v0

    goto :goto_6

    .line 156
    :catch_52
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 160
    goto :goto_6
.end method

.method private static rebuildNotificationWithChannelId(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 169
    invoke-static {p0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 170
    const-string v1, "default_channel_id"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 171
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelNotification(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 101
    const-string v0, "cr_WebApkService"

    const-string v1, "Should NOT reach WebApkServiceImplWrapper#cancelNotification(String, int)."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method protected ensureNotificationChannelExists()V
    .registers 6

    .prologue
    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_23

    .line 117
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 119
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "default_channel_id"

    iget-object v3, p0, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->mContext:Landroid/content/Context;

    sget v4, Lorg/chromium/webapk/R$string;->notification_channel_name:I

    .line 120
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 124
    :cond_23
    return-void
.end method

.method protected getApiCode(Ljava/lang/String;)I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 127
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->mIBinderDelegate:Landroid/os/IBinder;

    if-nez v0, :cond_7

    move v0, v1

    .line 139
    :goto_6
    return v0

    .line 132
    :cond_7
    :try_start_7
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->mIBinderDelegate:Landroid/os/IBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 133
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 134
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_23} :catch_25

    move-result v0

    goto :goto_6

    .line 135
    :catch_25
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 139
    goto :goto_6
.end method

.method public getSmallIconId()I
    .registers 3

    .prologue
    .line 76
    const-string v0, "cr_WebApkService"

    const-string v1, "Should NOT reach WebApkServiceImplWrapper#getSmallIconId()."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, -0x1

    return v0
.end method

.method public notificationPermissionEnabled()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    const-string v0, "cr_WebApkService"

    const-string v1, "Should NOT reach WebApkServiceImplWrapper#notificationPermissionEnabled()."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public notifyNotification(Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 6

    .prologue
    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_f

    .line 93
    invoke-virtual {p0}, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->ensureNotificationChannelExists()V

    .line 94
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->rebuildNotificationWithChannelId(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object p3

    .line 96
    :cond_f
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->delegateNotifyNotification(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 97
    return-void
.end method

.method public notifyNotificationWithChannel(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 107
    const-string v0, "cr_WebApkService"

    const-string v1, "Should NOT reach WebApkServiceImplWrapper#notifyNotificationWithChannel(String, int, Notification, String)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    const-string v0, "TRANSACTION_notifyNotification"

    invoke-virtual {p0, v0}, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->getApiCode(Ljava/lang/String;)I

    move-result v0

    .line 60
    if-ne p1, v0, :cond_3a

    .line 63
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 64
    iget v1, p0, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->mHostUid:I

    if-eq v1, v0, :cond_35

    .line 65
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unauthorized caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not match expected host="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->mHostUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_35
    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 71
    :goto_39
    return v0

    :cond_3a
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/webapk/shell_apk/WebApkServiceImplWrapper;->delegateOnTransactMethod(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    goto :goto_39
.end method
