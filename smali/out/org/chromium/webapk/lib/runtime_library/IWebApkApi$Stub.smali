.class public abstract Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub;
.super Landroid/os/Binder;
.source "IWebApkApi.java"

# interfaces
.implements Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.chromium.webapk.lib.runtime_library.IWebApkApi"

.field static final TRANSACTION_cancelNotification:I = 0x3

.field static final TRANSACTION_getSmallIconId:I = 0x1

.field static final TRANSACTION_notificationPermissionEnabled:I = 0x4

.field static final TRANSACTION_notifyNotification:I = 0x2

.field static final TRANSACTION_notifyNotificationWithChannel:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "org.chromium.webapk.lib.runtime_library.IWebApkApi"

    invoke-virtual {p0, p0, v0}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;
    .registers 3

    .prologue
    .line 33
    if-nez p0, :cond_4

    .line 34
    const/4 v0, 0x0

    .line 41
    :goto_3
    return-object v0

    .line 36
    :cond_4
    const-string v0, "org.chromium.webapk.lib.runtime_library.IWebApkApi"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_13

    instance-of v1, v0, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;

    if-eqz v1, :cond_13

    .line 39
    check-cast v0, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi;

    goto :goto_3

    .line 41
    :cond_13
    new-instance v0, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 46
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 52
    sparse-switch p1, :sswitch_data_92

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_9
    return v1

    .line 54
    :sswitch_a
    const-string v0, "org.chromium.webapk.lib.runtime_library.IWebApkApi"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 58
    :sswitch_10
    const-string v0, "org.chromium.webapk.lib.runtime_library.IWebApkApi"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub;->getSmallIconId()I

    move-result v0

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 65
    :sswitch_20
    const-string v2, "org.chromium.webapk.lib.runtime_library.IWebApkApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3b

    .line 72
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    .line 76
    :cond_3b
    invoke-virtual {p0, v2, v3, v0}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub;->notifyNotification(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 81
    :sswitch_42
    const-string v0, "org.chromium.webapk.lib.runtime_library.IWebApkApi"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 86
    invoke-virtual {p0, v0, v2}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub;->cancelNotification(Ljava/lang/String;I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 91
    :sswitch_56
    const-string v0, "org.chromium.webapk.lib.runtime_library.IWebApkApi"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub;->notificationPermissionEnabled()Z

    move-result v0

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v0, :cond_69

    move v0, v1

    :goto_65
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :cond_69
    const/4 v0, 0x0

    goto :goto_65

    .line 98
    :sswitch_6b
    const-string v2, "org.chromium.webapk.lib.runtime_library.IWebApkApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_86

    .line 105
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    .line 110
    :cond_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {p0, v2, v3, v0, v4}, Lorg/chromium/webapk/lib/runtime_library/IWebApkApi$Stub;->notifyNotificationWithChannel(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 52
    :sswitch_data_92
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_42
        0x4 -> :sswitch_56
        0x5 -> :sswitch_6b
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
