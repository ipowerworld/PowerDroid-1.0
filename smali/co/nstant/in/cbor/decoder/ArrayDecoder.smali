.class public Lco/nstant/in/cbor/decoder/ArrayDecoder;
.super Lco/nstant/in/cbor/decoder/AbstractDecoder;
.source "ArrayDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/nstant/in/cbor/decoder/AbstractDecoder<",
        "Lco/nstant/in/cbor/model/Array;",
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

.method private decodeFixedLength(J)Lco/nstant/in/cbor/model/Array;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 48
    new-instance v0, Lco/nstant/in/cbor/model/Array;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Array;-><init>()V

    const-wide/16 v1, 0x0

    :goto_0
    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    .line 50
    iget-object v3, p0, Lco/nstant/in/cbor/decoder/ArrayDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    invoke-virtual {v3}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v0, v3}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Lco/nstant/in/cbor/CborException;

    const-string p2, "Unexpected end of stream"

    invoke-direct {p1, p2}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method

.method private decodeInfinitiveLength()Lco/nstant/in/cbor/model/Array;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 28
    new-instance v0, Lco/nstant/in/cbor/model/Array;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Array;-><init>()V

    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/model/Array;->setChunked(Z)Lco/nstant/in/cbor/model/ChunkableDataItem;

    .line 30
    iget-object v1, p0, Lco/nstant/in/cbor/decoder/ArrayDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    invoke-virtual {v1}, Lco/nstant/in/cbor/CborDecoder;->isAutoDecodeInfinitiveArrays()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 33
    :goto_0
    iget-object v1, p0, Lco/nstant/in/cbor/decoder/ArrayDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    invoke-virtual {v1}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 37
    sget-object v2, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    sget-object v1, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lco/nstant/in/cbor/CborException;

    const-string v1, "Unexpected end of stream"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public decode(I)Lco/nstant/in/cbor/model/Array;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/decoder/ArrayDecoder;->getLength(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 21
    invoke-direct {p0}, Lco/nstant/in/cbor/decoder/ArrayDecoder;->decodeInfinitiveLength()Lco/nstant/in/cbor/model/Array;

    move-result-object p1

    return-object p1

    .line 23
    :cond_0
    invoke-direct {p0, v0, v1}, Lco/nstant/in/cbor/decoder/ArrayDecoder;->decodeFixedLength(J)Lco/nstant/in/cbor/model/Array;

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
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/decoder/ArrayDecoder;->decode(I)Lco/nstant/in/cbor/model/Array;

    move-result-object p1

    return-object p1
.end method
