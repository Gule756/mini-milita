.class public Lio/topvpn/vpn_api/conf$key;
.super Ljava/lang/Object;
.source "conf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/conf;
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
            "Lio/topvpn/vpn_api/conf$key;",
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
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/topvpn/vpn_api/conf$key;->s_register:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/topvpn/vpn_api/conf$key;->m_name:Ljava/lang/String;

    .line 41
    sget-object v0, Lio/topvpn/vpn_api/conf$key;->s_register:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/topvpn/vpn_api/conf$1;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/conf$key;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lio/topvpn/vpn_api/conf$key;->s_register:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lio/topvpn/vpn_api/conf$key;->m_name:Ljava/lang/String;

    return-object v0
.end method
