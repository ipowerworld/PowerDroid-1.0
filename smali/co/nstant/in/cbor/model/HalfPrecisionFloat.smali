.class public Lco/nstant/in/cbor/model/HalfPrecisionFloat;
.super Lco/nstant/in/cbor/model/AbstractFloat;
.source "HalfPrecisionFloat.java"


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 6
    sget-object v0, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_HALF_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    invoke-direct {p0, v0, p1}, Lco/nstant/in/cbor/model/AbstractFloat;-><init>(Lco/nstant/in/cbor/model/SpecialType;F)V

    return-void
.end method
