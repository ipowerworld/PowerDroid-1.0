.class public Lco/nstant/in/cbor/model/DataItem;
.super Ljava/lang/Object;
.source "DataItem.java"


# instance fields
.field private final majorType:Lco/nstant/in/cbor/model/MajorType;

.field private tag:Lco/nstant/in/cbor/model/Tag;


# direct methods
.method protected constructor <init>(Lco/nstant/in/cbor/model/MajorType;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    const-string v0, "majorType is null"

    .line 12
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected assertTrue(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 46
    instance-of v0, p1, Lco/nstant/in/cbor/model/DataItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 47
    check-cast p1, Lco/nstant/in/cbor/model/DataItem;

    .line 48
    iget-object v0, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 49
    iget-object v3, p1, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    invoke-virtual {v0, v3}, Lco/nstant/in/cbor/model/Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    iget-object p1, p1, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    if-ne v0, p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 51
    :cond_1
    iget-object v0, p1, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    if-nez v0, :cond_2

    iget-object v0, p0, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    iget-object p1, p1, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    if-ne v0, p1, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public getMajorType()Lco/nstant/in/cbor/model/MajorType;
    .locals 1

    .line 16
    iget-object v0, p0, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    return-object v0
.end method

.method public getTag()Lco/nstant/in/cbor/model/Tag;
    .locals 1

    .line 37
    iget-object v0, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    return-object v0
.end method

.method public hasTag()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public removeTag()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    return-void
.end method

.method public setTag(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 24
    new-instance v0, Lco/nstant/in/cbor/model/Tag;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lco/nstant/in/cbor/model/Tag;-><init>(J)V

    iput-object v0, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "tag number must be 0 or greater"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTag(Lco/nstant/in/cbor/model/Tag;)V
    .locals 1

    const-string v0, "tag is null"

    .line 28
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    return-void
.end method
