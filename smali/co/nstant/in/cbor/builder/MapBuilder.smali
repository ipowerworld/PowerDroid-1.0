.class public Lco/nstant/in/cbor/builder/MapBuilder;
.super Lco/nstant/in/cbor/builder/AbstractBuilder;
.source "MapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lco/nstant/in/cbor/builder/AbstractBuilder<",
        "*>;>",
        "Lco/nstant/in/cbor/builder/AbstractBuilder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final map:Lco/nstant/in/cbor/model/Map;


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/builder/AbstractBuilder;Lco/nstant/in/cbor/model/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lco/nstant/in/cbor/model/Map;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lco/nstant/in/cbor/builder/AbstractBuilder;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object p2, p0, Lco/nstant/in/cbor/builder/MapBuilder;->map:Lco/nstant/in/cbor/model/Map;

    return-void
.end method


# virtual methods
.method public end()Lco/nstant/in/cbor/builder/AbstractBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lco/nstant/in/cbor/builder/MapBuilder;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/builder/AbstractBuilder;

    return-object v0
.end method

.method public put(JD)Lco/nstant/in/cbor/builder/MapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JD)",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(J)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p3, p4}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(D)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    return-object p0
.end method

.method public put(JF)Lco/nstant/in/cbor/builder/MapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF)",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(J)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p3}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(F)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    return-object p0
.end method

.method public put(JJ)Lco/nstant/in/cbor/builder/MapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(J)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p3, p4}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(J)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    return-object p0
.end method

.method public put(JLjava/lang/String;)Lco/nstant/in/cbor/builder/MapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(J)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p3}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(Ljava/lang/String;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    return-object p0
.end method

.method public put(JZ)Lco/nstant/in/cbor/builder/MapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(J)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p3}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(Z)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    return-object p0
.end method

