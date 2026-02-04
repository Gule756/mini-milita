.class Lio/topvpn/vpn_api/svc$13;
.super Lio/topvpn/vpn_api/util$ipc_request;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/svc;->ipc_set_notify_multi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/svc;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/util;[Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;)V
    .locals 0

    .prologue
    .line 1416
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$13;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, p3, p4}, Lio/topvpn/vpn_api/util$ipc_request;-><init>(Lio/topvpn/vpn_api/util;[Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;)V

    return-void
.end method


# virtual methods
.method public on_ipc_finish(I)V
    .locals 4

    .prologue
    .line 1418
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$13;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1500(Lio/topvpn/vpn_api/svc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1429
    :goto_0
    return-void

    .line 1420
    :cond_0
    if-eqz p1, :cond_1

    .line 1422
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$13;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set_notify_multi failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 1423
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$13;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1800(Lio/topvpn/vpn_api/svc;)V

    goto :goto_0

    .line 1426
    :cond_1
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$13;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x1

    new-instance v2, Lio/topvpn/vpn_api/svc$13$1;

    invoke-direct {v2, p0}, Lio/topvpn/vpn_api/svc$13$1;-><init>(Lio/topvpn/vpn_api/svc$13;)V

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$2100(Lio/topvpn/vpn_api/svc;ILio/topvpn/vpn_api/svc$callback_json_cb;)V

    .line 1428
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$13;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1800(Lio/topvpn/vpn_api/svc;)V

    goto :goto_0
.end method
