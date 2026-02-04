.class public Lio/topvpn/vpn_api/svc;
.super Landroid/app/Service;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/topvpn/vpn_api/svc$hola_svc_binder;,
        Lio/topvpn/vpn_api/svc$svc_be_mon;,
        Lio/topvpn/vpn_api/svc$callback_json_cb;,
        Lio/topvpn/vpn_api/svc$svc_update;,
        Lio/topvpn/vpn_api/svc$svc_fsm;,
        Lio/topvpn/vpn_api/svc$ipc;
    }
.end annotation


# static fields
.field private static final BE_FAILURE_RESTART_THRESHOLD:I = 0x3

.field public static final TYPE_MOBILE_IMS:I = 0xb


# instance fields
.field private final DEF_IDLE_TIME:J

.field private m_aq:Lcom/androidquery/AQuery;

.field private m_bcast_recv:Landroid/content/BroadcastReceiver;

.field private m_be:Lio/topvpn/vpn_api/be;

.field private m_be_failure_restarts_left:I

.field private m_be_last_restart:J

.field private m_be_mon:Lio/topvpn/vpn_api/svc$svc_be_mon;

.field private m_be_mon_msgr:Landroid/os/Messenger;

.field private m_be_mon_thread:Landroid/os/HandlerThread;

.field private m_be_workdir:Ljava/lang/String;

.field private m_callback_json_request:Lio/topvpn/vpn_api/wget;

.field private m_conf:Lio/topvpn/vpn_api/conf;

.field private m_conf_listener:Lio/topvpn/vpn_api/conf$listener;

.field private m_confdir:Ljava/lang/String;

.field private m_curr_apk_id:Ljava/lang/String;

.field private m_destroyed:Z

.field public m_exe_mode:Ljava/lang/String;

.field private m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

.field private m_idle_time:J

.field private m_idle_time_monitor:Ljava/util/Timer;

.field private m_idle_time_monitor_cur_interval:I