.method public put(J[B)Lco/nstant/in/cbor/builder/MapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[B)",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(J)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p3}, Lco/nstant/in/cbor/builder/MapBuilder;->convert([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    return-object p0
.end method

.method public put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/nstant/in/cbor/model/DataItem;",
            "Lco/nstant/in/cbor/model/DataItem;",
            ")",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lco/nstant/in/cbor/builder/MapBuilder;->map:Lco/nstant/in/cbor/model/Map;

    invoke-virtual {v0, p1, p2}, Lco/nstant/in/cbor/model/Map;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Map;

    return-object p0
.end method

.method public put(Ljava/lang/String;D)Lco/nstant/in/cbor/builder/MapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(Ljava/lang/String;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p2, p3}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(D)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    return-object p0
.end method

.method public put(Ljava/lang/String;F)Lco/nstant/in/cbor/builder/MapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(Ljava/lang/String;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(F)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lco/nstant/in/cbor/builder/MapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(Ljava/lang/String;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p2, p3}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(J)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lco/nstant/in/cbor/builder/MapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(Ljava/lang/String;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(Ljava/lang/String;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lco/nstant/in/cbor/builder/MapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(Ljava/lang/String;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(Z)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    return-object p0
.end method

.method public put(Ljava/lang/String;[B)Lco/nstant/in/cbor/builder/MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lco/nstant/in/cbor/builder/MapBuilder;->map:Lco/nstant/in/cbor/model/Map;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(Ljava/lang/String;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->convert([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lco/nstant/in/cbor/model/Map;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Map;

    return-object p0
.end method

.method public putArray(J)Lco/nstant/in/cbor/builder/ArrayBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lco/nstant/in/cbor/builder/ArrayBuilder<",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;>;"
        }
    .end annotation

    .line 89
    new-instance v0, Lco/nstant/in/cbor/model/Array;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Array;-><init>()V

    .line 90
    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(J)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    .line 91
    new-instance p1, Lco/nstant/in/cbor/builder/ArrayBuilder;

    invoke-direct {p1, p0, v0}, Lco/nstant/in/cbor/builder/ArrayBuilder;-><init>(Lco/nstant/in/cbor/builder/AbstractBuilder;Lco/nstant/in/cbor/model/Array;)V

    return-object p1
.end method

.method public putArray(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/nstant/in/cbor/model/DataItem;",
            ")",
            "Lco/nstant/in/cbor/builder/ArrayBuilder<",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;>;"
        }
    .end annotation

    .line 83
    new-instance v0, Lco/nstant/in/cbor/model/Array;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Array;-><init>()V

    .line 84
    invoke-virtual {p0, p1, v0}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    .line 85
    new-instance p1, Lco/nstant/in/cbor/builder/ArrayBuilder;

    invoke-direct {p1, p0, v0}, Lco/nstant/in/cbor/builder/ArrayBuilder;-><init>(Lco/nstant/in/cbor/builder/AbstractBuilder;Lco/nstant/in/cbor/model/Array;)V

    return-object p1
.end method

.method public putArray(Ljava/lang/String;)Lco/nstant/in/cbor/builder/ArrayBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lco/nstant/in/cbor/builder/ArrayBuilder<",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lco/nstant/in/cbor/model/Array;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Array;-><init>()V

    .line 96
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(Ljava/lang/String;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    .line 97
    new-instance p1, Lco/nstant/in/cbor/builder/ArrayBuilder;

    invoke-direct {p1, p0, v0}, Lco/nstant/in/cbor/builder/ArrayBuilder;-><init>(Lco/nstant/in/cbor/builder/AbstractBuilder;Lco/nstant/in/cbor/model/Array;)V

    return-object p1
.end method

.method public putMap(J)Lco/nstant/in/cbor/builder/MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;>;"
        }
    .end annotation

    .line 125
    new-instance v0, Lco/nstant/in/cbor/model/Map;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Map;-><init>()V

    .line 126
    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(J)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    .line 127
    new-instance p1, Lco/nstant/in/cbor/builder/MapBuilder;

    invoke-direct {p1, p0, v0}, Lco/nstant/in/cbor/builder/MapBuilder;-><init>(Lco/nstant/in/cbor/builder/AbstractBuilder;Lco/nstant/in/cbor/model/Map;)V

    return-object p1
.end method

.method public putMap(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/nstant/in/cbor/model/DataItem;",
            ")",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Lco/nstant/in/cbor/model/Map;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Map;-><init>()V

    .line 120
    invoke-virtual {p0, p1, v0}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    .line 121
    new-instance p1, Lco/nstant/in/cbor/builder/MapBuilder;

    invoke-direct {p1, p0, v0}, Lco/nstant/in/cbor/builder/MapBuilder;-><init>(Lco/nstant/in/cbor/builder/AbstractBuilder;Lco/nstant/in/cbor/model/Map;)V

    return-object p1
.end method

.method public putMap(Ljava/lang/String;)Lco/nstant/in/cbor/builder/MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;>;"
        }
    .end annotation

    .line 131
    new-instance v0, Lco/nstant/in/cbor/model/Map;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Map;-><init>()V

    .line 132
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(Ljava/lang/String;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    .line 133
    new-instance p1, Lco/nstant/in/cbor/builder/MapBuilder;

    invoke-direct {p1, p0, v0}, Lco/nstant/in/cbor/builder/MapBuilder;-><init>(Lco/nstant/in/cbor/builder/AbstractBuilder;Lco/nstant/in/cbor/model/Map;)V

    return-object p1
.end method

.method public startArray(J)Lco/nstant/in/cbor/builder/ArrayBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lco/nstant/in/cbor/builder/ArrayBuilder<",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;>;"
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1, p2}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(J)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/builder/MapBuilder;->startArray(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p1

    return-object p1
.end method

.method public startArray(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/nstant/in/cbor/model/DataItem;",
            ")",
            "Lco/nstant/in/cbor/builder/ArrayBuilder<",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;>;"
        }
    .end annotation

    .line 101
    new-instance v0, Lco/nstant/in/cbor/model/Array;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Array;-><init>()V

    const/4 v1, 0x1

    .line 102
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/model/Array;->setChunked(Z)Lco/nstant/in/cbor/model/ChunkableDataItem;

    .line 103
    invoke-virtual {p0, p1, v0}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    .line 104
    new-instance p1, Lco/nstant/in/cbor/builder/ArrayBuilder;

    invoke-direct {p1, p0, v0}, Lco/nstant/in/cbor/builder/ArrayBuilder;-><init>(Lco/nstant/in/cbor/builder/AbstractBuilder;Lco/nstant/in/cbor/model/Array;)V

    return-object p1
.end method

.method public startArray(Ljava/lang/String;)Lco/nstant/in/cbor/builder/ArrayBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lco/nstant/in/cbor/builder/ArrayBuilder<",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "TT;>;>;"
        }
    .end annotation

    .line 112
    new-instance v0, Lco/nstant/in/cbor/model/Array;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Array;-><init>()V

    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/model/Array;->setChunked(Z)Lco/nstant/in/cbor/model/ChunkableDataItem;

    .line 114
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/builder/MapBuilder;->convert(Ljava/lang/String;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    .line 115
    new-instance p1, Lco/nstant/in/cbor/builder/ArrayBuilder;

    invoke-direct {p1, p0, v0}, Lco/nstant/in/cbor/builder/ArrayBuilder;-><init>(Lco/nstant/in/cbor/builder/AbstractBuilder;Lco/nstant/in/cbor/model/Array;)V

    return-object p1
.end method
