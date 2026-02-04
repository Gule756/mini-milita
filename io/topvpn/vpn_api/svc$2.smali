.class Lio/topvpn/vpn_api/svc$2;
.super Lio/topvpn/vpn_api/conf$listener;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/svc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/svc;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 740
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$2;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-direct {p0}, Lio/topvpn/vpn_api/conf$listener;-><init>()V

    return-void
.end method


# virtual methods
.method public on_changed(Lio/topvpn/vpn_api/conf$key;)V
    .locals 3

    .prologue
    .line 742
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$2;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v0

    if-nez v0, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    sget-object v0, Lio/topvpn/vpn_api/conf;->WORKDIR:Lio/topvpn/vpn_api/conf$key;

    if-ne p1, v0, :cond_2

    .line 746
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$2;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x7

    const-string v2, "want to restart due to workdir change"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 747
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$2;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->RESTARTING:Lio/topvpn/vpn_api/fsm$state;

    sget-object v2, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTED:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->set_state_if(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 748
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$2;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v0

    invoke-virtual {v0}, Lio/topvpn/vpn_api/svc$svc_fsm;->schedule_stop()V

    goto :goto_0

    .line 750
    :cond_2
    sget-object v0, Lio/topvpn/vpn_api/conf;->SVC_ERROR:Lio/topvpn/vpn_api/conf$key;

    if-ne p1, v0, :cond_4

    .line 753
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$2;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/conf;->SVC_ERROR:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->exist(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 755
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$2;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE_ERR:Lio/topvpn/vpn_api/fsm$state;

    sget-object v2, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->set_state_if(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$2;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v0

    invoke-virtual {v0}, Lio/topvpn/vpn_api/svc$svc_fsm;->get_state()Lio/topvpn/vpn_api/fsm$state;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE_ERR:Lio/topvpn/vpn_api/fsm$state;

    if-eq v0, v1, :cond_0

    .line 757
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$2;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPING:Lio/topvpn/vpn_api/fsm$state;

    sget-object v2, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTED:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->set_state_if(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$2;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v0

    invoke-virtual {v0}, Lio/topvpn/vpn_api/svc$svc_fsm;->schedule_stop()V

    goto :goto_0

    .line 764
    :cond_3
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$2;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE:Lio/topvpn/vpn_api/fsm$state;

    sget-object v2, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE_ERR:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->set_state_if(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)Z

    goto :goto_0

    .line 766
    :cond_4
    sget-object v0, Lio/topvpn/vpn_api/conf;->CID:Lio/topvpn/vpn_api/conf$key;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$2;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/conf;->CID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 768
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$2;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/svc;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/auth;->get_instance(Landroid/content/Context;)Lio/topvpn/vpn_api/auth;

    move-result-object v0

    new-instance v1, Lio/topvpn/vpn_api/svc$2$1;

    invoke-direct {v1, p0}, Lio/topvpn/vpn_api/svc$2$1;-><init>(Lio/topvpn/vpn_api/svc$2;)V

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/auth;->login(Lio/topvpn/vpn_api/auth$login_cb;)V

    goto/16 :goto_0

    .line 771
    :cond_5
    sget-object v0, Lio/topvpn/vpn_api/conf;->SESSION_KEY_JAVA:Lio/topvpn/vpn_api/conf$key;

    if-ne p1, v0, :cond_0

    .line 773
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$2;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/ram;->EXE_READY:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/ram;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$2;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$4600(Lio/topvpn/vpn_api/svc;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic on_changed(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 740
    check-cast p1, Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/svc$2;->on_changed(Lio/topvpn/vpn_api/conf$key;)V

    return-void
.end method
