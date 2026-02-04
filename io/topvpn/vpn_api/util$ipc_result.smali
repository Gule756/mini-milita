.class public Lio/topvpn/vpn_api/util$ipc_result;
.super Ljava/lang/Object;
.source "util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ipc_result"
.end annotation


# instance fields
.field public err:Ljava/lang/String;

.field public out:[B

.field public retval:I

.field final synthetic this$0:Lio/topvpn/vpn_api/util;


# direct methods
.method public constructor <init>(Lio/topvpn/vpn_api/util;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    iput-object p1, p0, Lio/topvpn/vpn_api/util$ipc_result;->this$0:Lio/topvpn/vpn_api/util;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lio/topvpn/vpn_api/util$ipc_result;->retval:I

    .line 105
    iput-object v1, p0, Lio/topvpn/vpn_api/util$ipc_result;->err:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lio/topvpn/vpn_api/util$ipc_result;->out:[B

    .line 107
    return-void
.end method
