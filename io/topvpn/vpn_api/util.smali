.class Lio/topvpn/vpn_api/util;
.super Ljava/lang/Object;
.source "util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/topvpn/vpn_api/util$rc4_t;,
        Lio/topvpn/vpn_api/util$ipc_thread;,
        Lio/topvpn/vpn_api/util$ipc_request;,
        Lio/topvpn/vpn_api/util$killall_t;,
        Lio/topvpn/vpn_api/util$proc_info_t;,
        Lio/topvpn/vpn_api/util$scandir_cb_t;,
        Lio/topvpn/vpn_api/util$perr_msg;,
        Lio/topvpn/vpn_api/util$ipc_result;
    }
.end annotation


# static fields
.field public static final LALERT:I = 0x1

.field public static final LCONSOLE:I = 0x100

.field public static final LCRIT:I = 0x2

.field public static final LDEBUG:I = 0x7

.field public static final LDOCANCEL:I = 0x400

.field public static final LDOEXIT:I = 0x200

.field public static final LDOFLUSH:I = 0x2000

.field public static final LDOPASS:I = 0x1000

.field public static final LEMERG:I = 0x0

.field public static final LERR:I = 0x3

.field public static final LEXIT:I = 0x202

.field public static final LFLAGS_MASK:I = 0xff00

.field public static final LINFO:I = 0x6

.field public static final LLONGMSG:I = 0x800

.field public static final LNOTICE:I = 0x5

.field public static final LPANIC:I = 0x200

.field public static final LSEVERITY_MASK:I = 0xf

.field public static final LWARNING:I = 0x4

.field public static final MS_MIN:I = 0xea60

.field public static final MS_SEC:I = 0x3e8

.field public static final NSEC_PER_MS:I = 0xf4240

.field private static final PERR_SEND:I = 0x1

.field public static final SIGKILL:I = 0x9

.field public static final SIGTERM:I = 0xf

.field public static final SIGUSR2:I = 0xc

.field public static instance:Lio/topvpn/vpn_api/util;

.field private static m_cachedir:Ljava/lang/String;

.field private static m_conf:Lio/topvpn/vpn_api/conf;

.field public static m_curr_uid:I

.field private static m_dbg_set_prev_thread:Landroid/os/StrictMode$ThreadPolicy;

.field private static m_dbg_set_prev_vm:Landroid/os/StrictMode$VmPolicy;

.field private static m_encrypt_post:Z

.field public static m_file:Ljava/io/File;

.field private static m_fw:Ljava/io/FileWriter;

.field private static m_is_debug:Ljava/lang/Boolean;

.field private static m_is_debug_exe:Ljava/lang/Boolean;

.field private static m_is_debug_layout:Ljava/lang/Boolean;

.field private static m_membuf:Ljava/lang/String;

.field private static m_path:Ljava/lang/String;

.field private static m_perr_handler:Landroid/os/Handler;

.field static m_perr_inited:Z

.field private static final m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static m_perr_thread:Landroid/os/HandlerThread;

.field private static m_ref:I

.field private static m_sdf_sql:Ljava/text/SimpleDateFormat;

.field private static m_sdf_ts:Ljava/text/SimpleDateFormat;

.field static m_util_init_ret:I

.field private static m_zerr_ex:Ljava/util/concurrent/ExecutorService;

.field private static final m_zerr_lock:Ljava/lang/Object;

.field private static no_browser_detected_perr_sent:Z

