.class Lco/nstant/in/cbor/model/ChunkableDataItem;
.super Lco/nstant/in/cbor/model/DataItem;
.source "ChunkableDataItem.java"


# instance fields
.field private chunked:Z


# direct methods
.method protected constructor <init>(Lco/nstant/in/cbor/model/MajorType;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lco/nstant/in/cbor/model/DataItem;-><init>(Lco/nstant/in/cbor/model/MajorType;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 24
    instance-of v0, p1, Lco/nstant/in/cbor/model/ChunkableDataItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 25
    move-object v0, p1

    check-cast v0, Lco/nstant/in/cbor/model/ChunkableDataItem;

    .line 26
    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/DataItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    iget-boolean v0, v0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 33
    invoke-super {p0}, Lco/nstant/in/cbor/model/DataItem;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isChunked()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    return v0
.end method

.method public setChunked(Z)Lco/nstant/in/cbor/model/ChunkableDataItem;
    .locals 0

    .line 18
    iput-boolean p1, p0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    return-object p0
.end method
