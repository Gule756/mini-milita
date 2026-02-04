.class Lio/topvpn/vpn_api/state;
.super Lio/topvpn/vpn_api/set_strict;
.source "state.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/topvpn/vpn_api/state$listener;,
        Lio/topvpn/vpn_api/state$key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/topvpn/vpn_api/set_strict",
        "<",
        "Lio/topvpn/vpn_api/state$key;",
        ">;"
    }
.end annotation


# static fields
.field public static final BATTERY_LEVEL:Lio/topvpn/vpn_api/state$key;

.field public static final MOBILE_CONNECTED:Lio/topvpn/vpn_api/state$key;

.field public static final MOBILE_ENABLE:Lio/topvpn/vpn_api/state$key;

.field public static final ON_CALL:Lio/topvpn/vpn_api/state$key;

.field public static final ROAMING:Lio/topvpn/vpn_api/state$key;

.field public static final SCREEN_ON:Lio/topvpn/vpn_api/state$key;

.field public static final USING_BATTERY:Lio/topvpn/vpn_api/state$key;

.field public static final WIFI_CONNECTED:Lio/topvpn/vpn_api/state$key;

.field private static s_inited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    new-instance v0, Lio/topvpn/vpn_api/state$key;

    const-string v1, "using_battery"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/state$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/state$1;)V

    sput-object v0, Lio/topvpn/vpn_api/state;->USING_BATTERY:Lio/topvpn/vpn_api/state$key;

    .line 48
    new-instance v0, Lio/topvpn/vpn_api/state$key;

    const-string v1, "battery_level"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/state$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/state$1;)V

    sput-object v0, Lio/topvpn/vpn_api/state;->BATTERY_LEVEL:Lio/topvpn/vpn_api/state$key;

    .line 49
    new-instance v0, Lio/topvpn/vpn_api/state$key;

    const-string v1, "screen_on"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/state$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/state$1;)V

    sput-object v0, Lio/topvpn/vpn_api/state;->SCREEN_ON:Lio/topvpn/vpn_api/state$key;

    .line 50
    new-instance v0, Lio/topvpn/vpn_api/state$key;

    const-string v1, "wifi_connected"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/state$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/state$1;)V

    sput-object v0, Lio/topvpn/vpn_api/state;->WIFI_CONNECTED:Lio/topvpn/vpn_api/state$key;

    .line 51
    new-instance v0, Lio/topvpn/vpn_api/state$key;

    const-string v1, "mobile_connected"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/state$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/state$1;)V

    sput-object v0, Lio/topvpn/vpn_api/state;->MOBILE_CONNECTED:Lio/topvpn/vpn_api/state$key;

    .line 52
    new-instance v0, Lio/topvpn/vpn_api/state$key;

    const-string v1, "mobile_enable"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/state$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/state$1;)V

    sput-object v0, Lio/topvpn/vpn_api/state;->MOBILE_ENABLE:Lio/topvpn/vpn_api/state$key;

    .line 53
    new-instance v0, Lio/topvpn/vpn_api/state$key;

    const-string v1, "on_call"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/state$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/state$1;)V

    sput-object v0, Lio/topvpn/vpn_api/state;->ON_CALL:Lio/topvpn/vpn_api/state$key;

    .line 54
    new-instance v0, Lio/topvpn/vpn_api/state$key;

    const-string v1, "roaming"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/state$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/state$1;)V

    sput-object v0, Lio/topvpn/vpn_api/state;->ROAMING:Lio/topvpn/vpn_api/state$key;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 22
    const-string v0, "state"

    invoke-direct {p0, p1, v0}, Lio/topvpn/vpn_api/set_strict;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    const-class v1, Lio/topvpn/vpn_api/state;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-boolean v0, Lio/topvpn/vpn_api/state;->s_inited:Z

    if-eqz v0, :cond_0

    .line 25
    monitor-exit v1

    .line 30
    :goto_0
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lio/topvpn/vpn_api/state;->s_inited:Z

    .line 27
    invoke-virtual {p0}, Lio/topvpn/vpn_api/state;->clear()V

    .line 28
    invoke-direct {p0}, Lio/topvpn/vpn_api/state;->collect()V

    .line 29
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private collect()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x1

    .line 59
    iget-object v0, p0, Lio/topvpn/vpn_api/state;->m_app_context:Landroid/content/Context;

    const-string v1, "power"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 61
    iget-object v1, p0, Lio/topvpn/vpn_api/state;->m_app_context:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 63
    if-nez v4, :cond_0

    .line 65
    const-string v1, "battery_init_status"

    const-string v4, "registerReceiver no battery sticky intent"

    invoke-static {v1, v4}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v1, Lio/topvpn/vpn_api/state;->USING_BATTERY:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {p0, v1, v3}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;Z)V

    .line 83
    :goto_0
    sget-object v1, Lio/topvpn/vpn_api/state;->SCREEN_ON:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;Z)V

    .line 84
    iget-object v0, p0, Lio/topvpn/vpn_api/state;->m_app_context:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 86
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 87
    sget-object v4, Lio/topvpn/vpn_api/state;->WIFI_CONNECTED:Lio/topvpn/vpn_api/state$key;

    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    .line 87
    :goto_1
    invoke-virtual {p0, v4, v0}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;Z)V

    .line 89
    sget-object v4, Lio/topvpn/vpn_api/state;->MOBILE_CONNECTED:Lio/topvpn/vpn_api/state$key;

    if-eqz v1, :cond_4

    .line 90
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 89
    :goto_2
    invoke-virtual {p0, v4, v0}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;Z)V

    .line 91
    iget-object v0, p0, Lio/topvpn/vpn_api/state;->m_app_context:Landroid/content/Context;

    new-instance v1, Lio/topvpn/vpn_api/conf;

    iget-object v4, p0, Lio/topvpn/vpn_api/state;->m_app_context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lio/topvpn/vpn_api/conf;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, p0}, Lio/topvpn/vpn_api/util;->check_3g_usage(Landroid/content/Context;Lio/topvpn/vpn_api/conf;Lio/topvpn/vpn_api/state;)V

    .line 92
    iget-object v0, p0, Lio/topvpn/vpn_api/state;->m_app_context:Landroid/content/Context;

    const-string v1, "phone"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 94
    sget-object v1, Lio/topvpn/vpn_api/state;->ON_CALL:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-ne v0, v8, :cond_5

    :goto_3
    invoke-virtual {p0, v1, v2}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;Z)V

    .line 95
    iget-object v0, p0, Lio/topvpn/vpn_api/state;->m_app_context:Landroid/content/Context;

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->log_3g_usage(Landroid/content/Context;)V

    .line 96
    return-void

    .line 71
    :cond_0
    const-string v1, "plugged"

    invoke-virtual {v4, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 75
    sget-object v5, Lio/topvpn/vpn_api/state;->USING_BATTERY:Lio/topvpn/vpn_api/state$key;

    if-eq v1, v2, :cond_1

    if-eq v1, v8, :cond_1

    const/4 v6, 0x4

    if-eq v1, v6, :cond_1

    move v1, v2

    :goto_4
    invoke-virtual {p0, v5, v1}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;Z)V

    .line 78
    const-string v1, "level"

    invoke-virtual {v4, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 79
    const-string v5, "scale"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 80
    if-le v1, v7, :cond_2

    if-le v4, v7, :cond_2

    int-to-float v1, v1

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 81
    :goto_5
    sget-object v4, Lio/topvpn/vpn_api/state;->BATTERY_LEVEL:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {p0, v4, v1}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;F)V

    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 75
    goto :goto_4

    .line 80
    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_5

    :cond_3
    move v0, v3

    .line 88
    goto :goto_1

    :cond_4
    move v0, v3

    .line 90
    goto :goto_2

    :cond_5
    move v2, v3

    .line 94
    goto :goto_3
.end method


# virtual methods
.method protected resolve_key(Ljava/lang/String;)Lio/topvpn/vpn_api/state$key;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lio/topvpn/vpn_api/state$key;->s_register:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/topvpn/vpn_api/state$key;

    return-object v0
.end method

.method protected bridge synthetic resolve_key(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/state;->resolve_key(Ljava/lang/String;)Lio/topvpn/vpn_api/state$key;

    move-result-object v0

    return-object v0
.end method
