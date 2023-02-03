.class public Lco/nstant/in/cbor/model/Array;
.super Lco/nstant/in/cbor/model/ChunkableDataItem;
.source "Array.java"


# instance fields
.field private final objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lco/nstant/in/cbor/model/DataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    invoke-direct {p0, v0}, Lco/nstant/in/cbor/model/ChunkableDataItem;-><init>(Lco/nstant/in/cbor/model/MajorType;)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;
    .locals 1

    .line 17
    iget-object v0, p0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 27
    instance-of v0, p1, Lco/nstant/in/cbor/model/Array;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 28
    move-object v0, p1

    check-cast v0, Lco/nstant/in/cbor/model/Array;

    .line 29
    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/ChunkableDataItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    iget-object v0, v0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getDataItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lco/nstant/in/cbor/model/DataItem;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 36
    invoke-super {p0}, Lco/nstant/in/cbor/model/ChunkableDataItem;->hashCode()I

    move-result v0

    iget-object v1, p0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic isChunked()Z
    .locals 1

    .line 7
    invoke-super {p0}, Lco/nstant/in/cbor/model/ChunkableDataItem;->isChunked()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setChunked(Z)Lco/nstant/in/cbor/model/ChunkableDataItem;
    .locals 0

    .line 7
    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/ChunkableDataItem;->setChunked(Z)Lco/nstant/in/cbor/model/ChunkableDataItem;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lco/nstant/in/cbor/model/Array;->isChunked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_ "

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_0
    iget-object v1, p0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
