.class public Lco/nstant/in/cbor/encoder/MapEncoder;
.super Lco/nstant/in/cbor/encoder/AbstractEncoder;
.source "MapEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/nstant/in/cbor/encoder/AbstractEncoder<",
        "Lco/nstant/in/cbor/model/Map;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public encode(Lco/nstant/in/cbor/model/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Map;->getKeys()Ljava/util/Collection;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Map;->isChunked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    sget-object v1, Lco/nstant/in/cbor/model/MajorType;->MAP:Lco/nstant/in/cbor/model/MajorType;

    invoke-virtual {p0, v1}, Lco/nstant/in/cbor/encoder/MapEncoder;->encodeTypeChunked(Lco/nstant/in/cbor/model/MajorType;)V

    goto :goto_0

    .line 29
    :cond_0
    sget-object v1, Lco/nstant/in/cbor/model/MajorType;->MAP:Lco/nstant/in/cbor/model/MajorType;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lco/nstant/in/cbor/encoder/MapEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 36
    :cond_1
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Map;->isChunked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    .line 38
    iget-object v2, p0, Lco/nstant/in/cbor/encoder/MapEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 39
    iget-object v2, p0, Lco/nstant/in/cbor/encoder/MapEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    invoke-virtual {p1, v1}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v1

    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    goto :goto_1

    .line 41
    :cond_2
    iget-object p1, p0, Lco/nstant/in/cbor/encoder/MapEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    sget-object v0, Lco/nstant/in/cbor/model/SimpleValue;->BREAK:Lco/nstant/in/cbor/model/Special;

    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    return-void

    .line 59
    :cond_3
    new-instance v1, Ljava/util/TreeMap;

    new-instance v2, Lco/nstant/in/cbor/encoder/MapEncoder$1;

    invoke-direct {v2, p0}, Lco/nstant/in/cbor/encoder/MapEncoder$1;-><init>(Lco/nstant/in/cbor/encoder/MapEncoder;)V

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 81
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 82
    new-instance v3, Lco/nstant/in/cbor/CborEncoder;

    invoke-direct {v3, v2}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    .line 83
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/nstant/in/cbor/model/DataItem;

    .line 85
    invoke-virtual {v3, v4}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 86
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 87
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 89
    invoke-virtual {p1, v4}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 90
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 91
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 92
    invoke-virtual {v1, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 94
    :cond_4
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p0, v1}, Lco/nstant/in/cbor/encoder/MapEncoder;->write([B)V

    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/MapEncoder;->write([B)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public bridge synthetic encode(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 16
    check-cast p1, Lco/nstant/in/cbor/model/Map;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/MapEncoder;->encode(Lco/nstant/in/cbor/model/Map;)V

    return-void
.end method
