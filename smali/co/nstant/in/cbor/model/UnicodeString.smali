.class public Lco/nstant/in/cbor/model/UnicodeString;
.super Lco/nstant/in/cbor/model/ChunkableDataItem;
.source "UnicodeString.java"


# instance fields
.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 8
    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->UNICODE_STRING:Lco/nstant/in/cbor/model/MajorType;

    invoke-direct {p0, v0}, Lco/nstant/in/cbor/model/ChunkableDataItem;-><init>(Lco/nstant/in/cbor/model/MajorType;)V

    .line 9
    iput-object p1, p0, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 27
    instance-of v0, p1, Lco/nstant/in/cbor/model/UnicodeString;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/ChunkableDataItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    check-cast p1, Lco/nstant/in/cbor/model/UnicodeString;

    .line 29
    iget-object v0, p0, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 30
    iget-object p1, p1, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 32
    :cond_1
    iget-object p1, p1, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 42
    iget-object v0, p0, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 43
    invoke-super {p0}, Lco/nstant/in/cbor/model/ChunkableDataItem;->hashCode()I

    move-result v0

    .line 44
    iget-object v1, p0, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic isChunked()Z
    .locals 1

    .line 3
    invoke-super {p0}, Lco/nstant/in/cbor/model/ChunkableDataItem;->isChunked()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setChunked(Z)Lco/nstant/in/cbor/model/ChunkableDataItem;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/ChunkableDataItem;->setChunked(Z)Lco/nstant/in/cbor/model/ChunkableDataItem;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :cond_0
    return-object v0
.end method
