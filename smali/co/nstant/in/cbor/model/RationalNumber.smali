.class public Lco/nstant/in/cbor/model/RationalNumber;
.super Lco/nstant/in/cbor/model/Array;
.source "RationalNumber.java"


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/model/Number;Lco/nstant/in/cbor/model/Number;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lco/nstant/in/cbor/model/Array;-><init>()V

    const/16 v0, 0x1e

    .line 14
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/model/RationalNumber;->setTag(I)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 21
    invoke-virtual {p2}, Lco/nstant/in/cbor/model/Number;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/model/RationalNumber;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    .line 25
    invoke-virtual {p0, p2}, Lco/nstant/in/cbor/model/RationalNumber;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    return-void

    .line 22
    :cond_0
    new-instance p1, Lco/nstant/in/cbor/CborException;

    const-string p2, "Denominator is zero"

    invoke-direct {p1, p2}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_1
    new-instance p1, Lco/nstant/in/cbor/CborException;

    const-string p2, "Denominator is null"

    invoke-direct {p1, p2}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Lco/nstant/in/cbor/CborException;

    const-string p2, "Numerator is null"

    invoke-direct {p1, p2}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDenominator()Lco/nstant/in/cbor/model/Number;
    .locals 2

    .line 33
    invoke-virtual {p0}, Lco/nstant/in/cbor/model/RationalNumber;->getDataItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/Number;

    return-object v0
.end method

.method public getNumerator()Lco/nstant/in/cbor/model/Number;
    .locals 2

    .line 29
    invoke-virtual {p0}, Lco/nstant/in/cbor/model/RationalNumber;->getDataItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/Number;

    return-object v0
.end method
