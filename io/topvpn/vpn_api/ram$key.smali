.class public Lio/topvpn/vpn_api/ram$key;
.super Ljava/lang/Object;
.source "ram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/ram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "key"
.end annotation


# static fields
.field private static final s_register:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/topvpn/vpn_api/ram$key;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/topvpn/vpn_api/ram$key;->s_register:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/topvpn/vpn_api/ram$key;->m_name:Ljava/lang/String;

    .line 30
    sget-object v0, Lio/topvpn/vpn_api/ram$key;->s_register:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/topvpn/vpn_api/ram$1;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/ram$key;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lio/topvpn/vpn_api/ram$key;->s_register:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lio/topvpn/vpn_api/ram$key;->m_name:Ljava/lang/String;

    return-object v0
.end method
