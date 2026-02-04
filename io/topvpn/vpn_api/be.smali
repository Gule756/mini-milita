.class final Lio/topvpn/vpn_api/be;
.super Ljava/lang/Object;
.source "be.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/topvpn/vpn_api/be$monitor;,
        Lio/topvpn/vpn_api/be$worker;
    }
.end annotation


# static fields
.field public static final MSG_STATE:I = 0x1

.field public static final STATE_STARTED:I = 0x2

.field public static final STATE_STARTING:I = 0x1

.field public static final STATE_STOPPED:I = 0x4

.field public static final STATE_STOPPING:I = 0x3

.field public static final STATE_UNKNOWN:I

.field public static m_last_sys_exec_time:J


# instance fields
.field private final m_apkid:Ljava/lang/String;

.field private final m_app_context:Landroid/content/Context;

.field private final m_confdir:Ljava/lang/String;

.field private final m_dldir:Ljava/lang/String;

.field private final m_libdir:Ljava/lang/String;

.field private final m_listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private final m_mon:Lio/topvpn/vpn_api/be$monitor;

.field private final m_mon_thread:Landroid/os/HandlerThread;

.field private m_pending_worker:Lio/topvpn/vpn_api/be$worker;

.field private m_worker:Lio/topvpn/vpn_api/be$worker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/topvpn/vpn_api/be;->m_listeners:Ljava/util/List;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/topvpn/vpn_api/be;->m_app_context:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_app_context:Landroid/content/Context;

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->get_confdir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/topvpn/vpn_api/be;->m_confdir:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_app_context:Landroid/content/Context;

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->get_libdir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/topvpn/vpn_api/be;->m_libdir:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_app_context:Landroid/content/Context;

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->get_dldir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/topvpn/vpn_api/be;->m_dldir:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_app_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/topvpn/vpn_api/be;->m_apkid:Ljava/lang/String;

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "be_mon"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lio/topvpn/vpn_api/be;->m_mon_thread:Landroid/os/HandlerThread;

    .line 44
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_mon_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    new-instance v0, Lio/topvpn/vpn_api/be$monitor;

    iget-object v1, p0, Lio/topvpn/vpn_api/be;->m_mon_thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/topvpn/vpn_api/be$monitor;-><init>(Lio/topvpn/vpn_api/be;Landroid/os/Looper;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/be;->m_mon:Lio/topvpn/vpn_api/be$monitor;

    .line 46
    return-void
.end method

.method static synthetic access$1000(Lio/topvpn/vpn_api/be;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_apkid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lio/topvpn/vpn_api/be;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_dldir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lio/topvpn/vpn_api/be;)Lio/topvpn/vpn_api/be$worker;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_worker:Lio/topvpn/vpn_api/be$worker;

    return-object v0
.end method

.method static synthetic access$1202(Lio/topvpn/vpn_api/be;Lio/topvpn/vpn_api/be$worker;)Lio/topvpn/vpn_api/be$worker;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lio/topvpn/vpn_api/be;->m_worker:Lio/topvpn/vpn_api/be$worker;

    return-object p1
.end method

.method static synthetic access$1400(Lio/topvpn/vpn_api/be;)Lio/topvpn/vpn_api/be$worker;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_pending_worker:Lio/topvpn/vpn_api/be$worker;

    return-object v0
.end method

.method static synthetic access$1402(Lio/topvpn/vpn_api/be;Lio/topvpn/vpn_api/be$worker;)Lio/topvpn/vpn_api/be$worker;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lio/topvpn/vpn_api/be;->m_pending_worker:Lio/topvpn/vpn_api/be$worker;

    return-object p1
.end method

.method static synthetic access$300(Lio/topvpn/vpn_api/be;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_app_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lio/topvpn/vpn_api/be;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/be;->send_to_all(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lio/topvpn/vpn_api/be;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_libdir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lio/topvpn/vpn_api/be;)Lio/topvpn/vpn_api/be$monitor;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_mon:Lio/topvpn/vpn_api/be$monitor;

    return-object v0
.end method

.method static synthetic access$700(Lio/topvpn/vpn_api/be;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_confdir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lio/topvpn/vpn_api/be;ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lio/topvpn/vpn_api/be;->zerr(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private send_to_all(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 63
    iget-object v1, p0, Lio/topvpn/vpn_api/be;->m_listeners:Ljava/util/List;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :try_start_1
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 66
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private zerr(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 69
    const-string v0, "be"

    invoke-static {v0, p1, p2}, Lio/topvpn/vpn_api/util;->_zerr(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized async_restart()V
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_worker:Lio/topvpn/vpn_api/be$worker;

    invoke-static {v0}, Lio/topvpn/vpn_api/be$worker;->access$200(Lio/topvpn/vpn_api/be$worker;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/be;->async_restart(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized async_restart(Z)V
    .locals 2

    .prologue
    .line 111
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    const-string v1, "restart requested"

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/be;->zerr(ILjava/lang/String;)I

    .line 112
    new-instance v0, Lio/topvpn/vpn_api/be$worker;

    invoke-direct {v0, p0, p1}, Lio/topvpn/vpn_api/be$worker;-><init>(Lio/topvpn/vpn_api/be;Z)V

    iput-object v0, p0, Lio/topvpn/vpn_api/be;->m_pending_worker:Lio/topvpn/vpn_api/be$worker;

    .line 113
    invoke-virtual {p0}, Lio/topvpn/vpn_api/be;->async_stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized async_start(Z)V
    .locals 2

    .prologue
    .line 92
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    const-string v1, "start requested"

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/be;->zerr(ILjava/lang/String;)I

    .line 93
    new-instance v0, Lio/topvpn/vpn_api/be$worker;

    invoke-direct {v0, p0, p1}, Lio/topvpn/vpn_api/be$worker;-><init>(Lio/topvpn/vpn_api/be;Z)V

    iput-object v0, p0, Lio/topvpn/vpn_api/be;->m_worker:Lio/topvpn/vpn_api/be$worker;

    .line 94
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_worker:Lio/topvpn/vpn_api/be$worker;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/be$worker;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized async_stop()V
    .locals 3

    .prologue
    .line 123
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    const-string v1, "stop requested"

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/be;->zerr(ILjava/lang/String;)I

    .line 124
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_worker:Lio/topvpn/vpn_api/be$worker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_worker:Lio/topvpn/vpn_api/be$worker;

    .line 127
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lio/topvpn/vpn_api/be$1;

    invoke-direct {v2, p0, v0}, Lio/topvpn/vpn_api/be$1;-><init>(Lio/topvpn/vpn_api/be;Lio/topvpn/vpn_api/be$worker;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized async_stop_with_dump()V
    .locals 3

    .prologue
    .line 131
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    const-string v1, "stop requested with a memory dump"

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/be;->zerr(ILjava/lang/String;)I

    .line 132
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_worker:Lio/topvpn/vpn_api/be$worker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    monitor-exit p0

    return-void

    .line 134
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_worker:Lio/topvpn/vpn_api/be$worker;

    .line 135
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lio/topvpn/vpn_api/be$2;

    invoke-direct {v2, p0, v0}, Lio/topvpn/vpn_api/be$2;-><init>(Lio/topvpn/vpn_api/be;Lio/topvpn/vpn_api/be$worker;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lio/topvpn/vpn_api/be;->stop()V

    .line 50
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_mon_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 51
    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_mon_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public register_listener(Landroid/os/Messenger;)V
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lio/topvpn/vpn_api/be;->m_listeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized restart_async_wait(Z)V
    .locals 2

    .prologue
    .line 117
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    const-string v1, "restart requested"

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/be;->zerr(ILjava/lang/String;)I

    .line 118
    new-instance v0, Lio/topvpn/vpn_api/be$worker;

    invoke-direct {v0, p0, p1}, Lio/topvpn/vpn_api/be$worker;-><init>(Lio/topvpn/vpn_api/be;Z)V

    iput-object v0, p0, Lio/topvpn/vpn_api/be;->m_pending_worker:Lio/topvpn/vpn_api/be$worker;

    .line 119
    invoke-virtual {p0}, Lio/topvpn/vpn_api/be;->stop_async_wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start(Z)V
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/be;->async_start(Z)V

    .line 99
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/be;->wait_until(I)V

    .line 100
    return-void
.end method

.method public start_async_wait(Z)V
    .locals 0

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/be;->async_start(Z)V

    .line 104
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_worker:Lio/topvpn/vpn_api/be$worker;

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lio/topvpn/vpn_api/be;->async_stop()V

    .line 142
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/be;->wait_until(I)V

    goto :goto_0
.end method

.method public stop_async_wait()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_worker:Lio/topvpn/vpn_api/be$worker;

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lio/topvpn/vpn_api/be;->async_stop()V

    goto :goto_0
.end method

.method public stop_with_dump()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_worker:Lio/topvpn/vpn_api/be$worker;

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lio/topvpn/vpn_api/be;->async_stop_with_dump()V

    .line 155
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/be;->wait_until(I)V

    goto :goto_0
.end method

.method public unregister_listener(Landroid/os/Messenger;)V
    .locals 2

    .prologue
    .line 59
    iget-object v1, p0, Lio/topvpn/vpn_api/be;->m_listeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/be;->m_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public wait_until(I)V
    .locals 4

    .prologue
    .line 78
    iget-object v1, p0, Lio/topvpn/vpn_api/be;->m_worker:Lio/topvpn/vpn_api/be$worker;

    .line 79
    if-nez v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 81
    :cond_0
    neg-int v0, p1

    .line 83
    :cond_1
    invoke-static {v1}, Lio/topvpn/vpn_api/be$worker;->access$000(Lio/topvpn/vpn_api/be$worker;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 84
    :try_start_0
    invoke-static {v1}, Lio/topvpn/vpn_api/be$worker;->access$000(Lio/topvpn/vpn_api/be$worker;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :try_start_1
    invoke-static {v1}, Lio/topvpn/vpn_api/be$worker;->access$100(Lio/topvpn/vpn_api/be$worker;)I

    move-result v0

    .line 87
    monitor-exit v2

    .line 88
    :goto_1
    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 85
    :catch_0
    move-exception v3

    monitor-exit v2

    goto :goto_1

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
