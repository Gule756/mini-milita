.class public Lio/topvpn/vpn_api/peer_dialog;
.super Landroid/app/DialogFragment;
.source "peer_dialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/topvpn/vpn_api/peer_dialog$peer_dialog_dissmiss;
    }
.end annotation


# instance fields
.field private m_bottom_color:I

.field private m_btn_not_peer_txt:Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;

.field private m_btn_peer_txt:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

.field private m_hola_sla:Z

.field private m_pdd:Lio/topvpn/vpn_api/peer_dialog$peer_dialog_dissmiss;

.field private m_radio_choice:I

.field private m_top_color:I

.field private m_tos_link:Ljava/lang/String;

.field private m_type:Lio/topvpn/vpn_api/api$DIALOG_TYPE;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lio/topvpn/vpn_api/peer_dialog;->m_tos_link:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lio/topvpn/vpn_api/peer_dialog;->m_radio_choice:I

    .line 34
    sget-object v0, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->FREE:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    iput-object v0, p0, Lio/topvpn/vpn_api/peer_dialog;->m_btn_peer_txt:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    .line 35
    sget-object v0, Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;->ADS:Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;

    iput-object v0, p0, Lio/topvpn/vpn_api/peer_dialog;->m_btn_not_peer_txt:Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;

    return-void
.end method

