.class public Lco/nstant/in/cbor/encoder/ArrayEncoder;
.super Lco/nstant/in/cbor/encoder/AbstractEncoder;
.source "ArrayEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/nstant/in/cbor/encoder/AbstractEncoder<",
        "Lco/nstant/in/cbor/model/Array;",
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
.method public encode(Lco/nstant/in/cbor/model/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Array;->isChunked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    sget-object p1, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/ArrayEncoder;->encodeTypeChunked(Lco/nstant/in/cbor/model/MajorType;)V

    goto :goto_0

    .line 24
    :cond_0
    sget-object p1, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Lco/nstant/in/cbor/encoder/ArrayEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    .line 27
    iget-object v1, p0, Lco/nstant/in/cbor/encoder/ArrayEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    invoke-virtual {v1, v0}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    goto :goto_1

    :cond_1
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
    check-cast p1, Lco/nstant/in/cbor/model/Array;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/ArrayEncoder;->encode(Lco/nstant/in/cbor/model/Array;)V

    return-void
.end method
