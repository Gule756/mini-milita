.class Lio/topvpn/vpn_api/svc$7;
.super Lio/topvpn/vpn_api/ram$listener;
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
    .line 971
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$7;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-direct {p0}, Lio/topvpn/vpn_api/ram$listener;-><init>()V

    return-void
.end method


# virtual methods
.method public on_changed(Lio/topvpn/vpn_api/ram$key;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 973
    sget-object v2, Lio/topvpn/vpn_api/ram;->APK_ADDED_STAMP:Lio/topvpn/vpn_api/ram$key;

    if-ne p1, v2, :cond_4

    .line 975
    iget-object v2, p0, Lio/topvpn/vpn_api/svc$7;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v2}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v2

    sget-object v3, Lio/topvpn/vpn_api/ram;->APK_ADDED_STAMP:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/ram;->get_int(Ljava/lang/Object;)I

    move-result v2

    .line 976
    iget-object v3, p0, Lio/topvpn/vpn_api/svc$7;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v3}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v3

    sget-object v4, Lio/topvpn/vpn_api/ram;->SVC_UP:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v3, v4}, Lio/topvpn/vpn_api/ram;->get_bool(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    new-instance v3, Lio/topvpn/vpn_api/svc$7$1;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "route_update_stamp.json?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "stamp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 979
    invoke-static {v5, v6}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 978
    invoke-static {v4}, Lio/topvpn/vpn_api/util;->cmd2url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Lio/topvpn/vpn_api/wget$option;

    const/16 v6, 0xa

    .line 979
    invoke-static {v6}, Lio/topvpn/vpn_api/wget;->attempts(I)Lio/topvpn/vpn_api/wget$option;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {v3, p0, v4, v5, v2}, Lio/topvpn/vpn_api/svc$7$1;-><init>(Lio/topvpn/vpn_api/svc$7;Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;I)V

    .line 1024
    :cond_2
    :goto_1
    sget-object v2, Lio/topvpn/vpn_api/ram;->IS_ACTIVE_PEER:Lio/topvpn/vpn_api/ram$key;

    if-eq p1, v2, :cond_3

    sget-object v2, Lio/topvpn/vpn_api/ram;->EXE_READY:Lio/topvpn/vpn_api/ram$key;

    if-eq p1, v2, :cond_3

    sget-object v2, Lio/topvpn/vpn_api/ram;->SVC_CONNECTED:Lio/topvpn/vpn_api/ram$key;

    if-ne p1, v2, :cond_0

    .line 1027
    :cond_3
    iget-object v2, p0, Lio/topvpn/vpn_api/svc$7;->this$0:Lio/topvpn/vpn_api/svc;

    iget-object v3, p0, Lio/topvpn/vpn_api/svc$7;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v3}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v3

    sget-object v4, Lio/topvpn/vpn_api/ram;->IS_ACTIVE_PEER:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v3, v4}, Lio/topvpn/vpn_api/ram;->get_bool(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lio/topvpn/vpn_api/svc$7;->this$0:Lio/topvpn/vpn_api/svc;

    .line 1028
    invoke-static {v3}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v3

    sget-object v4, Lio/topvpn/vpn_api/ram;->EXE_READY:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v3, v4}, Lio/topvpn/vpn_api/ram;->get_bool(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lio/topvpn/vpn_api/svc$7;->this$0:Lio/topvpn/vpn_api/svc;

    .line 1029
    invoke-static {v3}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v3

    sget-object v4, Lio/topvpn/vpn_api/ram;->SVC_CONNECTED:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v3, v4}, Lio/topvpn/vpn_api/ram;->get_bool(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1027
    :goto_2
    invoke-static {v2, v0}, Lio/topvpn/vpn_api/svc;->access$5200(Lio/topvpn/vpn_api/svc;Z)V

    goto :goto_0

    .line 1002
    :cond_4
    sget-object v2, Lio/topvpn/vpn_api/ram;->SVC_CONNECTED:Lio/topvpn/vpn_api/ram$key;

    if-ne p1, v2, :cond_8

    .line 1004
    iget-object v2, p0, Lio/topvpn/vpn_api/svc$7;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v2}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v2

    sget-object v3, Lio/topvpn/vpn_api/ram;->SVC_CONNECTED:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/ram;->get_bool(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1005
    iget-object v2, p0, Lio/topvpn/vpn_api/svc$7;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v2}, Lio/topvpn/vpn_api/svc;->access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;

    move-result-object v2

    sget-object v3, Lio/topvpn/vpn_api/conf;->LAST_SVC_CONNECTED:Lio/topvpn/vpn_api/conf$key;

    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    goto :goto_1

    .line 1008
    :cond_5
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v2

    int-to-long v2, v2

    .line 1009
    iget-object v4, p0, Lio/topvpn/vpn_api/svc$7;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v4}, Lio/topvpn/vpn_api/svc;->access$5100(Lio/topvpn/vpn_api/svc;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    iget-object v4, p0, Lio/topvpn/vpn_api/svc$7;->this$0:Lio/topvpn/vpn_api/svc;

    .line 1010
    invoke-static {v4}, Lio/topvpn/vpn_api/svc;->access$5100(Lio/topvpn/vpn_api/svc;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0x1499700

    cmp-long v4, v4, v6

    if-lez v4, :cond_7

    .line 1012
    :cond_6
    iget-object v4, p0, Lio/topvpn/vpn_api/svc$7;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-virtual {v4}, Lio/topvpn/vpn_api/svc;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lio/topvpn/vpn_api/auth;->get_instance(Landroid/content/Context;)Lio/topvpn/vpn_api/auth;

    move-result-object v4

    invoke-virtual {v4, v8, v0}, Lio/topvpn/vpn_api/auth;->login(Lio/topvpn/vpn_api/auth$login_cb;Z)V

    .line 1014
    iget-object v4, p0, Lio/topvpn/vpn_api/svc$7;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v4, v2, v3}, Lio/topvpn/vpn_api/svc;->access$5102(Lio/topvpn/vpn_api/svc;J)J

    .line 1016
    :cond_7
    iget-object v2, p0, Lio/topvpn/vpn_api/svc$7;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v2, v8}, Lio/topvpn/vpn_api/svc;->access$2000(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/state$key;)V

    goto/16 :goto_1

    .line 1019
    :cond_8
    sget-object v2, Lio/topvpn/vpn_api/ram;->EXE_READY:Lio/topvpn/vpn_api/ram$key;

    if-ne p1, v2, :cond_2

    .line 1021
    iget-object v2, p0, Lio/topvpn/vpn_api/svc$7;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v2}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v2

    sget-object v3, Lio/topvpn/vpn_api/ram;->EXE_READY:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/ram;->get_bool(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1022
    iget-object v2, p0, Lio/topvpn/vpn_api/svc$7;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v2}, Lio/topvpn/vpn_api/svc;->access$4600(Lio/topvpn/vpn_api/svc;)V

    goto/16 :goto_1

    :cond_9
    move v0, v1

    .line 1029
    goto :goto_2
.end method

.method public bridge synthetic on_changed(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 971
    check-cast p1, Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/svc$7;->on_changed(Lio/topvpn/vpn_api/ram$key;)V

    return-void
.end method
