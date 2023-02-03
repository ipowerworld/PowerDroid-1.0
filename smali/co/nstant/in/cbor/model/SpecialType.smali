.class public final enum Lco/nstant/in/cbor/model/SpecialType;
.super Ljava/lang/Enum;
.source "SpecialType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lco/nstant/in/cbor/model/SpecialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lco/nstant/in/cbor/model/SpecialType;

.field public static final enum BREAK:Lco/nstant/in/cbor/model/SpecialType;

.field public static final enum IEEE_754_DOUBLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

.field public static final enum IEEE_754_HALF_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

.field public static final enum IEEE_754_SINGLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

.field public static final enum SIMPLE_VALUE:Lco/nstant/in/cbor/model/SpecialType;

.field public static final enum SIMPLE_VALUE_NEXT_BYTE:Lco/nstant/in/cbor/model/SpecialType;

.field public static final enum UNALLOCATED:Lco/nstant/in/cbor/model/SpecialType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 5
    new-instance v0, Lco/nstant/in/cbor/model/SpecialType;

    const-string v1, "SIMPLE_VALUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lco/nstant/in/cbor/model/SpecialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE:Lco/nstant/in/cbor/model/SpecialType;

    .line 6
    new-instance v1, Lco/nstant/in/cbor/model/SpecialType;

    const-string v3, "SIMPLE_VALUE_NEXT_BYTE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lco/nstant/in/cbor/model/SpecialType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE_NEXT_BYTE:Lco/nstant/in/cbor/model/SpecialType;

    .line 7
    new-instance v3, Lco/nstant/in/cbor/model/SpecialType;

    const-string v5, "IEEE_754_HALF_PRECISION_FLOAT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lco/nstant/in/cbor/model/SpecialType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_HALF_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    .line 8
    new-instance v5, Lco/nstant/in/cbor/model/SpecialType;

    const-string v7, "IEEE_754_SINGLE_PRECISION_FLOAT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lco/nstant/in/cbor/model/SpecialType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_SINGLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    .line 9
    new-instance v7, Lco/nstant/in/cbor/model/SpecialType;

    const-string v9, "IEEE_754_DOUBLE_PRECISION_FLOAT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lco/nstant/in/cbor/model/SpecialType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_DOUBLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    .line 10
    new-instance v9, Lco/nstant/in/cbor/model/SpecialType;

    const-string v11, "UNALLOCATED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lco/nstant/in/cbor/model/SpecialType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lco/nstant/in/cbor/model/SpecialType;->UNALLOCATED:Lco/nstant/in/cbor/model/SpecialType;

    .line 11
    new-instance v11, Lco/nstant/in/cbor/model/SpecialType;

    const-string v13, "BREAK"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lco/nstant/in/cbor/model/SpecialType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lco/nstant/in/cbor/model/SpecialType;->BREAK:Lco/nstant/in/cbor/model/SpecialType;

    const/4 v13, 0x7

    new-array v13, v13, [Lco/nstant/in/cbor/model/SpecialType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 3
    sput-object v13, Lco/nstant/in/cbor/model/SpecialType;->$VALUES:[Lco/nstant/in/cbor/model/SpecialType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static ofByte(I)Lco/nstant/in/cbor/model/SpecialType;
    .locals 0

    and-int/lit8 p0, p0, 0x1f

    packed-switch p0, :pswitch_data_0

    .line 30
    sget-object p0, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE:Lco/nstant/in/cbor/model/SpecialType;

    return-object p0

    .line 28
    :pswitch_0
    sget-object p0, Lco/nstant/in/cbor/model/SpecialType;->BREAK:Lco/nstant/in/cbor/model/SpecialType;

    return-object p0

    .line 26
    :pswitch_1
    sget-object p0, Lco/nstant/in/cbor/model/SpecialType;->UNALLOCATED:Lco/nstant/in/cbor/model/SpecialType;

    return-object p0

    .line 22
    :pswitch_2
    sget-object p0, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_DOUBLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    return-object p0

    .line 20
    :pswitch_3
    sget-object p0, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_SINGLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_HALF_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    return-object p0

    .line 16
    :pswitch_5
    sget-object p0, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE_NEXT_BYTE:Lco/nstant/in/cbor/model/SpecialType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lco/nstant/in/cbor/model/SpecialType;
    .locals 1

    .line 3
    const-class v0, Lco/nstant/in/cbor/model/SpecialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/SpecialType;

    return-object p0
.end method

.method public static values()[Lco/nstant/in/cbor/model/SpecialType;
    .locals 1

    .line 3
    sget-object v0, Lco/nstant/in/cbor/model/SpecialType;->$VALUES:[Lco/nstant/in/cbor/model/SpecialType;

    invoke-virtual {v0}, [Lco/nstant/in/cbor/model/SpecialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/nstant/in/cbor/model/SpecialType;

    return-object v0
.end method
