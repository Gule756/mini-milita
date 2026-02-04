.class public abstract Lio/topvpn/vpn_api/conf$listener;
.super Lio/topvpn/vpn_api/set_strict$listener;
.source "conf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/conf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/topvpn/vpn_api/set_strict$listener",
        "<",
        "Lio/topvpn/vpn_api/conf$key;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lio/topvpn/vpn_api/set_strict$listener;-><init>()V

    return-void
.end method
