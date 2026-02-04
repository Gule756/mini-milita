.class public abstract Lio/topvpn/vpn_api/set_strict$listener;
.super Ljava/lang/Object;
.source "set_strict.java"

# interfaces
.implements Lio/topvpn/vpn_api/set$listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/set_strict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<key_type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/topvpn/vpn_api/set$listener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract on_changed(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;)V"
        }
    .end annotation
.end method

.method public on_changed(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    return-void
.end method
