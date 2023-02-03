.class public Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;
.super Lco/nstant/in/cbor/decoder/AbstractDecoder;
.source "UnsignedIntegerDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/nstant/in/cbor/decoder/AbstractDecoder<",
        "Lco/nstant/in/cbor/model/UnsignedInteger;",
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
.method public decode(I)Lco/nstant/in/cbor/model/UnsignedInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 17
    new-instance v0, Lco/nstant/in/cbor/model/UnsignedInteger;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;->getLengthAsBigInteger(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1}, Lco/nstant/in/cbor/model/UnsignedInteger;-><init>(Ljava/math/BigInteger;)V

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
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;->decode(I)Lco/nstant/in/cbor/model/UnsignedInteger;

    move-result-object p1

    return-object p1
.end method
