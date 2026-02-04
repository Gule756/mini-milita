.class Lio/topvpn/vpn_api/svc$6;
.super Lio/topvpn/vpn_api/util$ipc_request;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/svc;->ipc_notify_user_status(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/svc;

.field final synthetic val$ipc_res:Lio/topvpn/vpn_api/util$ipc_result;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/util;[Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;)V
    .locals 0

    .prologue
    .line 958
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$6;->this$0:Lio/topvpn/vpn_api/svc;

    iput-object p5, p0, Lio/topvpn/vpn_api/svc$6;->val$s:Ljava/lang/String;

    iput-object p6, p0, Lio/topvpn/vpn_api/svc$6;->val$ipc_res:Lio/topvpn/vpn_api/util$ipc_result;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, p3, p4}, Lio/topvpn/vpn_api/util$ipc_request;-><init>(Lio/topvpn/vpn_api/util;[Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;)V

    return-void
.end method


# virtual methods
.method public on_ipc_finish(I)V
    .locals 4

    .prologue
    .line 960
    iget-object v1, p0, Lio/topvpn/vpn_api/svc$6;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v2, 0x6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ipc notify user status "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lio/topvpn/vpn_api/svc$6;->val$s:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_0

    const-string v0, " OK"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " retval "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lio/topvpn/vpn_api/svc$6;->val$ipc_res:Lio/topvpn/vpn_api/util$ipc_result;

    iget v3, v3, Lio/topvpn/vpn_api/util$ipc_result;->retval:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " out "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lio/topvpn/vpn_api/svc$6;->val$ipc_res:Lio/topvpn/vpn_api/util$ipc_result;

    iget-object v3, v3, Lio/topvpn/vpn_api/util$ipc_result;->out:[B

    .line 962
    invoke-static {v3}, Lio/topvpn/vpn_api/util;->bytes2hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " err "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lio/topvpn/vpn_api/svc$6;->val$ipc_res:Lio/topvpn/vpn_api/util$ipc_result;

    iget-object v3, v3, Lio/topvpn/vpn_api/util$ipc_result;->err:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 960
    invoke-static {v1, v2, v0}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 963
    return-void

    .line 960
    :cond_0
    const-string v0, " FAILED"

    goto :goto_0
.end method
