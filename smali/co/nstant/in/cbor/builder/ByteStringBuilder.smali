.class public Lco/nstant/in/cbor/builder/ByteStringBuilder;
.super Lco/nstant/in/cbor/builder/AbstractBuilder;
.source "ByteStringBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lco/nstant/in/cbor/builder/AbstractBuilder<",
        "*>;>",
        "Lco/nstant/in/cbor/builder/AbstractBuilder<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/builder/AbstractBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lco/nstant/in/cbor/builder/AbstractBuilder;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add([B)Lco/nstant/in/cbor/builder/ByteStringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lco/nstant/in/cbor/builder/ByteStringBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lco/nstant/in/cbor/builder/ByteStringBuilder;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/builder/AbstractBuilder;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/builder/ByteStringBuilder;->convert([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lco/nstant/in/cbor/builder/AbstractBuilder;->addChunk(Lco/nstant/in/cbor/model/DataItem;)V

    return-object p0
.end method

.method public end()Lco/nstant/in/cbor/builder/AbstractBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lco/nstant/in/cbor/builder/ByteStringBuilder;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/builder/AbstractBuilder;

    sget-object v1, Lco/nstant/in/cbor/model/SimpleValue;->BREAK:Lco/nstant/in/cbor/model/Special;

    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/builder/AbstractBuilder;->addChunk(Lco/nstant/in/cbor/model/DataItem;)V

    .line 19
    invoke-virtual {p0}, Lco/nstant/in/cbor/builder/ByteStringBuilder;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/builder/AbstractBuilder;

    return-object v0
.end method
