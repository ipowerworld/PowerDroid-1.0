.class public Lco/nstant/in/cbor/decoder/SinglePrecisionFloatDecoder;
.super Lco/nstant/in/cbor/decoder/AbstractDecoder;
.source "SinglePrecisionFloatDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/nstant/in/cbor/decoder/AbstractDecoder<",
        "Lco/nstant/in/cbor/model/SinglePrecisionFloat;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public decode(I)Lco/nstant/in/cbor/model/SinglePrecisionFloat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/SinglePrecisionFloatDecoder;->nextSymbol()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/lit8 p1, p1, 0x0

    shl-int/lit8 p1, p1, 0x8

    .line 20
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/SinglePrecisionFloatDecoder;->nextSymbol()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x8

    .line 22
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/SinglePrecisionFloatDecoder;->nextSymbol()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x8

    .line 24
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/SinglePrecisionFloatDecoder;->nextSymbol()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    .line 25
    new-instance v0, Lco/nstant/in/cbor/model/SinglePrecisionFloat;

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-direct {v0, p1}, Lco/nstant/in/cbor/model/SinglePrecisionFloat;-><init>(F)V

    return-object v0
.end method

.method public bridge synthetic decode(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/decoder/SinglePrecisionFloatDecoder;->decode(I)Lco/nstant/in/cbor/model/SinglePrecisionFloat;

    move-result-object p1

    return-object p1
.end method
