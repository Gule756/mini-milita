.class final Lio/topvpn/vpn_api/svc$svc_fsm;
.super Lio/topvpn/vpn_api/fsm_async;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/svc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "svc_fsm"
.end annotation


# static fields
.field public static final HALTED:Lio/topvpn/vpn_api/fsm$state;

.field public static final IDLE:Lio/topvpn/vpn_api/fsm$state;

.field public static final IDLE_ERR:Lio/topvpn/vpn_api/fsm$state;

.field public static final RESTARTING:Lio/topvpn/vpn_api/fsm$state;

.field public static final STARTED:Lio/topvpn/vpn_api/fsm$state;

.field public static final STARTING:Lio/topvpn/vpn_api/fsm$state;

.field public static final STOPPED:Lio/topvpn/vpn_api/fsm$state;

.field public static final STOPPING:Lio/topvpn/vpn_api/fsm$state;


# instance fields
.field private m_start_scheduled:Z

.field private m_stop_scheduled:Z

.field private final m_svc:Lio/topvpn/vpn_api/svc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lio/topvpn/vpn_api/svc$svc_fsm$1;

    const-string v1, "idle"

    invoke-direct {v0, v1}, Lio/topvpn/vpn_api/svc$svc_fsm$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE:Lio/topvpn/vpn_api/fsm$state;

    .line 125
    new-instance v0, Lio/topvpn/vpn_api/svc$svc_fsm$2;

    const-string v1, "idle_err"

    invoke-direct {v0, v1}, Lio/topvpn/vpn_api/svc$svc_fsm$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE_ERR:Lio/topvpn/vpn_api/fsm$state;

    .line 139
    new-instance v0, Lio/topvpn/vpn_api/svc$svc_fsm$3;

    const-string v1, "starting"

    invoke-direct {v0, v1}, Lio/topvpn/vpn_api/svc$svc_fsm$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTING:Lio/topvpn/vpn_api/fsm$state;

    .line 165
    new-instance v0, Lio/topvpn/vpn_api/svc$svc_fsm$4;

    const-string v1, "started"

    invoke-direct {v0, v1}, Lio/topvpn/vpn_api/svc$svc_fsm$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTED:Lio/topvpn/vpn_api/fsm$state;

    .line 213
    new-instance v0, Lio/topvpn/vpn_api/svc$svc_fsm$5;

    const-string v1, "stopping"

    invoke-direct {v0, v1}, Lio/topvpn/vpn_api/svc$svc_fsm$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPING:Lio/topvpn/vpn_api/fsm$state;

    .line 229
    new-instance v0, Lio/topvpn/vpn_api/svc$svc_fsm$6;

    const-string v1, "stopped"

    invoke-direct {v0, v1}, Lio/topvpn/vpn_api/svc$svc_fsm$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPED:Lio/topvpn/vpn_api/fsm$state;

    .line 243
    new-instance v0, Lio/topvpn/vpn_api/svc$svc_fsm$7;

    const-string v1, "restarting"

    invoke-direct {v0, v1}, Lio/topvpn/vpn_api/svc$svc_fsm$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/topvpn/vpn_api/svc$svc_fsm;->RESTARTING:Lio/topvpn/vpn_api/fsm$state;

    .line 269
    new-instance v0, Lio/topvpn/vpn_api/svc$svc_fsm$8;

    const-string v1, "halted"

    invoke-direct {v0, v1}, Lio/topvpn/vpn_api/svc$svc_fsm$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/topvpn/vpn_api/svc$svc_fsm;->HALTED:Lio/topvpn/vpn_api/fsm$state;

    return-void
.end method

