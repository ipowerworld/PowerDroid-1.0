.class public Lco/nstant/in/cbor/decoder/MapDecoder;
.super Lco/nstant/in/cbor/decoder/AbstractDecoder;
.source "MapDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/nstant/in/cbor/decoder/AbstractDecoder<",
        "Lco/nstant/in/cbor/model/Map;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    return-void
.end method

.method private decodeFixedLength(J)Lco/nstant/in/cbor/model/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 43
    new-instance v0, Lco/nstant/in/cbor/model/Map;

    long-to-int v1, p1

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/Map;-><init>(I)V

    const-wide/16 v1, 0x0

    :goto_0
    cmp-long v3, v1, p1

    if-gez v3, :cond_0

    .line 45
    iget-object v3, p0, Lco/nstant/in/cbor/decoder/MapDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    invoke-virtual {v3}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v3

    iget-object v4, p0, Lco/nstant/in/cbor/decoder/MapDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    invoke-virtual {v4}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lco/nstant/in/cbor/model/Map;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Map;

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private decodeInfinitiveLength()Lco/nstant/in/cbor/model/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 28
    new-instance v0, Lco/nstant/in/cbor/model/Map;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Map;-><init>()V

    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/model/Map;->setChunked(Z)Lco/nstant/in/cbor/model/ChunkableDataItem;

    .line 30
    iget-object v1, p0, Lco/nstant/in/cbor/decoder/MapDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    invoke-virtual {v1}, Lco/nstant/in/cbor/CborDecoder;->isAutoDecodeInfinitiveMaps()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    :goto_0
    iget-object v1, p0, Lco/nstant/in/cbor/decoder/MapDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    invoke-virtual {v1}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v1

    .line 33
    sget-object v2, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    iget-object v2, p0, Lco/nstant/in/cbor/decoder/MapDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    invoke-virtual {v2}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/nstant/in/cbor/model/Map;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Map;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public decode(I)Lco/nstant/in/cbor/model/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/decoder/MapDecoder;->getLength(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 21
    invoke-direct {p0}, Lco/nstant/in/cbor/decoder/MapDecoder;->decodeInfinitiveLength()Lco/nstant/in/cbor/model/Map;

    move-result-object p1

    return-object p1

    .line 23
    :cond_0
    invoke-direct {p0, v0, v1}, Lco/nstant/in/cbor/decoder/MapDecoder;->decodeFixedLength(J)Lco/nstant/in/cbor/model/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decode(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/decoder/MapDecoder;->decode(I)Lco/nstant/in/cbor/model/Map;

    move-result-object p1

    return-object p1
.end method
