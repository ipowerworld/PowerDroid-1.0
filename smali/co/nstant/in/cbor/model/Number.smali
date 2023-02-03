.class public abstract Lco/nstant/in/cbor/model/Number;
.super Lco/nstant/in/cbor/model/DataItem;
.source "Number.java"


# instance fields
.field private final value:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(Lco/nstant/in/cbor/model/MajorType;Ljava/math/BigInteger;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lco/nstant/in/cbor/model/DataItem;-><init>(Lco/nstant/in/cbor/model/MajorType;)V

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    iput-object p1, p0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 21
    instance-of v0, p1, Lco/nstant/in/cbor/model/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 22
    move-object v0, p1

    check-cast v0, Lco/nstant/in/cbor/model/Number;

    .line 23
    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/DataItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    iget-object v0, v0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 1

    .line 16
    iget-object v0, p0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 30
    invoke-super {p0}, Lco/nstant/in/cbor/model/DataItem;->hashCode()I

    move-result v0

    iget-object v1, p0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
