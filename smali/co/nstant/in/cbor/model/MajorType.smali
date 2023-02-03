.class public final enum Lco/nstant/in/cbor/model/MajorType;
.super Ljava/lang/Enum;
.source "MajorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lco/nstant/in/cbor/model/MajorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lco/nstant/in/cbor/model/MajorType;

.field public static final enum ARRAY:Lco/nstant/in/cbor/model/MajorType;

.field public static final enum BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

.field public static final enum INVALID:Lco/nstant/in/cbor/model/MajorType;

.field public static final enum MAP:Lco/nstant/in/cbor/model/MajorType;

.field public static final enum NEGATIVE_INTEGER:Lco/nstant/in/cbor/model/MajorType;

.field public static final enum SPECIAL:Lco/nstant/in/cbor/model/MajorType;

.field public static final enum TAG:Lco/nstant/in/cbor/model/MajorType;

.field public static final enum UNICODE_STRING:Lco/nstant/in/cbor/model/MajorType;

.field public static final enum UNSIGNED_INTEGER:Lco/nstant/in/cbor/model/MajorType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 5
    new-instance v0, Lco/nstant/in/cbor/model/MajorType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lco/nstant/in/cbor/model/MajorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/nstant/in/cbor/model/MajorType;->INVALID:Lco/nstant/in/cbor/model/MajorType;

    .line 18
    new-instance v1, Lco/nstant/in/cbor/model/MajorType;

    const-string v3, "UNSIGNED_INTEGER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lco/nstant/in/cbor/model/MajorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lco/nstant/in/cbor/model/MajorType;->UNSIGNED_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    .line 27
    new-instance v3, Lco/nstant/in/cbor/model/MajorType;

    const-string v5, "NEGATIVE_INTEGER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lco/nstant/in/cbor/model/MajorType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lco/nstant/in/cbor/model/MajorType;->NEGATIVE_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    .line 39
    new-instance v5, Lco/nstant/in/cbor/model/MajorType;

    const-string v7, "BYTE_STRING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lco/nstant/in/cbor/model/MajorType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lco/nstant/in/cbor/model/MajorType;->BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

    .line 52
    new-instance v7, Lco/nstant/in/cbor/model/MajorType;

    const-string v9, "UNICODE_STRING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lco/nstant/in/cbor/model/MajorType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lco/nstant/in/cbor/model/MajorType;->UNICODE_STRING:Lco/nstant/in/cbor/model/MajorType;

    .line 64
    new-instance v9, Lco/nstant/in/cbor/model/MajorType;

    const-string v11, "ARRAY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lco/nstant/in/cbor/model/MajorType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    .line 79
    new-instance v11, Lco/nstant/in/cbor/model/MajorType;

    const-string v13, "MAP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lco/nstant/in/cbor/model/MajorType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lco/nstant/in/cbor/model/MajorType;->MAP:Lco/nstant/in/cbor/model/MajorType;

    .line 85
    new-instance v13, Lco/nstant/in/cbor/model/MajorType;

    const-string v15, "TAG"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lco/nstant/in/cbor/model/MajorType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lco/nstant/in/cbor/model/MajorType;->TAG:Lco/nstant/in/cbor/model/MajorType;

    .line 91
    new-instance v15, Lco/nstant/in/cbor/model/MajorType;

    const-string v14, "SPECIAL"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lco/nstant/in/cbor/model/MajorType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lco/nstant/in/cbor/model/MajorType;->SPECIAL:Lco/nstant/in/cbor/model/MajorType;

    const/16 v14, 0x9

    new-array v14, v14, [Lco/nstant/in/cbor/model/MajorType;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    const/4 v0, 0x4

    aput-object v7, v14, v0

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    aput-object v13, v14, v12

    aput-object v15, v14, v10

    .line 3
    sput-object v14, Lco/nstant/in/cbor/model/MajorType;->$VALUES:[Lco/nstant/in/cbor/model/MajorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput p3, p0, Lco/nstant/in/cbor/model/MajorType;->value:I

    return-void
.end method

.method public static ofByte(I)Lco/nstant/in/cbor/model/MajorType;
    .locals 0

    shr-int/lit8 p0, p0, 0x5

    packed-switch p0, :pswitch_data_0

    .line 122
    sget-object p0, Lco/nstant/in/cbor/model/MajorType;->INVALID:Lco/nstant/in/cbor/model/MajorType;

    return-object p0

    .line 120
    :pswitch_0
    sget-object p0, Lco/nstant/in/cbor/model/MajorType;->SPECIAL:Lco/nstant/in/cbor/model/MajorType;

    return-object p0

    .line 118
    :pswitch_1
    sget-object p0, Lco/nstant/in/cbor/model/MajorType;->TAG:Lco/nstant/in/cbor/model/MajorType;

    return-object p0

    .line 116
    :pswitch_2
    sget-object p0, Lco/nstant/in/cbor/model/MajorType;->MAP:Lco/nstant/in/cbor/model/MajorType;

    return-object p0

    .line 114
    :pswitch_3
    sget-object p0, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    return-object p0

    .line 112
    :pswitch_4
    sget-object p0, Lco/nstant/in/cbor/model/MajorType;->UNICODE_STRING:Lco/nstant/in/cbor/model/MajorType;

    return-object p0

    .line 110
    :pswitch_5
    sget-object p0, Lco/nstant/in/cbor/model/MajorType;->BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

    return-object p0

    .line 108
    :pswitch_6
    sget-object p0, Lco/nstant/in/cbor/model/MajorType;->NEGATIVE_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    return-object p0

    .line 106
    :pswitch_7
    sget-object p0, Lco/nstant/in/cbor/model/MajorType;->UNSIGNED_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lco/nstant/in/cbor/model/MajorType;
    .locals 1

    .line 3
    const-class v0, Lco/nstant/in/cbor/model/MajorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/MajorType;

    return-object p0
.end method

.method public static values()[Lco/nstant/in/cbor/model/MajorType;
    .locals 1

    .line 3
    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->$VALUES:[Lco/nstant/in/cbor/model/MajorType;

    invoke-virtual {v0}, [Lco/nstant/in/cbor/model/MajorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/nstant/in/cbor/model/MajorType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 100
    iget v0, p0, Lco/nstant/in/cbor/model/MajorType;->value:I

    return v0
.end method
