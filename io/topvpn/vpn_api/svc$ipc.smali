.class Lio/topvpn/vpn_api/svc$ipc;
.super Ljava/lang/Object;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/svc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ipc"
.end annotation


# instance fields
.field private m_svc:Lio/topvpn/vpn_api/svc;

.field final synthetic this$0:Lio/topvpn/vpn_api/svc;


# direct methods
.method public constructor <init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$ipc;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/topvpn/vpn_api/svc$ipc;->m_svc:Lio/topvpn/vpn_api/svc;

    return-void
.end method

.method static synthetic access$000(Lio/topvpn/vpn_api/svc$ipc;)Lio/topvpn/vpn_api/svc;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$ipc;->m_svc:Lio/topvpn/vpn_api/svc;

    return-object v0
.end method


# virtual methods
.method public ipc_unblocker_json_set(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 67
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "unblocker_json_set"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "-1"

    aput-object v2, v1, v0

    const/4 v2, 0x2

    instance-of v0, p1, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v1, v2

    .line 68
    new-instance v0, Lio/topvpn/vpn_api/svc$ipc$1;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lio/topvpn/vpn_api/util$ipc_result;

    .line 69
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4}, Lio/topvpn/vpn_api/util$ipc_result;-><init>(Lio/topvpn/vpn_api/util;)V

    invoke-direct {v0, p0, v2, v1, v3}, Lio/topvpn/vpn_api/svc$ipc$1;-><init>(Lio/topvpn/vpn_api/svc$ipc;Lio/topvpn/vpn_api/util;[Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;)V

    .line 77
    iget-object v1, p0, Lio/topvpn/vpn_api/svc$ipc;->m_svc:Lio/topvpn/vpn_api/svc;

    invoke-static {v1}, Lio/topvpn/vpn_api/svc;->access$200(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/util$ipc_thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/topvpn/vpn_api/util$ipc_thread;->request(Lio/topvpn/vpn_api/util$ipc_request;)V

    .line 78
    return-void

    .line 67
    :cond_0
    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
