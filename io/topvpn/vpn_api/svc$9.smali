.class Lio/topvpn/vpn_api/svc$9;
.super Ljava/util/TimerTask;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/svc;->update_vpn_api_svc(Lio/topvpn/vpn_api/svc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/svc;

.field final synthetic val$_svc:Lio/topvpn/vpn_api/svc;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 1082
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$9;->this$0:Lio/topvpn/vpn_api/svc;

    iput-object p2, p0, Lio/topvpn/vpn_api/svc$9;->val$_svc:Lio/topvpn/vpn_api/svc;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1085
    new-instance v0, Lio/topvpn/vpn_api/svc$svc_update;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc$9;->this$0:Lio/topvpn/vpn_api/svc;

    iget-object v2, p0, Lio/topvpn/vpn_api/svc$9;->val$_svc:Lio/topvpn/vpn_api/svc;

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_update;-><init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/svc;)V

    return-void
.end method
