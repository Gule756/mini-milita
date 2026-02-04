.class public Lorg/go3k/utilities/ZYWebView;
.super Ljava/lang/Object;
.source "ZYWebView.java"


# static fields
.field private static m_activity:Landroid/app/Activity;

.field private static m_instance:Lorg/go3k/utilities/ZYWebView;


# instance fields
.field private m_webLayout:Landroid/widget/LinearLayout;

.field private m_webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/go3k/utilities/ZYWebView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/go3k/utilities/ZYWebView;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/go3k/utilities/ZYWebView;->m_webLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$002(Lorg/go3k/utilities/ZYWebView;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lorg/go3k/utilities/ZYWebView;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 20
    iput-object p1, p0, Lorg/go3k/utilities/ZYWebView;->m_webLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$100()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lorg/go3k/utilities/ZYWebView;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lorg/go3k/utilities/ZYWebView;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lorg/go3k/utilities/ZYWebView;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/go3k/utilities/ZYWebView;->m_webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$202(Lorg/go3k/utilities/ZYWebView;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .param p0, "x0"    # Lorg/go3k/utilities/ZYWebView;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 20
    iput-object p1, p0, Lorg/go3k/utilities/ZYWebView;->m_webView:Landroid/webkit/WebView;

    return-object p1
.end method

.method public static getZYWebView()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 32
    :try_start_0
    sget-object v1, Lorg/go3k/utilities/ZYWebView;->m_instance:Lorg/go3k/utilities/ZYWebView;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lorg/go3k/utilities/ZYWebView;

    invoke-direct {v1}, Lorg/go3k/utilities/ZYWebView;-><init>()V

    sput-object v1, Lorg/go3k/utilities/ZYWebView;->m_instance:Lorg/go3k/utilities/ZYWebView;

    .line 36
    :cond_0
    sget-object v1, Lorg/go3k/utilities/ZYWebView;->m_instance:Lorg/go3k/utilities/ZYWebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 39
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "DA2.WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getZYWebView failed. Exception message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p0, "ac"    # Landroid/app/Activity;

    .prologue
    .line 27
    sput-object p0, Lorg/go3k/utilities/ZYWebView;->m_activity:Landroid/app/Activity;

    .line 28
    return-void
.end method


# virtual methods
.method public displayWebView(IIII)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 46
    const-string v0, "DA2.WebView"

    const-string v1, "Android::showWebView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v0, Lorg/go3k/utilities/ZYWebView;->m_activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 49
    const-string v0, "DA2.WebView"

    const-string v1, "showWebView m_activity is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    return-void

    .line 55
    :cond_0
    :try_start_0
    sget-object v7, Lorg/go3k/utilities/ZYWebView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lorg/go3k/utilities/ZYWebView$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/go3k/utilities/ZYWebView$1;-><init>(Lorg/go3k/utilities/ZYWebView;IIII)V

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v6

    .line 177
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "DA2.WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayWebView unable to be shown. Exception message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeWebView()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lorg/go3k/utilities/ZYWebView;->m_webLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/go3k/utilities/ZYWebView;->m_webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    sget-object v0, Lorg/go3k/utilities/ZYWebView;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/go3k/utilities/ZYWebView$3;

    invoke-direct {v1, p0}, Lorg/go3k/utilities/ZYWebView$3;-><init>(Lorg/go3k/utilities/ZYWebView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 185
    sget-object v0, Lorg/go3k/utilities/ZYWebView;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/go3k/utilities/ZYWebView$2;

    invoke-direct {v1, p0, p1}, Lorg/go3k/utilities/ZYWebView$2;-><init>(Lorg/go3k/utilities/ZYWebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method
