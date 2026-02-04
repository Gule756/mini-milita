.class final Lio/topvpn/vpn_api/api$1;
.super Ljava/lang/Object;
.source "api.java"

# interfaces
.implements Lio/topvpn/vpn_api/peer_dialog$peer_dialog_dissmiss;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/api;->init(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/app/Activity;

.field final synthetic val$shared:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lio/topvpn/vpn_api/api$1;->val$shared:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lio/topvpn/vpn_api/api$1;->val$ctx:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on_peer_dailog_dismiss(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 74
    const/4 v1, 0x0

    .line 75
    sget v2, Lio/topvpn/vpn_api/R$id;->free_radio:I

    if-ne p1, v2, :cond_2

    move p1, v0

    .line 85
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/topvpn/vpn_api/api$1;->val$shared:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "choice"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    invoke-static {p1}, Lio/topvpn/vpn_api/api;->access$000(I)V

    .line 87
    if-ne p1, v0, :cond_1

    .line 88
    iget-object v0, p0, Lio/topvpn/vpn_api/api$1;->val$ctx:Landroid/app/Activity;

    invoke-static {v0}, Lio/topvpn/vpn_api/api;->access$100(Landroid/content/Context;)V

    .line 89
    :cond_1
    return-void

    .line 77
    :cond_2
    sget v2, Lio/topvpn/vpn_api/R$id;->ads_radio:I

    if-ne p1, v2, :cond_3

    .line 78
    const/4 p1, 0x2

    goto :goto_0

    .line 79
    :cond_3
    sget v2, Lio/topvpn/vpn_api/R$id;->sub_radio:I

    if-ne p1, v2, :cond_4

    .line 80
    const/4 p1, 0x3

    goto :goto_0

    .line 81
    :cond_4
    if-ne p1, v0, :cond_5

    move p1, v0

    .line 82
    goto :goto_0

    .line 83
    :cond_5
    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    move p1, v1

    goto :goto_0
.end method
