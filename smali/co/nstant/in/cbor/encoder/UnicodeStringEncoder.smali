.class public Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;
.super Lco/nstant/in/cbor/encoder/AbstractEncoder;
.source "UnicodeStringEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/nstant/in/cbor/encoder/AbstractEncoder<",
        "Lco/nstant/in/cbor/model/UnicodeString;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public encode(Lco/nstant/in/cbor/model/UnicodeString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/UnicodeString;->isChunked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    sget-object p1, Lco/nstant/in/cbor/model/MajorType;->UNICODE_STRING:Lco/nstant/in/cbor/model/MajorType;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;->encodeTypeChunked(Lco/nstant/in/cbor/model/MajorType;)V

    if-eqz v0, :cond_2

    .line 24
    new-instance p1, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-direct {p1, v0}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;->encode(Lco/nstant/in/cbor/model/UnicodeString;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 27
    iget-object p1, p0, Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    sget-object v0, Lco/nstant/in/cbor/model/SimpleValue;->NULL:Lco/nstant/in/cbor/model/SimpleValue;

    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    goto :goto_0

    .line 30
    :cond_1
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 31
    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->UNICODE_STRING:Lco/nstant/in/cbor/model/MajorType;

    array-length v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    .line 32
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;->write([B)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic encode(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 12
    check-cast p1, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;->encode(Lco/nstant/in/cbor/model/UnicodeString;)V

    return-void
.end method