.method public constructor <init>(Lio/topvpn/vpn_api/svc;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 86
    const-string v0, "svc_fsm"

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE:Lio/topvpn/vpn_api/fsm$state;

    const/16 v2, 0x11

    new-array v2, v2, [Lio/topvpn/vpn_api/fsm$transition;

    new-instance v3, Lio/topvpn/vpn_api/fsm$transition;

    sget-object v4, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE:Lio/topvpn/vpn_api/fsm$state;

    new-array v5, v9, [Lio/topvpn/vpn_api/fsm$state;

    sget-object v6, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTING:Lio/topvpn/vpn_api/fsm$state;

    aput-object v6, v5, v8

    invoke-direct {v3, v4, v5}, Lio/topvpn/vpn_api/fsm$transition;-><init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$state;)V

    aput-object v3, v2, v8

    new-instance v3, Lio/topvpn/vpn_api/fsm$transition;

    sget-object v4, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE_ERR:Lio/topvpn/vpn_api/fsm$state;

    new-array v5, v9, [Lio/topvpn/vpn_api/fsm$state;

    sget-object v6, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTING:Lio/topvpn/vpn_api/fsm$state;

    aput-object v6, v5, v8

    invoke-direct {v3, v4, v5}, Lio/topvpn/vpn_api/fsm$transition;-><init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$state;)V

    aput-object v3, v2, v9

    const/4 v3, 0x2

    new-instance v4, Lio/topvpn/vpn_api/fsm$transition;

    sget-object v5, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE:Lio/topvpn/vpn_api/fsm$state;

    new-array v6, v9, [Lio/topvpn/vpn_api/fsm$state;

    sget-object v7, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE_ERR:Lio/topvpn/vpn_api/fsm$state;

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lio/topvpn/vpn_api/fsm$transition;-><init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$state;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lio/topvpn/vpn_api/fsm$transition;

    sget-object v5, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE_ERR:Lio/topvpn/vpn_api/fsm$state;

    new-array v6, v9, [Lio/topvpn/vpn_api/fsm$state;

    sget-object v7, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE:Lio/topvpn/vpn_api/fsm$state;

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lio/topvpn/vpn_api/fsm$transition;-><init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$state;)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lio/topvpn/vpn_api/fsm$transition;

    sget-object v5, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTING:Lio/topvpn/vpn_api/fsm$state;

    new-array v6, v9, [Lio/topvpn/vpn_api/fsm$state;

    sget-object v7, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTED:Lio/topvpn/vpn_api/fsm$state;

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lio/topvpn/vpn_api/fsm$transition;-><init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$state;)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lio/topvpn/vpn_api/fsm$transition;

    sget-object v5, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTING:Lio/topvpn/vpn_api/fsm$state;

    new-array v6, v9, [Lio/topvpn/vpn_api/fsm$state;

    sget-object v7, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPED:Lio/topvpn/vpn_api/fsm$state;

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lio/topvpn/vpn_api/fsm$transition;-><init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$state;)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lio/topvpn/vpn_api/fsm$transition;

    sget-object v5, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTED:Lio/topvpn/vpn_api/fsm$state;

    new-array v6, v9, [Lio/topvpn/vpn_api/fsm$state;

    sget-object v7, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPING:Lio/topvpn/vpn_api/fsm$state;

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lio/topvpn/vpn_api/fsm$transition;-><init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$state;)V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lio/topvpn/vpn_api/fsm$transition;

    sget-object v5, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPING:Lio/topvpn/vpn_api/fsm$state;

    new-array v6, v9, [Lio/topvpn/vpn_api/fsm$state;

    sget-object v7, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPED:Lio/topvpn/vpn_api/fsm$state;

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lio/topvpn/vpn_api/fsm$transition;-><init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$state;)V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lio/topvpn/vpn_api/fsm$transition;

    sget-object v5, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPED:Lio/topvpn/vpn_api/fsm$state;

    new-array v6, v9, [Lio/topvpn/vpn_api/fsm$state;

    sget-object v7, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE:Lio/topvpn/vpn_api/fsm$state;

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lio/topvpn/vpn_api/fsm$transition;-><init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$state;)V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Lio/topvpn/vpn_api/fsm$transition;

    sget-object v5, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPED:Lio/topvpn/vpn_api/fsm$state;

    new-array v6, v9, [Lio/topvpn/vpn_api/fsm$state;

    sget-object v7, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE_ERR:Lio/topvpn/vpn_api/fsm$state;

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lio/topvpn/vpn_api/fsm$transition;-><init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$state;)V

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-instance v4, Lio/topvpn/vpn_api/fsm$transition;

    sget-object v5, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTED:Lio/topvpn/vpn_api/fsm$state;

    new-array v6, v9, [Lio/topvpn/vpn_api/fsm$state;

    sget-object v7, Lio/topvpn/vpn_api/svc$svc_fsm;->RESTARTING:Lio/topvpn/vpn_api/fsm$state;

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lio/topvpn/vpn_api/fsm$transition;-><init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$state;)V

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-instance v4, Lio/topvpn/vpn_api/fsm$transition;

    sget-object v5, Lio/topvpn/vpn_api/svc$svc_fsm;->RESTARTING:Lio/topvpn/vpn_api/fsm$state;

    new-array v6, v9, [Lio/topvpn/vpn_api/fsm$state;

    sget-object v7, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTED:Lio/topvpn/vpn_api/fsm$state;

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lio/topvpn/vpn_api/fsm$transition;-><init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$state;)V

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-instance v4, Lio/topvpn/vpn_api/fsm$transition;

    sget-object v5, Lio/topvpn/vpn_api/svc$svc_fsm;->RESTARTING:Lio/topvpn/vpn_api/fsm$state;

    new-array v6, v9, [Lio/topvpn/vpn_api/fsm$state;

    sget-object v7, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPED:Lio/topvpn/vpn_api/fsm$state;

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lio/topvpn/vpn_api/fsm$transition;-><init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$state;)V

    aput-object v4, v2, v3

    const/16 v3, 0xd

    new-instance v4, Lio/topvpn/vpn_api/fsm$transition;

    sget-object v5, Lio/topvpn/vpn_api/svc$svc_fsm;->HALTED:Lio/topvpn/vpn_api/fsm$state;

    new-array v6, v9, [Lio/topvpn/vpn_api/fsm$state;

    sget-object v7, Lio/topvpn/vpn_api/svc$svc_fsm;->RESTARTING:Lio/topvpn/vpn_api/fsm$state;

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lio/topvpn/vpn_api/fsm$transition;-><init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$state;)V

    aput-object v4, v2, v3

    const/16 v3, 0xe

    new-instance v4, Lio/topvpn/vpn_api/fsm$transition;

    sget-object v5, Lio/topvpn/vpn_api/svc$svc_fsm;->HALTED:Lio/topvpn/vpn_api/fsm$state;

    new-array v6, v9, [Lio/topvpn/vpn_api/fsm$state;

    sget-object v7, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPING:Lio/topvpn/vpn_api/fsm$state;

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lio/topvpn/vpn_api/fsm$transition;-><init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$state;)V

    aput-object v4, v2, v3

    const/16 v3, 0xf

    new-instance v4, Lio/topvpn/vpn_api/fsm$transition;

    sget-object v5, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTED:Lio/topvpn/vpn_api/fsm$state;

    new-array v6, v9, [Lio/topvpn/vpn_api/fsm$state;

    sget-object v7, Lio/topvpn/vpn_api/svc$svc_fsm;->HALTED:Lio/topvpn/vpn_api/fsm$state;

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lio/topvpn/vpn_api/fsm$transition;-><init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$state;)V

    aput-object v4, v2, v3

    const/16 v3, 0x10

    new-instance v4, Lio/topvpn/vpn_api/fsm$transition;

    sget-object v5, Lio/topvpn/vpn_api/svc$svc_fsm;->HALTED:Lio/topvpn/vpn_api/fsm$state;

    new-array v6, v9, [Lio/topvpn/vpn_api/fsm$state;

    sget-object v7, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPED:Lio/topvpn/vpn_api/fsm$state;

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lio/topvpn/vpn_api/fsm$transition;-><init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$state;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lio/topvpn/vpn_api/fsm_async;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$transition;)V

    .line 101
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$svc_fsm;->m_svc:Lio/topvpn/vpn_api/svc;

    .line 102
    invoke-static {p1}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/ram;->SVC_STATE:Lio/topvpn/vpn_api/ram$key;

    const-string v2, "idle"

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/ram;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method static synthetic access$400(Lio/topvpn/vpn_api/svc$svc_fsm;)Lio/topvpn/vpn_api/svc;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_fsm;->m_svc:Lio/topvpn/vpn_api/svc;

    return-object v0
.end method

.method static synthetic access$600(Lio/topvpn/vpn_api/svc$svc_fsm;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lio/topvpn/vpn_api/svc$svc_fsm;->m_start_scheduled:Z

    return v0
.end method

.method static synthetic access$602(Lio/topvpn/vpn_api/svc$svc_fsm;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lio/topvpn/vpn_api/svc$svc_fsm;->m_start_scheduled:Z

    return p1
.end method

.method static synthetic access$700(Lio/topvpn/vpn_api/svc$svc_fsm;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lio/topvpn/vpn_api/svc$svc_fsm;->m_stop_scheduled:Z

    return v0
.end method

.method static synthetic access$702(Lio/topvpn/vpn_api/svc$svc_fsm;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lio/topvpn/vpn_api/svc$svc_fsm;->m_stop_scheduled:Z

    return p1
.end method


# virtual methods
.method public schedule_start()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/topvpn/vpn_api/svc$svc_fsm;->m_start_scheduled:Z

    return-void
.end method

.method public schedule_stop()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/topvpn/vpn_api/svc$svc_fsm;->m_stop_scheduled:Z

    return-void
.end method
