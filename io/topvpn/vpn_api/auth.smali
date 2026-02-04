.class Lio/topvpn/vpn_api/auth;
.super Ljava/lang/Object;
.source "auth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/topvpn/vpn_api/auth$login_cb;
    }
.end annotation


# static fields
.field private static m_instance:Lio/topvpn/vpn_api/auth;


# instance fields
.field private m_aq:Lcom/androidquery/AQuery;

.field private m_c:Landroid/content/Context;

.field private m_conf:Lio/topvpn/vpn_api/conf;

.field public m_country_local:Ljava/lang/String;

.field private m_in_progress:Z

.field private m_pending_callbacks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lio/topvpn/vpn_api/auth$login_cb;",
            ">;"
        }
    .end annotation
.end field

.field private m_ram:Lio/topvpn/vpn_api/ram;

.field public m_sid:Ljava/lang/String;

.field public m_uuid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/topvpn/vpn_api/auth;->m_pending_callbacks:Ljava/util/Queue;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/topvpn/vpn_api/auth;->m_in_progress:Z

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/topvpn/vpn_api/auth;->m_c:Landroid/content/Context;

    .line 43
    new-instance v0, Lio/topvpn/vpn_api/conf;

    iget-object v1, p0, Lio/topvpn/vpn_api/auth;->m_c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/topvpn/vpn_api/conf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/auth;->m_conf:Lio/topvpn/vpn_api/conf;

    .line 44
    new-instance v0, Lio/topvpn/vpn_api/ram;

    iget-object v1, p0, Lio/topvpn/vpn_api/auth;->m_c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/topvpn/vpn_api/ram;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/auth;->m_ram:Lio/topvpn/vpn_api/ram;

    .line 45
    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lio/topvpn/vpn_api/auth;->m_c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/auth;->m_aq:Lcom/androidquery/AQuery;

    .line 46
    iget-object v0, p0, Lio/topvpn/vpn_api/auth;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->UUID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/topvpn/vpn_api/auth;->m_uuid:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lio/topvpn/vpn_api/auth;->m_uuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lio/topvpn/vpn_api/auth;->uuid_create()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/topvpn/vpn_api/auth;->m_uuid:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lio/topvpn/vpn_api/auth;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->UUID_TMP:Lio/topvpn/vpn_api/conf$key;

    iget-object v2, p0, Lio/topvpn/vpn_api/auth;->m_uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lio/topvpn/vpn_api/auth;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->DBG_COUNTRY:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    iget-object v0, p0, Lio/topvpn/vpn_api/auth;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->COUNTRY_LOCAL:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/topvpn/vpn_api/auth;->m_country_local:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lio/topvpn/vpn_api/auth;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->SESSION_KEY_JAVA:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/topvpn/vpn_api/auth;->m_sid:Ljava/lang/String;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lio/topvpn/vpn_api/auth;)Lio/topvpn/vpn_api/conf;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/topvpn/vpn_api/auth;->m_conf:Lio/topvpn/vpn_api/conf;

    return-object v0
.end method

.method static synthetic access$100(Lio/topvpn/vpn_api/auth;)Lio/topvpn/vpn_api/ram;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/topvpn/vpn_api/auth;->m_ram:Lio/topvpn/vpn_api/ram;

    return-object v0
.end method