.field private m_idle_time_monitor_intervals:[I

.field private m_idle_time_monitor_start:J

.field private m_idle_timer:Ljava/util/Timer;

.field public final m_idle_timer_lock:Ljava/lang/Object;

.field private m_ipc:Lio/topvpn/vpn_api/svc$ipc;

.field private final m_ipc_lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private m_ipc_retry_timer:Ljava/util/Timer;

.field private m_ipc_set_notify_retry:Z

.field private m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

.field private m_ipc_thread_set_notify:Lio/topvpn/vpn_api/util$ipc_thread;

.field private m_last_login_after_conn:J

.field private m_libdir:Ljava/lang/String;

.field private m_ram:Lio/topvpn/vpn_api/ram;

.field private m_ram_listener:Lio/topvpn/vpn_api/ram$listener;

.field private m_slow_conn_internet_reported:Z

.field private m_slow_conn_zserver_reported:Z

.field private m_state:Lio/topvpn/vpn_api/state;

.field private m_state_listener:Lio/topvpn/vpn_api/state$listener;

.field private m_time_callback_connected:J

.field private m_time_callback_internet:J

.field private m_time_callback_up:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 592
    iput-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_time_callback_up:J

    .line 593
    iput-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_time_callback_internet:J

    .line 594
    iput-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_time_callback_connected:J

    .line 595
    iput-boolean v2, p0, Lio/topvpn/vpn_api/svc;->m_slow_conn_internet_reported:Z

    .line 596
    iput-boolean v2, p0, Lio/topvpn/vpn_api/svc;->m_slow_conn_zserver_reported:Z

    .line 739
    new-instance v0, Lio/topvpn/vpn_api/svc$2;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/svc$2;-><init>(Lio/topvpn/vpn_api/svc;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf_listener:Lio/topvpn/vpn_api/conf$listener;

    .line 779
    new-instance v0, Lio/topvpn/vpn_api/svc$3;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/svc$3;-><init>(Lio/topvpn/vpn_api/svc;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state_listener:Lio/topvpn/vpn_api/state$listener;

    .line 817
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor_intervals:[I

    .line 862
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lio/topvpn/vpn_api/svc;->DEF_IDLE_TIME:J

    .line 864
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_timer_lock:Ljava/lang/Object;

    .line 970
    new-instance v0, Lio/topvpn/vpn_api/svc$7;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/svc$7;-><init>(Lio/topvpn/vpn_api/svc;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram_listener:Lio/topvpn/vpn_api/ram$listener;

    .line 1311
    const-string v0, "exe_off"

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_exe_mode:Ljava/lang/String;

    .line 1388
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void

    .line 817
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x8
        0xf
        0x1e
        0x3c
        0x78
    .end array-data
.end method

.method private static T(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1521
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    return-object v0
.end method

.method static synthetic access$1100(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->start_be_pre()V

    return-void
.end method

.method static synthetic access$1200(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->start_be_async()V

    return-void
.end method

.method static synthetic access$1300(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->start_be_post()V

    return-void
.end method

.method static synthetic access$1400(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/be;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be:Lio/topvpn/vpn_api/be;

    return-object v0
.end method

.method static synthetic access$1500(Lio/topvpn/vpn_api/svc;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_set_notify_retry:Z

    return v0
.end method

.method static synthetic access$1502(Lio/topvpn/vpn_api/svc;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lio/topvpn/vpn_api/svc;->m_ipc_set_notify_retry:Z

    return p1
.end method

.method static synthetic access$1600(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->ipc_notify_screen_on()V

    return-void
.end method

.method static synthetic access$1700(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->ipc_notify_mobile_enable()V

    return-void
.end method

.method static synthetic access$1800(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->ipc_set_notify_multi()V

    return-void
.end method

.method static synthetic access$1900(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->start_vpn()V

    return-void
.end method

.method static synthetic access$200(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/util$ipc_thread;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

    return-object v0
.end method

.method static synthetic access$2000(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/state$key;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/svc;->check_active(Lio/topvpn/vpn_api/state$key;)V

    return-void
.end method

.method static synthetic access$2100(Lio/topvpn/vpn_api/svc;ILio/topvpn/vpn_api/svc$callback_json_cb;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lio/topvpn/vpn_api/svc;->callback_json(ILio/topvpn/vpn_api/svc$callback_json_cb;)V

    return-void
.end method

.method static synthetic access$2200(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/wget;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_callback_json_request:Lio/topvpn/vpn_api/wget;

    return-object v0
.end method

.method static synthetic access$2202(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/wget;)Lio/topvpn/vpn_api/wget;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lio/topvpn/vpn_api/svc;->m_callback_json_request:Lio/topvpn/vpn_api/wget;

    return-object p1
.end method

.method static synthetic access$2300(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->stop_be()V

    return-void
.end method

.method static synthetic access$2400(Lio/topvpn/vpn_api/svc;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lio/topvpn/vpn_api/svc;->m_destroyed:Z

    return v0
.end method

.method static synthetic access$2500(Lio/topvpn/vpn_api/svc;)J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_be_last_restart:J

    return-wide v0
.end method

.method static synthetic access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    return-object v0
.end method

.method static synthetic access$3500(Lio/topvpn/vpn_api/svc;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_confdir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lio/topvpn/vpn_api/svc;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/svc;->ipc_notify_user_status(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lio/topvpn/vpn_api/svc;)J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_time_callback_up:J

    return-wide v0
.end method

.method static synthetic access$4102(Lio/topvpn/vpn_api/svc;J)J
    .locals 1

    .prologue
    .line 57
    iput-wide p1, p0, Lio/topvpn/vpn_api/svc;->m_time_callback_up:J

    return-wide p1
.end method

.method static synthetic access$4200(Lio/topvpn/vpn_api/svc;)J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_time_callback_internet:J

    return-wide v0
.end method

.method static synthetic access$4202(Lio/topvpn/vpn_api/svc;J)J
    .locals 1

    .prologue
    .line 57
    iput-wide p1, p0, Lio/topvpn/vpn_api/svc;->m_time_callback_internet:J

    return-wide p1
.end method

.method static synthetic access$4300(Lio/topvpn/vpn_api/svc;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lio/topvpn/vpn_api/svc;->m_slow_conn_internet_reported:Z

    return v0
.end method

.method static synthetic access$4302(Lio/topvpn/vpn_api/svc;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lio/topvpn/vpn_api/svc;->m_slow_conn_internet_reported:Z

    return p1
.end method

.method static synthetic access$4400(Lio/topvpn/vpn_api/svc;)J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_time_callback_connected:J

    return-wide v0
.end method

.method static synthetic access$4402(Lio/topvpn/vpn_api/svc;J)J
    .locals 1

    .prologue
    .line 57
    iput-wide p1, p0, Lio/topvpn/vpn_api/svc;->m_time_callback_connected:J

    return-wide p1
.end method

.method static synthetic access$4500(Lio/topvpn/vpn_api/svc;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lio/topvpn/vpn_api/svc;->m_slow_conn_zserver_reported:Z

    return v0
.end method

.method static synthetic access$4502(Lio/topvpn/vpn_api/svc;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lio/topvpn/vpn_api/svc;->m_slow_conn_zserver_reported:Z

    return p1
.end method

.method static synthetic access$4600(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->propagate_auth_info()V

    return-void
.end method

.method static synthetic access$4700(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/state;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    return-object v0
.end method

.method static synthetic access$4800(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->monitor_3g_usage()V

    return-void
.end method

.method static synthetic access$4900(Lio/topvpn/vpn_api/svc;)[I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor_intervals:[I

    return-object v0
.end method

.method static synthetic access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    return-object v0
.end method

.method static synthetic access$5000(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->idle_time_monitor_schedualer()V

    return-void
.end method

.method static synthetic access$5100(Lio/topvpn/vpn_api/svc;)J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_last_login_after_conn:J

    return-wide v0
.end method

.method static synthetic access$5102(Lio/topvpn/vpn_api/svc;J)J
    .locals 1

    .prologue
    .line 57
    iput-wide p1, p0, Lio/topvpn/vpn_api/svc;->m_last_login_after_conn:J

    return-wide p1
.end method

.method static synthetic access$5200(Lio/topvpn/vpn_api/svc;Z)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/svc;->idle_time_monitor(Z)V

    return-void
.end method

.method static synthetic access$5300(Lio/topvpn/vpn_api/svc;)I
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->create_hola_id()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lio/topvpn/vpn_api/svc;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lio/topvpn/vpn_api/svc;->m_be_failure_restarts_left:I

    return v0
.end method

.method static synthetic access$802(Lio/topvpn/vpn_api/svc;I)I
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lio/topvpn/vpn_api/svc;->m_be_failure_restarts_left:I

    return p1
.end method

.method static synthetic access$810(Lio/topvpn/vpn_api/svc;)I
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lio/topvpn/vpn_api/svc;->m_be_failure_restarts_left:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/topvpn/vpn_api/svc;->m_be_failure_restarts_left:I

    return v0
.end method

.method static synthetic access$900(Lio/topvpn/vpn_api/svc;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->start_be_check()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private callback_json(ILio/topvpn/vpn_api/svc$callback_json_cb;)V
    .locals 5

    .prologue
    .line 599
    new-instance v0, Lio/topvpn/vpn_api/svc$1;

    const-string v1, "callback.json"

    invoke-static {v1}, Lio/topvpn/vpn_api/util;->cmd2url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lio/topvpn/vpn_api/wget$option;

    const/4 v3, 0x0

    .line 600
    invoke-static {p1}, Lio/topvpn/vpn_api/wget;->attempts(I)Lio/topvpn/vpn_api/wget$option;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x64

    .line 601
    invoke-static {v4}, Lio/topvpn/vpn_api/wget;->retry_interval_ms(I)Lio/topvpn/vpn_api/wget$option;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x1f4

    .line 602
    invoke-static {v4}, Lio/topvpn/vpn_api/wget;->soft_timeout_ms(I)Lio/topvpn/vpn_api/wget$option;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, p0, v1, v2, p2}, Lio/topvpn/vpn_api/svc$1;-><init>(Lio/topvpn/vpn_api/svc;Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;Lio/topvpn/vpn_api/svc$callback_json_cb;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_callback_json_request:Lio/topvpn/vpn_api/wget;

    .line 703
    return-void
.end method

.method private check_active(Lio/topvpn/vpn_api/state$key;)V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 867
    sget-object v0, Lio/topvpn/vpn_api/state;->MOBILE_ENABLE:Lio/topvpn/vpn_api/state$key;

    if-eq p1, v0, :cond_0

    .line 868
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    iget-object v3, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    invoke-static {p0, v0, v3}, Lio/topvpn/vpn_api/util;->check_3g_usage(Landroid/content/Context;Lio/topvpn/vpn_api/conf;Lio/topvpn/vpn_api/state;)V

    .line 869
    :cond_0
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->USING_BATTERY:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v0, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->BATTERY_LEVEL:Lio/topvpn/vpn_api/state$key;

    .line 870
    invoke-virtual {v0, v3}, Lio/topvpn/vpn_api/state;->get_float(Ljava/lang/Object;)F

    move-result v0

    iget-object v3, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v4, Lio/topvpn/vpn_api/conf;->PEER_3G_BATTERY_LEVEL:Lio/topvpn/vpn_api/conf$key;

    .line 871
    invoke-virtual {v3, v4}, Lio/topvpn/vpn_api/conf;->get_float(Ljava/lang/Object;)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->MOBILE_ENABLE:Lio/topvpn/vpn_api/state$key;

    .line 872
    invoke-virtual {v0, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->MOBILE_CONNECTED:Lio/topvpn/vpn_api/state$key;

    .line 873
    invoke-virtual {v0, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->SCREEN_ON:Lio/topvpn/vpn_api/state$key;

    .line 874
    invoke-virtual {v0, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->WIFI_CONNECTED:Lio/topvpn/vpn_api/state$key;

    .line 875
    invoke-virtual {v0, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->MOBILE_ENABLE:Lio/topvpn/vpn_api/state$key;

    .line 876
    invoke-virtual {v0, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->MOBILE_CONNECTED:Lio/topvpn/vpn_api/state$key;

    .line 877
    invoke-virtual {v0, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->ON_CALL:Lio/topvpn/vpn_api/state$key;

    .line 878
    invoke-virtual {v0, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 880
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time:J

    .line 881
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->IDLE_TIME:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->exist(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 882
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->IDLE_TIME:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_int(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time:J

    .line 883
    :cond_3
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->DBG_IDLE_TIME:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 884
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 886
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    :cond_4
    :goto_0
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting timer to idle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/topvpn/vpn_api/svc;->m_idle_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    .line 890
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_idle_timer_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 891
    :try_start_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_timer:Ljava/util/Timer;

    .line 892
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_timer:Ljava/util/Timer;

    new-instance v2, Lio/topvpn/vpn_api/svc$5;

    invoke-direct {v2, p0}, Lio/topvpn/vpn_api/svc$5;-><init>(Lio/topvpn/vpn_api/svc;)V

    iget-wide v4, p0, Lio/topvpn/vpn_api/svc;->m_idle_time:J

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 913
    monitor-exit v1

    .line 952
    :goto_1
    return-void

    .line 913
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 916
    :cond_5
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    sget-object v3, Lio/topvpn/vpn_api/ram;->IS_ACTIVE_PEER:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v3}, Lio/topvpn/vpn_api/ram;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->MOBILE_CONNECTED:Lio/topvpn/vpn_api/state$key;

    .line 917
    invoke-virtual {v0, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->WIFI_CONNECTED:Lio/topvpn/vpn_api/state$key;

    .line 918
    invoke-virtual {v0, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->ON_CALL:Lio/topvpn/vpn_api/state$key;

    .line 919
    invoke-virtual {v0, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 921
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->BATTERY_LEVEL:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v0, v3}, Lio/topvpn/vpn_api/state;->get_float(Ljava/lang/Object;)F

    move-result v3

    .line 922
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v4, Lio/topvpn/vpn_api/conf;->SINCE_BOOT_3G_BYTES:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v4}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;)J

    move-result-wide v4

    .line 923
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v6

    .line 924
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-float v6, v6

    .line 925
    long-to-float v0, v4

    div-float v7, v0, v6

    .line 926
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v8, Lio/topvpn/vpn_api/state;->SCREEN_ON:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v0, v8}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v8

    .line 927
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v9, Lio/topvpn/vpn_api/state;->USING_BATTERY:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v0, v9}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v9, Lio/topvpn/vpn_api/conf;->PEER_3G_BATTERY_LEVEL:Lio/topvpn/vpn_api/conf$key;

    .line 928
    invoke-virtual {v0, v9}, Lio/topvpn/vpn_api/conf;->get_float(Ljava/lang/Object;)F

    move-result v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_b

    move v0, v1

    .line 929
    :goto_2
    iget-object v9, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v10, Lio/topvpn/vpn_api/state;->MOBILE_ENABLE:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v9, v10}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 930
    :goto_3
    if-eqz v0, :cond_6

    if-nez v8, :cond_6

    if-nez v1, :cond_6

    .line 931
    const-string v9, "peer_active_mobile_fail_battery"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "level "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_6
    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    if-nez v8, :cond_7

    iget-object v3, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v9, Lio/topvpn/vpn_api/state;->ROAMING:Lio/topvpn/vpn_api/state$key;

    .line 933
    invoke-virtual {v3, v9}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 935
    const-string v3, "peer_active_mobile_fail_traffic"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "usage "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " app usage "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " device 3g usage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_7
    if-eqz v8, :cond_8

    if-nez v0, :cond_8

    if-nez v1, :cond_8

    .line 939
    const-string v0, "peer_active_mobile_fail_screen"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_8
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    sget-object v1, Lio/topvpn/vpn_api/ram;->IS_ACTIVE_PEER:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/ram;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 942
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->LAST_ACTIVE:Lio/topvpn/vpn_api/conf$key;

    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 943
    :cond_9
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_idle_timer_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 944
    :try_start_2
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_timer:Ljava/util/Timer;

    if-eqz v0, :cond_a

    .line 946
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 947
    const/4 v0, 0x0

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_timer:Ljava/util/Timer;

    .line 949
    :cond_a
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 950
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    sget-object v1, Lio/topvpn/vpn_api/ram;->IS_ACTIVE_PEER:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/ram;->set(Ljava/lang/Object;Z)V

    .line 951
    const-string v0, "active"

    invoke-direct {p0, v0}, Lio/topvpn/vpn_api/svc;->ipc_notify_user_status(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    move v0, v2

    .line 928
    goto/16 :goto_2

    :cond_c
    move v1, v2

    .line 929
    goto/16 :goto_3

    .line 949
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 887
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private create_hola_id()I
    .locals 5

    .prologue
    .line 1327
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->get_dev_type()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_confdir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1328
    invoke-virtual {p0}, Lio/topvpn/vpn_api/svc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1330
    invoke-static {v1}, Lio/topvpn/vpn_api/util;->mkdir_p(Ljava/lang/String;)Z

    .line 1331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/hola.id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "os_id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    .line 1332
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1331
    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->file_write_line(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 1334
    const/4 v0, 0x3

    const-string v1, "failed creating hola.id with android ids"

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    move-result v0

    .line 1336
    :goto_1
    return v0

    .line 1332
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ndev_type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1336
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static get_abi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1529
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1530
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 1533
    :goto_0
    return-object v0

    .line 1532
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private get_dev_type()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1340
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1341
    const-string v2, ""

    .line 1360
    :goto_0
    return-object v2

    .line 1342
    :cond_0
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->DEV_TYPES:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1343
    const-string v0, "connectivity"

    .line 1344
    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/svc;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1345
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v3

    .line 1346
    const/4 v1, 0x0

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 1348
    aget-object v4, v3, v1

    .line 1349
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1350
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v4

    .line 1351
    if-nez v4, :cond_2

    .line 1346
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1353
    :cond_2
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 1354
    const/4 v6, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "net device "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    .line 1355
    if-eqz v4, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1357
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-direct {p0, v5, v4}, Lio/topvpn/vpn_api/svc;->get_net_type(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1359
    :cond_3
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->DEV_TYPES:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private get_net_type(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1366
    packed-switch p1, :pswitch_data_0

    .line 1382
    :pswitch_0
    const-string v0, "network_type_default"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    const-string v0, "other"

    :goto_0
    return-object v0

    .line 1374
    :pswitch_1
    const-string v0, "3g"

    goto :goto_0

    .line 1375
    :pswitch_2
    const-string v0, "wl"

    goto :goto_0

    .line 1376
    :pswitch_3
    const-string v0, "eth"

    goto :goto_0

    .line 1377
    :pswitch_4
    const-string v0, "vpn"

    goto :goto_0

    .line 1380
    :pswitch_5
    const-string v0, "other"

    goto :goto_0

    .line 1366
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private hola_svc_start()V
    .locals 3

    .prologue
    .line 1053
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    if-nez v0, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_fsm;->access$702(Lio/topvpn/vpn_api/svc$svc_fsm;Z)Z

    .line 1056
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTING:Lio/topvpn/vpn_api/fsm$state;

    sget-object v2, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->set_state_if(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTING:Lio/topvpn/vpn_api/fsm$state;

    sget-object v2, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE_ERR:Lio/topvpn/vpn_api/fsm$state;

    .line 1057
    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->set_state_if(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1059
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/svc$svc_fsm;->get_state()Lio/topvpn/vpn_api/fsm$state;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTING:Lio/topvpn/vpn_api/fsm$state;

    if-eq v0, v1, :cond_0

    .line 1060
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/svc$svc_fsm;->schedule_start()V

    goto :goto_0
.end method

.method private hola_svc_stop()V
    .locals 3

    .prologue
    .line 1065
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    if-nez v0, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_fsm;->access$602(Lio/topvpn/vpn_api/svc$svc_fsm;Z)Z

    .line 1068
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPING:Lio/topvpn/vpn_api/fsm$state;

    sget-object v2, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTED:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->set_state_if(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1069
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/svc$svc_fsm;->schedule_stop()V

    goto :goto_0
.end method

.method private idle_time_monitor(Z)V
    .locals 6

    .prologue
    .line 844
    if-nez p1, :cond_1

    .line 846
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 849
    const/4 v0, 0x0

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor:Ljava/util/Timer;

    .line 850
    const/4 v0, 0x0

    iput v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor_cur_interval:I

    .line 851
    const/4 v0, 0x5

    const-string v1, "peer_off"

    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v2

    iget-wide v4, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor_start:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 858
    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v0

    iput-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor_start:J

    .line 859
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->idle_time_monitor_schedualer()V

    goto :goto_0
.end method

.method private idle_time_monitor_schedualer()V
    .locals 4

    .prologue
    .line 823
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor:Ljava/util/Timer;

    .line 828
    :cond_0
    iget v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor_cur_interval:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor_cur_interval:I

    .line 829
    iget v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor_cur_interval:I

    .line 830
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor_intervals:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 841
    :goto_0
    return-void

    .line 832
    :cond_1
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor_intervals:[I

    aget v1, v1, v0

    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor_intervals:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    const v2, 0xea60

    mul-int/2addr v1, v2

    .line 834
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor:Ljava/util/Timer;

    .line 835
    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_idle_time_monitor:Ljava/util/Timer;

    new-instance v3, Lio/topvpn/vpn_api/svc$4;

    invoke-direct {v3, p0, v0}, Lio/topvpn/vpn_api/svc$4;-><init>(Lio/topvpn/vpn_api/svc;I)V

    int-to-long v0, v1

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method private init_bcast_recv()V
    .locals 2

    .prologue
    .line 1476
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_bcast_recv:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1487
    :goto_0
    return-void

    .line 1478
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1479
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1480
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1481
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1482
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1483
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1484
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1485
    new-instance v1, Lio/topvpn/vpn_api/bcast_recv;

    invoke-direct {v1}, Lio/topvpn/vpn_api/bcast_recv;-><init>()V

    iput-object v1, p0, Lio/topvpn/vpn_api/svc;->m_bcast_recv:Landroid/content/BroadcastReceiver;

    .line 1486
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_bcast_recv:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lio/topvpn/vpn_api/svc;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private install_check()I
    .locals 2

    .prologue
    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_confdir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/libhola_svc.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_libdir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/libjni_util.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1525
    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 1524
    :goto_0
    return v0

    .line 1525
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ipc_init()V
    .locals 3

    .prologue
    .line 1393
    new-instance v0, Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lio/topvpn/vpn_api/svc;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/util$ipc_thread;-><init>(Lio/topvpn/vpn_api/util;Landroid/content/Context;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

    .line 1394
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/util$ipc_thread;->start()V

    .line 1395
    new-instance v0, Lio/topvpn/vpn_api/util$ipc_thread;

    .line 1396
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lio/topvpn/vpn_api/svc;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/util$ipc_thread;-><init>(Lio/topvpn/vpn_api/util;Landroid/content/Context;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread_set_notify:Lio/topvpn/vpn_api/util$ipc_thread;

    .line 1397
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread_set_notify:Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/util$ipc_thread;->start()V

    .line 1398
    return-void
.end method

.method private ipc_notify_mobile_enable()V
    .locals 7

    .prologue
    .line 1454
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v1, Lio/topvpn/vpn_api/state;->MOBILE_ENABLE:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v5

    .line 1455
    const/4 v0, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify mobile_enable _1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    .line 1456
    new-instance v4, Lio/topvpn/vpn_api/util$ipc_result;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lio/topvpn/vpn_api/util$ipc_result;-><init>(Lio/topvpn/vpn_api/util;)V

    .line 1457
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "notify_mobile_enable"

    aput-object v1, v3, v0

    const/4 v1, 0x1

    if-eqz v5, :cond_0

    const-string v0, "1"

    :goto_0
    aput-object v0, v3, v1

    .line 1458
    new-instance v0, Lio/topvpn/vpn_api/svc$15;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p0

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lio/topvpn/vpn_api/svc$15;-><init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/util;[Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;ZLio/topvpn/vpn_api/util$ipc_result;)V

    .line 1466
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-virtual {v1, v0}, Lio/topvpn/vpn_api/util$ipc_thread;->request(Lio/topvpn/vpn_api/util$ipc_request;)V

    .line 1467
    return-void

    .line 1457
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private ipc_notify_screen_on()V
    .locals 7

    .prologue
    .line 1438
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v1, Lio/topvpn/vpn_api/state;->SCREEN_ON:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v5

    .line 1439
    const/4 v0, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify screen _1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    .line 1440
    new-instance v4, Lio/topvpn/vpn_api/util$ipc_result;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lio/topvpn/vpn_api/util$ipc_result;-><init>(Lio/topvpn/vpn_api/util;)V

    .line 1441
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "notify_screen"

    aput-object v1, v3, v0

    const/4 v1, 0x1

    if-eqz v5, :cond_0

    const-string v0, "1"

    :goto_0
    aput-object v0, v3, v1

    .line 1442
    new-instance v0, Lio/topvpn/vpn_api/svc$14;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p0

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lio/topvpn/vpn_api/svc$14;-><init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/util;[Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;ZLio/topvpn/vpn_api/util$ipc_result;)V

    .line 1450
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-virtual {v1, v0}, Lio/topvpn/vpn_api/util$ipc_thread;->request(Lio/topvpn/vpn_api/util$ipc_request;)V

    .line 1451
    return-void

    .line 1441
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private ipc_notify_user_status(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 955
    new-instance v4, Lio/topvpn/vpn_api/util$ipc_result;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lio/topvpn/vpn_api/util$ipc_result;-><init>(Lio/topvpn/vpn_api/util;)V

    .line 956
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "force_user_away"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object p1, v3, v0

    .line 957
    new-instance v0, Lio/topvpn/vpn_api/svc$6;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p0

    move-object v5, p1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lio/topvpn/vpn_api/svc$6;-><init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/util;[Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;)V

    .line 965
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-virtual {v1, v0}, Lio/topvpn/vpn_api/util$ipc_thread;->request(Lio/topvpn/vpn_api/util$ipc_request;)V

    .line 966
    return-void
.end method

.method private ipc_set_notify_multi()V
    .locals 4

    .prologue
    .line 1409
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "set_notify_multi_once"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/svc/ram/system/network/verified"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/svc/ram/protocol/connected"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/svc/ram/protocol/unblocker/rules/set"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/svc/ram/protocol/pac_url"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/svc/ram/route/active"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/svc/conf/protocol/unblocker/disable"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/svc/conf/protocol/disable"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/svc/conf/protocol/network"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/svc/conf/protocol/auth/md5"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "/svc/conf/protocol/cid"

    aput-object v2, v0, v1

    .line 1415
    new-instance v1, Lio/topvpn/vpn_api/util$ipc_result;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lio/topvpn/vpn_api/util$ipc_result;-><init>(Lio/topvpn/vpn_api/util;)V

    .line 1416
    new-instance v2, Lio/topvpn/vpn_api/svc$13;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, p0, v3, v0, v1}, Lio/topvpn/vpn_api/svc$13;-><init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/util;[Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;)V

    .line 1430
    const/4 v0, -0x1

    iput v0, v2, Lio/topvpn/vpn_api/util$ipc_request;->m_timeout:I

    .line 1431
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread_set_notify:Lio/topvpn/vpn_api/util$ipc_thread;

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread_set_notify:Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-virtual {v0, v2}, Lio/topvpn/vpn_api/util$ipc_thread;->request(Lio/topvpn/vpn_api/util$ipc_request;)V

    .line 1435
    :goto_0
    return-void

    .line 1434
    :cond_0
    const-string v0, "m_ipc_thread_set_notify_null"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lio/topvpn/vpn_api/svc;->m_destroyed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ipc_uninit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1401
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/util$ipc_thread;->stop()V

    .line 1402
    iput-object v1, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

    .line 1403
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread_set_notify:Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/util$ipc_thread;->stop()V

    .line 1404
    iput-object v1, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread_set_notify:Lio/topvpn/vpn_api/util$ipc_thread;

    .line 1405
    return-void
.end method

.method public static is_architecture_supported()Z
    .locals 2

    .prologue
    .line 1536
    invoke-static {}, Lio/topvpn/vpn_api/svc;->get_abi()Ljava/lang/String;

    move-result-object v0

    .line 1537
    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "x86"

    .line 1538
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1537
    :goto_0
    return v0

    .line 1538
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private monitor_3g_usage()V
    .locals 4

    .prologue
    .line 1173
    new-instance v0, Lio/topvpn/vpn_api/svc$11;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/svc$11;-><init>(Lio/topvpn/vpn_api/svc;)V

    .line 1184
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1185
    return-void
.end method

.method private monitor_network()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1211
    :goto_0
    return-void

    .line 1191
    :cond_0
    const-string v0, "connectivity"

    .line 1192
    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/svc;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1193
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1194
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    new-instance v2, Lio/topvpn/vpn_api/svc$12;

    invoke-direct {v2, p0}, Lio/topvpn/vpn_api/svc$12;-><init>(Lio/topvpn/vpn_api/svc;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0
.end method

.method private propagate_auth_info()V
    .locals 5

    .prologue
    .line 1035
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->UUID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->SESSION_KEY_JAVA:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1050
    :goto_0
    return-void

    .line 1039
    :cond_0
    new-instance v2, Lio/topvpn/vpn_api/svc$8;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set_auth_info.json?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "uuid"

    .line 1040
    invoke-static {v4, v0}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "session_key"

    .line 1041
    invoke-static {v3, v1}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1039
    invoke-static {v0}, Lio/topvpn/vpn_api/util;->cmd2url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/topvpn/vpn_api/wget$option;

    invoke-direct {v2, p0, v0, v1}, Lio/topvpn/vpn_api/svc$8;-><init>(Lio/topvpn/vpn_api/svc;Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;)V

    goto :goto_0
.end method

.method private setup_builtin_lib()V
    .locals 5

    .prologue
    .line 1541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_libdir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/libtopvpn_svc-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.55.771"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_confdir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/libhola_svc.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1544
    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lio/topvpn/vpn_api/util;->file_exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1557
    :cond_0
    :goto_0
    return-void

    .line 1546
    :cond_1
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lio/topvpn/vpn_api/util;->symlink(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 1547
    invoke-static {v1}, Lio/topvpn/vpn_api/util;->file_exists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1549
    :cond_2
    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed creating symlink "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    goto :goto_0

    .line 1552
    :cond_3
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->HAVE_SVC:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1554
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->HAVE_SVC:Lio/topvpn/vpn_api/conf$key;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 1555
    const/4 v0, 0x5

    const-string v1, "have_svc"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1497
    const-string v0, "topvpn_api"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1499
    const-string v1, "choice"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1500
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1502
    const-string v1, "svc_start_not_free"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_0
    :goto_0
    return-void

    .line 1505
    :cond_1
    const/4 v0, 0x5

    const-string v1, "starting"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc;->zerr_s(ILjava/lang/String;)I

    .line 1506
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/topvpn/vpn_api/svc;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1507
    const-string v0, "svc_start_fail"

    const-string v1, "failed starting svc"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private start_be_async()V
    .locals 2

    .prologue
    .line 1298
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_exe_mode:Ljava/lang/String;

    const-string v1, "exe_off"

    if-eq v0, v1, :cond_0

    .line 1303
    :goto_0
    return-void

    .line 1300
    :cond_0
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    sget-object v1, Lio/topvpn/vpn_api/ram;->EXE_READY:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/ram;->del(Ljava/lang/Object;)V

    .line 1301
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->INSTALL:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    .line 1302
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_be:Lio/topvpn/vpn_api/be;

    invoke-virtual {v1, v0}, Lio/topvpn/vpn_api/be;->start_async_wait(Z)V

    goto :goto_0
.end method

.method private start_be_check()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1273
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->install_check()I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->DBG_NO_SPACE:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1274
    :cond_0
    const-string v0, "no_space_data"

    .line 1282
    :cond_1
    :goto_0
    return-object v0

    .line 1275
    :cond_2
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->WORKDIR:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->DBG_WORKDIR_SVC_FAIL:Lio/topvpn/vpn_api/conf$key;

    .line 1276
    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1278
    :cond_3
    const-string v0, "no_workdir_svc"

    goto :goto_0

    .line 1280
    :cond_4
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->SUPP_KILL:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "kill"

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->sys_exec(Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v1

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_1

    .line 1281
    const-string v0, "kill_cmd_missing"

    goto :goto_0
.end method

.method private start_be_post()V
    .locals 3

    .prologue
    .line 1306
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_exe_mode:Ljava/lang/String;

    const-string v1, "exe_off"

    if-ne v0, v1, :cond_0

    .line 1307
    const-string v0, "exe_vpn"

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_exe_mode:Ljava/lang/String;

    .line 1308
    :cond_0
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_exe_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_exe_mode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    .line 1309
    return-void
.end method

.method private start_be_pre()V
    .locals 3

    .prologue
    .line 1286
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->WORKDIR:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be_workdir:Ljava/lang/String;

    .line 1287
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->SUPP_KILL:Lio/topvpn/vpn_api/conf$key;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 1288
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->SVC_ERROR:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->del(Ljava/lang/Object;)V

    .line 1289
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->INSTALL:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    .line 1290
    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->INSTALL:Lio/topvpn/vpn_api/conf$key;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 1292
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_confdir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/db/hola.id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->create_hola_id()I

    move-result v0

    if-gez v0, :cond_1

    .line 1293
    const-string v0, "create_hola_id_err"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_1
    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v0

    iput-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_be_last_restart:J

    .line 1295
    return-void
.end method

.method private start_vpn()V
    .locals 2

    .prologue
    .line 1073
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_exe_mode:Ljava/lang/String;

    const-string v1, "exe_vpn"

    if-eq v0, v1, :cond_0

    .line 1075
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->hola_svc_stop()V

    .line 1076
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->hola_svc_start()V

    .line 1078
    :cond_0
    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1511
    const/4 v0, 0x5

    const-string v1, "stopping"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc;->zerr_s(ILjava/lang/String;)I

    .line 1512
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/topvpn/vpn_api/svc;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1513
    const/4 v0, 0x3

    const-string v1, "nothing found to stop"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc;->zerr_s(ILjava/lang/String;)I

    .line 1514
    :cond_0
    return-void
.end method

.method private stop_be()V
    .locals 3

    .prologue
    .line 1313
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    sget-object v1, Lio/topvpn/vpn_api/ram;->EXE_READY:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/ram;->del(Ljava/lang/Object;)V

    .line 1314
    const-string v0, "exe_off"

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_exe_mode:Ljava/lang/String;

    .line 1315
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    sget-object v1, Lio/topvpn/vpn_api/ram;->SVC_CONNECTED:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/ram;->del(Ljava/lang/Object;)V

    .line 1316
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    sget-object v1, Lio/topvpn/vpn_api/ram;->SVC_ROUTING:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/ram;->del(Ljava/lang/Object;)V

    .line 1317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_confdir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/core"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_be_workdir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/log/core"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->file_move(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    return-void
.end method

.method private terminate_bcast_recv()V
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_bcast_recv:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1494
    :goto_0
    return-void

    .line 1492
    :cond_0
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_bcast_recv:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/svc;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1493
    const/4 v0, 0x0

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_bcast_recv:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private update_vpn_api_svc(Lio/topvpn/vpn_api/svc;)V
    .locals 6

    .prologue
    .line 1081
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1082
    new-instance v1, Lio/topvpn/vpn_api/svc$9;

    invoke-direct {v1, p0, p1}, Lio/topvpn/vpn_api/svc$9;-><init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/svc;)V

    const-wide/16 v2, 0x2710

    const-wide/32 v4, 0x1499700

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1087
    return-void
.end method

.method private zerr(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 1519
    const-string v0, "svc"

    invoke-static {v0, p1, p2}, Lio/topvpn/vpn_api/util;->_zerr(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static zerr_s(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 1517
    const-string v0, "svc:s"

    invoke-static {v0, p0, p1}, Lio/topvpn/vpn_api/util;->_zerr(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1321
    new-instance v0, Lio/topvpn/vpn_api/svc$hola_svc_binder;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/svc$hola_svc_binder;-><init>(Lio/topvpn/vpn_api/svc;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 1101
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1102
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->log_3g_usage(Landroid/content/Context;)V

    .line 1103
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->util_init(Landroid/content/Context;)I

    .line 1104
    const-string v0, "TopVPN"

    const-string v1, "TopVPN API svc onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const/4 v0, 0x5

    const-string v1, "creating"

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    .line 1106
    new-instance v0, Lio/topvpn/vpn_api/conf;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/conf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    .line 1107
    new-instance v0, Lio/topvpn/vpn_api/ram;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/ram;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    .line 1108
    new-instance v0, Lcom/androidquery/AQuery;

    invoke-direct {v0, p0}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_aq:Lcom/androidquery/AQuery;

    .line 1109
    new-instance v0, Lio/topvpn/vpn_api/be;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/be;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be:Lio/topvpn/vpn_api/be;

    .line 1110
    new-instance v0, Lio/topvpn/vpn_api/svc$ipc;

    invoke-direct {v0, p0, p0}, Lio/topvpn/vpn_api/svc$ipc;-><init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/svc;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc:Lio/topvpn/vpn_api/svc$ipc;

    .line 1111
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->init_bcast_recv()V

    .line 1113
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "svc_mon"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be_mon_thread:Landroid/os/HandlerThread;

    .line 1115
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be_mon_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1116
    new-instance v0, Lio/topvpn/vpn_api/svc$svc_be_mon;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_be_mon_thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/topvpn/vpn_api/svc$svc_be_mon;-><init>(Lio/topvpn/vpn_api/svc;Landroid/os/Looper;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be_mon:Lio/topvpn/vpn_api/svc$svc_be_mon;

    .line 1117
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_be_mon:Lio/topvpn/vpn_api/svc$svc_be_mon;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be_mon_msgr:Landroid/os/Messenger;

    .line 1118
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be:Lio/topvpn/vpn_api/be;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_be_mon_msgr:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/be;->register_listener(Landroid/os/Messenger;)V

    .line 1119
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    invoke-static {v0}, Lio/topvpn/vpn_api/apk_config;->init(Lio/topvpn/vpn_api/conf;)V

    .line 1120
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_conf_listener:Lio/topvpn/vpn_api/conf$listener;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->register_listener(Lio/topvpn/vpn_api/set$listener;)V

    .line 1121
    new-instance v0, Lio/topvpn/vpn_api/state;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/state;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    .line 1122
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_state_listener:Lio/topvpn/vpn_api/state$listener;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/state;->register_listener(Lio/topvpn/vpn_api/set$listener;)V

    .line 1123
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_ram_listener:Lio/topvpn/vpn_api/ram$listener;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/ram;->register_listener(Lio/topvpn/vpn_api/set$listener;)V

    .line 1124
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->get_confdir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_confdir:Ljava/lang/String;

    .line 1125
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->get_libdir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_libdir:Ljava/lang/String;

    .line 1126
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->ipc_init()V

    .line 1127
    new-instance v0, Lio/topvpn/vpn_api/svc$svc_fsm;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/svc$svc_fsm;-><init>(Lio/topvpn/vpn_api/svc;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    .line 1128
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->create_hola_id()I

    move-result v0

    if-gez v0, :cond_0

    .line 1129
    const-string v0, "create_hola_id_err"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_0
    invoke-virtual {p0}, Lio/topvpn/vpn_api/svc;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1131
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1132
    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v3, Lio/topvpn/vpn_api/conf;->APKID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v3, v1}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1133
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/topvpn/vpn_api/util;->set_apkid(Ljava/lang/String;)I

    .line 1135
    invoke-static {v0}, Lio/topvpn/vpn_api/auth;->get_instance(Landroid/content/Context;)Lio/topvpn/vpn_api/auth;

    .line 1136
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->NON_FIRST_RUN:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1138
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->NON_FIRST_RUN:Lio/topvpn/vpn_api/conf$key;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 1139
    const-string v0, "first_run"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_1
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->setup_builtin_lib()V

    .line 1142
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->install_check()I

    move-result v0

    if-nez v0, :cond_2

    .line 1143
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->hola_svc_start()V

    .line 1144
    :cond_2
    invoke-direct {p0, p0}, Lio/topvpn/vpn_api/svc;->update_vpn_api_svc(Lio/topvpn/vpn_api/svc;)V

    .line 1145
    const-string v0, "phone"

    .line 1146
    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/svc;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1147
    new-instance v1, Lio/topvpn/vpn_api/svc$10;

    invoke-direct {v1, p0}, Lio/topvpn/vpn_api/svc$10;-><init>(Lio/topvpn/vpn_api/svc;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1165
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->monitor_network()V

    .line 1166
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1167
    const-wide v2, 0x9a7ec800L

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 1168
    const-string v2, "long_uptime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_3
    const-string v0, "TopVPN"

    const-string v1, "TopVPN API svc onCreate done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 1216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/topvpn/vpn_api/svc;->m_destroyed:Z

    .line 1217
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->log_3g_usage(Landroid/content/Context;)V

    .line 1218
    const-string v0, "destroying"

    invoke-direct {p0, v4, v0}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    .line 1219
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPING:Lio/topvpn/vpn_api/fsm$state;

    sget-object v2, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTED:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->set_state_if(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)Z

    .line 1221
    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE:Lio/topvpn/vpn_api/fsm$state;

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->wait_for(Lio/topvpn/vpn_api/fsm$state;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    :goto_0
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->ipc_uninit()V

    .line 1226
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/svc$svc_fsm;->quit()V

    .line 1227
    iput-object v3, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    .line 1228
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_conf_listener:Lio/topvpn/vpn_api/conf$listener;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->unregister_listener(Lio/topvpn/vpn_api/set$listener;)V

    .line 1229
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/conf;->detach()V

    .line 1230
    iput-object v3, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    .line 1231
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_state_listener:Lio/topvpn/vpn_api/state$listener;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/state;->unregister_listener(Lio/topvpn/vpn_api/set$listener;)V

    .line 1232
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/state;->detach()V

    .line 1233
    iput-object v3, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    .line 1234
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_ram_listener:Lio/topvpn/vpn_api/ram$listener;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/ram;->unregister_listener(Lio/topvpn/vpn_api/set$listener;)V

    .line 1235
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/ram;->detach()V

    .line 1236
    iput-object v3, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    .line 1237
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be:Lio/topvpn/vpn_api/be;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_be_mon_msgr:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/be;->unregister_listener(Landroid/os/Messenger;)V

    .line 1238
    iput-object v3, p0, Lio/topvpn/vpn_api/svc;->m_be_mon_msgr:Landroid/os/Messenger;

    .line 1239
    iput-object v3, p0, Lio/topvpn/vpn_api/svc;->m_be_mon:Lio/topvpn/vpn_api/svc$svc_be_mon;

    .line 1240
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be_mon_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1242
    :try_start_1
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be_mon_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1244
    :goto_1
    iput-object v3, p0, Lio/topvpn/vpn_api/svc;->m_be_mon_thread:Landroid/os/HandlerThread;

    .line 1245
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be:Lio/topvpn/vpn_api/be;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/be;->quit()V

    .line 1246
    iput-object v3, p0, Lio/topvpn/vpn_api/svc;->m_be:Lio/topvpn/vpn_api/be;

    .line 1247
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->terminate_bcast_recv()V

    .line 1248
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_uninit()V

    .line 1249
    const-string v0, "destroyed"

    invoke-direct {p0, v4, v0}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    .line 1250
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1251
    return-void

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    const/4 v0, 0x3

    const-string v1, "failed to wait for IDLE state while destroying"

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    goto :goto_0

    .line 1243
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 1256
    const/4 v0, 0x1

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1261
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 1262
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->log_3g_usage(Landroid/content/Context;)V

    .line 1263
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 1324
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