.field private static final popular_browsers:[Ljava/lang/String;

.field public static use_rt:Z

.field public static final use_rt_sync:Ljava/lang/Object;

.field private static zerr_level:I

.field private static final zerr_severity_str:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x5

    const/4 v4, 0x0

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/topvpn/vpn_api/util;->use_rt_sync:Ljava/lang/Object;

    .line 205
    sput v2, Lio/topvpn/vpn_api/util;->m_util_init_ret:I

    .line 207
    sput v2, Lio/topvpn/vpn_api/util;->m_curr_uid:I

    .line 333
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "EMERGENCY"

    aput-object v2, v0, v4

    const-string v2, "ALERT"

    aput-object v2, v0, v5

    const-string v2, "CRITICAL"

    aput-object v2, v0, v6

    const/4 v2, 0x3

    const-string v3, "ERROR"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "WARNING"

    aput-object v3, v0, v2

    const-string v2, "NOTICE"

    aput-object v2, v0, v1

    const/4 v2, 0x6

    const-string v3, "INFO"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "DEBUG"

    aput-object v3, v0, v2

    sput-object v0, Lio/topvpn/vpn_api/util;->zerr_severity_str:[Ljava/lang/String;

    .line 335
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 336
    :goto_0
    sput v0, Lio/topvpn/vpn_api/util;->zerr_level:I

    .line 342
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/topvpn/vpn_api/util;->m_zerr_lock:Ljava/lang/Object;

    .line 343
    const-string v0, ""

    sput-object v0, Lio/topvpn/vpn_api/util;->m_membuf:Ljava/lang/String;

    .line 416
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_zerr_ex:Ljava/util/concurrent/ExecutorService;

    .line 590
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 595
    sput-boolean v4, Lio/topvpn/vpn_api/util;->m_encrypt_post:Z

    .line 1330
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "com.android.chrome"

    aput-object v2, v0, v4

    const-string v2, "com.chrome.beta"

    aput-object v2, v0, v5

    const-string v2, "com.android.browser"

    aput-object v2, v0, v6

    const/4 v2, 0x3

    const-string v3, "org.mozilla.firefox"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "org.mozilla.firefox_beta"

    aput-object v3, v0, v2

    const-string v2, "com.opera.browser"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.opera.browser.classic"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.opera.browser.beta"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.yandex.browser"

    aput-object v2, v0, v1

    sput-object v0, Lio/topvpn/vpn_api/util;->popular_browsers:[Ljava/lang/String;

    .line 1341
    sput-boolean v4, Lio/topvpn/vpn_api/util;->no_browser_detected_perr_sent:Z

    .line 1463
    const/4 v0, 0x0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_cachedir:Ljava/lang/String;

    return-void

    .line 335
    :cond_0
    const-string v0, ""

    .line 336
    invoke-static {v0}, Lio/topvpn/vpn_api/util;->zerr_str2level(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _perr_p(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vpn_api_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 599
    invoke-static {}, Lio/topvpn/vpn_api/util;->date_now2ts()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->perr_p_filename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v3, Lio/topvpn/vpn_api/conf;->CID:Lio/topvpn/vpn_api/conf$key;

    .line 600
    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, p2, p3}, Lio/topvpn/vpn_api/util;->perr_p_file_str(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->perr_p_file(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-static {}, Lio/topvpn/vpn_api/util;->perr_p_try()V

    .line 602
    const/4 v0, -0x1

    return v0
.end method

.method public static _zerr(Ljava/lang/String;ILjava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 463
    invoke-static {p1}, Lio/topvpn/vpn_api/util;->zerr_check(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    :cond_0
    return v2

    .line 466
    :cond_1
    invoke-static {p0, p1, p2}, Lio/topvpn/vpn_api/util;->zerr2log(Ljava/lang/String;ILjava/lang/String;)V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/topvpn/vpn_api/util;->date_now2sql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lio/topvpn/vpn_api/util;->zerr_level2severity_str(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->zerr_printf(Ljava/lang/String;)I

    .line 469
    invoke-static {p1}, Lio/topvpn/vpn_api/util;->zerr_get_flags(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 470
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zexit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lio/topvpn/vpn_api/util;->m_path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lio/topvpn/vpn_api/util;->m_zerr_lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 96
    sget v0, Lio/topvpn/vpn_api/util;->m_ref:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lio/topvpn/vpn_api/util;->m_membuf:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 96
    sput-object p0, Lio/topvpn/vpn_api/util;->m_membuf:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400()Ljava/io/FileWriter;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lio/topvpn/vpn_api/util;->m_fw:Ljava/io/FileWriter;

    return-object v0
.end method

.method static synthetic access$402(Ljava/io/FileWriter;)Ljava/io/FileWriter;
    .locals 0

    .prologue
    .line 96
    sput-object p0, Lio/topvpn/vpn_api/util;->m_fw:Ljava/io/FileWriter;

    return-object p0
.end method

.method static synthetic access$500(Ljava/io/File;)I
    .locals 1

    .prologue
    .line 96
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->file_unlink(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lio/topvpn/vpn_api/util$perr_msg;)V
    .locals 0

    .prologue
    .line 96
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->perr_send(Lio/topvpn/vpn_api/util$perr_msg;)V

    return-void
.end method

.method static synthetic access$700(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 96
    invoke-static {p0, p1}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->date_ts2sql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 96
    invoke-static {p0, p1, p2, p3, p4}, Lio/topvpn/vpn_api/util;->perr_p_send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static apk_get_uid(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1383
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1385
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1387
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_0
    return v0

    .line 1386
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static apk_kill_bg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1391
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1392
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 1393
    return-void
.end method

.method public static apk_run_url(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 1316
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1317
    if-nez v1, :cond_1

    .line 1327
    :cond_0
    :goto_0
    return v0

    .line 1319
    :cond_1
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->get_default_browser_id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1320
    if-eqz v2, :cond_0

    .line 1322
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1323
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1324
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1325
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1326
    :catch_0
    move-exception v0

    const-string v0, "apk_run_url_fail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static atoi(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1197
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1199
    :goto_0
    return v0

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bt_get()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1520
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 1521
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1522
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byte2str([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1261
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1264
    :goto_0
    return-object v0

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cant convert byte2str "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 1264
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bytes2hex([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1510
    if-nez p0, :cond_0

    .line 1511
    const-string v0, "null"

    .line 1515
    :goto_0
    return-object v0

    .line 1512
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1513
    array-length v3, p0

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-byte v4, p0, v0

    .line 1514
    const-string v5, "%02X "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1515
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static ccgi_host()Ljava/lang/String;
    .locals 2

    .prologue
    .line 511
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->DBG_CLIENT_CGI_IP_PORT:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "client.hola.org"

    :cond_0
    return-object v0
.end method

.method public static ccgi_link()Ljava/lang/String;
    .locals 2

    .prologue
    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lio/topvpn/vpn_api/util;->ccgi_host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lio/topvpn/vpn_api/util;->ccgi_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ccgi_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    const-string v0, "/client_cgi"

    return-object v0
.end method

.method public static check_3g_usage(Landroid/content/Context;Lio/topvpn/vpn_api/conf;Lio/topvpn/vpn_api/state;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1600
    const-string v0, "connectivity"

    .line 1601
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1603
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1608
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1609
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v4

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-float v0, v4

    sget-object v4, Lio/topvpn/vpn_api/conf;->PEER_3G_USAGE_PER:Lio/topvpn/vpn_api/conf$key;

    .line 1610
    invoke-virtual {p1, v4}, Lio/topvpn/vpn_api/conf;->get_float(Ljava/lang/Object;)F

    move-result v4

    mul-float/2addr v0, v4

    sget-object v4, Lio/topvpn/vpn_api/conf;->SINCE_BOOT_3G_BYTES:Lio/topvpn/vpn_api/conf$key;

    .line 1611
    invoke-virtual {p1, v4}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;)J

    move-result-wide v4

    long-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    move v0, v1

    .line 1612
    :goto_0
    sget-object v4, Lio/topvpn/vpn_api/state;->ROAMING:Lio/topvpn/vpn_api/state$key;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {p2, v4, v1}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;Z)V

    .line 1613
    sget-object v1, Lio/topvpn/vpn_api/state;->MOBILE_ENABLE:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {p2, v1, v0}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;Z)V

    .line 1614
    :goto_2
    return-void

    .line 1604
    :catch_0
    move-exception v0

    .line 1605
    const-string v0, "getactivenetworkinfo_null"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    move v0, v2

    .line 1611
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1612
    goto :goto_1
.end method

.method public static cmd2url(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://127.0.0.1:6880/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static date_init()V
    .locals 3

    .prologue
    .line 277
    sget-object v0, Lio/topvpn/vpn_api/util;->m_sdf_sql:Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 279
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lio/topvpn/vpn_api/util;->m_sdf_sql:Ljava/text/SimpleDateFormat;

    .line 280
    sget-object v0, Lio/topvpn/vpn_api/util;->m_sdf_sql:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 281
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lio/topvpn/vpn_api/util;->m_sdf_ts:Ljava/text/SimpleDateFormat;

    .line 282
    sget-object v0, Lio/topvpn/vpn_api/util;->m_sdf_ts:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method private static date_now2sql()Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    invoke-static {}, Lio/topvpn/vpn_api/util;->date_init()V

    .line 287
    sget-object v0, Lio/topvpn/vpn_api/util;->m_sdf_sql:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static date_now2ts()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    invoke-static {}, Lio/topvpn/vpn_api/util;->date_init()V

    .line 298
    sget-object v0, Lio/topvpn/vpn_api/util;->m_sdf_ts:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static date_ts2sql(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    invoke-static {}, Lio/topvpn/vpn_api/util;->date_init()V

    .line 292
    :try_start_0
    sget-object v0, Lio/topvpn/vpn_api/util;->m_sdf_sql:Ljava/text/SimpleDateFormat;

    sget-object v1, Lio/topvpn/vpn_api/util;->m_sdf_ts:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dir_size(Ljava/io/File;)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 1038
    .line 1039
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1051
    :cond_0
    return-wide v0

    .line 1041
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1042
    const/4 v2, 0x0

    :goto_0
    if-eqz v3, :cond_0

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 1044
    aget-object v4, v3, v2

    invoke-static {v4}, Lio/topvpn/vpn_api/util;->file_is_symlink(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1042
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1046
    :cond_2
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1047
    aget-object v4, v3, v2

    invoke-static {v4}, Lio/topvpn/vpn_api/util;->dir_size(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_1

    .line 1049
    :cond_3
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_1
.end method

.method public static dir_size(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 1054
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->dir_size(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static dp_to_px(Landroid/content/Context;I)I
    .locals 2

    .prologue
    .line 1536
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1537
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static file_copy(Ljava/io/File;Ljava/io/File;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1160
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1161
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1162
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 1164
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    .line 1165
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1168
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    .line 1169
    :goto_1
    return v0

    .line 1166
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1167
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static file_copy(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1173
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->file_copy(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static file_exists(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 991
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static file_is_exec(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 994
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v0

    return v0
.end method

.method public static file_is_symlink(Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1002
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1009
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1011
    :cond_0
    :goto_1
    return v0

    .line 1006
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    .line 1007
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    goto :goto_0

    .line 1010
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static file_is_symlink(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1015
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_is_symlink(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static file_move(Ljava/io/File;Ljava/io/File;)I
    .locals 1

    .prologue
    .line 1181
    invoke-static {p0, p1}, Lio/topvpn/vpn_api/util;->file_copy(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p0}, Lio/topvpn/vpn_api/util;->file_unlink(Ljava/io/File;)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static file_move(Ljava/io/File;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1187
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lio/topvpn/vpn_api/util;->file_move(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static file_move(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1184
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->file_move(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static file_read(Ljava/lang/String;)[B
    .locals 12

    .prologue
    const-wide/32 v10, 0x10000

    const/4 v1, 0x0

    const/4 v8, 0x3

    .line 928
    .line 931
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 938
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v0, v6

    new-array v0, v0, [B

    .line 939
    cmp-long v3, v4, v10

    if-lez v3, :cond_0

    .line 940
    const-string v3, "file to bigger than 65536"

    invoke-static {v8, v3}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 941
    :cond_0
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 946
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 951
    :goto_1
    return-object v0

    .line 932
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 934
    :catch_1
    move-exception v0

    .line 935
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed getting length of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    move-object v0, v1

    .line 936
    goto :goto_1

    .line 942
    :catch_2
    move-exception v3

    .line 943
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file_read failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    goto :goto_0

    .line 944
    :catch_3
    move-exception v3

    .line 945
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file_read failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    goto :goto_0

    .line 947
    :catch_4
    move-exception v0

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file_read failed closing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    move-object v0, v1

    .line 949
    goto :goto_1
.end method

.method public static file_read_line(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 957
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 958
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 959
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static file_rm(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 997
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static file_size(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 1154
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method private static file_unlink(Ljava/io/File;)I
    .locals 1

    .prologue
    .line 1175
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static file_unlink(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1178
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_unlink(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static file_write(Ljava/lang/String;Ljava/io/InputStream;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 976
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 977
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 979
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_0

    .line 980
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 983
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    .line 984
    :goto_1
    return v0

    .line 981
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 982
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static file_write(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 966
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 967
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 968
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    const/4 v0, 0x0

    .line 971
    :goto_0
    return v0

    .line 970
    :catch_0
    move-exception v0

    .line 971
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static file_write_line(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/topvpn/vpn_api/util;->file_write(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static get_cachedir(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1465
    sget-object v0, Lio/topvpn/vpn_api/util;->m_cachedir:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1466
    sget-object v0, Lio/topvpn/vpn_api/util;->m_cachedir:Ljava/lang/String;

    .line 1476
    :goto_0
    return-object v0

    .line 1467
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1468
    if-eqz v0, :cond_1

    .line 1469
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_cachedir:Ljava/lang/String;

    .line 1476
    sget-object v0, Lio/topvpn/vpn_api/util;->m_cachedir:Ljava/lang/String;

    goto :goto_0

    .line 1471
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_cachedir:Ljava/lang/String;

    .line 1472
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context.getCacheDir() = null, falling back to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/topvpn/vpn_api/util;->m_cachedir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 1474
    sget-object v0, Lio/topvpn/vpn_api/util;->m_cachedir:Ljava/lang/String;

    goto :goto_0
.end method

.method public static get_cid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/topvpn/vpn_api/util;->get_confdir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hola_svc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_read_line(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_confdir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 311
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 314
    :goto_1
    return-object v0

    .line 312
    :catch_0
    move-exception v1

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static get_current_ver(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/libhola_svc.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1542
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1543
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1553
    :cond_0
    :goto_0
    return-object v0

    .line 1545
    :cond_1
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/topvpn/vpn_api/util;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1546
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1548
    const-string v2, "lib(hola|topvpn)_svc-(\\d+\\.\\d+\\.\\d+)\\.so$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1550
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1551
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1553
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static get_default_browser_id(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .prologue
    const/high16 v6, 0x10000

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1344
    const-string v1, "http://hola.org"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1345
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1346
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1347
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1348
    if-eqz v1, :cond_0

    .line 1350
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1351
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1352
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1354
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1379
    :goto_0
    return-object v0

    .line 1357
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1358
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1359
    sget-object v7, Lio/topvpn/vpn_api/util;->popular_browsers:[Ljava/lang/String;

    array-length v8, v7

    move v4, v2

    :goto_1
    if-ge v4, v8, :cond_3

    aget-object v3, v7, v4

    move v1, v2

    .line 1361
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1363
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v3

    .line 1364
    goto :goto_0

    .line 1361
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1359
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 1367
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1369
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1370
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 1371
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v9, :cond_5

    .line 1372
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 1374
    :cond_5
    sget-boolean v0, Lio/topvpn/vpn_api/util;->no_browser_detected_perr_sent:Z

    if-nez v0, :cond_6

    .line 1376
    sput-boolean v9, Lio/topvpn/vpn_api/util;->no_browser_detected_perr_sent:Z

    .line 1377
    const/4 v0, 0x4

    const-string v1, "no_browser_detected"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static get_device()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_dldir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1506
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Hola"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1505
    return-object v0
.end method

.method public static get_field(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1398
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1401
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1402
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1411
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1418
    :cond_0
    :goto_0
    return-object v0

    .line 1403
    :catch_0
    move-exception v1

    .line 1404
    if-eqz p2, :cond_0

    .line 1406
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1412
    :catch_1
    move-exception v1

    .line 1413
    if-eqz p2, :cond_0

    .line 1415
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal access to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static get_libdir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public static get_os_ver()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_workdir(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x0

    .line 1480
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1481
    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1485
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1487
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/topvpn/vpn_api/util;->path_writeable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1488
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1501
    :goto_1
    return-object v1

    .line 1486
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 1489
    :cond_0
    const-string v0, "no free space on external storage"

    invoke-static {v8, v0}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 1491
    :cond_1
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->get_cachedir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1492
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1494
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    const-wide/32 v6, 0x40000000

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 1496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "less than 1GB in internal memory: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1497
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " block "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1498
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " count "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1496
    invoke-static {v8, v0}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    goto :goto_1

    .line 1501
    :cond_2
    invoke-static {v0}, Lio/topvpn/vpn_api/util;->path_writeable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public static getgid()I
    .locals 1

    .prologue
    .line 1395
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v0

    invoke-virtual {v0}, Lio/topvpn/vpn_api/util;->jni_getgid()I

    move-result v0

    return v0
.end method

.method public static getuid()I
    .locals 1

    .prologue
    .line 301
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    return v0
.end method

.method private static http_send(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/topvpn/vpn_api/util;->http_send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static http_send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 577
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 579
    if-eqz p1, :cond_0

    .line 580
    :try_start_0
    const-string v0, "filehead"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 581
    :cond_0
    if-eqz p2, :cond_1

    .line 582
    const-string v0, "bt"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :cond_1
    :goto_0
    new-instance v0, Lio/topvpn/vpn_api/wget;

    const/4 v2, 0x1

    new-array v2, v2, [Lio/topvpn/vpn_api/wget$option;

    invoke-static {v1}, Lio/topvpn/vpn_api/wget;->body(Lorg/json/JSONObject;)Lio/topvpn/vpn_api/wget$option;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-direct {v0, p0, v2}, Lio/topvpn/vpn_api/wget;-><init>(Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;)V

    .line 587
    return v3

    .line 583
    :catch_0
    move-exception v0

    .line 584
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static is_debug()Z
    .locals 2

    .prologue
    .line 256
    sget-object v0, Lio/topvpn/vpn_api/util;->m_is_debug:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 257
    sget-object v0, Lio/topvpn/vpn_api/util;->m_is_debug:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 258
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->IS_DEBUG:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_is_debug:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static is_debug_exe()Z
    .locals 2

    .prologue
    .line 263
    sget-object v0, Lio/topvpn/vpn_api/util;->m_is_debug_exe:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lio/topvpn/vpn_api/util;->m_is_debug_exe:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 265
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->DBG_HOLA_SVC:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_is_debug_exe:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static is_debug_layout()Z
    .locals 2

    .prologue
    .line 270
    sget-object v0, Lio/topvpn/vpn_api/util;->m_is_debug_layout:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lio/topvpn/vpn_api/util;->m_is_debug_layout:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 272
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->IS_DEBUG_LAYOUT:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_is_debug_layout:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static is_online(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1526
    const-string v0, "connectivity"

    .line 1527
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1529
    if-nez v0, :cond_0

    .line 1532
    :goto_0
    return v1

    .line 1531
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1532
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static killall(Ljava/lang/String;I)Lio/topvpn/vpn_api/util$killall_t;
    .locals 5

    .prologue
    .line 1093
    sget-object v0, Lio/topvpn/vpn_api/util$killall_t;->NOT_FOUND:Lio/topvpn/vpn_api/util$killall_t;

    .line 1094
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->proc_find(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/topvpn/vpn_api/util$proc_info_t;

    .line 1096
    iget v2, v0, Lio/topvpn/vpn_api/util$proc_info_t;->uid:I

    sget v3, Lio/topvpn/vpn_api/util;->m_curr_uid:I

    if-eq v2, v3, :cond_1

    .line 1097
    sget-object v0, Lio/topvpn/vpn_api/util$killall_t;->UID_MISMATCH:Lio/topvpn/vpn_api/util$killall_t;

    .line 1102
    :cond_0
    return-object v0

    .line 1098
    :cond_1
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending signal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lio/topvpn/vpn_api/util$proc_info_t;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 1099
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    iget v0, v0, Lio/topvpn/vpn_api/util$proc_info_t;->pid:I

    invoke-virtual {v2, v0, p1}, Lio/topvpn/vpn_api/util;->jni_kill(II)I

    .line 1100
    sget-object v0, Lio/topvpn/vpn_api/util$killall_t;->KILLED:Lio/topvpn/vpn_api/util$killall_t;

    goto :goto_0
.end method

.method public static license_link()Ljava/lang/String;
    .locals 2

    .prologue
    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/topvpn/vpn_api/util;->site_link()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/software_attribution"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static log_3g_usage(Landroid/content/Context;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 1617
    new-instance v0, Lio/topvpn/vpn_api/state;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/state;-><init>(Landroid/content/Context;)V

    .line 1618
    new-instance v1, Lio/topvpn/vpn_api/conf;

    invoke-direct {v1, p0}, Lio/topvpn/vpn_api/conf;-><init>(Landroid/content/Context;)V

    .line 1619
    sget-object v2, Lio/topvpn/vpn_api/state;->MOBILE_CONNECTED:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v0, v2}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v2

    .line 1620
    sget-object v3, Lio/topvpn/vpn_api/state;->WIFI_CONNECTED:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v0, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v3

    .line 1621
    sget-object v4, Lio/topvpn/vpn_api/conf;->LAST_ON_3G:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v4}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v4

    .line 1622
    sget-object v5, Lio/topvpn/vpn_api/conf;->LAST_USAGE_BYTES:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v5}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;)J

    move-result-wide v6

    .line 1623
    sget-object v5, Lio/topvpn/vpn_api/conf;->LAST_USAGE_TS:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v5}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;)J

    move-result-wide v8

    .line 1624
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 1625
    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    .line 1627
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v2, v8

    if-lez v0, :cond_0

    .line 1629
    sget-object v0, Lio/topvpn/vpn_api/conf;->LAST_USAGE_TS:Lio/topvpn/vpn_api/conf$key;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v0, v2, v3}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1630
    sget-object v0, Lio/topvpn/vpn_api/conf;->LAST_USAGE_BYTES:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v0, v10, v11}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1631
    sget-object v0, Lio/topvpn/vpn_api/conf;->SINCE_BOOT_3G_BYTES:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v0, v10, v11}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1650
    :cond_0
    :goto_0
    return-void

    .line 1635
    :cond_1
    invoke-static {}, Lio/topvpn/vpn_api/util;->getuid()I

    move-result v8

    invoke-static {v8}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v8

    .line 1636
    invoke-static {}, Lio/topvpn/vpn_api/util;->getuid()I

    move-result v10

    invoke-static {v10}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 1637
    if-eqz v4, :cond_5

    .line 1639
    sget-object v4, Lio/topvpn/vpn_api/conf;->SINCE_BOOT_3G_BYTES:Lio/topvpn/vpn_api/conf$key;

    sget-object v10, Lio/topvpn/vpn_api/conf;->SINCE_BOOT_3G_BYTES:Lio/topvpn/vpn_api/conf$key;

    .line 1640
    invoke-virtual {v1, v10}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;)J

    move-result-wide v10

    add-long/2addr v10, v8

    sub-long v6, v10, v6

    .line 1639
    invoke-virtual {v1, v4, v6, v7}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1641
    if-eqz v2, :cond_2

    if-eqz v3, :cond_3

    .line 1642
    :cond_2
    sget-object v3, Lio/topvpn/vpn_api/conf;->LAST_ON_3G:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v3}, Lio/topvpn/vpn_api/conf;->del(Ljava/lang/Object;)V

    .line 1643
    :cond_3
    if-eqz v2, :cond_4

    .line 1644
    invoke-static {p0, v1, v0}, Lio/topvpn/vpn_api/util;->check_3g_usage(Landroid/content/Context;Lio/topvpn/vpn_api/conf;Lio/topvpn/vpn_api/state;)V

    .line 1648
    :cond_4
    :goto_1
    sget-object v0, Lio/topvpn/vpn_api/conf;->LAST_USAGE_BYTES:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v0, v8, v9}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1649
    sget-object v0, Lio/topvpn/vpn_api/conf;->LAST_USAGE_TS:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    goto :goto_0

    .line 1646
    :cond_5
    if-eqz v2, :cond_4

    .line 1647
    sget-object v0, Lio/topvpn/vpn_api/conf;->LAST_ON_3G:Lio/topvpn/vpn_api/conf$key;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    goto :goto_1
.end method

.method public static log_build_info()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version: 1.55.771 android arm\nTag: Ntag-1_55_771\nBuild date: 26-Jul-17 08:16:15\nMakeflags: DIST=APP ARCH=ANDROID RELEASE=y AUTO_SIGN=y CONFIG_BAT_CYCLE=y CONFIG_BAT_PLATFORM=app_androidr\nOS Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    invoke-static {}, Lio/topvpn/vpn_api/util;->get_os_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    invoke-static {}, Lio/topvpn/vpn_api/util;->get_device()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nCPU ABI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nCPU ABI2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    return-object v0
.end method

.method private static log_get_hostname()Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    const-string v0, "net.hostname"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hostname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static log_hdr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hola app logger\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lio/topvpn/vpn_api/util;->log_build_info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lio/topvpn/vpn_api/util;->log_get_hostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mkdir(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1055
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    return v0
.end method

.method public static mkdir_p(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1056
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    return v0
.end method

.method public static path_writeable(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1453
    :try_start_0
    const-string v1, "hola"

    const-string v2, "tmp"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 1454
    if-eqz v1, :cond_0

    .line 1456
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1457
    const/4 v0, 0x1

    .line 1460
    :cond_0
    :goto_0
    return v0

    .line 1459
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static perr(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 686
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static perr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vpn_api_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 652
    const-string v1, "vpn_api_[a-z0-9_]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 654
    const-string v1, "perr_invalid_errid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " msg "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :goto_0
    return v4

    .line 657
    :cond_0
    new-instance v1, Lio/topvpn/vpn_api/util$perr_msg;

    invoke-direct {v1}, Lio/topvpn/vpn_api/util$perr_msg;-><init>()V

    .line 658
    invoke-static {}, Lio/topvpn/vpn_api/util;->date_now2sql()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_date:Ljava/lang/String;

    .line 659
    iput-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_errid:Ljava/lang/String;

    .line 660
    iput-object p3, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_body:Ljava/lang/String;

    .line 661
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    if-eqz v0, :cond_3

    .line 663
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->APKID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v2}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_apkid:Ljava/lang/String;

    .line 664
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->CID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v2}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_cid:Ljava/lang/String;

    .line 665
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->UUID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v2}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_uuid:Ljava/lang/String;

    .line 666
    iget-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_uuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->UUID_TMP:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v2}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_uuid:Ljava/lang/String;

    .line 671
    :cond_1
    :goto_1
    const-string v0, ""

    iput-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_msg:Ljava/lang/String;

    .line 672
    if-eqz p2, :cond_2

    .line 673
    iput-object p2, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_msg:Ljava/lang/String;

    .line 674
    :cond_2
    invoke-static {}, Lio/topvpn/vpn_api/util;->perr_init()V

    .line 675
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 676
    sget-object v1, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 677
    :try_start_0
    sget-object v1, Lio/topvpn/vpn_api/util;->m_perr_handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 670
    :cond_3
    const-string v0, ""

    iput-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_apkid:Ljava/lang/String;

    iput-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_uuid:Ljava/lang/String;

    iput-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_cid:Ljava/lang/String;

    goto :goto_1

    .line 678
    :catchall_0
    move-exception v0

    sget-object v1, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public static perr(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 691
    const/4 v0, 0x3

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, p0, v1, v2}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static perr(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 689
    const/4 v0, 0x3

    const-string v1, ""

    invoke-static {v0, p0, p1, v1}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static perr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static perr(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    .prologue
    .line 694
    const/4 v0, 0x3

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, p0, v1, v2}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static perr_host()Ljava/lang/String;
    .locals 2

    .prologue
    .line 517
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    if-nez v0, :cond_1

    .line 518
    const-string v0, "perr.hola.org"

    .line 520
    :cond_0
    :goto_0
    return-object v0

    .line 519
    :cond_1
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->DBG_CLIENT_CGI_IP_PORT:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "perr.hola.org"

    goto :goto_0
.end method

.method private static perr_init()V
    .locals 3

    .prologue
    .line 697
    sget-boolean v0, Lio/topvpn/vpn_api/util;->m_perr_inited:Z

    if-eqz v0, :cond_0

    .line 771
    :goto_0
    return-void

    .line 699
    :cond_0
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 701
    :try_start_0
    sget-boolean v0, Lio/topvpn/vpn_api/util;->m_perr_inited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 770
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 703
    :cond_1
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "perr"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/topvpn/vpn_api/util;->m_perr_thread:Landroid/os/HandlerThread;

    .line 705
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 706
    new-instance v0, Lio/topvpn/vpn_api/util$3;

    sget-object v1, Lio/topvpn/vpn_api/util;->m_perr_thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/topvpn/vpn_api/util$3;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/topvpn/vpn_api/util;->m_perr_handler:Landroid/os/Handler;

    .line 769
    const/4 v0, 0x1

    sput-boolean v0, Lio/topvpn/vpn_api/util;->m_perr_inited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 770
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public static perr_link()Ljava/lang/String;
    .locals 2

    .prologue
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lio/topvpn/vpn_api/util;->perr_host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lio/topvpn/vpn_api/util;->ccgi_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static perr_p(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 615
    invoke-static {p0, p1, p2, p3}, Lio/topvpn/vpn_api/util;->_perr_p(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static perr_p_file(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 503
    sget-object v1, Lio/topvpn/vpn_api/util;->m_zerr_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 504
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/topvpn/vpn_api/util;->m_path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".log"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lio/topvpn/vpn_api/util;->file_write(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    const/4 v0, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perr failed creating file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    move-result v0

    monitor-exit v1

    .line 506
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_0

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static perr_p_file_str(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perr_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lio/topvpn/vpn_api/util;->log_build_info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 497
    invoke-static {}, Lio/topvpn/vpn_api/util;->log_get_hostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    return-object v0

    .line 497
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " release\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static perr_p_filename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_perr_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static perr_p_send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 545
    const-string v0, "vpn_api_crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cause:"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cause:"

    .line 546
    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 547
    :goto_0
    const-string v2, ""

    .line 548
    const/4 v1, 0x1

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v2, v1, 0x1

    array-length v4, v0

    if-ne v2, v4, :cond_1

    const-string v2, ""

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 546
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    goto :goto_0

    .line 549
    :cond_1
    const-string v2, "cause:"

    goto :goto_2

    .line 550
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/topvpn/vpn_api/util;->perr_link()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/perr?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v1, p1}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file"

    .line 551
    invoke-static {v1, p3}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ver"

    const-string v3, "1.55.771"

    invoke-static {v1, v3}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 552
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->UUID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->UUID_TMP:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 554
    :cond_3
    const/4 v1, 0x0

    .line 555
    sget-boolean v4, Lio/topvpn/vpn_api/util;->m_encrypt_post:Z

    if-eqz v4, :cond_8

    .line 557
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v4

    .line 558
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 559
    new-instance v1, Lio/topvpn/vpn_api/util$rc4_t;

    invoke-direct {v1, v5}, Lio/topvpn/vpn_api/util$rc4_t;-><init>([B)V

    .line 560
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "key"

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v1

    move-object v1, v3

    move-object v3, v7

    .line 562
    :goto_3
    if-eqz p0, :cond_4

    .line 563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "cid"

    invoke-static {v4, p0}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 564
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 565
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "uuid"

    invoke-static {v4, v0}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 566
    :goto_4
    if-eqz p2, :cond_5

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-static {v1, p2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    :cond_5
    if-nez v3, :cond_6

    .line 570
    :goto_5
    invoke-static {v0, p4, v2}, Lio/topvpn/vpn_api/util;->http_send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 569
    :cond_6
    invoke-virtual {v3, p4}, Lio/topvpn/vpn_api/util$rc4_t;->encrypt(Ljava/lang/String;)[B

    move-result-object v1

    .line 568
    invoke-static {v1, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p4

    goto :goto_5

    :cond_7
    move-object v0, v1

    goto :goto_4

    :cond_8
    move-object v7, v1

    move-object v1, v3

    move-object v3, v7

    goto :goto_3
.end method

.method public static perr_p_try()V
    .locals 2

    .prologue
    .line 606
    invoke-static {}, Lio/topvpn/vpn_api/util;->perr_init()V

    .line 608
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    :goto_0
    return-void

    .line 610
    :cond_0
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 611
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0
.end method

.method private static perr_send(Lio/topvpn/vpn_api/util$perr_msg;)V
    .locals 4

    .prologue
    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/topvpn/vpn_api/util;->perr_link()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/perr?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_errid:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ver"

    const-string v2, "1.55.771"

    .line 633
    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "build"

    .line 634
    invoke-static {}, Lio/topvpn/vpn_api/util;->log_build_info()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 635
    iget-object v1, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "info"

    iget-object v2, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_msg:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    :cond_0
    iget-object v1, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_cid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cid"

    iget-object v2, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_cid:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    :cond_1
    iget-object v1, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_apkid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apkid"

    iget-object v2, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_apkid:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    :cond_2
    iget-object v1, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_uuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uuid"

    iget-object v2, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_uuid:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    :cond_3
    iget-object v1, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_date:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestamp"

    iget-object v2, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_date:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    :cond_4
    iget-object v1, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_body:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->http_send(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_5

    .line 646
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perr_send_failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 647
    :cond_5
    return-void

    .line 645
    :cond_6
    iget-object v1, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_body:Ljava/lang/String;

    goto :goto_0
.end method

.method private static perr_uninit()V
    .locals 4

    .prologue
    .line 774
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 776
    :try_start_0
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    const/4 v0, 0x3

    const-string v1, "perr thread quit failed"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 787
    :goto_0
    return-void

    .line 781
    :cond_0
    :try_start_1
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 784
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lio/topvpn/vpn_api/util;->m_perr_thread:Landroid/os/HandlerThread;

    .line 785
    const/4 v0, 0x0

    sput-boolean v0, Lio/topvpn/vpn_api/util;->m_perr_inited:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 786
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 782
    :catch_0
    move-exception v0

    .line 783
    const/4 v1, 0x3

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perr thread interrupt failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 786
    :catchall_0
    move-exception v0

    sget-object v1, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public static proc_find(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/topvpn/vpn_api/util$proc_info_t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1107
    const-string v1, "/proc"

    new-instance v2, Lio/topvpn/vpn_api/util$4;

    invoke-direct {v2, p0, v0}, Lio/topvpn/vpn_api/util$4;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lio/topvpn/vpn_api/util;->scandir(Ljava/lang/String;Lio/topvpn/vpn_api/util$scandir_cb_t;Ljava/lang/Object;)V

    .line 1138
    return-object v0
.end method

.method public static proc_waitfor(Ljava/lang/String;I)I
    .locals 4

    .prologue
    .line 1143
    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v2

    .line 1144
    const/4 v0, 0x0

    .line 1145
    :goto_0
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->proc_find(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1146
    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-ge v0, p1, :cond_0

    .line 1148
    const/16 v1, 0xa

    invoke-static {v1}, Lio/topvpn/vpn_api/util;->sleep_ms(I)V

    goto :goto_0

    .line 1150
    :cond_0
    return v0
.end method

.method public static rmdir_recursive(Ljava/io/File;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1018
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1020
    const/4 v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 1031
    :cond_0
    :goto_0
    return v0

    .line 1023
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move v1, v0

    .line 1024
    :goto_1
    if-eqz v2, :cond_3

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 1026
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1027
    aget-object v3, v2, v1

    invoke-static {v3}, Lio/topvpn/vpn_api/util;->rmdir_recursive(Ljava/io/File;)I

    .line 1024
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1029
    :cond_2
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 1031
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static rmdir_recursive(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1035
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->rmdir_recursive(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static scandir(Ljava/lang/String;Lio/topvpn/vpn_api/util$scandir_cb_t;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 1070
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1072
    if-nez v1, :cond_1

    .line 1082
    :cond_0
    return-void

    .line 1074
    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1076
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p0, v4, v3, p2}, Lio/topvpn/vpn_api/util$scandir_cb_t;->cb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1074
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static sdk_version()I
    .locals 2

    .prologue
    .line 478
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->DBG_API:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_int(Ljava/lang/Object;)I

    move-result v0

    .line 479
    if-lez v0, :cond_0

    .line 481
    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_0
.end method

.method public static set_field_enum(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1426
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1427
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1436
    :goto_0
    return v0

    .line 1428
    :catch_0
    move-exception v1

    .line 1429
    if-eqz p3, :cond_0

    .line 1431
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "field "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " failed access "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static site_host()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    const-string v0, "hola.org"

    return-object v0
.end method

.method public static site_link()Ljava/lang/String;
    .locals 2

    .prologue
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/topvpn/vpn_api/util;->site_prot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lio/topvpn/vpn_api/util;->site_host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static site_prot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    const-string v0, "https://"

    return-object v0
.end method

.method public static sleep_ms(I)V
    .locals 2

    .prologue
    .line 1059
    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static str2bytes(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 1258
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 535
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 536
    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 539
    :goto_0
    return-object v0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    const/4 v0, 0x3

    const-string v1, "unsupported encoding"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 539
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sys_exec(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 792
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lio/topvpn/vpn_api/util;->sys_exec(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static sys_exec(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 790
    const-string v5, ""

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    invoke-static/range {v0 .. v6}, Lio/topvpn/vpn_api/util;->sys_exec(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static sys_exec(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;I)I
    .locals 14

    .prologue
    .line 806
    if-nez p3, :cond_0

    if-eqz p4, :cond_c

    :cond_0
    const/4 v1, 0x1

    move v10, v1

    .line 807
    :goto_0
    const/4 v6, -0x1

    .line 809
    if-eqz p0, :cond_1

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 811
    :cond_1
    const-string v1, ""

    const/4 v11, 0x0

    .line 812
    const/4 v7, -0x1

    const/4 v5, -0x1

    const/4 v4, -0x1

    const/4 v3, -0x1

    .line 813
    const/4 v2, -0x1

    const/4 v1, -0x1

    .line 815
    if-eqz p5, :cond_1d

    .line 816
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .line 817
    :goto_1
    if-eqz v10, :cond_3

    .line 820
    if-eqz p3, :cond_2

    .line 822
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    invoke-virtual {v3}, Lio/topvpn/vpn_api/util;->jni_pipe()[I

    move-result-object v4

    .line 823
    const/4 v3, 0x0

    aget v3, v4, v3

    .line 824
    const/4 v8, 0x1

    aget v4, v4, v8

    .line 825
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v8, v3, v10}, Lio/topvpn/vpn_api/util;->fcntl_cloexec(II)I

    .line 827
    :cond_2
    if-eqz p4, :cond_3

    .line 829
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v5

    invoke-virtual {v5}, Lio/topvpn/vpn_api/util;->jni_pipe()[I

    move-result-object v7

    .line 830
    const/4 v5, 0x0

    aget v5, v7, v5

    .line 831
    const/4 v8, 0x1

    aget v7, v7, v8

    .line 832
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v8, v5, v10}, Lio/topvpn/vpn_api/util;->fcntl_cloexec(II)I

    :cond_3
    move v8, v5

    move v5, v7

    move v7, v3

    .line 835
    if-nez p2, :cond_4

    if-eqz v11, :cond_5

    .line 837
    :cond_4
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    invoke-virtual {v3}, Lio/topvpn/vpn_api/util;->jni_pipe()[I

    move-result-object v3

    .line 838
    if-nez v3, :cond_d

    .line 840
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    invoke-virtual {v3}, Lio/topvpn/vpn_api/util;->get_errno()I

    move-result v3

    .line 841
    const/4 v10, 0x3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exec pipe failed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 851
    :cond_5
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " 0>"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-ltz v1, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "&"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " 1>"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "&"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " 2>"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p4, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "&"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 854
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 855
    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sys_exec "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 856
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "|u "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/topvpn/vpn_api/util;->jni_sys_exec_bg(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_11

    .line 857
    const/4 v9, 0x3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exec failed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    move v3, v4

    move v4, v5

    move v5, v6

    .line 902
    :goto_6
    const/4 v6, -0x1

    if-eq v8, v6, :cond_6

    .line 903
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v6

    invoke-virtual {v6, v8}, Lio/topvpn/vpn_api/util;->pipe_close(I)I

    .line 904
    :cond_6
    const/4 v6, -0x1

    if-eq v4, v6, :cond_7

    .line 905
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v6

    invoke-virtual {v6, v4}, Lio/topvpn/vpn_api/util;->pipe_close(I)I

    .line 906
    :cond_7
    const/4 v4, -0x1

    if-eq v7, v4, :cond_8

    .line 907
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v4

    invoke-virtual {v4, v7}, Lio/topvpn/vpn_api/util;->pipe_close(I)I

    .line 908
    :cond_8
    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    .line 909
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/topvpn/vpn_api/util;->pipe_close(I)I

    .line 910
    :cond_9
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    .line 911
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/topvpn/vpn_api/util;->pipe_close(I)I

    .line 912
    :cond_a
    const/4 v1, -0x1

    if-eq v2, v1, :cond_b

    .line 913
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v1

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/util;->pipe_close(I)I

    .line 914
    :cond_b
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exec ret "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 915
    return v5

    .line 806
    :cond_c
    const/4 v1, 0x0

    move v10, v1

    goto/16 :goto_0

    .line 846
    :cond_d
    const/4 v1, 0x0

    aget v1, v3, v1

    .line 847
    const/4 v2, 0x1

    aget v2, v3, v2

    .line 848
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    const/4 v10, 0x1

    invoke-virtual {v3, v2, v10}, Lio/topvpn/vpn_api/util;->fcntl_cloexec(II)I

    goto/16 :goto_2

    .line 851
    :cond_e
    const-string v3, "/dev/null"

    goto/16 :goto_3

    :cond_f
    const-string v3, "/dev/null"

    goto/16 :goto_4

    :cond_10
    const-string v3, "/dev/null"

    goto/16 :goto_5

    .line 860
    :cond_11
    if-eqz v11, :cond_12

    .line 861
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    invoke-virtual {v3, v2, v11}, Lio/topvpn/vpn_api/util;->jni_write_str(ILjava/lang/String;)I

    .line 862
    :cond_12
    if-eqz p3, :cond_13

    .line 863
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 864
    :cond_13
    if-eqz p4, :cond_14

    .line 865
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 866
    :cond_14
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v9, v0}, Lio/topvpn/vpn_api/util;->jni_sys_waitpid(II)I

    move-result v6

    const/16 v3, -0x100

    if-ne v6, v3, :cond_15

    if-ltz p6, :cond_15

    .line 869
    const/4 v3, 0x5

    const-string v10, "sys_exec timeout send SIGTERM"

    invoke-static {v3, v10}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 870
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    const/16 v10, 0xf

    invoke-virtual {v3, v9, v10}, Lio/topvpn/vpn_api/util;->jni_kill(II)I

    .line 871
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    const/16 v10, 0x1f4

    invoke-virtual {v3, v9, v10}, Lio/topvpn/vpn_api/util;->jni_sys_waitpid(II)I

    move-result v3

    const/16 v10, -0x100

    if-ne v3, v10, :cond_15

    .line 873
    const/4 v3, 0x5

    const-string v10, "sys_exec timeout send SIGKILL"

    invoke-static {v3, v10}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 874
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    const/16 v10, 0x9

    invoke-virtual {v3, v9, v10}, Lio/topvpn/vpn_api/util;->jni_kill(II)I

    .line 875
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    const/16 v10, 0x1f4

    invoke-virtual {v3, v9, v10}, Lio/topvpn/vpn_api/util;->jni_sys_waitpid(II)I

    move-result v3

    const/16 v9, -0x100

    if-ne v3, v9, :cond_15

    .line 876
    const/4 v3, 0x3

    const-string v9, "failed to kill timed out exec"

    invoke-static {v3, v9}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 879
    :cond_15
    if-ltz v6, :cond_18

    if-eqz p3, :cond_18

    .line 881
    const/4 v3, -0x1

    if-eq v4, v3, :cond_16

    .line 882
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    invoke-virtual {v3, v4}, Lio/topvpn/vpn_api/util;->pipe_close(I)I

    .line 883
    :cond_16
    const/4 v4, -0x1

    .line 884
    :cond_17
    :goto_7
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    invoke-virtual {v3, v7}, Lio/topvpn/vpn_api/util;->jni_read(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 886
    if-eqz p3, :cond_17

    .line 887
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "\n"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_18
    move v3, v4

    .line 890
    if-ltz v6, :cond_1c

    if-eqz p4, :cond_1c

    .line 892
    const/4 v4, -0x1

    if-eq v5, v4, :cond_19

    .line 893
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v4

    invoke-virtual {v4, v5}, Lio/topvpn/vpn_api/util;->pipe_close(I)I

    .line 894
    :cond_19
    const/4 v4, -0x1

    .line 895
    :cond_1a
    :goto_8
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v5

    invoke-virtual {v5, v8}, Lio/topvpn/vpn_api/util;->jni_read(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 897
    if-eqz p4, :cond_1a

    .line 898
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_1b
    move v5, v6

    goto/16 :goto_6

    :cond_1c
    move v4, v5

    move v5, v6

    goto/16 :goto_6

    :cond_1d
    move-object v9, p1

    goto/16 :goto_1
.end method

.method public static sys_exec(Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 795
    const/4 v2, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lio/topvpn/vpn_api/util;->sys_exec(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static sys_exec(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 800
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move v6, p3

    invoke-static/range {v0 .. v6}, Lio/topvpn/vpn_api/util;->sys_exec(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static sys_get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 924
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/topvpn/vpn_api/util;->sys_get(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sys_get(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x0

    .line 919
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 920
    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lio/topvpn/vpn_api/util;->sys_exec(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    :goto_0
    return-object v0

    .line 921
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static time_monotonic_ms()J
    .locals 4

    .prologue
    .line 1193
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static unzip(Ljava/io/File;Ljava/io/File;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1557
    const/4 v3, 0x0

    .line 1558
    const/4 v0, 0x1

    .line 1562
    const/16 v2, 0x1000

    :try_start_0
    new-array v5, v2, [B

    .line 1563
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1565
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 1567
    new-instance v4, Ljava/io/File;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1568
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v4

    .line 1569
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1571
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to ensure directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1572
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1584
    :catch_0
    move-exception v0

    .line 1585
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1589
    if-eqz v2, :cond_1

    .line 1590
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    move v0, v1

    .line 1593
    :cond_2
    :goto_3
    return v0

    .line 1568
    :cond_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    goto :goto_1

    .line 1574
    :cond_4
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1576
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1578
    :goto_4
    :try_start_5
    invoke-virtual {v2, v5}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_6

    .line 1579
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 1581
    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1588
    :catchall_1
    move-exception v0

    .line 1589
    :goto_5
    if-eqz v2, :cond_5

    .line 1590
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1591
    :cond_5
    :goto_6
    throw v0

    .line 1581
    :cond_6
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 1589
    :cond_7
    if-eqz v2, :cond_2

    .line 1590
    :try_start_9
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 1591
    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v0

    move v0, v1

    .line 1592
    goto :goto_3

    .line 1591
    :catch_3
    move-exception v1

    goto :goto_6

    .line 1588
    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_5

    .line 1584
    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1597
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->unzip(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static util_dbg_set(Z)V
    .locals 2

    .prologue
    .line 187
    sget-object v0, Lio/topvpn/vpn_api/util;->m_dbg_set_prev_thread:Landroid/os/StrictMode$ThreadPolicy;

    if-nez v0, :cond_0

    .line 189
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_dbg_set_prev_thread:Landroid/os/StrictMode$ThreadPolicy;

    .line 190
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_dbg_set_prev_vm:Landroid/os/StrictMode$VmPolicy;

    .line 192
    :cond_0
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 193
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 194
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 196
    if-nez p0, :cond_1

    .line 198
    sget-object v1, Lio/topvpn/vpn_api/util;->m_dbg_set_prev_thread:Landroid/os/StrictMode$ThreadPolicy;

    .line 199
    sget-object v0, Lio/topvpn/vpn_api/util;->m_dbg_set_prev_vm:Landroid/os/StrictMode$VmPolicy;

    .line 201
    :cond_1
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 202
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 203
    return-void
.end method

.method public static util_get()Lio/topvpn/vpn_api/util;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lio/topvpn/vpn_api/util;->instance:Lio/topvpn/vpn_api/util;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lio/topvpn/vpn_api/util;

    invoke-direct {v0}, Lio/topvpn/vpn_api/util;-><init>()V

    sput-object v0, Lio/topvpn/vpn_api/util;->instance:Lio/topvpn/vpn_api/util;

    .line 148
    :cond_0
    sget-object v0, Lio/topvpn/vpn_api/util;->instance:Lio/topvpn/vpn_api/util;

    return-object v0
.end method

.method public static util_init(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 209
    const-class v1, Lio/topvpn/vpn_api/util;

    monitor-enter v1

    .line 210
    :try_start_0
    sget v0, Lio/topvpn/vpn_api/util;->m_ref:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/topvpn/vpn_api/util;->m_ref:I

    .line 211
    sget v0, Lio/topvpn/vpn_api/util;->m_ref:I

    if-le v0, v2, :cond_0

    .line 212
    sget v0, Lio/topvpn/vpn_api/util;->m_util_init_ret:I

    monitor-exit v1

    .line 231
    :goto_0
    return v0

    .line 215
    :cond_0
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->get_workdir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 216
    new-instance v2, Lio/topvpn/vpn_api/conf;

    invoke-direct {v2, p0}, Lio/topvpn/vpn_api/conf;-><init>(Landroid/content/Context;)V

    sput-object v2, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    .line 217
    invoke-static {}, Lio/topvpn/vpn_api/util;->getuid()I

    move-result v2

    sput v2, Lio/topvpn/vpn_api/util;->m_curr_uid:I

    .line 218
    if-eqz v0, :cond_1

    .line 219
    sget-object v2, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v3, Lio/topvpn/vpn_api/conf;->WORKDIR:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v3, v0}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    :cond_1
    invoke-static {}, Lio/topvpn/vpn_api/util;->date_init()V

    .line 221
    sget-object v2, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    invoke-static {p0, v0, v2}, Lio/topvpn/vpn_api/util;->zerr_init(Landroid/content/Context;Ljava/lang/String;Lio/topvpn/vpn_api/conf;)V

    .line 222
    invoke-static {}, Lio/topvpn/vpn_api/util;->log_hdr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->zerr_printf(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :try_start_1
    const-string v0, "jni_util"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :try_start_2
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v0

    invoke-virtual {v0}, Lio/topvpn/vpn_api/util;->jni_init()V

    .line 227
    const/4 v0, 0x0

    sput v0, Lio/topvpn/vpn_api/util;->m_util_init_ret:I

    .line 228
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->DBG_ANDROID_OS:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v2}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    const/4 v0, 0x1

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->util_dbg_set(Z)V

    .line 230
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    sget v0, Lio/topvpn/vpn_api/util;->m_util_init_ret:I

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    :try_start_3
    const-string v2, "apk_install"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cant load jni_util "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static util_mkdir(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 180
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->zerr_mkdir(Landroid/content/Context;)Ljava/lang/String;

    .line 181
    sget-object v0, Lio/topvpn/vpn_api/util;->m_path:Ljava/lang/String;

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->mkdir_p(Ljava/lang/String;)Z

    .line 182
    return-void
.end method

.method public static util_reinit_workdir(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 235
    const-class v1, Lio/topvpn/vpn_api/util;

    monitor-enter v1

    .line 236
    :try_start_0
    invoke-static {}, Lio/topvpn/vpn_api/util;->zerr_uninit()V

    .line 237
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->WORKDIR:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v2, p1}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    invoke-static {p0, p1, v0}, Lio/topvpn/vpn_api/util;->zerr_init(Landroid/content/Context;Ljava/lang/String;Lio/topvpn/vpn_api/conf;)V

    .line 239
    invoke-static {}, Lio/topvpn/vpn_api/util;->log_hdr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->zerr_printf(Ljava/lang/String;)I

    .line 240
    monitor-exit v1

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static util_uninit()V
    .locals 2

    .prologue
    .line 244
    const-class v1, Lio/topvpn/vpn_api/util;

    monitor-enter v1

    .line 245
    :try_start_0
    sget v0, Lio/topvpn/vpn_api/util;->m_ref:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lio/topvpn/vpn_api/util;->m_ref:I

    .line 246
    sget v0, Lio/topvpn/vpn_api/util;->m_ref:I

    if-eqz v0, :cond_0

    .line 247
    monitor-exit v1

    .line 252
    :goto_0
    return-void

    .line 248
    :cond_0
    sget-boolean v0, Lio/topvpn/vpn_api/util;->m_perr_inited:Z

    if-eqz v0, :cond_1

    .line 249
    invoke-static {}, Lio/topvpn/vpn_api/util;->perr_uninit()V

    .line 250
    :cond_1
    invoke-static {}, Lio/topvpn/vpn_api/util;->zerr_uninit()V

    .line 251
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static version_cmp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1441
    if-nez p0, :cond_1

    .line 1442
    const/4 v1, -0x1

    .line 1447
    :cond_0
    :goto_0
    return v1

    .line 1443
    :cond_1
    if-nez p1, :cond_2

    .line 1444
    const/4 v1, 0x1

    goto :goto_0

    .line 1445
    :cond_2
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 1446
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_3

    array-length v4, v3

    if-ge v0, v4, :cond_3

    aget-object v4, v2, v0

    invoke-static {v4}, Lio/topvpn/vpn_api/util;->atoi(Ljava/lang/String;)I

    move-result v4

    aget-object v5, v3, v0

    invoke-static {v5}, Lio/topvpn/vpn_api/util;->atoi(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1447
    :cond_3
    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    aget-object v1, v2, v0

    invoke-static {v1}, Lio/topvpn/vpn_api/util;->atoi(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v3, v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->atoi(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method private static zerr(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 475
    const-string v0, "util"

    invoke-static {v0, p0, p1}, Lio/topvpn/vpn_api/util;->_zerr(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static zerr2log(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 451
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 453
    :cond_2
    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 454
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 455
    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 456
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 457
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 458
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 459
    invoke-static {p0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static zerr_check(I)Z
    .locals 2

    .prologue
    .line 360
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->zerr_get_severity(I)I

    move-result v0

    sget v1, Lio/topvpn/vpn_api/util;->zerr_level:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zerr_get_flags(I)I
    .locals 1

    .prologue
    .line 362
    const v0, 0xff00

    and-int/2addr v0, p0

    return v0
.end method

.method private static zerr_get_severity(I)I
    .locals 1

    .prologue
    .line 345
    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method private static zerr_init(Landroid/content/Context;Ljava/lang/String;Lio/topvpn/vpn_api/conf;)V
    .locals 5

    .prologue
    .line 381
    sget-object v1, Lio/topvpn/vpn_api/util;->m_zerr_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_0
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->zerr_mkdir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/log"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_path:Ljava/lang/String;

    .line 386
    if-eqz p1, :cond_0

    .line 388
    sget-object v0, Lio/topvpn/vpn_api/util;->m_path:Ljava/lang/String;

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->mkdir_p(Ljava/lang/String;)Z

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/ext/log"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lio/topvpn/vpn_api/util$1;

    invoke-direct {v3}, Lio/topvpn/vpn_api/util$1;-><init>()V

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lio/topvpn/vpn_api/util;->scandir(Ljava/lang/String;Lio/topvpn/vpn_api/util$scandir_cb_t;Ljava/lang/Object;)V

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/ext"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->rmdir_recursive(Ljava/lang/String;)I

    .line 401
    :cond_0
    monitor-exit v1

    .line 402
    return-void

    .line 385
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/ext"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static zerr_level2severity_str(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    sget-object v0, Lio/topvpn/vpn_api/util;->zerr_severity_str:[Ljava/lang/String;

    invoke-static {p0}, Lio/topvpn/vpn_api/util;->zerr_get_severity(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static zerr_mkdir(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 365
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->get_cachedir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/log"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v0}, Lio/topvpn/vpn_api/util;->mkdir_p(Ljava/lang/String;)Z

    .line 368
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/app.log"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lio/topvpn/vpn_api/util;->m_file:Ljava/io/File;

    .line 370
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    sget-object v2, Lio/topvpn/vpn_api/util;->m_file:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    sput-object v0, Lio/topvpn/vpn_api/util;->m_fw:Ljava/io/FileWriter;

    .line 371
    sget-object v0, Lio/topvpn/vpn_api/util;->m_membuf:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    sget-object v0, Lio/topvpn/vpn_api/util;->m_membuf:Ljava/lang/String;

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->zerr_printf(Ljava/lang/String;)I

    .line 374
    const-string v0, ""

    sput-object v0, Lio/topvpn/vpn_api/util;->m_membuf:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :cond_0
    :goto_0
    return-object v1

    .line 376
    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zerr_mkdir failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/topvpn/vpn_api/util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static zerr_printf(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 418
    new-instance v0, Lio/topvpn/vpn_api/util$2;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/util$2;-><init>(Ljava/lang/String;)V

    .line 445
    sget-object v1, Lio/topvpn/vpn_api/util;->m_zerr_ex:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 446
    const/4 v0, -0x1

    return v0
.end method

.method private static zerr_str2level(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 351
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lio/topvpn/vpn_api/util;->zerr_severity_str:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 353
    sget-object v1, Lio/topvpn/vpn_api/util;->zerr_severity_str:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    :goto_1
    return v0

    .line 351
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static zerr_uninit()V
    .locals 2

    .prologue
    .line 405
    sget-object v1, Lio/topvpn/vpn_api/util;->m_zerr_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 406
    :try_start_0
    sget-object v0, Lio/topvpn/vpn_api/util;->m_fw:Ljava/io/FileWriter;

    if-nez v0, :cond_0

    .line 407
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :goto_0
    return-void

    .line 409
    :cond_0
    :try_start_1
    sget-object v0, Lio/topvpn/vpn_api/util;->m_fw:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 410
    sget-object v0, Lio/topvpn/vpn_api/util;->m_fw:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lio/topvpn/vpn_api/util;->m_fw:Ljava/io/FileWriter;

    .line 413
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 411
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public native chmod(Ljava/lang/String;I)I
.end method

.method public native fcntl_cloexec(II)I
.end method

.method public native get_errno()I
.end method

.method public native ipc([Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;I)I
.end method

.method public native ipc_fd_pass([Ljava/lang/String;ILio/topvpn/vpn_api/util$ipc_result;I)I
.end method

.method public native jni_getgid()I
.end method

.method public native jni_init()V
.end method

.method public native jni_kill(II)I
.end method

.method public native jni_pipe()[I
.end method

.method public native jni_read(I)Ljava/lang/String;
.end method

.method public native jni_sys_exec(Ljava/lang/String;)I
.end method

.method public native jni_sys_exec_bg(Ljava/lang/String;)I
.end method

.method public native jni_sys_waitpid(II)I
.end method

.method public native jni_write_str(ILjava/lang/String;)I
.end method

.method public native pipe_close(I)I
.end method

.method public native pipe_fds_to_protect_ack(II)V
.end method

.method public native pipe_fds_to_protect_get(I)[I
.end method

.method public native pipe_server_accept(II)I
.end method

.method public native pipe_server_listen([B)I
.end method

.method public native pipe_wake(I)V
.end method

.method public native readlink(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native set_apkid(Ljava/lang/String;)I
.end method

.method public native symlink(Ljava/lang/String;Ljava/lang/String;)I
.end method
