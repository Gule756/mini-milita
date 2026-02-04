.class public Lio/topvpn/vpn_api/api;
.super Ljava/lang/Object;
.source "api.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/topvpn/vpn_api/api$on_selection_listener;,
        Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;,
        Lio/topvpn/vpn_api/api$BTN_PEER_TXT;,
        Lio/topvpn/vpn_api/api$DIALOG_TYPE;
    }
.end annotation


# static fields
.field public static final CHOICE_ADS:I = 0x2

.field public static final CHOICE_FREE:I = 0x1

.field public static final CHOICE_NONE:I = 0x0

.field public static final CHOICE_NOT_PEER:I = 0x4

.field public static final CHOICE_PEER:I = 0x1

.field public static final CHOICE_SUBSCRIPTION:I = 0x3

.field public static final DIALOG_CHOOSE:I = 0x1

.field public static final DIALOG_PEER:I = 0x2

.field static final TAG:Ljava/lang/String; = "TopVPN"

.field private static m_bottom_color:I

.field public static m_btn_not_peer_txt:Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;

.field public static m_btn_peer_txt:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

.field public static m_dialog_active:Z

.field private static m_dialog_type:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

.field private static m_hola_sla:Z

.field private static m_on_selection_listener:Lio/topvpn/vpn_api/api$on_selection_listener;

.field private static m_top_color:I

