.class Lorg/cocos2dx/lib/Cocos2dxActivity$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Cocos2dxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method private constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$ScreenReceiver;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Lorg/cocos2dx/lib/Cocos2dxActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/cocos2dx/lib/Cocos2dxActivity;
    .param p2, "x1"    # Lorg/cocos2dx/lib/Cocos2dxActivity$1;

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity$ScreenReceiver;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 265
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const/4 v0, 0x0

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sWasScreenOn:Z

    .line 268
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received Intent.ACTION_SCREEN_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sWasScreenOn:Z

    .line 272
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received Intent.ACTION_SCREEN_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
