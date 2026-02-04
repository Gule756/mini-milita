.class Lio/topvpn/vpn_api/svc$10;
.super Landroid/telephony/PhoneStateListener;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/svc;->onCreate()V
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
    .line 1147
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$10;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 1150
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$10;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$4700(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/state;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1163
    :goto_0
    return-void

    .line 1153
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1156
    :pswitch_0
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$10;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$4700(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/state;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/state;->ON_CALL:Lio/topvpn/vpn_api/state$key;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 1160
    :pswitch_1
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$10;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$4700(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/state;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/state;->ON_CALL:Lio/topvpn/vpn_api/state$key;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 1153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
