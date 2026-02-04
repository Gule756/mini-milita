.class Lio/topvpn/vpn_api/set$1;
.super Ljava/lang/Object;
.source "set.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/set;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/set;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lio/topvpn/vpn_api/set$1;->this$0:Lio/topvpn/vpn_api/set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lio/topvpn/vpn_api/set$1;->this$0:Lio/topvpn/vpn_api/set;

    invoke-virtual {v0, p2}, Lio/topvpn/vpn_api/set;->notify_change(Ljava/lang/String;)V

    .line 61
    return-void
.end method
