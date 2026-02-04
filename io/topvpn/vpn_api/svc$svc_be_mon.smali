.class final Lio/topvpn/vpn_api/svc$svc_be_mon;
.super Landroid/os/Handler;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/svc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "svc_be_mon"
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/svc;


# direct methods
.method public constructor <init>(Lio/topvpn/vpn_api/svc;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$svc_be_mon;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 711
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_be_mon;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v0

    if-nez v0, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 731
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_be_mon;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "svc_be_mon msg unknown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    goto :goto_0

    .line 716
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 718
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_be_mon;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPED:Lio/topvpn/vpn_api/fsm$state;

    sget-object v2, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPING:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->set_state_if(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_be_mon;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPED:Lio/topvpn/vpn_api/fsm$state;

    sget-object v2, Lio/topvpn/vpn_api/svc$svc_fsm;->RESTARTING:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->set_state_if(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_be_mon;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->HALTED:Lio/topvpn/vpn_api/fsm$state;

    sget-object v2, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTED:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->set_state_if(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 723
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 725
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_be_mon;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTED:Lio/topvpn/vpn_api/fsm$state;

    sget-object v2, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTING:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->set_state_if(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_be_mon;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTED:Lio/topvpn/vpn_api/fsm$state;

    sget-object v2, Lio/topvpn/vpn_api/svc$svc_fsm;->RESTARTING:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->set_state_if(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 713
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
