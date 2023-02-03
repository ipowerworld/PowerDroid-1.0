.class public final enum Lco/nstant/in/cbor/model/AdditionalInformation;
.super Ljava/lang/Enum;
.source "AdditionalInformation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lco/nstant/in/cbor/model/AdditionalInformation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum DIRECT:Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum EIGHT_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum FOUR_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum INDEFINITE:Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum ONE_BYTE:Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum RESERVED:Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum TWO_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 16
    new-instance v0, Lco/nstant/in/cbor/model/AdditionalInformation;

    const-string v1, "DIRECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->DIRECT:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 17
    new-instance v1, Lco/nstant/in/cbor/model/AdditionalInformation;

    const-string v3, "ONE_BYTE"

    const/4 v4, 0x1

    const/16 v5, 0x18

    invoke-direct {v1, v3, v4, v5}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lco/nstant/in/cbor/model/AdditionalInformation;->ONE_BYTE:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 18
    new-instance v3, Lco/nstant/in/cbor/model/AdditionalInformation;

    const-string v5, "TWO_BYTES"

    const/4 v6, 0x2

    const/16 v7, 0x19

    invoke-direct {v3, v5, v6, v7}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lco/nstant/in/cbor/model/AdditionalInformation;->TWO_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 19
    new-instance v5, Lco/nstant/in/cbor/model/AdditionalInformation;

    const-string v7, "FOUR_BYTES"

    const/4 v8, 0x3

    const/16 v9, 0x1a

    invoke-direct {v5, v7, v8, v9}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lco/nstant/in/cbor/model/AdditionalInformation;->FOUR_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 20
    new-instance v7, Lco/nstant/in/cbor/model/AdditionalInformation;

    const-string v9, "EIGHT_BYTES"

    const/4 v10, 0x4

    const/16 v11, 0x1b

    invoke-direct {v7, v9, v10, v11}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lco/nstant/in/cbor/model/AdditionalInformation;->EIGHT_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 21
    new-instance v9, Lco/nstant/in/cbor/model/AdditionalInformation;

    const-string v11, "RESERVED"

    const/4 v12, 0x5

    const/16 v13, 0x1c

    invoke-direct {v9, v11, v12, v13}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lco/nstant/in/cbor/model/AdditionalInformation;->RESERVED:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 22
    new-instance v11, Lco/nstant/in/cbor/model/AdditionalInformation;

    const-string v13, "INDEFINITE"

    const/4 v14, 0x6

    const/16 v15, 0x1f

    invoke-direct {v11, v13, v14, v15}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lco/nstant/in/cbor/model/AdditionalInformation;->INDEFINITE:Lco/nstant/in/cbor/model/AdditionalInformation;

    const/4 v13, 0x7

    new-array v13, v13, [Lco/nstant/in/cbor/model/AdditionalInformation;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 14
    sput-object v13, Lco/nstant/in/cbor/model/AdditionalInformation;->$VALUES:[Lco/nstant/in/cbor/model/AdditionalInformation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lco/nstant/in/cbor/model/AdditionalInformation;->value:I

    return-void
.end method

.method public static ofByte(I)Lco/nstant/in/cbor/model/AdditionalInformation;
    .locals 0

    and-int/lit8 p0, p0, 0x1f

    packed-switch p0, :pswitch_data_0

    .line 51
    sget-object p0, Lco/nstant/in/cbor/model/AdditionalInformation;->DIRECT:Lco/nstant/in/cbor/model/AdditionalInformation;

    return-object p0

    .line 49
    :pswitch_0
    sget-object p0, Lco/nstant/in/cbor/model/AdditionalInformation;->INDEFINITE:Lco/nstant/in/cbor/model/AdditionalInformation;

    return-object p0

    .line 47
    :pswitch_1
    sget-object p0, Lco/nstant/in/cbor/model/AdditionalInformation;->RESERVED:Lco/nstant/in/cbor/model/AdditionalInformation;

    return-object p0

    .line 43
    :pswitch_2
    sget-object p0, Lco/nstant/in/cbor/model/AdditionalInformation;->EIGHT_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    return-object p0

    .line 41
    :pswitch_3
    sget-object p0, Lco/nstant/in/cbor/model/AdditionalInformation;->FOUR_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    return-object p0

    .line 39
    :pswitch_4
    sget-object p0, Lco/nstant/in/cbor/model/AdditionalInformation;->TWO_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    return-object p0

    .line 37
    :pswitch_5
    sget-object p0, Lco/nstant/in/cbor/model/AdditionalInformation;->ONE_BYTE:Lco/nstant/in/cbor/model/AdditionalInformation;

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

.method public static valueOf(Ljava/lang/String;)Lco/nstant/in/cbor/model/AdditionalInformation;
    .locals 1

    .line 14
    const-class v0, Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/AdditionalInformation;

    return-object p0
.end method

.method public static values()[Lco/nstant/in/cbor/model/AdditionalInformation;
    .locals 1

    .line 14
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->$VALUES:[Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v0}, [Lco/nstant/in/cbor/model/AdditionalInformation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/nstant/in/cbor/model/AdditionalInformation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 31
    iget v0, p0, Lco/nstant/in/cbor/model/AdditionalInformation;->value:I

    return v0
.end method
