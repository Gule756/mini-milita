.class Lio/topvpn/vpn_api/svc$hola_svc_binder;
.super Landroid/os/Binder;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/svc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "hola_svc_binder"
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/svc;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 1096
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$hola_svc_binder;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public get_service()Lio/topvpn/vpn_api/svc;
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$hola_svc_binder;->this$0:Lio/topvpn/vpn_api/svc;

    return-object v0
.end method
