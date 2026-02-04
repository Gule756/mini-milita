.class public abstract Lio/topvpn/vpn_api/ram$listener;
.super Lio/topvpn/vpn_api/set_strict$listener;
.source "ram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/ram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/topvpn/vpn_api/set_strict$listener",
        "<",
        "Lio/topvpn/vpn_api/ram$key;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lio/topvpn/vpn_api/set_strict$listener;-><init>()V

    return-void
.end method
