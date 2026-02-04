.class public Lio/topvpn/vpn_api/util$ipc_thread;
.super Ljava/lang/Object;
.source "util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ipc_thread"
.end annotation


# instance fields
.field m_c:Landroid/content/Context;

.field m_handler:Landroid/os/Handler;

.field m_thread:Landroid/os/HandlerThread;

.field final synthetic this$0:Lio/topvpn/vpn_api/util;


# direct methods
.method public constructor <init>(Lio/topvpn/vpn_api/util;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1221
    iput-object p1, p0, Lio/topvpn/vpn_api/util$ipc_thread;->this$0:Lio/topvpn/vpn_api/util;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1218
    const/4 v0, 0x0

    iput-object v0, p0, Lio/topvpn/vpn_api/util$ipc_thread;->m_thread:Landroid/os/HandlerThread;

    .line 1222
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ipc_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/util$ipc_thread;->m_thread:Landroid/os/HandlerThread;

    .line 1223
    iput-object p2, p0, Lio/topvpn/vpn_api/util$ipc_thread;->m_c:Landroid/content/Context;

    .line 1224
    return-void
.end method


# virtual methods
.method public request(Lio/topvpn/vpn_api/util$ipc_request;)V
    .locals 2

    .prologue
    .line 1249
    iget-object v0, p0, Lio/topvpn/vpn_api/util$ipc_thread;->m_handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1250
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1251
    iget-object v1, p0, Lio/topvpn/vpn_api/util$ipc_thread;->m_handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1252
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1227
    iget-object v0, p0, Lio/topvpn/vpn_api/util$ipc_thread;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1228
    new-instance v0, Lio/topvpn/vpn_api/util$ipc_thread$1;

    iget-object v1, p0, Lio/topvpn/vpn_api/util$ipc_thread;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/topvpn/vpn_api/util$ipc_thread$1;-><init>(Lio/topvpn/vpn_api/util$ipc_thread;Landroid/os/Looper;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/util$ipc_thread;->m_handler:Landroid/os/Handler;

    .line 1246
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Lio/topvpn/vpn_api/util$ipc_thread;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method
