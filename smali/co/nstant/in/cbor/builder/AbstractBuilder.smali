.class public abstract Lco/nstant/in/cbor/builder/AbstractBuilder;
.super Ljava/lang/Object;
.source "AbstractBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final parent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lco/nstant/in/cbor/builder/AbstractBuilder;->parent:Ljava/lang/Object;

    return-void
.end method

.method private isHalfPrecisionEnough(F)Z
    .locals 4

    const/4 v0, 0x0

    .line 89
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 90
    invoke-virtual {p0, v1}, Lco/nstant/in/cbor/builder/AbstractBuilder;->getHalfPrecisionFloatEncoder(Ljava/io/OutputStream;)Lco/nstant/in/cbor/encoder/HalfPrecisionFloatEncoder;

    move-result-object v2

    .line 91
    new-instance v3, Lco/nstant/in/cbor/model/HalfPrecisionFloat;

    invoke-direct {v3, p1}, Lco/nstant/in/cbor/model/HalfPrecisionFloat;-><init>(F)V

    invoke-virtual {v2, v3}, Lco/nstant/in/cbor/encoder/HalfPrecisionFloatEncoder;->encode(Lco/nstant/in/cbor/model/HalfPrecisionFloat;)V

    .line 92
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 93
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 94
    invoke-virtual {p0, v2}, Lco/nstant/in/cbor/builder/AbstractBuilder;->getHalfPrecisionFloatDecoder(Ljava/io/InputStream;)Lco/nstant/in/cbor/decoder/HalfPrecisionFloatDecoder;

    move-result-object v1

    .line 95
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 98
    invoke-virtual {v1, v0}, Lco/nstant/in/cbor/decoder/HalfPrecisionFloatDecoder;->decode(I)Lco/nstant/in/cbor/model/HalfPrecisionFloat;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lco/nstant/in/cbor/model/HalfPrecisionFloat;->getValue()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 96
    :cond_1
    new-instance p1, Lco/nstant/in/cbor/CborException;

    const-string v1, "unexpected end of stream"

    invoke-direct {p1, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lco/nstant/in/cbor/CborException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method


# virtual methods
.method protected addChunk(Lco/nstant/in/cbor/model/DataItem;)V
    .locals 0

    .line 36
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method protected convert(D)Lco/nstant/in/cbor/model/DataItem;
    .locals 1

    .line 80
    new-instance v0, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    invoke-direct {v0, p1, p2}, Lco/nstant/in/cbor/model/DoublePrecisionFloat;-><init>(D)V

    return-object v0
.end method

.method protected convert(F)Lco/nstant/in/cbor/model/DataItem;
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Lco/nstant/in/cbor/builder/AbstractBuilder;->isHalfPrecisionEnough(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lco/nstant/in/cbor/model/HalfPrecisionFloat;

    invoke-direct {v0, p1}, Lco/nstant/in/cbor/model/HalfPrecisionFloat;-><init>(F)V

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Lco/nstant/in/cbor/model/SinglePrecisionFloat;

    invoke-direct {v0, p1}, Lco/nstant/in/cbor/model/SinglePrecisionFloat;-><init>(F)V

    return-object v0
.end method

.method protected convert(J)Lco/nstant/in/cbor/model/DataItem;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 41
    new-instance v0, Lco/nstant/in/cbor/model/UnsignedInteger;

    invoke-direct {v0, p1, p2}, Lco/nstant/in/cbor/model/UnsignedInteger;-><init>(J)V

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Lco/nstant/in/cbor/model/NegativeInteger;

    invoke-direct {v0, p1, p2}, Lco/nstant/in/cbor/model/NegativeInteger;-><init>(J)V

    return-object v0
.end method

.method protected convert(Ljava/lang/String;)Lco/nstant/in/cbor/model/DataItem;
    .locals 1

    .line 68
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-direct {v0, p1}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected convert(Ljava/math/BigInteger;)Lco/nstant/in/cbor/model/DataItem;
    .locals 2

    .line 48
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 49
    new-instance v0, Lco/nstant/in/cbor/model/NegativeInteger;

    invoke-direct {v0, p1}, Lco/nstant/in/cbor/model/NegativeInteger;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lco/nstant/in/cbor/model/UnsignedInteger;

    invoke-direct {v0, p1}, Lco/nstant/in/cbor/model/UnsignedInteger;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method protected convert(Z)Lco/nstant/in/cbor/model/DataItem;
    .locals 0

    if-eqz p1, :cond_0

    .line 57
    sget-object p1, Lco/nstant/in/cbor/model/SimpleValue;->TRUE:Lco/nstant/in/cbor/model/SimpleValue;

    return-object p1

    .line 59
    :cond_0
    sget-object p1, Lco/nstant/in/cbor/model/SimpleValue;->FALSE:Lco/nstant/in/cbor/model/SimpleValue;

    return-object p1
.end method

.method protected convert([B)Lco/nstant/in/cbor/model/DataItem;
    .locals 1

    .line 64
    new-instance v0, Lco/nstant/in/cbor/model/ByteString;

    invoke-direct {v0, p1}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    return-object v0
.end method

.method protected getHalfPrecisionFloatDecoder(Ljava/io/InputStream;)Lco/nstant/in/cbor/decoder/HalfPrecisionFloatDecoder;
    .locals 2

    .line 110
    new-instance v0, Lco/nstant/in/cbor/decoder/HalfPrecisionFloatDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lco/nstant/in/cbor/decoder/HalfPrecisionFloatDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected getHalfPrecisionFloatEncoder(Ljava/io/OutputStream;)Lco/nstant/in/cbor/encoder/HalfPrecisionFloatEncoder;
    .locals 2

    .line 106
    new-instance v0, Lco/nstant/in/cbor/encoder/HalfPrecisionFloatEncoder;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lco/nstant/in/cbor/encoder/HalfPrecisionFloatEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method protected getParent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lco/nstant/in/cbor/builder/AbstractBuilder;->parent:Ljava/lang/Object;

    return-object v0
.end method

.method protected tag(J)Lco/nstant/in/cbor/model/Tag;
    .locals 1

    .line 84
    new-instance v0, Lco/nstant/in/cbor/model/Tag;

    invoke-direct {v0, p1, p2}, Lco/nstant/in/cbor/model/Tag;-><init>(J)V

    return-object v0
.end method
