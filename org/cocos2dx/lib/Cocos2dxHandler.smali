.class public Lorg/cocos2dx/lib/Cocos2dxHandler;
.super Landroid/os/Handler;
.source "Cocos2dxHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;,
        Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;
    }
.end annotation


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/cocos2dx/lib/Cocos2dxActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mLastEditor:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V
    .locals 1
    .param p1, "activity"    # Lorg/cocos2dx/lib/Cocos2dxActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxHandler;->mLastEditor:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 53
    return-void
.end method

.method private dismissEditBoxDialog()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxHandler;->mLastEditor:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxHandler;->mLastEditor:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->dismissEditor()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxHandler;->mLastEditor:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    .line 128
    :cond_0
    return-void
.end method

.method private showDialog(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 92
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 93
    .local v1, "theActivity":Lorg/cocos2dx/lib/Cocos2dxActivity;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;

    .line 94
    .local v0, "dialogMessage":Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;->titile:Ljava/lang/String;

    .line 95
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, v0, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;->message:Ljava/lang/String;

    .line 96
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lorg/cocos2dx/lib/Cocos2dxHandler$1;

    invoke-direct {v4, p0}, Lorg/cocos2dx/lib/Cocos2dxHandler$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxHandler;)V

    .line 97
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 106
    return-void
.end method

.method private showEditBoxDialog(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 111
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;

    .line 112
    .local v8, "editBoxMessage":Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, v8, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->title:Ljava/lang/String;

    iget-object v3, v8, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->content:Ljava/lang/String;

    iget v4, v8, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->inputMode:I

    iget v5, v8, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->inputFlag:I

    iget v6, v8, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->returnType:I

    iget v7, v8, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->maxLength:I

    invoke-direct/range {v0 .. v7}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 119
    .local v0, "editbox":Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->show()V

    .line 120
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxHandler;->mLastEditor:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    .line 121
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3

    .prologue
    .line 65
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxHandler;->mLastEditor:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    .line 66
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "Cocos2dxHandler"

    const-string v2, "finalize failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 79
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxHandler;->showDialog(Landroid/os/Message;)V

    goto :goto_0

    .line 82
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxHandler;->showEditBoxDialog(Landroid/os/Message;)V

    goto :goto_0

    .line 85
    :pswitch_2
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxHandler;->dismissEditBoxDialog()V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
