.class Lio/topvpn/vpn_api/svc$7$1;
.super Lio/topvpn/vpn_api/wget;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/svc$7;->on_changed(Lio/topvpn/vpn_api/ram$key;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/topvpn/vpn_api/svc$7;

.field final synthetic val$stamp:I


# direct methods
.method varargs constructor <init>(Lio/topvpn/vpn_api/svc$7;Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;I)V
    .locals 0

    .prologue
    .line 980
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$7$1;->this$1:Lio/topvpn/vpn_api/svc$7;

    iput p4, p0, Lio/topvpn/vpn_api/svc$7$1;->val$stamp:I

    invoke-direct {p0, p2, p3}, Lio/topvpn/vpn_api/wget;-><init>(Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;)V

    return-void
.end method


# virtual methods
.method public onfailure(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 3

    .prologue
    .line 999
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$7$1;->this$1:Lio/topvpn/vpn_api/svc$7;

    iget-object v0, v0, Lio/topvpn/vpn_api/svc$7;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x3

    const-string v2, "route_update_stamp.json failed"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    return-void
.end method

.method public onsuccess(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 3

    .prologue
    .line 983
    invoke-interface {p1}, Lio/topvpn/vpn_api/wget$connection;->as_json()Lorg/json/JSONObject;

    move-result-object v0

    .line 984
    if-nez v0, :cond_0

    .line 986
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/svc$7$1;->onfailure(Lio/topvpn/vpn_api/wget$connection;)V

    .line 996
    :goto_0
    return-void

    .line 989
    :cond_0
    const-string v1, "stamp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "stamp"

    .line 990
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lio/topvpn/vpn_api/svc$7$1;->val$stamp:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 991
    :goto_1
    if-eqz v0, :cond_2

    .line 992
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$7$1;->this$1:Lio/topvpn/vpn_api/svc$7;

    iget-object v0, v0, Lio/topvpn/vpn_api/svc$7;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x5

    const-string v2, "route_update_stamp.json success"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    goto :goto_0

    .line 990
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 994
    :cond_2
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$7$1;->this$1:Lio/topvpn/vpn_api/svc$7;

    iget-object v0, v0, Lio/topvpn/vpn_api/svc$7;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x3

    const-string v2, "route_update_stamp.json failed"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    goto :goto_0
.end method
