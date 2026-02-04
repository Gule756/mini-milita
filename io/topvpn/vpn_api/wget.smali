.class Lio/topvpn/vpn_api/wget;
.super Ljava/lang/Object;
.source "wget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/topvpn/vpn_api/wget$connection_impl;,
        Lio/topvpn/vpn_api/wget$option;,
        Lio/topvpn/vpn_api/wget$connection;
    }
.end annotation


# instance fields
.field private m_attempt:Lio/topvpn/vpn_api/wget$connection_impl;

.field private m_end_ms:J

.field private m_filename:Ljava/lang/String;

.field private m_handler:Landroid/os/Handler;

.field private m_hard_timeout_ms:I

.field private m_looper:Landroid/os/Looper;

.field private m_max_attempts:I

.field private m_num_attempts:I

.field private final m_options:[Lio/topvpn/vpn_api/wget$option;

.field private m_proxy_agent_retry:I

.field private m_proxy_host:Ljava/lang/String;

.field private m_proxy_port:I

.field private m_retry_interval_ms:I

.field private m_same_thread:Z

.field private m_soft_timeout_ms:I

.field private m_start_ms:J

.field private final m_url:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object v1, p0, Lio/topvpn/vpn_api/wget;->m_looper:Landroid/os/Looper;

    .line 161
    iput-boolean v0, p0, Lio/topvpn/vpn_api/wget;->m_same_thread:Z

    .line 162
    iput-object v1, p0, Lio/topvpn/vpn_api/wget;->m_proxy_host:Ljava/lang/String;

    .line 164
    const/16 v1, 0x7530

    iput v1, p0, Lio/topvpn/vpn_api/wget;->m_hard_timeout_ms:I

    .line 165
    const/16 v1, 0x2710

    iput v1, p0, Lio/topvpn/vpn_api/wget;->m_soft_timeout_ms:I

    .line 166
    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v2

    iput-wide v2, p0, Lio/topvpn/vpn_api/wget;->m_start_ms:J

    .line 167
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/topvpn/vpn_api/wget;->m_end_ms:J

    .line 168
    iput v4, p0, Lio/topvpn/vpn_api/wget;->m_max_attempts:I

    .line 169
    iput v4, p0, Lio/topvpn/vpn_api/wget;->m_num_attempts:I

    .line 170
    iput v0, p0, Lio/topvpn/vpn_api/wget;->m_proxy_agent_retry:I

    .line 171
    const/16 v1, 0x3e8

    iput v1, p0, Lio/topvpn/vpn_api/wget;->m_retry_interval_ms:I

    .line 490
    iput-object p1, p0, Lio/topvpn/vpn_api/wget;->m_url:Ljava/lang/String;

    .line 491
    iput-object p2, p0, Lio/topvpn/vpn_api/wget;->m_options:[Lio/topvpn/vpn_api/wget$option;

    .line 492
    iget-object v1, p0, Lio/topvpn/vpn_api/wget;->m_options:[Lio/topvpn/vpn_api/wget$option;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 493
    invoke-virtual {v3, p0}, Lio/topvpn/vpn_api/wget$option;->apply(Lio/topvpn/vpn_api/wget;)V

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    :cond_0
    iget-boolean v0, p0, Lio/topvpn/vpn_api/wget;->m_same_thread:Z

    if-eqz v0, :cond_3

    .line 495
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/topvpn/vpn_api/wget;->m_handler:Landroid/os/Handler;

    .line 519
    :goto_1
    iget v0, p0, Lio/topvpn/vpn_api/wget;->m_soft_timeout_ms:I

    if-lez v0, :cond_1

    .line 521
    invoke-direct {p0}, Lio/topvpn/vpn_api/wget;->checkThread()V

    .line 522
    iget-object v0, p0, Lio/topvpn/vpn_api/wget;->m_handler:Landroid/os/Handler;

    new-instance v1, Lio/topvpn/vpn_api/wget$16;

    invoke-direct {v1, p0}, Lio/topvpn/vpn_api/wget$16;-><init>(Lio/topvpn/vpn_api/wget;)V

    iget v2, p0, Lio/topvpn/vpn_api/wget;->m_soft_timeout_ms:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 529
    :cond_1
    iget v0, p0, Lio/topvpn/vpn_api/wget;->m_hard_timeout_ms:I

    if-lez v0, :cond_2

    .line 531
    invoke-direct {p0}, Lio/topvpn/vpn_api/wget;->checkThread()V

    .line 532
    iget-object v0, p0, Lio/topvpn/vpn_api/wget;->m_handler:Landroid/os/Handler;

    new-instance v1, Lio/topvpn/vpn_api/wget$17;

    invoke-direct {v1, p0}, Lio/topvpn/vpn_api/wget$17;-><init>(Lio/topvpn/vpn_api/wget;)V

    iget v2, p0, Lio/topvpn/vpn_api/wget;->m_hard_timeout_ms:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 545
    :cond_2
    new-instance v0, Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v1, p0, Lio/topvpn/vpn_api/wget;->m_url:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lio/topvpn/vpn_api/wget$connection_impl;-><init>(Lio/topvpn/vpn_api/wget;Ljava/lang/String;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/wget;->m_attempt:Lio/topvpn/vpn_api/wget$connection_impl;

    .line 546
    return-void

    .line 497
    :cond_3
    new-instance v0, Lio/topvpn/vpn_api/wget$15;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/wget$15;-><init>(Lio/topvpn/vpn_api/wget;)V

    .line 508
    invoke-virtual {v0}, Lio/topvpn/vpn_api/wget$15;->start()V

    .line 509
    monitor-enter p0

    .line 511
    :goto_2
    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/wget;->m_looper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    .line 514
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 515
    :catch_0
    move-exception v0

    goto :goto_2

    .line 517
    :cond_4
    :try_start_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic access$002(Lio/topvpn/vpn_api/wget;I)I
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lio/topvpn/vpn_api/wget;->m_hard_timeout_ms:I

    return p1
.end method

.method static synthetic access$100(Lio/topvpn/vpn_api/wget;)I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lio/topvpn/vpn_api/wget;->m_soft_timeout_ms:I

    return v0
.end method

.method static synthetic access$1000(Lio/topvpn/vpn_api/wget;)[Lio/topvpn/vpn_api/wget$option;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lio/topvpn/vpn_api/wget;->m_options:[Lio/topvpn/vpn_api/wget$option;

    return-object v0
.end method

.method static synthetic access$102(Lio/topvpn/vpn_api/wget;I)I
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lio/topvpn/vpn_api/wget;->m_soft_timeout_ms:I

    return p1
.end method

.method static synthetic access$1200(Lio/topvpn/vpn_api/wget;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lio/topvpn/vpn_api/wget;->m_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1202(Lio/topvpn/vpn_api/wget;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lio/topvpn/vpn_api/wget;->m_handler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1300(Lio/topvpn/vpn_api/wget;ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lio/topvpn/vpn_api/wget;->zerr(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lio/topvpn/vpn_api/wget;Lio/topvpn/vpn_api/wget$connection_impl;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/wget;->onattemptdone(Lio/topvpn/vpn_api/wget$connection_impl;)V

    return-void
.end method

.method static synthetic access$1600(Lio/topvpn/vpn_api/wget;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lio/topvpn/vpn_api/wget;->checkThread()V

    return-void
.end method

.method static synthetic access$1702(Lio/topvpn/vpn_api/wget;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lio/topvpn/vpn_api/wget;->m_looper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$1800(Lio/topvpn/vpn_api/wget;)J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lio/topvpn/vpn_api/wget;->m_end_ms:J

    return-wide v0
.end method

.method static synthetic access$1802(Lio/topvpn/vpn_api/wget;J)J
    .locals 1

    .prologue
    .line 155
    iput-wide p1, p0, Lio/topvpn/vpn_api/wget;->m_end_ms:J

    return-wide p1
.end method

.method static synthetic access$1900(Lio/topvpn/vpn_api/wget;)Lio/topvpn/vpn_api/wget$connection_impl;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lio/topvpn/vpn_api/wget;->m_attempt:Lio/topvpn/vpn_api/wget$connection_impl;

    return-object v0
.end method

.method static synthetic access$1902(Lio/topvpn/vpn_api/wget;Lio/topvpn/vpn_api/wget$connection_impl;)Lio/topvpn/vpn_api/wget$connection_impl;
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lio/topvpn/vpn_api/wget;->m_attempt:Lio/topvpn/vpn_api/wget$connection_impl;

    return-object p1
.end method

.method static synthetic access$200(Lio/topvpn/vpn_api/wget;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lio/topvpn/vpn_api/wget;->m_proxy_host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lio/topvpn/vpn_api/wget;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lio/topvpn/vpn_api/wget;->m_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lio/topvpn/vpn_api/wget;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lio/topvpn/vpn_api/wget;->m_proxy_host:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lio/topvpn/vpn_api/wget;)I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lio/topvpn/vpn_api/wget;->m_proxy_port:I

    return v0
.end method

.method static synthetic access$302(Lio/topvpn/vpn_api/wget;I)I
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lio/topvpn/vpn_api/wget;->m_proxy_port:I

    return p1
.end method

.method static synthetic access$400(Lio/topvpn/vpn_api/wget;)I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lio/topvpn/vpn_api/wget;->m_proxy_agent_retry:I

    return v0
.end method

.method static synthetic access$402(Lio/topvpn/vpn_api/wget;I)I
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lio/topvpn/vpn_api/wget;->m_proxy_agent_retry:I

    return p1
.end method

.method static synthetic access$500(Lio/topvpn/vpn_api/wget;)I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lio/topvpn/vpn_api/wget;->m_max_attempts:I

    return v0
.end method

.method static synthetic access$502(Lio/topvpn/vpn_api/wget;I)I
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lio/topvpn/vpn_api/wget;->m_max_attempts:I

    return p1
.end method

.method static synthetic access$602(Lio/topvpn/vpn_api/wget;I)I
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lio/topvpn/vpn_api/wget;->m_retry_interval_ms:I

    return p1
.end method

.method static synthetic access$702(Lio/topvpn/vpn_api/wget;Z)Z
    .locals 0

    .prologue
    .line 155
    iput-boolean p1, p0, Lio/topvpn/vpn_api/wget;->m_same_thread:Z

    return p1
.end method

.method static synthetic access$800(Lio/topvpn/vpn_api/wget;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lio/topvpn/vpn_api/wget;->m_filename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lio/topvpn/vpn_api/wget;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lio/topvpn/vpn_api/wget;->m_filename:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lio/topvpn/vpn_api/wget;)I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lio/topvpn/vpn_api/wget;->m_num_attempts:I

    return v0
.end method

.method public static attempts(I)Lio/topvpn/vpn_api/wget$option;
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lio/topvpn/vpn_api/wget$11;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/wget$11;-><init>(I)V

    return-object v0
.end method

.method public static body(Ljava/lang/String;Ljava/lang/String;)Lio/topvpn/vpn_api/wget$option;
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lio/topvpn/vpn_api/wget$6;

    invoke-direct {v0, p1, p0}, Lio/topvpn/vpn_api/wget$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static body(Lorg/json/JSONObject;)Lio/topvpn/vpn_api/wget$option;
    .locals 2

    .prologue
    .line 237
    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "application/json"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/wget;->body(Ljava/lang/String;Ljava/lang/String;)Lio/topvpn/vpn_api/wget$option;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private checkThread()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lio/topvpn/vpn_api/wget;->m_handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    .line 588
    const-string v0, "wget_cb_thread_dead"

    iget-object v1, p0, Lio/topvpn/vpn_api/wget;->m_url:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    return-void
.end method

.method public static cookie(Ljava/lang/String;)Lio/topvpn/vpn_api/wget$option;
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lio/topvpn/vpn_api/wget$2;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/wget$2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static filename(Ljava/lang/String;)Lio/topvpn/vpn_api/wget$option;
    .locals 1

    .prologue
    .line 291
    new-instance v0, Lio/topvpn/vpn_api/wget$14;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/wget$14;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static follow_redirects(Z)Lio/topvpn/vpn_api/wget$option;
    .locals 1

    .prologue
    .line 248
    new-instance v0, Lio/topvpn/vpn_api/wget$8;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/wget$8;-><init>(Z)V

    return-object v0
.end method

.method public static hard_timeout_ms(I)Lio/topvpn/vpn_api/wget$option;
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lio/topvpn/vpn_api/wget$4;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/wget$4;-><init>(I)V

    return-object v0
.end method

.method public static header(Ljava/lang/String;Ljava/lang/String;)Lio/topvpn/vpn_api/wget$option;
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lio/topvpn/vpn_api/wget$7;

    invoke-direct {v0, p0, p1}, Lio/topvpn/vpn_api/wget$7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static method(Ljava/lang/String;)Lio/topvpn/vpn_api/wget$option;
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lio/topvpn/vpn_api/wget$1;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/wget$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private onattemptdone(Lio/topvpn/vpn_api/wget$connection_impl;)V
    .locals 4

    .prologue
    .line 558
    invoke-virtual {p1}, Lio/topvpn/vpn_api/wget$connection_impl;->get_state()Lio/topvpn/vpn_api/wget$connection$state;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/wget$connection$state;->CANCELED:Lio/topvpn/vpn_api/wget$connection$state;

    if-eq v0, v1, :cond_0

    iget v0, p0, Lio/topvpn/vpn_api/wget;->m_num_attempts:I

    iget v1, p0, Lio/topvpn/vpn_api/wget;->m_max_attempts:I

    if-eq v0, v1, :cond_0

    .line 559
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/wget;->accept(Lio/topvpn/vpn_api/wget$connection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 561
    :cond_0
    iget-wide v0, p0, Lio/topvpn/vpn_api/wget;->m_end_ms:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 562
    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v0

    iput-wide v0, p0, Lio/topvpn/vpn_api/wget;->m_end_ms:J

    .line 563
    :cond_1
    iget-object v0, p0, Lio/topvpn/vpn_api/wget;->m_handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 564
    iget-object v0, p0, Lio/topvpn/vpn_api/wget;->m_looper:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 565
    iget-object v0, p0, Lio/topvpn/vpn_api/wget;->m_looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 566
    :cond_2
    sget-object v0, Lio/topvpn/vpn_api/wget$19;->$SwitchMap$io$topvpn$vpn_api$wget$connection$state:[I

    invoke-virtual {p1}, Lio/topvpn/vpn_api/wget$connection_impl;->get_state()Lio/topvpn/vpn_api/wget$connection$state;

    move-result-object v1

    invoke-virtual {v1}, Lio/topvpn/vpn_api/wget$connection$state;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 583
    :goto_0
    return-void

    .line 568
    :pswitch_0
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/wget;->onresponse(Lio/topvpn/vpn_api/wget$connection;)V

    goto :goto_0

    .line 569
    :pswitch_1
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/wget;->onerror(Lio/topvpn/vpn_api/wget$connection;)V

    goto :goto_0

    .line 570
    :pswitch_2
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/wget;->ontimeout(Lio/topvpn/vpn_api/wget$connection;)V

    goto :goto_0

    .line 575
    :cond_3
    iget v0, p0, Lio/topvpn/vpn_api/wget;->m_num_attempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/topvpn/vpn_api/wget;->m_num_attempts:I

    .line 576
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RETRY ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/topvpn/vpn_api/wget;->m_num_attempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/topvpn/vpn_api/wget;->m_max_attempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/topvpn/vpn_api/wget;->m_retry_interval_ms:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/wget;->zerr(ILjava/lang/String;)I

    .line 578
    invoke-direct {p0}, Lio/topvpn/vpn_api/wget;->checkThread()V

    .line 579
    iget-object v0, p0, Lio/topvpn/vpn_api/wget;->m_handler:Landroid/os/Handler;

    new-instance v1, Lio/topvpn/vpn_api/wget$18;

    invoke-direct {v1, p0}, Lio/topvpn/vpn_api/wget$18;-><init>(Lio/topvpn/vpn_api/wget;)V

    iget v2, p0, Lio/topvpn/vpn_api/wget;->m_retry_interval_ms:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static proxy(Ljava/lang/String;I)Lio/topvpn/vpn_api/wget$option;
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lio/topvpn/vpn_api/wget$9;

    invoke-direct {v0, p0, p1}, Lio/topvpn/vpn_api/wget$9;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static proxy_agent_retry(I)Lio/topvpn/vpn_api/wget$option;
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lio/topvpn/vpn_api/wget$10;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/wget$10;-><init>(I)V

    return-object v0
.end method

.method public static retry_interval_ms(I)Lio/topvpn/vpn_api/wget$option;
    .locals 1

    .prologue
    .line 278
    new-instance v0, Lio/topvpn/vpn_api/wget$12;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/wget$12;-><init>(I)V

    return-object v0
.end method

.method public static same_thread(Z)Lio/topvpn/vpn_api/wget$option;
    .locals 1

    .prologue
    .line 285
    new-instance v0, Lio/topvpn/vpn_api/wget$13;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/wget$13;-><init>(Z)V

    return-object v0
.end method

.method public static soft_timeout_ms(I)Lio/topvpn/vpn_api/wget$option;
    .locals 1

    .prologue
    .line 222
    new-instance v0, Lio/topvpn/vpn_api/wget$5;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/wget$5;-><init>(I)V

    return-object v0
.end method

.method public static timeout_ms(I)Lio/topvpn/vpn_api/wget$option;
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lio/topvpn/vpn_api/wget$3;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/wget$3;-><init>(I)V

    return-object v0
.end method

.method private zerr(ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wget "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/topvpn/vpn_api/wget;->m_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lio/topvpn/vpn_api/util;->_zerr(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public accept(Lio/topvpn/vpn_api/wget$connection;)Z
    .locals 2

    .prologue
    .line 596
    invoke-interface {p1}, Lio/topvpn/vpn_api/wget$connection;->get_state()Lio/topvpn/vpn_api/wget$connection$state;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/wget$connection$state;->RESPONSE:Lio/topvpn/vpn_api/wget$connection$state;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lio/topvpn/vpn_api/wget$connection;->get_code()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 548
    iget-object v0, p0, Lio/topvpn/vpn_api/wget;->m_attempt:Lio/topvpn/vpn_api/wget$connection_impl;

    sget-object v1, Lio/topvpn/vpn_api/wget$connection$state;->CANCELED:Lio/topvpn/vpn_api/wget$connection$state;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lio/topvpn/vpn_api/wget$connection_impl;->access$1100(Lio/topvpn/vpn_api/wget$connection_impl;Lio/topvpn/vpn_api/wget$connection$state;J)V

    return-void
.end method

.method public final get_attempts()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lio/topvpn/vpn_api/wget;->m_num_attempts:I

    return v0
.end method

.method public final get_duration_ms()J
    .locals 4

    .prologue
    .line 551
    iget-wide v0, p0, Lio/topvpn/vpn_api/wget;->m_end_ms:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 553
    :cond_0
    iget-wide v0, p0, Lio/topvpn/vpn_api/wget;->m_end_ms:J

    iget-wide v2, p0, Lio/topvpn/vpn_api/wget;->m_start_ms:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public ondone(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 0

    .prologue
    .line 607
    return-void
.end method

.method public onerror(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 0

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/wget;->onfailure(Lio/topvpn/vpn_api/wget$connection;)V

    return-void
.end method

.method public onfailure(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 0

    .prologue
    .line 606
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/wget;->ondone(Lio/topvpn/vpn_api/wget$connection;)V

    return-void
.end method

.method public onresponse(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 2

    .prologue
    .line 598
    invoke-interface {p1}, Lio/topvpn/vpn_api/wget$connection;->get_code()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 599
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/wget;->onsuccess(Lio/topvpn/vpn_api/wget$connection;)V

    .line 602
    :goto_0
    return-void

    .line 601
    :cond_0
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/wget;->onerror(Lio/topvpn/vpn_api/wget$connection;)V

    goto :goto_0
.end method

.method public onslow()V
    .locals 0

    .prologue
    .line 608
    return-void
.end method

.method public onsuccess(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 0

    .prologue
    .line 605
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/wget;->ondone(Lio/topvpn/vpn_api/wget$connection;)V

    return-void
.end method

.method public ontimeout(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 0

    .prologue
    .line 603
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/wget;->onfailure(Lio/topvpn/vpn_api/wget$connection;)V

    return-void
.end method