.method static synthetic access$002(Lio/topvpn/vpn_api/peer_dialog;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_radio_choice:I

    return p1
.end method

.method static synthetic access$100(Lio/topvpn/vpn_api/peer_dialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/peer_dialog;->open_browser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lio/topvpn/vpn_api/peer_dialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lio/topvpn/vpn_api/peer_dialog;->m_tos_link:Ljava/lang/String;

    return-object v0
.end method

.method private init(Landroid/view/View;)V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 114
    const-string v1, ""

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lio/topvpn/vpn_api/peer_dialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lio/topvpn/vpn_api/peer_dialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 117
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 119
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lio/topvpn/vpn_api/peer_dialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 120
    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 119
    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 120
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    move v1, v0

    .line 123
    :goto_0
    invoke-virtual {p0}, Lio/topvpn/vpn_api/peer_dialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 124
    sget v0, Lio/topvpn/vpn_api/R$id;->app_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    sget v0, Lio/topvpn/vpn_api/R$id;->app_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    sget v6, Lio/topvpn/vpn_api/R$string;->topvpn_peer_msg:I

    .line 128
    sget-object v0, Lio/topvpn/vpn_api/peer_dialog$9;->$SwitchMap$io$topvpn$vpn_api$api$DIALOG_TYPE:[I

    iget-object v1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_type:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    invoke-virtual {v1}, Lio/topvpn/vpn_api/api$DIALOG_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, v4

    .line 252
    :goto_1
    if-eqz v0, :cond_0

    .line 253
    sget v1, Lio/topvpn/vpn_api/R$id;->got_it_btn:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    :cond_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    move-object v0, v1

    move v1, v2

    move-object v3, v0

    goto :goto_0

    .line 132
    :pswitch_0
    sget v0, Lio/topvpn/vpn_api/R$id;->btn_peer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/topvpn/vpn_api/peer_dialog$1;

    invoke-direct {v1, p0}, Lio/topvpn/vpn_api/peer_dialog$1;-><init>(Lio/topvpn/vpn_api/peer_dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    sget v0, Lio/topvpn/vpn_api/R$id;->btn_not_peer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/topvpn/vpn_api/peer_dialog$2;

    invoke-direct {v1, p0}, Lio/topvpn/vpn_api/peer_dialog$2;-><init>(Lio/topvpn/vpn_api/peer_dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    sget v0, Lio/topvpn/vpn_api/R$string;->topvpn_free:I

    .line 151
    sget-object v1, Lio/topvpn/vpn_api/peer_dialog$9;->$SwitchMap$io$topvpn$vpn_api$api$BTN_PEER_TXT:[I

    iget-object v7, p0, Lio/topvpn/vpn_api/peer_dialog;->m_btn_peer_txt:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    invoke-virtual {v7}, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->ordinal()I

    move-result v7

    aget v1, v1, v7

    packed-switch v1, :pswitch_data_1

    move v1, v0

    .line 159
    :goto_2
    sget v0, Lio/topvpn/vpn_api/R$id;->main_peer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    sget v0, Lio/topvpn/vpn_api/R$string;->topvpn_free:I

    .line 161
    sget-object v1, Lio/topvpn/vpn_api/peer_dialog$9;->$SwitchMap$io$topvpn$vpn_api$api$BTN_NOT_PEER_TXT:[I

    iget-object v7, p0, Lio/topvpn/vpn_api/peer_dialog;->m_btn_not_peer_txt:Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;

    invoke-virtual {v7}, Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;->ordinal()I

    move-result v7

    aget v1, v1, v7

    packed-switch v1, :pswitch_data_2

    move v1, v0

    .line 170
    :goto_3
    sget v0, Lio/topvpn/vpn_api/R$id;->main_not_peer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 171
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 172
    sget v0, Lio/topvpn/vpn_api/R$id;->more_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lio/topvpn/vpn_api/R$string;->topvpn_please_see_our:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " <a href="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lio/topvpn/vpn_api/peer_dialog;->m_tos_link:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ">"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v7, Lio/topvpn/vpn_api/R$string;->topvpn_tos:I

    .line 175
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "</a> "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v7, Lio/topvpn/vpn_api/R$string;->topvpn_for_futher_information:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 178
    sget v0, Lio/topvpn/vpn_api/R$id;->peer_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 179
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v12, [Ljava/lang/Object;

    aput-object v3, v5, v2

    .line 178
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v4

    .line 180
    goto/16 :goto_1

    .line 153
    :pswitch_1
    sget v0, Lio/topvpn/vpn_api/R$string;->topvpn_no_ads:I

    move v1, v0

    goto/16 :goto_2

    .line 154
    :pswitch_2
    sget v0, Lio/topvpn/vpn_api/R$string;->topvpn_premium:I

    move v1, v0

    goto/16 :goto_2

    .line 155
    :pswitch_3
    sget v0, Lio/topvpn/vpn_api/R$string;->topvpn_free:I

    move v1, v0

    goto/16 :goto_2

    .line 156
    :pswitch_4
    sget v0, Lio/topvpn/vpn_api/R$string;->topvpn_donate:I

    move v1, v0

    goto/16 :goto_2

    .line 157
    :pswitch_5
    sget v0, Lio/topvpn/vpn_api/R$string;->topvpn_i_agree:I

    move v1, v0

    goto/16 :goto_2

    .line 163
    :pswitch_6
    sget v0, Lio/topvpn/vpn_api/R$string;->topvpn_ads:I

    move v1, v0

    goto/16 :goto_3

    .line 164
    :pswitch_7
    sget v0, Lio/topvpn/vpn_api/R$string;->topvpn_limited:I

    move v1, v0

    goto/16 :goto_3

    .line 165
    :pswitch_8
    sget v0, Lio/topvpn/vpn_api/R$string;->topvpn_no_donate:I

    move v1, v0

    goto/16 :goto_3

    .line 166
    :pswitch_9
    sget v0, Lio/topvpn/vpn_api/R$string;->topvpn_premium:I

    move v1, v0

    goto/16 :goto_3

    .line 167
    :pswitch_a
    sget v0, Lio/topvpn/vpn_api/R$string;->topvpn_i_dont_agree:I

    move v1, v0

    goto/16 :goto_3

    .line 168
    :pswitch_b
    sget v0, Lio/topvpn/vpn_api/R$string;->topvpn_i_disagree:I

    move v1, v0

    goto/16 :goto_3

    .line 182
    :pswitch_c
    sget v0, Lio/topvpn/vpn_api/R$id;->free_radio:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v12}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 183
    new-instance v1, Lio/topvpn/vpn_api/peer_dialog$3;

    invoke-direct {v1, p0}, Lio/topvpn/vpn_api/peer_dialog$3;-><init>(Lio/topvpn/vpn_api/peer_dialog;)V

    .line 188
    sget v0, Lio/topvpn/vpn_api/R$id;->free_desc_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v4, Lio/topvpn/vpn_api/R$string;->topvpn_use_app_name_and_be_a_peer:I

    .line 189
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 188
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    sget v0, Lio/topvpn/vpn_api/R$id;->sub_desc_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v4, Lio/topvpn/vpn_api/R$string;->topvpn_use_app_name_for_subscription:I

    .line 192
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    sget v0, Lio/topvpn/vpn_api/R$id;->ads_desc_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v4, Lio/topvpn/vpn_api/R$string;->topvpn_use_app_name_with_some_advertisements:I

    .line 195
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    sget v0, Lio/topvpn/vpn_api/R$id;->peer_more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lio/topvpn/vpn_api/peer_dialog$4;

    invoke-direct {v2, p0}, Lio/topvpn/vpn_api/peer_dialog$4;-><init>(Lio/topvpn/vpn_api/peer_dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    .line 204
    goto/16 :goto_1

    .line 206
    :pswitch_d
    new-instance v4, Lio/topvpn/vpn_api/peer_dialog$5;

    invoke-direct {v4, p0}, Lio/topvpn/vpn_api/peer_dialog$5;-><init>(Lio/topvpn/vpn_api/peer_dialog;)V

    .line 210
    sget v0, Lio/topvpn/vpn_api/R$id;->top:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 211
    sget v0, Lio/topvpn/vpn_api/R$id;->radio_group:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 212
    sget v0, Lio/topvpn/vpn_api/R$id;->more_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 213
    sget v8, Lio/topvpn/vpn_api/R$string;->topvpn_peer_msg_read_more:I

    .line 214
    iget-boolean v1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_hola_sla:Z

    if-eqz v1, :cond_1

    .line 216
    sget v1, Lio/topvpn/vpn_api/R$id;->more_popover_txt:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 218
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget v10, Lio/topvpn/vpn_api/R$string;->topvpn_read_more_msg:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v3, v11, v2

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " <a href=http://hola.org/legal/sla>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lio/topvpn/vpn_api/R$string;->topvpn_hola_sla:I

    .line 221
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</a>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 218
    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 223
    sget v1, Lio/topvpn/vpn_api/R$string;->topvpn_read_more:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    new-instance v1, Lio/topvpn/vpn_api/peer_dialog$6;

    invoke-direct {v1, p0, p1}, Lio/topvpn/vpn_api/peer_dialog$6;-><init>(Lio/topvpn/vpn_api/peer_dialog;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    new-instance v0, Lio/topvpn/vpn_api/peer_dialog$7;

    invoke-direct {v0, p0, p1}, Lio/topvpn/vpn_api/peer_dialog$7;-><init>(Lio/topvpn/vpn_api/peer_dialog;Landroid/view/View;)V

    .line 237
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    :goto_4
    sget v0, Lio/topvpn/vpn_api/R$id;->peer_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 247
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v12, [Ljava/lang/Object;

    aput-object v3, v5, v2

    .line 246
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget v0, p0, Lio/topvpn/vpn_api/peer_dialog;->m_top_color:I

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 249
    iget v0, p0, Lio/topvpn/vpn_api/peer_dialog;->m_bottom_color:I

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v0, v4

    goto/16 :goto_1

    .line 242
    :cond_1
    iget-object v1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_tos_link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    new-instance v1, Lio/topvpn/vpn_api/peer_dialog$8;

    invoke-direct {v1, p0}, Lio/topvpn/vpn_api/peer_dialog$8;-><init>(Lio/topvpn/vpn_api/peer_dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 151
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 161
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private open_browser(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/peer_dialog;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 69
    iget-object v0, p0, Lio/topvpn/vpn_api/peer_dialog;->m_type:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    sget-object v1, Lio/topvpn/vpn_api/api$DIALOG_TYPE;->PEER1:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    if-eq v0, v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lio/topvpn/vpn_api/peer_dialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 74
    sget v1, Lio/topvpn/vpn_api/R$layout;->topvpn_peer_new:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 75
    invoke-virtual {p0}, Lio/topvpn/vpn_api/peer_dialog;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 76
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    invoke-direct {p0, v1}, Lio/topvpn/vpn_api/peer_dialog;->init(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 85
    invoke-static {}, Lio/topvpn/vpn_api/api$DIALOG_TYPE;->values()[Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    move-result-object v0

    const-string v1, "m_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lio/topvpn/vpn_api/peer_dialog;->m_type:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    .line 86
    invoke-static {}, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->values()[Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    move-result-object v0

    const-string v1, "m_btn_peer_txt"

    .line 87
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lio/topvpn/vpn_api/peer_dialog;->m_btn_peer_txt:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    .line 88
    invoke-static {}, Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;->values()[Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;

    move-result-object v0

    const-string v1, "m_btn_not_peer_txt"

    .line 89
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lio/topvpn/vpn_api/peer_dialog;->m_btn_not_peer_txt:Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;

    .line 90
    const-string v0, "m_tos_link"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/topvpn/vpn_api/peer_dialog;->m_tos_link:Ljava/lang/String;

    .line 91
    const-string v0, "m_top_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/topvpn/vpn_api/peer_dialog;->m_top_color:I

    .line 92
    const-string v0, "m_bottom_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/topvpn/vpn_api/peer_dialog;->m_bottom_color:I

    .line 93
    const-string v0, "m_hola_sla"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/topvpn/vpn_api/peer_dialog;->m_hola_sla:Z

    .line 95
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 97
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 105
    iget-object v0, p0, Lio/topvpn/vpn_api/peer_dialog;->m_type:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    sget-object v1, Lio/topvpn/vpn_api/api$DIALOG_TYPE;->CHOOSE:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    if-ne v0, v1, :cond_0

    sget v0, Lio/topvpn/vpn_api/R$layout;->topvpn_choose:I

    .line 108
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 109
    invoke-direct {p0, v0}, Lio/topvpn/vpn_api/peer_dialog;->init(Landroid/view/View;)V

    .line 110
    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lio/topvpn/vpn_api/peer_dialog;->m_type:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    sget-object v1, Lio/topvpn/vpn_api/api$DIALOG_TYPE;->PEER2:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    if-ne v0, v1, :cond_1

    sget v0, Lio/topvpn/vpn_api/R$layout;->topvpn_peer:I

    goto :goto_0

    :cond_1
    sget v0, Lio/topvpn/vpn_api/R$layout;->topvpn_peer_new:I

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lio/topvpn/vpn_api/peer_dialog;->m_pdd:Lio/topvpn/vpn_api/peer_dialog$peer_dialog_dissmiss;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lio/topvpn/vpn_api/peer_dialog;->m_pdd:Lio/topvpn/vpn_api/peer_dialog$peer_dialog_dissmiss;

    iget v1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_radio_choice:I

    invoke-interface {v0, v1}, Lio/topvpn/vpn_api/peer_dialog$peer_dialog_dissmiss;->on_peer_dailog_dismiss(I)V

    .line 272
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lio/topvpn/vpn_api/api;->m_dialog_active:Z

    .line 273
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 274
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 54
    const-string v0, "m_type"

    iget-object v1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_type:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    invoke-virtual {v1}, Lio/topvpn/vpn_api/api$DIALOG_TYPE;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    const-string v0, "m_btn_peer_txt"

    iget-object v1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_btn_peer_txt:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    invoke-virtual {v1}, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    const-string v0, "m_btn_not_peer_txt"

    iget-object v1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_btn_not_peer_txt:Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;

    invoke-virtual {v1}, Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    const-string v0, "m_tos_link"

    iget-object v1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_tos_link:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "m_top_color"

    iget v1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_top_color:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    const-string v0, "m_bottom_color"

    iget v1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_bottom_color:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string v0, "m_hola_sla"

    iget-boolean v1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_hola_sla:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 261
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 262
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 263
    invoke-virtual {p0}, Lio/topvpn/vpn_api/peer_dialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 264
    invoke-virtual {p0}, Lio/topvpn/vpn_api/peer_dialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 266
    return-void
.end method

.method public set_bottom_color(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_bottom_color:I

    return-void
.end method

.method public set_btn_not_peer_txt(Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_btn_not_peer_txt:Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;

    return-void
.end method

.method public set_btn_peer_txt(Lio/topvpn/vpn_api/api$BTN_PEER_TXT;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_btn_peer_txt:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    return-void
.end method

.method public set_dialog(Lio/topvpn/vpn_api/api$DIALOG_TYPE;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_type:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    return-void
.end method

.method public set_hola_sla(Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_hola_sla:Z

    return-void
.end method

.method public set_on_dissmiss_listener(Lio/topvpn/vpn_api/peer_dialog$peer_dialog_dissmiss;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_pdd:Lio/topvpn/vpn_api/peer_dialog$peer_dialog_dissmiss;

    return-void
.end method

.method public set_top_color(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_top_color:I

    return-void
.end method

.method public set_tos_link(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lio/topvpn/vpn_api/peer_dialog;->m_tos_link:Ljava/lang/String;

    return-void
.end method
