.class public Lio/topvpn/vpn_api/util$ipc_request;
.super Ljava/lang/Object;
.source "util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ipc_request"
.end annotation


# instance fields
.field public m_argv:[Ljava/lang/String;

.field public m_ipc_result:Lio/topvpn/vpn_api/util$ipc_result;

.field public m_timeout:I

.field final synthetic this$0:Lio/topvpn/vpn_api/util;


# direct methods
.method public constructor <init>(Lio/topvpn/vpn_api/util;[Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;)V
    .locals 1

    .prologue
    .line 1207
    iput-object p1, p0, Lio/topvpn/vpn_api/util$ipc_request;->this$0:Lio/topvpn/vpn_api/util;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1208
    iput-object p2, p0, Lio/topvpn/vpn_api/util$ipc_request;->m_argv:[Ljava/lang/String;

    .line 1209
    iput-object p3, p0, Lio/topvpn/vpn_api/util$ipc_request;->m_ipc_result:Lio/topvpn/vpn_api/util$ipc_result;

    .line 1210
    const/16 v0, 0x7d0

    iput v0, p0, Lio/topvpn/vpn_api/util$ipc_request;->m_timeout:I

    .line 1211
    return-void
.end method


# virtual methods
.method public on_ipc_finish(I)V
    .locals 0

    .prologue
    .line 1213
    return-void
.end method
