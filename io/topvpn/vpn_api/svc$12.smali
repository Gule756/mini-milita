.class Lio/topvpn/vpn_api/svc$12;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/svc;->monitor_network()V
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
    .line 1195
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$12;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .prologue
    .line 1198
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$12;->this$0:Lio/topvpn/vpn_api/svc;

    const-string v1, "connectivity"

    .line 1199
    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/svc;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1200
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    .line 1201
    if-nez v0, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1204
    iget-object v1, p0, Lio/topvpn/vpn_api/svc$12;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v1}, Lio/topvpn/vpn_api/svc;->access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/topvpn/vpn_api/svc$12;->this$0:Lio/topvpn/vpn_api/svc;

    .line 1205
    invoke-static {v1}, Lio/topvpn/vpn_api/svc;->access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;

    move-result-object v1

    sget-object v2, Lio/topvpn/vpn_api/conf;->DEV_TYPES:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1207
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$12;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$5300(Lio/topvpn/vpn_api/svc;)I

    goto :goto_0
.end method
