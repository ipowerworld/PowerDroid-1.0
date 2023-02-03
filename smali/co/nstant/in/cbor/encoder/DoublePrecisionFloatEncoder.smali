.class public Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;
.super Lco/nstant/in/cbor/encoder/AbstractEncoder;
.source "DoublePrecisionFloatEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/nstant/in/cbor/encoder/AbstractEncoder<",
        "Lco/nstant/in/cbor/model/DoublePrecisionFloat;",
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
.method public encode(Lco/nstant/in/cbor/model/DoublePrecisionFloat;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    const/16 v0, 0xfb

    .line 17
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;->write(I)V

    .line 18
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/DoublePrecisionFloat;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const/16 p1, 0x38

    shr-long v2, v0, p1

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int p1, v2

    .line 19
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;->write(I)V

    const/16 p1, 0x30

    shr-long v2, v0, p1

    and-long/2addr v2, v4

    long-to-int p1, v2

    .line 20
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;->write(I)V

    const/16 p1, 0x28

    shr-long v2, v0, p1

    and-long/2addr v2, v4

    long-to-int p1, v2

    .line 21
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;->write(I)V

    const/16 p1, 0x20

    shr-long v2, v0, p1

    and-long/2addr v2, v4

    long-to-int p1, v2

    .line 22
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;->write(I)V

    const/16 p1, 0x18

    shr-long v2, v0, p1

    and-long/2addr v2, v4

    long-to-int p1, v2

    .line 23
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;->write(I)V

    const/16 p1, 0x10

    shr-long v2, v0, p1

    and-long/2addr v2, v4

    long-to-int p1, v2

    .line 24
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;->write(I)V

    const/16 p1, 0x8

    shr-long v2, v0, p1

    and-long/2addr v2, v4

    long-to-int p1, v2

    .line 25
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;->write(I)V

    const/4 p1, 0x0

    shr-long/2addr v0, p1

    and-long/2addr v0, v4

    long-to-int p1, v0

    .line 26
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;->write(I)V

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
    check-cast p1, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;->encode(Lco/nstant/in/cbor/model/DoublePrecisionFloat;)V

    return-void
.end method
