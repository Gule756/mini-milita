.class Lio/topvpn/vpn_api/svc$1;
.super Lio/topvpn/vpn_api/wget;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/svc;->callback_json(ILio/topvpn/vpn_api/svc$callback_json_cb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/svc;

.field final synthetic val$cb:Lio/topvpn/vpn_api/svc$callback_json_cb;


# direct methods
.method varargs constructor <init>(Lio/topvpn/vpn_api/svc;Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;Lio/topvpn/vpn_api/svc$callback_json_cb;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    iput-object p4, p0, Lio/topvpn/vpn_api/svc$1;->val$cb:Lio/topvpn/vpn_api/svc$callback_json_cb;

    invoke-direct {p0, p2, p3}, Lio/topvpn/vpn_api/wget;-><init>(Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;)V

    return-void
.end method


# virtual methods
.method public accept(Lio/topvpn/vpn_api/wget$connection;)Z
    .locals 2

    .prologue
    .line 606
    invoke-interface {p1}, Lio/topvpn/vpn_api/wget$connection;->get_code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onfailure(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 694
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0, v3}, Lio/topvpn/vpn_api/svc;->access$2202(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/wget;)Lio/topvpn/vpn_api/wget;

    .line 695
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x3

    const-string v2, "callback.json failed"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 696
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->val$cb:Lio/topvpn/vpn_api/svc$callback_json_cb;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->val$cb:Lio/topvpn/vpn_api/svc$callback_json_cb;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Lio/topvpn/vpn_api/svc$callback_json_cb;->cb(ZLorg/json/JSONObject;)V

    .line 698
    :cond_0
    return-void
.end method

.method public onslow()V
    .locals 3

    .prologue
    .line 701
    const/4 v0, 0x4

    const-string v1, "hola_svc_slow_exe_up"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onsuccess(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 12

    .prologue
    .line 609
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc;->access$2202(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/wget;)Lio/topvpn/vpn_api/wget;

    .line 610
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback.json\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lio/topvpn/vpn_api/wget$connection;->as_string()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 611
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    if-nez v0, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/conf;->CALLBACK_JSON_PERR:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 615
    const/4 v0, 0x5

    const-string v1, "callback_json"

    invoke-interface {p1}, Lio/topvpn/vpn_api/wget$connection;->as_string()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/conf;->CALLBACK_JSON_PERR:Lio/topvpn/vpn_api/conf$key;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 618
    :cond_2
    invoke-interface {p1}, Lio/topvpn/vpn_api/wget$connection;->as_json()Lorg/json/JSONObject;

    move-result-object v3

    .line 619
    if-nez v3, :cond_3

    .line 621
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/svc$1;->onfailure(Lio/topvpn/vpn_api/wget$connection;)V

    goto :goto_0

    .line 624
    :cond_3
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/ram;->EXE_READY:Lio/topvpn/vpn_api/ram$key;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/ram;->set(Ljava/lang/Object;Z)V

    .line 625
    const-string v0, "has_internet"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    .line 627
    :goto_1
    const-string v1, "protocol"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 628
    if-nez v1, :cond_c

    .line 630
    const-string v1, "get_json_null"

    const-string v2, ""

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v1, 0x0

    move v2, v1

    .line 635
    :goto_2
    if-eqz v2, :cond_4

    iget-object v1, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v1}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v1

    sget-object v4, Lio/topvpn/vpn_api/ram;->IS_ACTIVE_PEER:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v1, v4}, Lio/topvpn/vpn_api/ram;->get_bool(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 636
    iget-object v1, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    const-string v4, "idle"

    invoke-static {v1, v4}, Lio/topvpn/vpn_api/svc;->access$4000(Lio/topvpn/vpn_api/svc;Ljava/lang/String;)V

    .line 637
    :cond_4
    const-string v1, "routing"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    .line 638
    :goto_3
    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v4

    .line 639
    iget-object v6, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v6}, Lio/topvpn/vpn_api/svc;->access$4100(Lio/topvpn/vpn_api/svc;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 641
    iget-object v6, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v7, 0x5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "From start to first HTTP OK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 642
    invoke-virtual {p0}, Lio/topvpn/vpn_api/svc$1;->get_duration_ms()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 641
    invoke-static {v6, v7, v8}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 643
    iget-object v6, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v6, v4, v5}, Lio/topvpn/vpn_api/svc;->access$4102(Lio/topvpn/vpn_api/svc;J)J

    .line 645
    :cond_5
    iget-object v6, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v6}, Lio/topvpn/vpn_api/svc;->access$4200(Lio/topvpn/vpn_api/svc;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 647
    iget-object v6, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v6}, Lio/topvpn/vpn_api/svc;->access$4100(Lio/topvpn/vpn_api/svc;)J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x7d0

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    iget-object v6, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    .line 648
    invoke-static {v6}, Lio/topvpn/vpn_api/svc;->access$4300(Lio/topvpn/vpn_api/svc;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 650
    iget-object v6, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lio/topvpn/vpn_api/svc;->access$4302(Lio/topvpn/vpn_api/svc;Z)Z

    .line 651
    const/4 v6, 0x4

    const-string v7, "hola_svc_slow_conn_internet"

    const-string v8, ""

    invoke-static {v6, v7, v8}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_6
    if-eqz v0, :cond_7

    .line 655
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v6, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "From first HTTP OK to has_internet: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    .line 656
    invoke-static {v8}, Lio/topvpn/vpn_api/svc;->access$4100(Lio/topvpn/vpn_api/svc;)J

    move-result-wide v8

    sub-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 655
    invoke-static {v0, v6, v7}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 657
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0, v4, v5}, Lio/topvpn/vpn_api/svc;->access$4202(Lio/topvpn/vpn_api/svc;J)J

    .line 660
    :cond_7
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$4400(Lio/topvpn/vpn_api/svc;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_9

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$4200(Lio/topvpn/vpn_api/svc;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_9

    .line 662
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$4200(Lio/topvpn/vpn_api/svc;)J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0xbb8

    cmp-long v0, v6, v8

    if-lez v0, :cond_8

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    .line 663
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$4500(Lio/topvpn/vpn_api/svc;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 665
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v6, 0x1

    invoke-static {v0, v6}, Lio/topvpn/vpn_api/svc;->access$4502(Lio/topvpn/vpn_api/svc;Z)Z

    .line 666
    const/4 v0, 0x3

    const-string v6, "hola_svc_slow_conn_zserver"

    const-string v7, ""

    invoke-static {v0, v6, v7}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_8
    if-eqz v2, :cond_9

    .line 670
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v6, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "From has_internet to protocol.connected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    .line 671
    invoke-static {v8}, Lio/topvpn/vpn_api/svc;->access$4200(Lio/topvpn/vpn_api/svc;)J

    move-result-wide v8

    sub-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 670
    invoke-static {v0, v6, v7}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 672
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0, v4, v5}, Lio/topvpn/vpn_api/svc;->access$4402(Lio/topvpn/vpn_api/svc;J)J

    .line 675
    :cond_9
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v0

    sget-object v4, Lio/topvpn/vpn_api/ram;->SESSION_KEY:Lio/topvpn/vpn_api/ram$key;

    const-string v5, "session_key"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lio/topvpn/vpn_api/ram;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v0

    sget-object v4, Lio/topvpn/vpn_api/ram;->SVC_CONNECTED:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v4, v2}, Lio/topvpn/vpn_api/ram;->set(Ljava/lang/Object;Z)V

    .line 677
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v0

    sget-object v2, Lio/topvpn/vpn_api/ram;->SVC_ROUTING:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v2, v1}, Lio/topvpn/vpn_api/ram;->set(Ljava/lang/Object;Z)V

    .line 678
    const-string v0, "cid"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-static {v0}, Lio/topvpn/vpn_api/util;->atoi(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_a

    .line 681
    iget-object v1, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v1}, Lio/topvpn/vpn_api/svc;->access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;

    move-result-object v1

    sget-object v2, Lio/topvpn/vpn_api/conf;->CID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 682
    iget-object v2, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v2}, Lio/topvpn/vpn_api/svc;->access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;

    move-result-object v2

    sget-object v4, Lio/topvpn/vpn_api/conf;->CID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v4, v0}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 684
    const/4 v1, 0x5

    const-string v2, "has_cid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_a
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x5

    const-string v2, "callback_json success"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 689
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->val$cb:Lio/topvpn/vpn_api/svc$callback_json_cb;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$1;->val$cb:Lio/topvpn/vpn_api/svc$callback_json_cb;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v3}, Lio/topvpn/vpn_api/svc$callback_json_cb;->cb(ZLorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 625
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 634
    :cond_c
    const-string v2, "connected"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :goto_4
    move v2, v1

    goto/16 :goto_2

    :cond_d
    const/4 v1, 0x0

    goto :goto_4

    .line 637
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_3
.end method
