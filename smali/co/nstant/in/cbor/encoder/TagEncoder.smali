.class public Lco/nstant/in/cbor/encoder/TagEncoder;
.super Lco/nstant/in/cbor/encoder/AbstractEncoder;
.source "TagEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/nstant/in/cbor/encoder/AbstractEncoder<",
        "Lco/nstant/in/cbor/model/Tag;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public encode(Lco/nstant/in/cbor/model/Tag;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 18
    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->TAG:Lco/nstant/in/cbor/model/MajorType;

    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Tag;->getValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lco/nstant/in/cbor/encoder/TagEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    return-void
.end method

.method public bridge synthetic encode(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 10
    check-cast p1, Lco/nstant/in/cbor/model/Tag;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/TagEncoder;->encode(Lco/nstant/in/cbor/model/Tag;)V

    return-void
.end method
