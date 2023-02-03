.class public Lco/nstant/in/cbor/model/AbstractFloat;
.super Lco/nstant/in/cbor/model/Special;
.source "AbstractFloat.java"


# instance fields
.field private final value:F


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/model/SpecialType;F)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lco/nstant/in/cbor/model/Special;-><init>(Lco/nstant/in/cbor/model/SpecialType;)V

    .line 11
    iput p2, p0, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 20
    instance-of v0, p1, Lco/nstant/in/cbor/model/AbstractFloat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 21
    move-object v0, p1

    check-cast v0, Lco/nstant/in/cbor/model/AbstractFloat;

    .line 22
    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    iget v0, v0, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getValue()F
    .locals 1

    .line 15
    iget v0, p0, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 29
    invoke-super {p0}, Lco/nstant/in/cbor/model/Special;->hashCode()I

    move-result v0

    iget v1, p0, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
