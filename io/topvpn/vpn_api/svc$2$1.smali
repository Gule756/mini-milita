.class Lio/topvpn/vpn_api/svc$2$1;
.super Ljava/lang/Object;
.source "svc.java"

# interfaces
.implements Lio/topvpn/vpn_api/auth$login_cb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/svc$2;->on_changed(Lio/topvpn/vpn_api/conf$key;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/topvpn/vpn_api/svc$2;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/svc$2;)V
    .locals 0

    .prologue
    .line 769
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$2$1;->this$1:Lio/topvpn/vpn_api/svc$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cb(Z)V
    .locals 0

    .prologue
    .line 769
    return-void
.end method
