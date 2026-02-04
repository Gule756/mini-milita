.class public Lio/topvpn/vpn_api/bcast_recv;
.super Landroid/content/BroadcastReceiver;
.source "bcast_recv.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private do_action(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 8

    .prologue
    .line 19
    new-instance v1, Lio/topvpn/vpn_api/conf;

    invoke-direct {v1, p1}, Lio/topvpn/vpn_api/conf;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Lio/topvpn/vpn_api/ram;

    invoke-direct {v0, p1}, Lio/topvpn/vpn_api/ram;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v2, Lio/topvpn/vpn_api/state;

    invoke-direct {v2, p1}, Lio/topvpn/vpn_api/state;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 25
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    const/4 v5, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v4, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lio/topvpn/vpn_api/bcast_recv;->zerr(ILjava/lang/String;)I

    .line 27
    :cond_0
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    invoke-static {p1}, Lio/topvpn/vpn_api/svc;->stop(Landroid/content/Context;)V

    .line 99
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 29
    :cond_2
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    sget-object v0, Lio/topvpn/vpn_api/conf;->LAST_USAGE_TS:Lio/topvpn/vpn_api/conf$key;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v0, v2, v3}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 32
    sget-object v0, Lio/topvpn/vpn_api/conf;->LAST_USAGE_BYTES:Lio/topvpn/vpn_api/conf$key;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 33
    sget-object v0, Lio/topvpn/vpn_api/conf;->SINCE_BOOT_3G_BYTES:Lio/topvpn/vpn_api/conf$key;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 34
    invoke-static {p1}, Lio/topvpn/vpn_api/svc;->start(Landroid/content/Context;)V

    goto :goto_1

    .line 36
    :cond_3
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39
    if-nez v4, :cond_4

    .line 40
    const/4 v0, -0x1

    goto :goto_2

    .line 43
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 44
    const/4 v0, -0x1

    goto :goto_2

    .line 45
    :cond_5
    invoke-static {p1}, Lio/topvpn/vpn_api/svc;->start(Landroid/content/Context;)V

    goto :goto_1

    .line 47
    :cond_6
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "android.intent.action.MEDIA_EJECT"

    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 51
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lio/topvpn/vpn_api/conf;->WORKDIR:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {p1}, Lio/topvpn/vpn_api/util;->get_workdir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 54
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 55
    :cond_9
    invoke-static {p1, v1}, Lio/topvpn/vpn_api/util;->util_reinit_workdir(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    invoke-static {p1}, Lio/topvpn/vpn_api/svc;->start(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 58
    :cond_a
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 62
    sget-object v0, Lio/topvpn/vpn_api/state;->USING_BATTERY:Lio/topvpn/vpn_api/state$key;

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;Z)V

    goto/16 :goto_1

    .line 64
    :cond_b
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 65
    sget-object v0, Lio/topvpn/vpn_api/state;->USING_BATTERY:Lio/topvpn/vpn_api/state$key;

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;Z)V

    goto/16 :goto_1

    .line 66
    :cond_c
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 67
    sget-object v0, Lio/topvpn/vpn_api/state;->SCREEN_ON:Lio/topvpn/vpn_api/state$key;

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;Z)V

    goto/16 :goto_1

    .line 68
    :cond_d
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 69
    sget-object v0, Lio/topvpn/vpn_api/state;->SCREEN_ON:Lio/topvpn/vpn_api/state$key;

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;Z)V

    goto/16 :goto_1

    .line 70
    :cond_e
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 72
    const-string v0, "connectivity"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 74
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 75
    sget-object v4, Lio/topvpn/vpn_api/state;->WIFI_CONNECTED:Lio/topvpn/vpn_api/state$key;

    if-eqz v3, :cond_f

    .line 76
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_f

    const/4 v0, 0x1

    .line 75
    :goto_3
    invoke-virtual {v2, v4, v0}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;Z)V

    .line 77
    sget-object v4, Lio/topvpn/vpn_api/state;->MOBILE_CONNECTED:Lio/topvpn/vpn_api/state$key;

    if-eqz v3, :cond_10

    .line 78
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 77
    :goto_4
    invoke-virtual {v2, v4, v0}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;Z)V

    .line 79
    invoke-static {p1}, Lio/topvpn/vpn_api/util;->log_3g_usage(Landroid/content/Context;)V

    .line 80
    invoke-static {p1, v1, v2}, Lio/topvpn/vpn_api/util;->check_3g_usage(Landroid/content/Context;Lio/topvpn/vpn_api/conf;Lio/topvpn/vpn_api/state;)V

    goto/16 :goto_1

    .line 76
    :cond_f
    const/4 v0, 0x0

    goto :goto_3

    .line 78
    :cond_10
    const/4 v0, 0x0

    goto :goto_4

    .line 82
    :cond_11
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 84
    const-string v0, "phone"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 86
    sget-object v1, Lio/topvpn/vpn_api/state;->ON_CALL:Lio/topvpn/vpn_api/state$key;

    .line 87
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_12

    const/4 v0, 0x1

    .line 86
    :goto_5
    invoke-virtual {v2, v1, v0}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;Z)V

    goto/16 :goto_1

    .line 87
    :cond_12
    const/4 v0, 0x0

    goto :goto_5

    .line 89
    :cond_13
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 91
    const-string v0, "level"

    const/4 v3, -0x1

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 92
    const-string v3, "scale"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 93
    const/4 v4, -0x1

    if-le v0, v4, :cond_14

    const/4 v4, -0x1

    if-le v3, v4, :cond_14

    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 94
    :goto_6
    sget-object v3, Lio/topvpn/vpn_api/state;->BATTERY_LEVEL:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v2, v3, v0}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;F)V

    .line 95
    invoke-static {p1, v1, v2}, Lio/topvpn/vpn_api/util;->check_3g_usage(Landroid/content/Context;Lio/topvpn/vpn_api/conf;Lio/topvpn/vpn_api/state;)V

    goto/16 :goto_1

    .line 93
    :cond_14
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_6

    .line 98
    :cond_15
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/bcast_recv;->zerr(ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_2
.end method

.method private static zerr(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 16
    const-string v0, "bcast_recv"

    invoke-static {v0, p0, p1}, Lio/topvpn/vpn_api/util;->_zerr(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 105
    :try_start_0
    invoke-static {p1}, Lio/topvpn/vpn_api/util;->util_init(Landroid/content/Context;)I

    .line 106
    const/4 v0, 0x7

    const-string v1, "started"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/bcast_recv;->zerr(ILjava/lang/String;)I

    .line 107
    invoke-static {}, Lio/topvpn/vpn_api/util;->is_debug_layout()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "shutdown"

    invoke-static {v2, v0}, Lio/topvpn/vpn_api/bcast_recv;->zerr(ILjava/lang/String;)I

    .line 112
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_uninit()V

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lio/topvpn/vpn_api/bcast_recv;->do_action(Landroid/content/Context;Landroid/content/Intent;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    const-string v0, "shutdown"

    invoke-static {v2, v0}, Lio/topvpn/vpn_api/bcast_recv;->zerr(ILjava/lang/String;)I

    .line 112
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_uninit()V

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    const-string v1, "shutdown"

    invoke-static {v2, v1}, Lio/topvpn/vpn_api/bcast_recv;->zerr(ILjava/lang/String;)I

    .line 112
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_uninit()V

    throw v0
.end method