.method static synthetic access$200(Lio/topvpn/vpn_api/auth;)Ljava/util/Queue;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/topvpn/vpn_api/auth;->m_pending_callbacks:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$300(Lio/topvpn/vpn_api/auth;Lio/topvpn/vpn_api/auth$login_cb;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lio/topvpn/vpn_api/auth;->login_internal(Lio/topvpn/vpn_api/auth$login_cb;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lio/topvpn/vpn_api/auth;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lio/topvpn/vpn_api/auth;->m_in_progress:Z

    return p1
.end method

.method public static get_instance(Landroid/content/Context;)Lio/topvpn/vpn_api/auth;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lio/topvpn/vpn_api/auth;->m_instance:Lio/topvpn/vpn_api/auth;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lio/topvpn/vpn_api/auth;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/auth;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/topvpn/vpn_api/auth;->m_instance:Lio/topvpn/vpn_api/auth;

    .line 38
    :cond_0
    sget-object v0, Lio/topvpn/vpn_api/auth;->m_instance:Lio/topvpn/vpn_api/auth;

    return-object v0
.end method

.method private login_internal(Lio/topvpn/vpn_api/auth$login_cb;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 89
    iget-object v0, p0, Lio/topvpn/vpn_api/auth;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->CID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 90
    iget-object v0, p0, Lio/topvpn/vpn_api/auth;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->UUID_TMP:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v2, p2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lio/topvpn/vpn_api/auth;->m_conf:Lio/topvpn/vpn_api/conf;

    iget-object v2, p0, Lio/topvpn/vpn_api/auth;->m_aq:Lcom/androidquery/AQuery;

    const/4 v3, 0x0

    invoke-static {v0, v2, v6, v3}, Lio/topvpn/vpn_api/apk_config;->update(Lio/topvpn/vpn_api/conf;Lcom/androidquery/AQuery;Ljava/lang/Runnable;Z)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/background_apk_init?login=1&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "uuid"

    .line 93
    invoke-static {v2, p2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "os_ver"

    .line 94
    invoke-static {}, Lio/topvpn/vpn_api/util;->get_os_ver()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ver"

    const-string v3, "1.55.771"

    .line 95
    invoke-static {v2, v3}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "apkid"

    iget-object v3, p0, Lio/topvpn/vpn_api/auth;->m_c:Landroid/content/Context;

    .line 96
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "flags"

    const-string v3, "0x40000"

    .line 97
    invoke-static {v2, v3}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "cid"

    invoke-static {v2, v1}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_0
    new-instance v2, Lio/topvpn/vpn_api/ajax_ccgi;

    iget-object v3, p0, Lio/topvpn/vpn_api/auth;->m_aq:Lcom/androidquery/AQuery;

    iget-object v4, p0, Lio/topvpn/vpn_api/auth;->m_conf:Lio/topvpn/vpn_api/conf;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v0, v4, v5}, Lio/topvpn/vpn_api/ajax_ccgi;-><init>(Lcom/androidquery/AQuery;Ljava/lang/String;Lio/topvpn/vpn_api/conf;Z)V

    .line 101
    new-instance v0, Lio/topvpn/vpn_api/auth$1;

    invoke-direct {v0, p0, p2, v1, p1}, Lio/topvpn/vpn_api/auth$1;-><init>(Lio/topvpn/vpn_api/auth;Ljava/lang/String;Ljava/lang/String;Lio/topvpn/vpn_api/auth$login_cb;)V

    invoke-virtual {v2, v6, v0}, Lio/topvpn/vpn_api/ajax_ccgi;->ajax(Ljava/util/Map;Lcom/androidquery/callback/AjaxCallback;)V

    .line 146
    return-void
.end method

.method public static uuid_create()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apk-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public is_login()Z
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lio/topvpn/vpn_api/auth;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->SESSION_KEY_JAVA:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/topvpn/vpn_api/auth;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->UUID:Lio/topvpn/vpn_api/conf$key;

    .line 64
    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public login(Lio/topvpn/vpn_api/auth$login_cb;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/topvpn/vpn_api/auth;->login(Lio/topvpn/vpn_api/auth$login_cb;Z)V

    return-void
.end method

.method public declared-synchronized login(Lio/topvpn/vpn_api/auth$login_cb;Z)V
    .locals 3

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/topvpn/vpn_api/auth;->m_in_progress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 86
    :goto_0
    monitor-exit p0

    return-void

    .line 72
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lio/topvpn/vpn_api/auth;->m_in_progress:Z

    if-eqz v0, :cond_2

    .line 74
    if-eqz p1, :cond_1

    .line 75
    iget-object v0, p0, Lio/topvpn/vpn_api/auth;->m_pending_callbacks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1
    const-string v0, "rule_background_apk_in_progress"

    const-string v1, "login already in progress"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 79
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lio/topvpn/vpn_api/auth;->m_in_progress:Z

    .line 80
    iget-object v0, p0, Lio/topvpn/vpn_api/auth;->m_uuid:Ljava/lang/String;

    const-string v1, "apk-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lio/topvpn/vpn_api/auth;->m_uuid:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lio/topvpn/vpn_api/auth;->login_internal(Lio/topvpn/vpn_api/auth$login_cb;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lio/topvpn/vpn_api/auth;->m_uuid:Ljava/lang/String;

    const-string v1, "apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apk-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/topvpn/vpn_api/auth;->m_uuid:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/topvpn/vpn_api/auth;->login_internal(Lio/topvpn/vpn_api/auth$login_cb;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apk-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/topvpn/vpn_api/auth;->m_uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/topvpn/vpn_api/auth;->login_internal(Lio/topvpn/vpn_api/auth$login_cb;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
