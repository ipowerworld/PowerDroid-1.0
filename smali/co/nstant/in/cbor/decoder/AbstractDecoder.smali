.class public abstract Lco/nstant/in/cbor/decoder/AbstractDecoder;
.super Ljava/lang/Object;
.source "AbstractDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final INFINITY:I = -0x1


# instance fields
.field protected final decoder:Lco/nstant/in/cbor/CborDecoder;

.field protected final inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    .line 20
    iput-object p2, p0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->inputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public abstract decode(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation
.end method

.method protected getLength(I)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 38
    sget-object v0, Lco/nstant/in/cbor/decoder/AbstractDecoder$1;->$SwitchMap$co$nstant$in$cbor$model$AdditionalInformation:[I

    invoke-static {p1}, Lco/nstant/in/cbor/model/AdditionalInformation;->ofByte(I)Lco/nstant/in/cbor/model/AdditionalInformation;

    move-result-object v1

    invoke-virtual {v1}, Lco/nstant/in/cbor/model/AdditionalInformation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/16 v4, 0x8

    const-wide/16 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 70
    new-instance p1, Lco/nstant/in/cbor/CborException;

    const-string v0, "Reserved additional information"

    invoke-direct {p1, v0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-wide/16 v0, -0x1

    return-wide v0

    .line 57
    :pswitch_1
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    int-to-long v7, p1

    const/16 p1, 0x38

    shl-long/2addr v7, p1

    or-long/2addr v5, v7

    .line 58
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    int-to-long v7, p1

    const/16 p1, 0x30

    shl-long/2addr v7, p1

    or-long/2addr v5, v7

    .line 59
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    int-to-long v7, p1

    const/16 p1, 0x28

    shl-long/2addr v7, p1

    or-long/2addr v5, v7

    .line 60
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    int-to-long v7, p1

    const/16 p1, 0x20

    shl-long/2addr v7, p1

    or-long/2addr v5, v7

    .line 61
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    int-to-long v7, p1

    shl-long/2addr v7, v2

    or-long/2addr v5, v7

    .line 62
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    int-to-long v7, p1

    shl-long v0, v7, v1

    or-long/2addr v0, v5

    .line 63
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    int-to-long v5, p1

    shl-long v4, v5, v4

    or-long/2addr v0, v4

    .line 64
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    int-to-long v4, p1

    shl-long v2, v4, v3

    or-long/2addr v0, v2

    return-wide v0

    .line 50
    :pswitch_2
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    int-to-long v7, p1

    shl-long/2addr v7, v2

    or-long/2addr v5, v7

    .line 51
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    int-to-long v7, p1

    shl-long v0, v7, v1

    or-long/2addr v0, v5

    .line 52
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    int-to-long v5, p1

    shl-long v4, v5, v4

    or-long/2addr v0, v4

    .line 53
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    int-to-long v4, p1

    shl-long v2, v4, v3

    or-long/2addr v0, v2

    return-wide v0

    .line 45
    :pswitch_3
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    shl-int/2addr p1, v4

    int-to-long v0, p1

    or-long/2addr v0, v5

    .line 46
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    shl-int/2addr p1, v3

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0

    .line 42
    :pswitch_4
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :pswitch_5
    and-int/lit8 p1, p1, 0x1f

    int-to-long v0, p1

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getLengthAsBigInteger(I)Ljava/math/BigInteger;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 76
    sget-object v0, Lco/nstant/in/cbor/decoder/AbstractDecoder$1;->$SwitchMap$co$nstant$in$cbor$model$AdditionalInformation:[I

    invoke-static {p1}, Lco/nstant/in/cbor/model/AdditionalInformation;->ofByte(I)Lco/nstant/in/cbor/model/AdditionalInformation;

    move-result-object v1

    invoke-virtual {v1}, Lco/nstant/in/cbor/model/AdditionalInformation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x18

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    packed-switch v0, :pswitch_data_0

    .line 116
    new-instance p1, Lco/nstant/in/cbor/CborException;

    const-string v0, "Reserved additional information"

    invoke-direct {p1, v0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-wide/16 v0, -0x1

    .line 113
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 94
    :pswitch_1
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 95
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v3, 0x38

    .line 96
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v3, 0x30

    .line 98
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 97
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 99
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v3, 0x28

    .line 100
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 101
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v3, 0x20

    .line 102
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 101
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 103
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 105
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 105
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 107
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 109
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 88
    :pswitch_2
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    int-to-long v7, p1

    shl-long/2addr v7, v2

    or-long v2, v7, v3

    .line 89
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    int-to-long v7, p1

    shl-long v0, v7, v1

    or-long/2addr v0, v2

    .line 90
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    int-to-long v2, p1

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 91
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    int-to-long v2, p1

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    .line 92
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 83
    :pswitch_3
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    shl-int/2addr p1, v6

    int-to-long v0, p1

    or-long/2addr v0, v3

    .line 84
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    shl-int/2addr p1, v5

    int-to-long v2, p1

    or-long/2addr v0, v2

    .line 85
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 80
    :pswitch_4
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_5
    and-int/lit8 p1, p1, 0x1f

    int-to-long v0, p1

    .line 78
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected nextSymbol()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 27
    :try_start_0
    iget-object v0, p0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 29
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Lco/nstant/in/cbor/CborException;

    invoke-direct {v1, v0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