.field private static m_tos_link:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lio/topvpn/vpn_api/api$DIALOG_TYPE;->PEER1:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    sput-object v0, Lio/topvpn/vpn_api/api;->m_dialog_type:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    .line 25
    const-string v0, "link to tos"

    sput-object v0, Lio/topvpn/vpn_api/api;->m_tos_link:Ljava/lang/String;

    .line 26
    const-string v0, "#009cd6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/topvpn/vpn_api/api;->m_top_color:I

    .line 27
    const-string v0, "#003d5b"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/topvpn/vpn_api/api;->m_bottom_color:I

    .line 33
    sget-object v0, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->FREE:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    sput-object v0, Lio/topvpn/vpn_api/api;->m_btn_peer_txt:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    .line 34
    sget-object v0, Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;->ADS:Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;

    sput-object v0, Lio/topvpn/vpn_api/api;->m_btn_not_peer_txt:Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0

    .prologue
    .line 13
    invoke-static {p0}, Lio/topvpn/vpn_api/api;->call_selection_listener(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-static {p0}, Lio/topvpn/vpn_api/api;->start(Landroid/content/Context;)V

    return-void
.end method

.method private static call_selection_listener(I)V
    .locals 3

    .prologue
    .line 108
    const-string v0, "TopVPN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TopVPN API user choice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v0, Lio/topvpn/vpn_api/api;->m_on_selection_listener:Lio/topvpn/vpn_api/api$on_selection_listener;

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lio/topvpn/vpn_api/api;->m_on_selection_listener:Lio/topvpn/vpn_api/api$on_selection_listener;

    invoke-interface {v0, p0}, Lio/topvpn/vpn_api/api$on_selection_listener;->on_user_selection(I)V

    .line 111
    :cond_0
    return-void
.end method

.method public static clear_selection(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 133
    const-string v0, "topvpn_api"

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    const-string v1, "choice"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "choice"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 138
    invoke-static {p0}, Lio/topvpn/vpn_api/svc;->stop(Landroid/content/Context;)V

    .line 139
    :cond_0
    invoke-static {v3}, Lio/topvpn/vpn_api/api;->call_selection_listener(I)V

    .line 140
    return-void
.end method

.method public static get_user_selection(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    const-string v0, "topvpn_api"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "choice"

    .line 144
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 143
    return v0
.end method

.method public static init(Landroid/app/Activity;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    const-string v0, "TopVPN"

    const-string v1, "TopVPN API init 1.55.771"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 41
    const-string v0, "TopVPN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TopVPN API old OS sdk version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-static {}, Lio/topvpn/vpn_api/svc;->is_architecture_supported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    const-string v0, "TopVPN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TopVPN API CPU architecture not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lio/topvpn/vpn_api/svc;->get_abi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :cond_2
    const-string v0, "topvpn_api"

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.hola."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "choice"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    invoke-static {p0}, Lio/topvpn/vpn_api/api;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 57
    :cond_3
    const-string v1, "choice"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 58
    if-eqz v1, :cond_4

    if-eqz p1, :cond_5

    .line 60
    :cond_4
    sget-boolean v1, Lio/topvpn/vpn_api/api;->m_dialog_active:Z

    if-nez v1, :cond_0

    .line 62
    sput-boolean v4, Lio/topvpn/vpn_api/api;->m_dialog_active:Z

    .line 63
    new-instance v1, Lio/topvpn/vpn_api/peer_dialog;

    invoke-direct {v1}, Lio/topvpn/vpn_api/peer_dialog;-><init>()V

    .line 64
    sget-object v2, Lio/topvpn/vpn_api/api;->m_dialog_type:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/peer_dialog;->set_dialog(Lio/topvpn/vpn_api/api$DIALOG_TYPE;)V

    .line 65
    sget-object v2, Lio/topvpn/vpn_api/api;->m_tos_link:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/peer_dialog;->set_tos_link(Ljava/lang/String;)V

    .line 66
    sget v2, Lio/topvpn/vpn_api/api;->m_top_color:I

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/peer_dialog;->set_top_color(I)V

    .line 67
    sget v2, Lio/topvpn/vpn_api/api;->m_bottom_color:I

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/peer_dialog;->set_bottom_color(I)V

    .line 68
    sget-boolean v2, Lio/topvpn/vpn_api/api;->m_hola_sla:Z

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/peer_dialog;->set_hola_sla(Z)V

    .line 69
    sget-object v2, Lio/topvpn/vpn_api/api;->m_btn_peer_txt:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/peer_dialog;->set_btn_peer_txt(Lio/topvpn/vpn_api/api$BTN_PEER_TXT;)V

    .line 70
    sget-object v2, Lio/topvpn/vpn_api/api;->m_btn_not_peer_txt:Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/peer_dialog;->set_btn_not_peer_txt(Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;)V

    .line 71
    new-instance v2, Lio/topvpn/vpn_api/api$1;

    invoke-direct {v2, v0, p0}, Lio/topvpn/vpn_api/api$1;-><init>(Landroid/content/SharedPreferences;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/peer_dialog;->set_on_dissmiss_listener(Lio/topvpn/vpn_api/peer_dialog$peer_dialog_dissmiss;)V

    .line 91
    invoke-virtual {v1, v3}, Lio/topvpn/vpn_api/peer_dialog;->setCancelable(Z)V

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lio/topvpn/vpn_api/peer_dialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :cond_5
    invoke-static {v1}, Lio/topvpn/vpn_api/api;->call_selection_listener(I)V

    .line 97
    if-ne v1, v4, :cond_0

    .line 98
    invoke-static {p0}, Lio/topvpn/vpn_api/api;->start(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public static set_bottom_background(I)V
    .locals 0

    .prologue
    .line 124
    sput p0, Lio/topvpn/vpn_api/api;->m_bottom_color:I

    return-void
.end method

.method public static set_btn_not_peer_txt(Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;)V
    .locals 0

    .prologue
    .line 127
    sput-object p0, Lio/topvpn/vpn_api/api;->m_btn_not_peer_txt:Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;

    return-void
.end method

.method public static set_btn_peer_txt(Lio/topvpn/vpn_api/api$BTN_PEER_TXT;)V
    .locals 0

    .prologue
    .line 125
    sput-object p0, Lio/topvpn/vpn_api/api;->m_btn_peer_txt:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    return-void
.end method

.method public static set_dialog_type(Lio/topvpn/vpn_api/api$DIALOG_TYPE;)V
    .locals 0

    .prologue
    .line 117
    sput-object p0, Lio/topvpn/vpn_api/api;->m_dialog_type:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    return-void
.end method

.method public static set_hola_sla_link(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    sput-boolean p0, Lio/topvpn/vpn_api/api;->m_hola_sla:Z

    return-void
.end method

.method public static set_selection_listener(Lio/topvpn/vpn_api/api$on_selection_listener;)V
    .locals 0

    .prologue
    .line 114
    sput-object p0, Lio/topvpn/vpn_api/api;->m_on_selection_listener:Lio/topvpn/vpn_api/api$on_selection_listener;

    return-void
.end method

.method public static set_sla_link(Z)V
    .locals 0

    .prologue
    .line 121
    sput-boolean p0, Lio/topvpn/vpn_api/api;->m_hola_sla:Z

    return-void
.end method

.method public static set_top_background(I)V
    .locals 0

    .prologue
    .line 123
    sput p0, Lio/topvpn/vpn_api/api;->m_top_color:I

    return-void
.end method

.method public static set_tos_link(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    sput-object p0, Lio/topvpn/vpn_api/api;->m_tos_link:Ljava/lang/String;

    return-void
.end method

.method private static start(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 103
    const-string v0, "TopVPN"

    const-string v1, "TopVPN API starting service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {p0}, Lio/topvpn/vpn_api/svc;->start(Landroid/content/Context;)V

    .line 105
    return-void
.end method
