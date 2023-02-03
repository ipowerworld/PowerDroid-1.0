.class public Lco/nstant/in/cbor/decoder/TagDecoder;
.super Lco/nstant/in/cbor/decoder/AbstractDecoder;
.source "TagDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/nstant/in/cbor/decoder/AbstractDecoder<",
        "Lco/nstant/in/cbor/model/Tag;",
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
.method public decode(I)Lco/nstant/in/cbor/model/Tag;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 17
    new-instance v0, Lco/nstant/in/cbor/model/Tag;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/decoder/TagDecoder;->getLength(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lco/nstant/in/cbor/model/Tag;-><init>(J)V

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
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/decoder/TagDecoder;->decode(I)Lco/nstant/in/cbor/model/Tag;

    move-result-object p1

    return-object p1
.end method
