.class Lio/topvpn/vpn_api/fsm_async;
.super Lio/topvpn/vpn_api/fsm;
.source "fsm_async.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/topvpn/vpn_api/fsm_async$ctrl_handler;
    }
.end annotation


# static fields
.field private static final ACTION_SET_STATE:I

.field private static final MSG:I


# instance fields
.field private final m_handler:Lio/topvpn/vpn_api/fsm_async$ctrl_handler;

.field private m_last_requested_state:Lio/topvpn/vpn_api/fsm$state;

.field private final m_last_requested_state_sync:Ljava/lang/Object;

.field private final m_thread:Landroid/os/HandlerThread;


# direct methods
.method public varargs constructor <init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$transition;)V
    .locals 1

    .prologue
    .line 44
    const-string v0, "fsm"

    invoke-direct {p0, v0, p1, p2}, Lio/topvpn/vpn_api/fsm_async;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$transition;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$transition;)V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lio/topvpn/vpn_api/fsm;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$transition;)V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/topvpn/vpn_api/fsm_async;->m_last_requested_state_sync:Ljava/lang/Object;

    .line 35
    iput-object p2, p0, Lio/topvpn/vpn_api/fsm_async;->m_last_requested_state:Lio/topvpn/vpn_api/fsm$state;

    .line 37
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "fsm_async"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lio/topvpn/vpn_api/fsm_async;->m_thread:Landroid/os/HandlerThread;

    .line 39
    iget-object v0, p0, Lio/topvpn/vpn_api/fsm_async;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 40
    new-instance v0, Lio/topvpn/vpn_api/fsm_async$ctrl_handler;

    iget-object v1, p0, Lio/topvpn/vpn_api/fsm_async;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/topvpn/vpn_api/fsm_async$ctrl_handler;-><init>(Lio/topvpn/vpn_api/fsm_async;Landroid/os/Looper;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/fsm_async;->m_handler:Lio/topvpn/vpn_api/fsm_async$ctrl_handler;

    .line 41
    return-void
.end method


# virtual methods
.method public get_future_state()Lio/topvpn/vpn_api/fsm$state;
    .locals 2

    .prologue
    .line 47
    iget-object v1, p0, Lio/topvpn/vpn_api/fsm_async;->m_last_requested_state_sync:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/fsm_async;->m_last_requested_state:Lio/topvpn/vpn_api/fsm$state;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lio/topvpn/vpn_api/fsm_async;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 90
    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/fsm_async;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public set_state(Lio/topvpn/vpn_api/fsm$state;)V
    .locals 6

    .prologue
    .line 75
    iget-object v0, p0, Lio/topvpn/vpn_api/fsm_async;->m_transitions:Ljava/util/Map;

    iget-object v1, p0, Lio/topvpn/vpn_api/fsm_async;->m_last_requested_state:Lio/topvpn/vpn_api/fsm$state;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const/16 v0, 0x202

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no transition \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/topvpn/vpn_api/fsm_async;->m_last_requested_state:Lio/topvpn/vpn_api/fsm$state;

    iget-object v2, v2, Lio/topvpn/vpn_api/fsm$state;->m_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'=>\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lio/topvpn/vpn_api/fsm$state;->m_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/topvpn/vpn_api/fsm_async;->zerr(ILjava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lio/topvpn/vpn_api/fsm_async;->m_last_requested_state_sync:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iput-object p1, p0, Lio/topvpn/vpn_api/fsm_async;->m_last_requested_state:Lio/topvpn/vpn_api/fsm$state;

    .line 83
    iget-object v0, p0, Lio/topvpn/vpn_api/fsm_async;->m_handler:Lio/topvpn/vpn_api/fsm_async$ctrl_handler;

    iget-object v2, p0, Lio/topvpn/vpn_api/fsm_async;->m_handler:Lio/topvpn/vpn_api/fsm_async$ctrl_handler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, p1}, Lio/topvpn/vpn_api/fsm_async$ctrl_handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/topvpn/vpn_api/fsm_async$ctrl_handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public set_state_if(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v2, p0, Lio/topvpn/vpn_api/fsm_async;->m_last_requested_state_sync:Ljava/lang/Object;

    monitor-enter v2

    .line 54
    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/fsm_async;->m_last_requested_state:Lio/topvpn/vpn_api/fsm$state;

    if-eq v0, p2, :cond_0

    .line 56
    const/4 v0, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set_state_if failed current state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/topvpn/vpn_api/fsm_async;->m_last_requested_state:Lio/topvpn/vpn_api/fsm$state;

    iget-object v4, v4, Lio/topvpn/vpn_api/fsm$state;->m_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lio/topvpn/vpn_api/fsm_async;->zerr(ILjava/lang/String;)I

    .line 58
    monitor-exit v2

    move v0, v1

    .line 69
    :goto_0
    return v0

    .line 60
    :cond_0
    iget-object v0, p0, Lio/topvpn/vpn_api/fsm_async;->m_transitions:Ljava/util/Map;

    iget-object v3, p0, Lio/topvpn/vpn_api/fsm_async;->m_last_requested_state:Lio/topvpn/vpn_api/fsm$state;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    const/16 v0, 0x202

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no transition \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/topvpn/vpn_api/fsm_async;->m_last_requested_state:Lio/topvpn/vpn_api/fsm$state;

    iget-object v4, v4, Lio/topvpn/vpn_api/fsm$state;->m_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'=>\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lio/topvpn/vpn_api/fsm$state;->m_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lio/topvpn/vpn_api/fsm_async;->zerr(ILjava/lang/String;)I

    .line 64
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 66
    :cond_1
    iput-object p1, p0, Lio/topvpn/vpn_api/fsm_async;->m_last_requested_state:Lio/topvpn/vpn_api/fsm$state;

    .line 67
    iget-object v0, p0, Lio/topvpn/vpn_api/fsm_async;->m_handler:Lio/topvpn/vpn_api/fsm_async$ctrl_handler;

    iget-object v1, p0, Lio/topvpn/vpn_api/fsm_async;->m_handler:Lio/topvpn/vpn_api/fsm_async$ctrl_handler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, p1}, Lio/topvpn/vpn_api/fsm_async$ctrl_handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/fsm_async$ctrl_handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
