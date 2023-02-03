.class public Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;
.super Lco/nstant/in/cbor/decoder/AbstractDecoder;
.source "DoublePrecisionFloatDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/nstant/in/cbor/decoder/AbstractDecoder<",
        "Lco/nstant/in/cbor/model/DoublePrecisionFloat;",
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


# virtual methods
.method public decode(I)Lco/nstant/in/cbor/model/DoublePrecisionFloat;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;->nextSymbol()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    const/16 p1, 0x8

    shl-long/2addr v0, p1

    .line 22
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;->nextSymbol()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    shl-long/2addr v0, p1

    .line 24
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;->nextSymbol()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    shl-long/2addr v0, p1

    .line 26
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;->nextSymbol()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    shl-long/2addr v0, p1

    .line 28
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;->nextSymbol()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    shl-long/2addr v0, p1

    .line 30
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;->nextSymbol()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    shl-long/2addr v0, p1

    .line 32
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;->nextSymbol()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    shl-long/2addr v0, p1

    .line 34
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;->nextSymbol()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-long v2, p1

    or-long/2addr v0, v2

    .line 35
    new-instance p1, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lco/nstant/in/cbor/model/DoublePrecisionFloat;-><init>(D)V

    return-object p1
.end method

.method public bridge synthetic decode(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;->decode(I)Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    move-result-object p1

    return-object p1
.end method
