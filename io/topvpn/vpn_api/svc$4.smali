.class Lio/topvpn/vpn_api/svc$4;
.super Ljava/util/TimerTask;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/svc;->idle_time_monitor_schedualer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/svc;

.field final synthetic val$cur:I


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/svc;I)V
    .locals 0

    .prologue
    .line 835
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$4;->this$0:Lio/topvpn/vpn_api/svc;

    iput p2, p0, Lio/topvpn/vpn_api/svc$4;->val$cur:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 837
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "peer_on_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/topvpn/vpn_api/svc$4;->this$0:Lio/topvpn/vpn_api/svc;

    .line 838
    invoke-static {v2}, Lio/topvpn/vpn_api/svc;->access$4900(Lio/topvpn/vpn_api/svc;)[I

    move-result-object v2

    iget v3, p0, Lio/topvpn/vpn_api/svc$4;->val$cur:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "min"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 837
    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$4;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$5000(Lio/topvpn/vpn_api/svc;)V

    .line 840
    return-void
.end method
