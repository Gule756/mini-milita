.class public final enum Lio/topvpn/vpn_api/api$BTN_PEER_TXT;
.super Ljava/lang/Enum;
.source "api.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BTN_PEER_TXT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/topvpn/vpn_api/api$BTN_PEER_TXT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

.field public static final enum DONATE:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

.field public static final enum FREE:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

.field public static final enum I_AGREE:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

.field public static final enum NO_ADS:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

.field public static final enum PREMUIM:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    const-string v1, "NO_ADS"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->NO_ADS:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    new-instance v0, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    const-string v1, "PREMUIM"

    invoke-direct {v0, v1, v3}, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->PREMUIM:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    new-instance v0, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    const-string v1, "FREE"

    invoke-direct {v0, v1, v4}, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->FREE:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    new-instance v0, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    const-string v1, "DONATE"

    invoke-direct {v0, v1, v5}, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->DONATE:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    new-instance v0, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    const-string v1, "I_AGREE"

    invoke-direct {v0, v1, v6}, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->I_AGREE:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    const/4 v0, 0x5

    new-array v0, v0, [Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    sget-object v1, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->NO_ADS:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    aput-object v1, v0, v2

    sget-object v1, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->PREMUIM:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    aput-object v1, v0, v3

    sget-object v1, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->FREE:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    aput-object v1, v0, v4

    sget-object v1, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->DONATE:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    aput-object v1, v0, v5

    sget-object v1, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->I_AGREE:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    aput-object v1, v0, v6

    sput-object v0, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->$VALUES:[Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/topvpn/vpn_api/api$BTN_PEER_TXT;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    return-object v0
.end method

.method public static values()[Lio/topvpn/vpn_api/api$BTN_PEER_TXT;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->$VALUES:[Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    invoke-virtual {v0}, [Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    return-object v0
.end method
