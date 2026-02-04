.class Lio/topvpn/vpn_api/ram;
.super Lio/topvpn/vpn_api/set_strict;
.source "ram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/topvpn/vpn_api/ram$listener;,
        Lio/topvpn/vpn_api/ram$svc_state;,
        Lio/topvpn/vpn_api/ram$key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/topvpn/vpn_api/set_strict",
        "<",
        "Lio/topvpn/vpn_api/ram$key;",
        ">;"
    }
.end annotation


# static fields
.field public static final APK_ADDED_STAMP:Lio/topvpn/vpn_api/ram$key;

.field public static final APP_FOREGROUND:Lio/topvpn/vpn_api/ram$key;

.field public static final APP_RUNNING:Lio/topvpn/vpn_api/ram$key;

.field public static final EXE_READY:Lio/topvpn/vpn_api/ram$key;

.field public static final IS_ACTIVE_PEER:Lio/topvpn/vpn_api/ram$key;

.field public static final RULES_STAMP:Lio/topvpn/vpn_api/ram$key;

.field public static final SESSION_KEY:Lio/topvpn/vpn_api/ram$key;

.field public static final SVC_CONNECTED:Lio/topvpn/vpn_api/ram$key;

.field public static final SVC_ROUTING:Lio/topvpn/vpn_api/ram$key;

.field public static final SVC_STATE:Lio/topvpn/vpn_api/ram$key;

.field public static final SVC_UP:Lio/topvpn/vpn_api/ram$key;

.field public static final USING_OLD_VERSION:Lio/topvpn/vpn_api/ram$key;

.field private static s_inited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Lio/topvpn/vpn_api/ram$key;

    const-string v1, "app_running"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/ram$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/ram$1;)V

    sput-object v0, Lio/topvpn/vpn_api/ram;->APP_RUNNING:Lio/topvpn/vpn_api/ram$key;

    .line 38
    new-instance v0, Lio/topvpn/vpn_api/ram$key;

    const-string v1, "app_foreground"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/ram$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/ram$1;)V

    sput-object v0, Lio/topvpn/vpn_api/ram;->APP_FOREGROUND:Lio/topvpn/vpn_api/ram$key;

    .line 39
    new-instance v0, Lio/topvpn/vpn_api/ram$key;

    const-string v1, "svc_up"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/ram$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/ram$1;)V

    sput-object v0, Lio/topvpn/vpn_api/ram;->SVC_UP:Lio/topvpn/vpn_api/ram$key;

    .line 51
    new-instance v0, Lio/topvpn/vpn_api/ram$key;

    const-string v1, "svc_state"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/ram$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/ram$1;)V

    sput-object v0, Lio/topvpn/vpn_api/ram;->SVC_STATE:Lio/topvpn/vpn_api/ram$key;

    .line 54
    new-instance v0, Lio/topvpn/vpn_api/ram$key;

    const-string v1, "apk_added_stamp"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/ram$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/ram$1;)V

    sput-object v0, Lio/topvpn/vpn_api/ram;->APK_ADDED_STAMP:Lio/topvpn/vpn_api/ram$key;

    .line 56
    new-instance v0, Lio/topvpn/vpn_api/ram$key;

    const-string v1, "session_key"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/ram$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/ram$1;)V

    sput-object v0, Lio/topvpn/vpn_api/ram;->SESSION_KEY:Lio/topvpn/vpn_api/ram$key;

    .line 57
    new-instance v0, Lio/topvpn/vpn_api/ram$key;

    const-string v1, "rules_stamp"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/ram$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/ram$1;)V

    sput-object v0, Lio/topvpn/vpn_api/ram;->RULES_STAMP:Lio/topvpn/vpn_api/ram$key;

    .line 59
    new-instance v0, Lio/topvpn/vpn_api/ram$key;

    const-string v1, "svc_connected"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/ram$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/ram$1;)V

    sput-object v0, Lio/topvpn/vpn_api/ram;->SVC_CONNECTED:Lio/topvpn/vpn_api/ram$key;

    .line 61
    new-instance v0, Lio/topvpn/vpn_api/ram$key;

    const-string v1, "svc_routing"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/ram$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/ram$1;)V

    sput-object v0, Lio/topvpn/vpn_api/ram;->SVC_ROUTING:Lio/topvpn/vpn_api/ram$key;

    .line 62
    new-instance v0, Lio/topvpn/vpn_api/ram$key;

    const-string v1, "exe_ready"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/ram$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/ram$1;)V

    sput-object v0, Lio/topvpn/vpn_api/ram;->EXE_READY:Lio/topvpn/vpn_api/ram$key;

    .line 63
    new-instance v0, Lio/topvpn/vpn_api/ram$key;

    const-string v1, "using_old_version"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/ram$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/ram$1;)V

    sput-object v0, Lio/topvpn/vpn_api/ram;->USING_OLD_VERSION:Lio/topvpn/vpn_api/ram$key;

    .line 64
    new-instance v0, Lio/topvpn/vpn_api/ram$key;

    const-string v1, "is_active_peer"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/ram$key;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/ram$1;)V

    sput-object v0, Lio/topvpn/vpn_api/ram;->IS_ACTIVE_PEER:Lio/topvpn/vpn_api/ram$key;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 13
    const-string v0, "ram"

    invoke-direct {p0, p1, v0}, Lio/topvpn/vpn_api/set_strict;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    const-class v1, Lio/topvpn/vpn_api/ram;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-boolean v0, Lio/topvpn/vpn_api/ram;->s_inited:Z

    if-eqz v0, :cond_0

    .line 16
    monitor-exit v1

    .line 20
    :goto_0
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Lio/topvpn/vpn_api/ram;->clear()V

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lio/topvpn/vpn_api/ram;->s_inited:Z

    .line 19
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected resolve_key(Ljava/lang/String;)Lio/topvpn/vpn_api/ram$key;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lio/topvpn/vpn_api/ram$key;->access$100()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/topvpn/vpn_api/ram$key;

    return-object v0
.end method

.method protected bridge synthetic resolve_key(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/ram;->resolve_key(Ljava/lang/String;)Lio/topvpn/vpn_api/ram$key;

    move-result-object v0

    return-object v0
.end method
