.class abstract Lio/topvpn/vpn_api/set_strict;
.super Lio/topvpn/vpn_api/set;
.source "set_strict.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/topvpn/vpn_api/set_strict$listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<key_type:",
        "Ljava/lang/Object;",
        ">",
        "Lio/topvpn/vpn_api/set;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lio/topvpn/vpn_api/set;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final del(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/set_strict;->del(Ljava/lang/String;)V

    return-void
.end method

.method public final exist(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;)Z"
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/set_strict;->exist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final get_bool(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;)Z"
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/set_strict;->get_bool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final get_bool(Ljava/lang/Object;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;Z)Z"
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/topvpn/vpn_api/set_strict;->get_bool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final get_float(Ljava/lang/Object;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;)F"
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/set_strict;->get_float(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final get_float(Ljava/lang/Object;F)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;F)F"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/topvpn/vpn_api/set_strict;->get_float(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final get_int(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;)I"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/set_strict;->get_int(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final get_int(Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;I)I"
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/topvpn/vpn_api/set_strict;->get_int(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final get_json(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/set_strict;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public final get_long(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;)J"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/set_strict;->get_long(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final get_set(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/set_strict;->get_set(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final get_set(Ljava/lang/Object;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/topvpn/vpn_api/set_strict;->get_set(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final get_str(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/set_strict;->get_str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final get_str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/topvpn/vpn_api/set_strict;->get_str(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final insert(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/topvpn/vpn_api/set_strict;->insert(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final insert(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    monitor-enter p1

    .line 96
    :try_start_0
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/set_strict;->get_json(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 97
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    return-void

    .line 99
    :cond_0
    :try_start_2
    invoke-virtual {p0, p1, v1}, Lio/topvpn/vpn_api/set_strict;->set(Ljava/lang/Object;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 101
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method protected notify_change(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/set_strict;->resolve_key(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    iget-object v2, p0, Lio/topvpn/vpn_api/set_strict;->m_listeners:Ljava/util/List;

    monitor-enter v2

    .line 26
    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/set_strict;->m_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/topvpn/vpn_api/set$listener;

    .line 28
    if-eqz v1, :cond_0

    instance-of v4, v0, Lio/topvpn/vpn_api/set_strict$listener;

    if-eqz v4, :cond_0

    .line 29
    check-cast v0, Lio/topvpn/vpn_api/set_strict$listener;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/set_strict$listener;->on_changed(Ljava/lang/Object;)V

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 31
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Lio/topvpn/vpn_api/set$listener;->on_changed(Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    return-void
.end method

.method protected abstract resolve_key(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")Tkey_type;"
        }
    .end annotation
.end method

.method public final rm(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/topvpn/vpn_api/set_strict;->rm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final set(Ljava/lang/Object;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;F)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/topvpn/vpn_api/set_strict;->set(Ljava/lang/String;F)V

    return-void
.end method

.method public final set(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;I)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/topvpn/vpn_api/set_strict;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public final set(Ljava/lang/Object;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;J)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lio/topvpn/vpn_api/set_strict;->set(Ljava/lang/String;J)V

    return-void
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/topvpn/vpn_api/set_strict;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final set(Ljava/lang/Object;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/topvpn/vpn_api/set_strict;->set(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public final set(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    instance-of v0, p2, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lio/topvpn/vpn_api/set_strict;->set(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p2, Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final set(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;Z)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/topvpn/vpn_api/set_strict;->set(Ljava/lang/String;Z)V

    return-void
.end method

.method public final set_contains(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tkey_type;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/topvpn/vpn_api/set_strict;->set_contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
