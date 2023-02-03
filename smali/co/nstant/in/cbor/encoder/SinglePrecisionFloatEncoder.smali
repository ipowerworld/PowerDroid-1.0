.class public Lco/nstant/in/cbor/encoder/SinglePrecisionFloatEncoder;
.super Lco/nstant/in/cbor/encoder/AbstractEncoder;
.source "SinglePrecisionFloatEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/nstant/in/cbor/encoder/AbstractEncoder<",
        "Lco/nstant/in/cbor/model/SinglePrecisionFloat;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public encode(Lco/nstant/in/cbor/model/SinglePrecisionFloat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    const/16 v0, 0xfa

    .line 17
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/SinglePrecisionFloatEncoder;->write(I)V

    .line 18
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/SinglePrecisionFloat;->getValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 19
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/SinglePrecisionFloatEncoder;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 20
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/SinglePrecisionFloatEncoder;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 21
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/SinglePrecisionFloatEncoder;->write(I)V

    shr-int/lit8 p1, p1, 0x0

    and-int/lit16 p1, p1, 0xff

    .line 22
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/SinglePrecisionFloatEncoder;->write(I)V

    return-void
.end method

.method public bridge synthetic encode(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 9
    check-cast p1, Lco/nstant/in/cbor/model/SinglePrecisionFloat;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/SinglePrecisionFloatEncoder;->encode(Lco/nstant/in/cbor/model/SinglePrecisionFloat;)V

    return-void
.end method
