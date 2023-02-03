.class public Lco/nstant/in/cbor/CborDecoder;
.super Ljava/lang/Object;
.source "CborDecoder.java"


# instance fields
.field private final arrayDecoder:Lco/nstant/in/cbor/decoder/ArrayDecoder;

.field private autoDecodeInfinitiveArrays:Z

.field private autoDecodeInfinitiveByteStrings:Z

.field private autoDecodeInfinitiveMaps:Z

.field private autoDecodeInfinitiveUnicodeStrings:Z

.field private autoDecodeLanguageTaggedStrings:Z

.field private autoDecodeRationalNumbers:Z

.field private final byteStringDecoder:Lco/nstant/in/cbor/decoder/ByteStringDecoder;

.field private final inputStream:Ljava/io/InputStream;

.field private final mapDecoder:Lco/nstant/in/cbor/decoder/MapDecoder;

.field private final negativeIntegerDecoder:Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;

.field private final specialDecoder:Lco/nstant/in/cbor/decoder/SpecialDecoder;

.field private final tagDecoder:Lco/nstant/in/cbor/decoder/TagDecoder;

.field private final unicodeStringDecoder:Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;

.field private final unsignedIntegerDecoder:Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveArrays:Z

    .line 43
    iput-boolean v0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveMaps:Z

    .line 44
    iput-boolean v0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveByteStrings:Z

    .line 45
    iput-boolean v0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveUnicodeStrings:Z

    .line 46
    iput-boolean v0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeRationalNumbers:Z

    .line 47
    iput-boolean v0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeLanguageTaggedStrings:Z

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Lco/nstant/in/cbor/CborDecoder;->inputStream:Ljava/io/InputStream;

    .line 56
    new-instance v0, Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->unsignedIntegerDecoder:Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;

    .line 57
    new-instance v0, Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->negativeIntegerDecoder:Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;

    .line 58
    new-instance v0, Lco/nstant/in/cbor/decoder/ByteStringDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/ByteStringDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->byteStringDecoder:Lco/nstant/in/cbor/decoder/ByteStringDecoder;

    .line 59
    new-instance v0, Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->unicodeStringDecoder:Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;

    .line 60
    new-instance v0, Lco/nstant/in/cbor/decoder/ArrayDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/ArrayDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->arrayDecoder:Lco/nstant/in/cbor/decoder/ArrayDecoder;

    .line 61
    new-instance v0, Lco/nstant/in/cbor/decoder/MapDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/MapDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->mapDecoder:Lco/nstant/in/cbor/decoder/MapDecoder;

    .line 62
    new-instance v0, Lco/nstant/in/cbor/decoder/TagDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/TagDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->tagDecoder:Lco/nstant/in/cbor/decoder/TagDecoder;

    .line 63
    new-instance v0, Lco/nstant/in/cbor/decoder/SpecialDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/SpecialDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->specialDecoder:Lco/nstant/in/cbor/decoder/SpecialDecoder;

    return-void
.end method

