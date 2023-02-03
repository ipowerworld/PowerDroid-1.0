.class public Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;
.super Lco/nstant/in/cbor/decoder/AbstractDecoder;
.source "NegativeIntegerDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/nstant/in/cbor/decoder/AbstractDecoder<",
        "Lco/nstant/in/cbor/model/NegativeInteger;",
        ">;"
    }
.end annotation


# static fields
.field private static final MINUS_ONE:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 12
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;->MINUS_ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public decode(I)Lco/nstant/in/cbor/model/NegativeInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 20
    new-instance v0, Lco/nstant/in/cbor/model/NegativeInteger;

    sget-object v1, Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;->getLengthAsBigInteger(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1}, Lco/nstant/in/cbor/model/NegativeInteger;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public bridge synthetic decode(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;->decode(I)Lco/nstant/in/cbor/model/NegativeInteger;

    move-result-object p1

    return-object p1
.end method
