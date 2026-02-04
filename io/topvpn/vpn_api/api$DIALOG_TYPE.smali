.class public final enum Lio/topvpn/vpn_api/api$DIALOG_TYPE;
.super Ljava/lang/Enum;
.source "api.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DIALOG_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/topvpn/vpn_api/api$DIALOG_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/topvpn/vpn_api/api$DIALOG_TYPE;

.field public static final enum CHOOSE:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

.field public static final enum PEER1:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

.field public static final enum PEER2:Lio/topvpn/vpn_api/api$DIALOG_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    const-string v1, "PEER1"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/api$DIALOG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/topvpn/vpn_api/api$DIALOG_TYPE;->PEER1:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    new-instance v0, Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    const-string v1, "CHOOSE"

    invoke-direct {v0, v1, v3}, Lio/topvpn/vpn_api/api$DIALOG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/topvpn/vpn_api/api$DIALOG_TYPE;->CHOOSE:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    new-instance v0, Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    const-string v1, "PEER2"

    invoke-direct {v0, v1, v4}, Lio/topvpn/vpn_api/api$DIALOG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/topvpn/vpn_api/api$DIALOG_TYPE;->PEER2:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    sget-object v1, Lio/topvpn/vpn_api/api$DIALOG_TYPE;->PEER1:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lio/topvpn/vpn_api/api$DIALOG_TYPE;->CHOOSE:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lio/topvpn/vpn_api/api$DIALOG_TYPE;->PEER2:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lio/topvpn/vpn_api/api$DIALOG_TYPE;->$VALUES:[Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/topvpn/vpn_api/api$DIALOG_TYPE;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    return-object v0
.end method

.method public static values()[Lio/topvpn/vpn_api/api$DIALOG_TYPE;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lio/topvpn/vpn_api/api$DIALOG_TYPE;->$VALUES:[Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    invoke-virtual {v0}, [Lio/topvpn/vpn_api/api$DIALOG_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    return-object v0
.end method