.method public static decode([B)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lco/nstant/in/cbor/model/DataItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 76
    new-instance v0, Lco/nstant/in/cbor/CborDecoder;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborDecoder;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decode()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private decodeLanguageTaggedString(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 167
    instance-of v0, p1, Lco/nstant/in/cbor/model/Array;

    if-eqz v0, :cond_3

    .line 171
    check-cast p1, Lco/nstant/in/cbor/model/Array;

    .line 173
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 177
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    .line 179
    instance-of v1, v0, Lco/nstant/in/cbor/model/UnicodeString;

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lco/nstant/in/cbor/model/DataItem;

    .line 185
    instance-of v1, p1, Lco/nstant/in/cbor/model/UnicodeString;

    if-eqz v1, :cond_0

    .line 189
    check-cast v0, Lco/nstant/in/cbor/model/UnicodeString;

    .line 190
    check-cast p1, Lco/nstant/in/cbor/model/UnicodeString;

    .line 192
    new-instance v1, Lco/nstant/in/cbor/model/LanguageTaggedString;

    invoke-direct {v1, v0, p1}, Lco/nstant/in/cbor/model/LanguageTaggedString;-><init>(Lco/nstant/in/cbor/model/UnicodeString;Lco/nstant/in/cbor/model/UnicodeString;)V

    return-object v1

    .line 186
    :cond_0
    new-instance p1, Lco/nstant/in/cbor/CborException;

    const-string v0, "Error decoding LanguageTaggedString: second data item is not an UnicodeString"

    invoke-direct {p1, v0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_1
    new-instance p1, Lco/nstant/in/cbor/CborException;

    const-string v0, "Error decoding LanguageTaggedString: first data item is not an UnicodeString"

    invoke-direct {p1, v0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_2
    new-instance p1, Lco/nstant/in/cbor/CborException;

    const-string v0, "Error decoding LanguageTaggedString: array size is not 2"

    invoke-direct {p1, v0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_3
    new-instance p1, Lco/nstant/in/cbor/CborException;

    const-string v0, "Error decoding LanguageTaggedString: not an array"

    invoke-direct {p1, v0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private decodeRationalNumber(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 196
    instance-of v0, p1, Lco/nstant/in/cbor/model/Array;

    if-eqz v0, :cond_3

    .line 200
    check-cast p1, Lco/nstant/in/cbor/model/Array;

    .line 202
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 206
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    .line 208
    instance-of v1, v0, Lco/nstant/in/cbor/model/Number;

    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lco/nstant/in/cbor/model/DataItem;

    .line 214
    instance-of v1, p1, Lco/nstant/in/cbor/model/Number;

    if-eqz v1, :cond_0

    .line 218
    check-cast v0, Lco/nstant/in/cbor/model/Number;

    .line 219
    check-cast p1, Lco/nstant/in/cbor/model/Number;

    .line 221
    new-instance v1, Lco/nstant/in/cbor/model/RationalNumber;

    invoke-direct {v1, v0, p1}, Lco/nstant/in/cbor/model/RationalNumber;-><init>(Lco/nstant/in/cbor/model/Number;Lco/nstant/in/cbor/model/Number;)V

    return-object v1

    .line 215
    :cond_0
    new-instance p1, Lco/nstant/in/cbor/CborException;

    const-string v0, "Error decoding RationalNumber: second data item is not a number"

    invoke-direct {p1, v0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_1
    new-instance p1, Lco/nstant/in/cbor/CborException;

    const-string v0, "Error decoding RationalNumber: first data item is not a number"

    invoke-direct {p1, v0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_2
    new-instance p1, Lco/nstant/in/cbor/CborException;

    const-string v0, "Error decoding RationalNumber: array size is not 2"

    invoke-direct {p1, v0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    :cond_3
    new-instance p1, Lco/nstant/in/cbor/CborException;

    const-string v0, "Error decoding RationalNumber: not an array"

    invoke-direct {p1, v0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decode()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lco/nstant/in/cbor/model/DataItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 89
    :goto_0
    invoke-virtual {p0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public decode(Lco/nstant/in/cbor/DataItemListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 108
    invoke-interface {p1, v0}, Lco/nstant/in/cbor/DataItemListener;->onDataItem(Lco/nstant/in/cbor/model/DataItem;)V

    .line 109
    invoke-virtual {p0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public decodeNext()Lco/nstant/in/cbor/model/DataItem;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 123
    :try_start_0
    iget-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_0
    sget-object v1, Lco/nstant/in/cbor/CborDecoder$1;->$SwitchMap$co$nstant$in$cbor$model$MajorType:[I

    invoke-static {v0}, Lco/nstant/in/cbor/model/MajorType;->ofByte(I)Lco/nstant/in/cbor/model/MajorType;

    move-result-object v2

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/MajorType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 162
    new-instance v1, Lco/nstant/in/cbor/CborException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not implemented major type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :pswitch_0
    iget-object v1, p0, Lco/nstant/in/cbor/CborDecoder;->tagDecoder:Lco/nstant/in/cbor/decoder/TagDecoder;

    invoke-virtual {v1, v0}, Lco/nstant/in/cbor/decoder/TagDecoder;->decode(I)Lco/nstant/in/cbor/model/Tag;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 151
    iget-boolean v2, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeRationalNumbers:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/Tag;->getValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1e

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 152
    invoke-direct {p0, v1}, Lco/nstant/in/cbor/CborDecoder;->decodeRationalNumber(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    return-object v0

    .line 153
    :cond_1
    iget-boolean v2, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeLanguageTaggedStrings:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/Tag;->getValue()J

    move-result-wide v2

    const-wide/16 v4, 0x26

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 154
    invoke-direct {p0, v1}, Lco/nstant/in/cbor/CborDecoder;->decodeLanguageTaggedString(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    return-object v0

    .line 156
    :cond_2
    invoke-virtual {v1, v0}, Lco/nstant/in/cbor/model/DataItem;->setTag(Lco/nstant/in/cbor/model/Tag;)V

    return-object v1

    .line 149
    :cond_3
    new-instance v0, Lco/nstant/in/cbor/CborException;

    const-string v1, "Unexpected end of stream: tag without following data item."

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :pswitch_1
    iget-object v1, p0, Lco/nstant/in/cbor/CborDecoder;->specialDecoder:Lco/nstant/in/cbor/decoder/SpecialDecoder;

    invoke-virtual {v1, v0}, Lco/nstant/in/cbor/decoder/SpecialDecoder;->decode(I)Lco/nstant/in/cbor/model/Special;

    move-result-object v0

    return-object v0

    .line 142
    :pswitch_2
    iget-object v1, p0, Lco/nstant/in/cbor/CborDecoder;->unsignedIntegerDecoder:Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;

    invoke-virtual {v1, v0}, Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;->decode(I)Lco/nstant/in/cbor/model/UnsignedInteger;

    move-result-object v0

    return-object v0

    .line 140
    :pswitch_3
    iget-object v1, p0, Lco/nstant/in/cbor/CborDecoder;->unicodeStringDecoder:Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;

    invoke-virtual {v1, v0}, Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;->decode(I)Lco/nstant/in/cbor/model/UnicodeString;

    move-result-object v0

    return-object v0

    .line 138
    :pswitch_4
    iget-object v1, p0, Lco/nstant/in/cbor/CborDecoder;->negativeIntegerDecoder:Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;

    invoke-virtual {v1, v0}, Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;->decode(I)Lco/nstant/in/cbor/model/NegativeInteger;

    move-result-object v0

    return-object v0

    .line 136
    :pswitch_5
    iget-object v1, p0, Lco/nstant/in/cbor/CborDecoder;->mapDecoder:Lco/nstant/in/cbor/decoder/MapDecoder;

    invoke-virtual {v1, v0}, Lco/nstant/in/cbor/decoder/MapDecoder;->decode(I)Lco/nstant/in/cbor/model/Map;

    move-result-object v0

    return-object v0

    .line 134
    :pswitch_6
    iget-object v1, p0, Lco/nstant/in/cbor/CborDecoder;->byteStringDecoder:Lco/nstant/in/cbor/decoder/ByteStringDecoder;

    invoke-virtual {v1, v0}, Lco/nstant/in/cbor/decoder/ByteStringDecoder;->decode(I)Lco/nstant/in/cbor/model/ByteString;

    move-result-object v0

    return-object v0

    .line 132
    :pswitch_7
    iget-object v1, p0, Lco/nstant/in/cbor/CborDecoder;->arrayDecoder:Lco/nstant/in/cbor/decoder/ArrayDecoder;

    invoke-virtual {v1, v0}, Lco/nstant/in/cbor/decoder/ArrayDecoder;->decode(I)Lco/nstant/in/cbor/model/Array;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 125
    new-instance v1, Lco/nstant/in/cbor/CborException;

    invoke-direct {v1, v0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public isAutoDecodeInfinitiveArrays()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveArrays:Z

    return v0
.end method

.method public isAutoDecodeInfinitiveByteStrings()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveByteStrings:Z

    return v0
.end method

.method public isAutoDecodeInfinitiveMaps()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveMaps:Z

    return v0
.end method

.method public isAutoDecodeInfinitiveUnicodeStrings()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveUnicodeStrings:Z

    return v0
.end method

.method public isAutoDecodeLanguageTaggedStrings()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeLanguageTaggedStrings:Z

    return v0
.end method

.method public isAutoDecodeRationalNumbers()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeRationalNumbers:Z

    return v0
.end method

.method public setAutoDecodeInfinitiveArrays(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveArrays:Z

    return-void
.end method

.method public setAutoDecodeInfinitiveByteStrings(Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveByteStrings:Z

    return-void
.end method

.method public setAutoDecodeInfinitiveMaps(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveMaps:Z

    return-void
.end method

.method public setAutoDecodeInfinitiveUnicodeStrings(Z)V
    .locals 0

    .line 255
    iput-boolean p1, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveUnicodeStrings:Z

    return-void
.end method

.method public setAutoDecodeLanguageTaggedStrings(Z)V
    .locals 0

    .line 273
    iput-boolean p1, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeLanguageTaggedStrings:Z

    return-void
.end method

.method public setAutoDecodeRationalNumbers(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeRationalNumbers:Z

    return-void
.end method
