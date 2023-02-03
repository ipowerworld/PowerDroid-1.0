.class Landroidx/security/identity/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field static final CBOR_SEMANTIC_TAG_ENCODED_CBOR:I = 0x18

.field private static final COSE_ALG_ECDSA_256:I = -0x7

.field private static final COSE_ALG_HMAC_256_256:I = 0x5

.field private static final COSE_LABEL_ALG:I = 0x1

.field private static final COSE_LABEL_X5CHAIN:I = 0x21

.field private static final TAG:Ljava/lang/String; = "Util"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accessControlProfileFromCbor(Lco/nstant/in/cbor/model/DataItem;)Landroidx/security/identity/AccessControlProfile;
    .locals 4

    .line 338
    instance-of v0, p0, Lco/nstant/in/cbor/model/Map;

    if-eqz v0, :cond_3

    .line 341
    check-cast p0, Lco/nstant/in/cbor/model/Map;

    .line 343
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v1, "id"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/Number;

    .line 344
    invoke-virtual {v0}, Lco/nstant/in/cbor/model/Number;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 345
    new-instance v1, Landroidx/security/identity/AccessControlProfile$Builder;

    new-instance v2, Landroidx/security/identity/AccessControlProfileId;

    invoke-direct {v2, v0}, Landroidx/security/identity/AccessControlProfileId;-><init>(I)V

    invoke-direct {v1, v2}, Landroidx/security/identity/AccessControlProfile$Builder;-><init>(Landroidx/security/identity/AccessControlProfileId;)V

    .line 348
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v2, "readerCertificate"

    invoke-direct {v0, v2}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    check-cast v0, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object v0

    :try_start_0
    const-string v2, "X.509"

    .line 353
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 354
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v0}, Landroidx/security/identity/AccessControlProfile$Builder;->setReaderCertificate(Ljava/security/cert/X509Certificate;)Landroidx/security/identity/AccessControlProfile$Builder;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error decoding readerCertificate"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 361
    invoke-virtual {v1, v0}, Landroidx/security/identity/AccessControlProfile$Builder;->setUserAuthenticationRequired(Z)Landroidx/security/identity/AccessControlProfile$Builder;

    .line 362
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v2, "capabilityType"

    invoke-direct {v0, v2}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 365
    invoke-virtual {v1, v0}, Landroidx/security/identity/AccessControlProfile$Builder;->setUserAuthenticationRequired(Z)Landroidx/security/identity/AccessControlProfile$Builder;

    .line 366
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v2, "timeout"

    invoke-direct {v0, v2}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p0

    if-nez p0, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_1

    .line 368
    :cond_1
    check-cast p0, Lco/nstant/in/cbor/model/Number;

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/Number;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    int-to-long v2, p0

    .line 367
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroidx/security/identity/AccessControlProfile$Builder;->setUserAuthenticationTimeout(J)Landroidx/security/identity/AccessControlProfile$Builder;

    .line 370
    :cond_2
    invoke-virtual {v1}, Landroidx/security/identity/AccessControlProfile$Builder;->build()Landroidx/security/identity/AccessControlProfile;

    move-result-object p0

    return-object p0

    .line 339
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Item is not a map"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static accessControlProfileToCbor(Landroidx/security/identity/AccessControlProfile;)Lco/nstant/in/cbor/model/DataItem;
    .locals 6

    .line 374
    new-instance v0, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v0}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 375
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborBuilder;->addMap()Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v1

    .line 377
    invoke-virtual {p0}, Landroidx/security/identity/AccessControlProfile;->getAccessControlProfileId()Landroidx/security/identity/AccessControlProfileId;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/security/identity/AccessControlProfileId;->getId()I

    move-result v2

    int-to-long v2, v2

    const-string v4, "id"

    invoke-virtual {v1, v4, v2, v3}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;J)Lco/nstant/in/cbor/builder/MapBuilder;

    .line 378
    invoke-virtual {p0}, Landroidx/security/identity/AccessControlProfile;->getReaderCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v3, "readerCertificate"

    .line 381
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;[B)Lco/nstant/in/cbor/builder/MapBuilder;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 383
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error encoding reader mCertificate"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 386
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/security/identity/AccessControlProfile;->isUserAuthenticationRequired()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x1

    const-string v4, "capabilityType"

    .line 387
    invoke-virtual {v1, v4, v2, v3}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;J)Lco/nstant/in/cbor/builder/MapBuilder;

    .line 388
    invoke-virtual {p0}, Landroidx/security/identity/AccessControlProfile;->getUserAuthenticationTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_1

    const-string p0, "timeout"

    .line 390
    invoke-virtual {v1, p0, v2, v3}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;J)Lco/nstant/in/cbor/builder/MapBuilder;

    .line 393
    :cond_1
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/DataItem;

    return-object p0
.end method

.method static buildSessionTranscript(Ljava/security/KeyPair;)[B
    .locals 8

    .line 1278
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 1280
    :try_start_0
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p0

    .line 1283
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Landroidx/security/identity/Util;->stripLeadingZeroes([B)[B

    move-result-object v2

    .line 1284
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Landroidx/security/identity/Util;->stripLeadingZeroes([B)[B

    move-result-object p0

    const/4 v3, 0x1

    new-array v4, v3, [B

    const/16 v5, 0x2a

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    .line 1285
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1286
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1287
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 p0, 0x2

    new-array v2, p0, [B

    const/16 v4, 0x2b

    aput-byte v4, v2, v6

    const/16 v4, 0x2c

    aput-byte v4, v2, v3

    .line 1288
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1293
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1295
    new-instance v2, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v2}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 1297
    invoke-virtual {v2}, Lco/nstant/in/cbor/CborBuilder;->addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v2

    .line 1298
    invoke-virtual {v2, v0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v0

    .line 1299
    invoke-virtual {v0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->end()Lco/nstant/in/cbor/builder/AbstractBuilder;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/CborBuilder;

    .line 1300
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    .line 1296
    invoke-static {v0}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object v0

    .line 1295
    invoke-static {v0}, Landroidx/security/identity/Util;->cborBuildTaggedByteString([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    const-string v2, "doesn\'t matter"

    .line 1302
    invoke-static {v2}, Landroidx/security/identity/Util;->cborEncodeString(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Landroidx/security/identity/Util;->cborBuildTaggedByteString([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v2

    .line 1304
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v5, 0x3

    :try_start_1
    new-array v7, v5, [B

    aput-byte v3, v7, v6

    aput-byte p0, v7, v3

    aput-byte v5, v7, p0

    .line 1307
    new-instance p0, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {p0}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 1308
    invoke-virtual {p0}, Lco/nstant/in/cbor/CborBuilder;->addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p0

    .line 1309
    invoke-virtual {p0, v7}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p0

    sget-object v3, Lco/nstant/in/cbor/model/SimpleValue;->NULL:Lco/nstant/in/cbor/model/SimpleValue;

    .line 1310
    invoke-virtual {p0, v3}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p0

    .line 1311
    invoke-virtual {p0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->end()Lco/nstant/in/cbor/builder/AbstractBuilder;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/CborBuilder;

    .line 1312
    invoke-virtual {p0}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/DataItem;

    .line 1313
    new-instance v3, Lco/nstant/in/cbor/CborEncoder;

    invoke-direct {v3, v4}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    new-instance v5, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v5}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 1314
    invoke-virtual {v5}, Lco/nstant/in/cbor/CborBuilder;->addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v5

    .line 1315
    invoke-virtual {v5, v0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v0

    .line 1316
    invoke-virtual {v0, v2}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v0

    .line 1317
    invoke-virtual {v0, p0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p0

    .line 1318
    invoke-virtual {p0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->end()Lco/nstant/in/cbor/builder/AbstractBuilder;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/CborBuilder;

    .line 1319
    invoke-virtual {p0}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object p0

    .line 1313
    invoke-virtual {v3, p0}, Lco/nstant/in/cbor/CborEncoder;->encode(Ljava/util/List;)V
    :try_end_1
    .catch Lco/nstant/in/cbor/CborException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1324
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 1321
    invoke-virtual {p0}, Lco/nstant/in/cbor/CborException;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception p0

    .line 1290
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public static calcEMacKeyForReader(Ljava/security/PublicKey;Ljava/security/PrivateKey;[B)Ljavax/crypto/SecretKey;
    .locals 3

    :try_start_0
    const-string v0, "ECDH"

    .line 1017
    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    .line 1018
    invoke-virtual {v0, p1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    const/4 p1, 0x1

    .line 1019
    invoke-virtual {v0, p0, p1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 1020
    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p0

    .line 1023
    invoke-static {p2}, Landroidx/security/identity/Util;->cborBuildTaggedByteString([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p2

    invoke-static {p2}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p2

    const-string v0, "SHA-256"

    .line 1025
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    const/4 v0, 0x7

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    aput-byte v1, v0, p1

    const/4 p1, 0x2

    const/16 v1, 0x61

    aput-byte v1, v0, p1

    const/4 p1, 0x3

    const/16 v1, 0x63

    aput-byte v1, v0, p1

    const/4 p1, 0x4

    const/16 v1, 0x4b

    aput-byte v1, v0, p1

    const/4 p1, 0x5

    const/16 v1, 0x65

    aput-byte v1, v0, p1

    const/4 p1, 0x6

    const/16 v1, 0x79

    aput-byte v1, v0, p1

    const-string p1, "HmacSha256"

    const/16 v1, 0x20

    .line 1027
    invoke-static {p1, p0, p2, v0, v1}, Landroidx/security/identity/Util;->computeHkdf(Ljava/lang/String;[B[B[BI)[B

    move-result-object p0

    .line 1029
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string p2, ""

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1033
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error performing key agreement"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static canonicalizeCbor([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;
        }
    .end annotation

    .line 1234
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1235
    new-instance p0, Lco/nstant/in/cbor/CborDecoder;

    invoke-direct {p0, v0}, Lco/nstant/in/cbor/CborDecoder;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lco/nstant/in/cbor/CborDecoder;->decode()Ljava/util/List;

    move-result-object p0

    .line 1236
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1237
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    .line 1238
    new-instance v2, Lco/nstant/in/cbor/CborEncoder;

    invoke-direct {v2, v0}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    .line 1239
    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    goto :goto_0

    .line 1241
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static cborAreAllDataItemsNonCompound(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lco/nstant/in/cbor/model/DataItem;",
            ">;)Z"
        }
    .end annotation

    .line 1068
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    .line 1069
    sget-object v2, Landroidx/security/identity/Util$1;->$SwitchMap$co$nstant$in$cbor$model$MajorType:[I

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/DataItem;->getMajorType()Lco/nstant/in/cbor/model/MajorType;

    move-result-object v0

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/MajorType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method public static cborBuildDateTime(Landroid/icu/util/Calendar;)Lco/nstant/in/cbor/model/DataItem;
    .locals 3

    .line 191
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssXXX"

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xe

    .line 192
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 196
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .line 197
    invoke-virtual {v0, p0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 198
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-direct {v0, p0}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 199
    invoke-virtual {v0, p0}, Lco/nstant/in/cbor/model/DataItem;->setTag(I)V

    return-object v0
.end method

.method public static cborBuildTaggedByteString([B)Lco/nstant/in/cbor/model/DataItem;
    .locals 1

    .line 918
    new-instance v0, Lco/nstant/in/cbor/model/ByteString;

    invoke-direct {v0, p0}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    const/16 p0, 0x18

    .line 919
    invoke-virtual {v0, p0}, Lco/nstant/in/cbor/model/DataItem;->setTag(I)V

    return-object v0
.end method

.method public static cborDecode([B)Lco/nstant/in/cbor/model/DataItem;
    .locals 3

    .line 204
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 207
    :try_start_0
    new-instance p0, Lco/nstant/in/cbor/CborDecoder;

    invoke-direct {p0, v0}, Lco/nstant/in/cbor/CborDecoder;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lco/nstant/in/cbor/CborDecoder;->decode()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lco/nstant/in/cbor/CborException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 215
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/DataItem;

    return-object p0

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected number of items, expected 1 got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error decoding CBOR"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static cborDecodeBoolean([B)Z
    .locals 1

    .line 219
    invoke-static {p0}, Landroidx/security/identity/Util;->cborDecode([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/SimpleValue;

    .line 220
    invoke-virtual {p0}, Lco/nstant/in/cbor/model/SimpleValue;->getSimpleValueType()Lco/nstant/in/cbor/model/SimpleValueType;

    move-result-object p0

    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->TRUE:Lco/nstant/in/cbor/model/SimpleValueType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static cborDecodeByteString([B)[B
    .locals 0

    .line 232
    invoke-static {p0}, Landroidx/security/identity/Util;->cborDecode([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method static cborDecodeDateTime([B)Landroid/icu/util/Calendar;
    .locals 5

    .line 236
    invoke-static {p0}, Landroidx/security/identity/Util;->cborDecode([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p0

    .line 237
    instance-of v0, p0, Lco/nstant/in/cbor/model/UnicodeString;

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {p0}, Lco/nstant/in/cbor/model/DataItem;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/DataItem;->getTag()Lco/nstant/in/cbor/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/Tag;->getValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 243
    check-cast p0, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/UnicodeString;->getString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTC"

    .line 246
    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v1

    .line 247
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    const-string v2, "Z"

    .line 248
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GMT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v1

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 254
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 256
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 259
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 263
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 265
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    :goto_0
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    .line 272
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->clear()V

    .line 273
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 274
    invoke-virtual {v0, p0}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v0

    :catch_1
    move-exception p0

    .line 267
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error parsing string"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 241
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Passed in data is not tagged with tag 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 238
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Passed in data is not a Unicode-string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static cborDecodeLong([B)J
    .locals 2

    .line 228
    invoke-static {p0}, Landroidx/security/identity/Util;->cborDecode([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/Number;

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/Number;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static cborDecodeString([B)Ljava/lang/String;
    .locals 0

    .line 224
    invoke-static {p0}, Landroidx/security/identity/Util;->cborDecode([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/UnicodeString;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B
    .locals 2

    .line 156
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 158
    :try_start_0
    new-instance v1, Lco/nstant/in/cbor/CborEncoder;

    invoke-direct {v1, v0}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V
    :try_end_0
    .catch Lco/nstant/in/cbor/CborException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected failure encoding data"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static cborEncodeBoolean(Z)[B
    .locals 1

    .line 168
    new-instance v0, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v0}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lco/nstant/in/cbor/CborBuilder;->add(Z)Lco/nstant/in/cbor/CborBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/DataItem;

    invoke-static {p0}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p0

    return-object p0
.end method

.method static cborEncodeBytestring([B)[B
    .locals 1

    .line 180
    new-instance v0, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v0}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lco/nstant/in/cbor/CborBuilder;->add([B)Lco/nstant/in/cbor/CborBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/DataItem;

    invoke-static {p0}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p0

    return-object p0
.end method

.method static cborEncodeDateTime(Landroid/icu/util/Calendar;)[B
    .locals 0

    .line 184
    invoke-static {p0}, Landroidx/security/identity/Util;->cborBuildDateTime(Landroid/icu/util/Calendar;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p0

    invoke-static {p0}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p0

    return-object p0
.end method

.method static cborEncodeNumber(J)[B
    .locals 1

    .line 176
    new-instance v0, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v0}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lco/nstant/in/cbor/CborBuilder;->add(J)Lco/nstant/in/cbor/CborBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/DataItem;

    invoke-static {p0}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p0

    return-object p0
.end method

.method static cborEncodeString(Ljava/lang/String;)[B
    .locals 1

    .line 172
    new-instance v0, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v0}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lco/nstant/in/cbor/CborBuilder;->add(Ljava/lang/String;)Lco/nstant/in/cbor/CborBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/DataItem;

    invoke-static {p0}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p0

    return-object p0
.end method

.method public static cborExtractTaggedAndEncodedCbor(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;
    .locals 4

    if-eqz p0, :cond_1

    .line 927
    instance-of v0, p0, Lco/nstant/in/cbor/model/ByteString;

    if-eqz v0, :cond_1

    .line 930
    invoke-virtual {p0}, Lco/nstant/in/cbor/model/DataItem;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/DataItem;->getTag()Lco/nstant/in/cbor/model/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/Tag;->getValue()J

    move-result-wide v0

    const-wide/16 v2, 0x18

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 933
    check-cast p0, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object p0

    .line 934
    invoke-static {p0}, Landroidx/security/identity/Util;->cborDecode([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p0

    return-object p0

    .line 931
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteString is not tagged with tag 24"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 928
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Item is not a ByteString"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cborPrettyPrint(Lco/nstant/in/cbor/model/DataItem;)Ljava/lang/String;
    .locals 2

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1040
    invoke-static {v0, v1, p0}, Landroidx/security/identity/Util;->cborPrettyPrintDataItem(Ljava/lang/StringBuilder;ILco/nstant/in/cbor/model/DataItem;)V

    .line 1041
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cborPrettyPrint([B)Ljava/lang/String;
    .locals 5

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1047
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1050
    :try_start_0
    new-instance p0, Lco/nstant/in/cbor/CborDecoder;

    invoke-direct {p0, v1}, Lco/nstant/in/cbor/CborDecoder;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lco/nstant/in/cbor/CborDecoder;->decode()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lco/nstant/in/cbor/CborException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/nstant/in/cbor/model/DataItem;

    if-lez v2, :cond_0

    const-string v4, ",\n"

    .line 1057
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    :cond_0
    invoke-static {v0, v1, v3}, Landroidx/security/identity/Util;->cborPrettyPrintDataItem(Ljava/lang/StringBuilder;ILco/nstant/in/cbor/model/DataItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1063
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 1052
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static cborPrettyPrintDataItem(Ljava/lang/StringBuilder;ILco/nstant/in/cbor/model/DataItem;)V
    .locals 11

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    const/16 v3, 0x20

    .line 1084
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1086
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1088
    invoke-virtual {p2}, Lco/nstant/in/cbor/model/DataItem;->hasTag()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    new-array v2, v3, [Ljava/lang/Object;

    .line 1089
    invoke-virtual {p2}, Lco/nstant/in/cbor/model/DataItem;->getTag()Lco/nstant/in/cbor/model/Tag;

    move-result-object v4

    invoke-virtual {v4}, Lco/nstant/in/cbor/model/Tag;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v4, "tag %d "

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    :cond_1
    sget-object v2, Landroidx/security/identity/Util$1;->$SwitchMap$co$nstant$in$cbor$model$MajorType:[I

    invoke-virtual {p2}, Lco/nstant/in/cbor/model/DataItem;->getMajorType()Lco/nstant/in/cbor/model/MajorType;

    move-result-object v4

    invoke-virtual {v4}, Lco/nstant/in/cbor/model/MajorType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const-string v4, ","

    const-string v5, "\n"

    const-string v6, ", "

    const-string v7, "  "

    const-string v8, "["

    const-string v9, "]"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    .line 1195
    :pswitch_0
    instance-of p1, p2, Lco/nstant/in/cbor/model/SimpleValue;

    if-eqz p1, :cond_2

    .line 1196
    sget-object p1, Landroidx/security/identity/Util$1;->$SwitchMap$co$nstant$in$cbor$model$SimpleValueType:[I

    check-cast p2, Lco/nstant/in/cbor/model/SimpleValue;

    invoke-virtual {p2}, Lco/nstant/in/cbor/model/SimpleValue;->getSimpleValueType()Lco/nstant/in/cbor/model/SimpleValueType;

    move-result-object p2

    invoke-virtual {p2}, Lco/nstant/in/cbor/model/SimpleValueType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_5

    :pswitch_1
    const-string p1, "unallocated"

    .line 1213
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :pswitch_2
    const-string p1, "reserved"

    .line 1210
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :pswitch_3
    const-string p1, "undefined"

    .line 1207
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :pswitch_4
    const-string p1, "null"

    .line 1204
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :pswitch_5
    const-string p1, "true"

    .line 1201
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :pswitch_6
    const-string p1, "false"

    .line 1198
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1216
    :cond_2
    instance-of p1, p2, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    const/16 v0, 0x154

    const-string v1, "0"

    if-eqz p1, :cond_3

    .line 1217
    new-instance p1, Ljava/text/DecimalFormat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 1218
    invoke-static {v2}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 1219
    invoke-virtual {p1, v0}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1220
    check-cast p2, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    invoke-virtual {p2}, Lco/nstant/in/cbor/model/DoublePrecisionFloat;->getValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1221
    :cond_3
    instance-of p1, p2, Lco/nstant/in/cbor/model/AbstractFloat;

    if-eqz p1, :cond_4

    .line 1222
    new-instance p1, Ljava/text/DecimalFormat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 1223
    invoke-static {v2}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 1224
    invoke-virtual {p1, v0}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1225
    check-cast p2, Lco/nstant/in/cbor/model/AbstractFloat;

    invoke-virtual {p2}, Lco/nstant/in/cbor/model/AbstractFloat;->getValue()F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_4
    const-string p1, "break"

    .line 1227
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1190
    :pswitch_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Semantic tag data item not expected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1126
    :pswitch_8
    check-cast p2, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-virtual {p2}, Lco/nstant/in/cbor/model/UnicodeString;->getString()Ljava/lang/String;

    move-result-object p1

    .line 1128
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1111
    :pswitch_9
    check-cast p2, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {p2}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object p1

    .line 1112
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    array-length p2, p1

    move v0, v1

    move v2, v0

    :goto_1
    if-ge v0, p2, :cond_6

    aget-byte v4, p1, v0

    if-lez v2, :cond_5

    .line 1116
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-array v5, v3, [Ljava/lang/Object;

    .line 1118
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v1

    const-string v4, "0x%02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1121
    :cond_6
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1105
    :pswitch_a
    check-cast p2, Lco/nstant/in/cbor/model/NegativeInteger;

    invoke-virtual {p2}, Lco/nstant/in/cbor/model/NegativeInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    .line 1106
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1099
    :pswitch_b
    check-cast p2, Lco/nstant/in/cbor/model/UnsignedInteger;

    invoke-virtual {p2}, Lco/nstant/in/cbor/model/UnsignedInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    .line 1100
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :pswitch_c
    const-string p1, "<invalid>"

    .line 1095
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1164
    :pswitch_d
    check-cast p2, Lco/nstant/in/cbor/model/Map;

    invoke-virtual {p2}, Lco/nstant/in/cbor/model/Map;->getKeys()Ljava/util/Collection;

    move-result-object v2

    .line 1165
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_7

    const-string p1, "{}"

    .line 1166
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1168
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lco/nstant/in/cbor/model/DataItem;

    .line 1171
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    invoke-virtual {p2, v8}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v9

    add-int/lit8 v10, p1, 0x2

    .line 1173
    invoke-static {p0, v10, v8}, Landroidx/security/identity/Util;->cborPrettyPrintDataItem(Ljava/lang/StringBuilder;ILco/nstant/in/cbor/model/DataItem;)V

    const-string v8, " : "

    .line 1174
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-static {p0, v10, v9}, Landroidx/security/identity/Util;->cborPrettyPrintDataItem(Ljava/lang/StringBuilder;ILco/nstant/in/cbor/model/DataItem;)V

    add-int/2addr v1, v3

    .line 1176
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v8

    if-ge v1, v8, :cond_8

    .line 1177
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    const-string p1, "}"

    .line 1181
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1133
    :pswitch_e
    check-cast p2, Lco/nstant/in/cbor/model/Array;

    invoke-virtual {p2}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p2

    .line 1134
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_a

    const-string p1, "[]"

    .line 1135
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1136
    :cond_a
    invoke-static {p2}, Landroidx/security/identity/Util;->cborAreAllDataItemsNonCompound(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1138
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/nstant/in/cbor/model/DataItem;

    .line 1141
    invoke-static {p0, p1, v2}, Landroidx/security/identity/Util;->cborPrettyPrintDataItem(Ljava/lang/StringBuilder;ILco/nstant/in/cbor/model/DataItem;)V

    add-int/2addr v1, v3

    .line 1142
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 1143
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1146
    :cond_c
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1148
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lco/nstant/in/cbor/model/DataItem;

    .line 1151
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, p1, 0x2

    .line 1152
    invoke-static {p0, v8, v6}, Landroidx/security/identity/Util;->cborPrettyPrintDataItem(Ljava/lang/StringBuilder;ILco/nstant/in/cbor/model/DataItem;)V

    add-int/2addr v1, v3

    .line 1153
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_e

    .line 1154
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1158
    :cond_f
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static computeHkdf(Ljava/lang/String;[B[B[BI)[B
    .locals 4

    .line 507
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 511
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    if-gt p4, v1, :cond_3

    if-eqz p2, :cond_1

    .line 515
    :try_start_1
    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 521
    :cond_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p2, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_1

    .line 519
    :cond_1
    :goto_0
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {p2, v1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 523
    :goto_1
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    .line 524
    new-array p2, p4, [B

    .line 527
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 p0, 0x0

    new-array p1, p0, [B

    const/4 v1, 0x1

    move v2, p0

    .line 530
    :goto_2
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 531
    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->update([B)V

    int-to-byte p1, v1

    .line 532
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(B)V

    .line 533
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    .line 534
    array-length v3, p1

    add-int/2addr v3, v2

    if-ge v3, p4, :cond_2

    .line 535
    array-length v3, p1

    invoke-static {p1, p0, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    array-length v3, p1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    sub-int/2addr p4, v2

    .line 539
    invoke-static {p1, p0, p2, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 545
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error MACing"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 512
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p1

    .line 509
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No such algorithm: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static coseBuildToBeMACed([B[B[B)[B
    .locals 3

    .line 800
    new-instance v0, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v0}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 801
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborBuilder;->addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v1

    const-string v2, "MAC0"

    .line 803
    invoke-virtual {v1, v2}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Ljava/lang/String;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    .line 804
    invoke-virtual {v1, p0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    const/4 p0, 0x0

    new-array v2, p0, [B

    .line 809
    invoke-virtual {v1, v2}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    if-eqz p1, :cond_0

    .line 814
    array-length v2, p1

    if-lez v2, :cond_0

    .line 815
    invoke-virtual {v1, p1}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    goto :goto_0

    .line 817
    :cond_0
    invoke-virtual {v1, p2}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    .line 820
    :goto_0
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/DataItem;

    invoke-static {p0}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p0

    return-object p0
.end method

.method private static coseBuildToBeSigned([B[B[B)[B
    .locals 3

    .line 552
    new-instance v0, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v0}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 553
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborBuilder;->addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v1

    const-string v2, "Signature1"

    .line 555
    invoke-virtual {v1, v2}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Ljava/lang/String;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    .line 556
    invoke-virtual {v1, p0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    const/4 p0, 0x0

    new-array v2, p0, [B

    .line 561
    invoke-virtual {v1, v2}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    if-eqz p1, :cond_0

    .line 566
    array-length v2, p1

    if-lez v2, :cond_0

    .line 567
    invoke-virtual {v1, p1}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    goto :goto_0

    .line 569
    :cond_0
    invoke-virtual {v1, p2}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    .line 571
    :goto_0
    invoke-virtual {v1}, Lco/nstant/in/cbor/builder/ArrayBuilder;->end()Lco/nstant/in/cbor/builder/AbstractBuilder;

    .line 572
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/DataItem;

    invoke-static {p0}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p0

    return-object p0
.end method

.method public static coseMac0(Ljavax/crypto/SecretKey;[B[B)Lco/nstant/in/cbor/model/DataItem;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 827
    array-length v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 828
    array-length v2, p2

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-lez v1, :cond_3

    if-gtz v2, :cond_2

    goto :goto_2

    .line 830
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "data and detachedContent cannot both be non-empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 833
    :cond_3
    :goto_2
    new-instance v1, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v1}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 834
    invoke-virtual {v1}, Lco/nstant/in/cbor/CborBuilder;->addMap()Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v2

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x5

    .line 835
    invoke-virtual {v2, v3, v4, v5, v6}, Lco/nstant/in/cbor/builder/MapBuilder;->put(JJ)Lco/nstant/in/cbor/builder/MapBuilder;

    .line 836
    invoke-virtual {v1}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    invoke-static {v1}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object v1

    .line 838
    invoke-static {v1, p1, p2}, Landroidx/security/identity/Util;->coseBuildToBeMACed([B[B[B)[B

    move-result-object p2

    :try_start_0
    const-string v2, "HmacSHA256"

    .line 842
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 843
    invoke-virtual {v2, p0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 844
    invoke-virtual {v2, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 845
    invoke-virtual {v2}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    new-instance p2, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {p2}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 851
    invoke-virtual {p2}, Lco/nstant/in/cbor/CborBuilder;->addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v2

    .line 852
    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    .line 853
    invoke-virtual {v2}, Lco/nstant/in/cbor/builder/ArrayBuilder;->addMap()Lco/nstant/in/cbor/builder/MapBuilder;

    if-eqz p1, :cond_5

    .line 854
    array-length v1, p1

    if-nez v1, :cond_4

    goto :goto_3

    .line 857
    :cond_4
    invoke-virtual {v2, p1}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    goto :goto_4

    .line 855
    :cond_5
    :goto_3
    new-instance p1, Lco/nstant/in/cbor/model/SimpleValue;

    sget-object v1, Lco/nstant/in/cbor/model/SimpleValueType;->NULL:Lco/nstant/in/cbor/model/SimpleValueType;

    invoke-direct {p1, v1}, Lco/nstant/in/cbor/model/SimpleValue;-><init>(Lco/nstant/in/cbor/model/SimpleValueType;)V

    invoke-virtual {v2, p1}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    .line 859
    :goto_4
    invoke-virtual {v2, p0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    .line 861
    invoke-virtual {p2}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/DataItem;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    .line 847
    :goto_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected error"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static coseMac0GetTag(Lco/nstant/in/cbor/model/DataItem;)[B
    .locals 2

    .line 865
    instance-of v0, p0, Lco/nstant/in/cbor/model/Array;

    if-eqz v0, :cond_2

    .line 868
    check-cast p0, Lco/nstant/in/cbor/model/Array;

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p0

    .line 869
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    const/4 v0, 0x3

    .line 872
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/DataItem;

    .line 873
    instance-of v0, p0, Lco/nstant/in/cbor/model/ByteString;

    if-eqz v0, :cond_0

    .line 876
    check-cast p0, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object p0

    return-object p0

    .line 874
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "tag in coseMac0 is not a ByteString"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 870
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "coseMac0 have less than 4 elements"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 866
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "coseMac0 is not an array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static coseSign1CheckSignature(Lco/nstant/in/cbor/model/DataItem;[BLjava/security/PublicKey;)Z
    .locals 6

    .line 742
    invoke-virtual {p0}, Lco/nstant/in/cbor/model/DataItem;->getMajorType()Lco/nstant/in/cbor/model/MajorType;

    move-result-object v0

    sget-object v1, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    if-ne v0, v1, :cond_a

    .line 745
    check-cast p0, Lco/nstant/in/cbor/model/Array;

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p0

    .line 746
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_9

    const/4 v0, 0x0

    .line 749
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {v1}, Lco/nstant/in/cbor/model/DataItem;->getMajorType()Lco/nstant/in/cbor/model/MajorType;

    move-result-object v1

    sget-object v2, Lco/nstant/in/cbor/model/MajorType;->BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

    if-ne v1, v2, :cond_8

    .line 752
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/nstant/in/cbor/model/ByteString;

    .line 753
    invoke-virtual {v1}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object v1

    new-array v2, v0, [B

    const/4 v3, 0x2

    .line 755
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {v4}, Lco/nstant/in/cbor/model/DataItem;->getMajorType()Lco/nstant/in/cbor/model/MajorType;

    move-result-object v4

    sget-object v5, Lco/nstant/in/cbor/model/MajorType;->SPECIAL:Lco/nstant/in/cbor/model/MajorType;

    if-ne v4, v5, :cond_2

    .line 756
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/nstant/in/cbor/model/Special;

    invoke-virtual {v4}, Lco/nstant/in/cbor/model/Special;->getSpecialType()Lco/nstant/in/cbor/model/SpecialType;

    move-result-object v4

    sget-object v5, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE:Lco/nstant/in/cbor/model/SpecialType;

    if-ne v4, v5, :cond_1

    .line 761
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/nstant/in/cbor/model/SimpleValue;

    .line 762
    invoke-virtual {v3}, Lco/nstant/in/cbor/model/SimpleValue;->getSimpleValueType()Lco/nstant/in/cbor/model/SimpleValueType;

    move-result-object v3

    sget-object v4, Lco/nstant/in/cbor/model/SimpleValueType;->NULL:Lco/nstant/in/cbor/model/SimpleValueType;

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 763
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Item 2 (payload) is a simple but not the value null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 758
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Item 2 (payload) is a special but not a simple value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 766
    :cond_2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/DataItem;->getMajorType()Lco/nstant/in/cbor/model/MajorType;

    move-result-object v2

    sget-object v4, Lco/nstant/in/cbor/model/MajorType;->BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

    if-ne v2, v4, :cond_7

    .line 767
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object v2

    :goto_0
    const/4 v3, 0x3

    .line 771
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {v4}, Lco/nstant/in/cbor/model/DataItem;->getMajorType()Lco/nstant/in/cbor/model/MajorType;

    move-result-object v4

    sget-object v5, Lco/nstant/in/cbor/model/MajorType;->BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

    if-ne v4, v5, :cond_6

    .line 774
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object p0

    .line 776
    invoke-static {p0}, Landroidx/security/identity/Util;->signatureCoseToDer([B)[B

    move-result-object p0

    .line 778
    array-length v3, v2

    if-eqz p1, :cond_3

    .line 779
    array-length v0, p1

    :cond_3
    if-lez v3, :cond_5

    if-gtz v0, :cond_4

    goto :goto_1

    .line 781
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "data and detachedContent cannot both be non-empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 784
    :cond_5
    :goto_1
    invoke-static {v1, v2, p1}, Landroidx/security/identity/Util;->coseBuildToBeSigned([B[B[B)[B

    move-result-object p1

    :try_start_0
    const-string v0, "SHA256withECDSA"

    .line 788
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 789
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 790
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 791
    invoke-virtual {v0, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 793
    :goto_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error verifying signature"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 772
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Item 3 (signature) is not a byte-string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 769
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Item 2 (payload) is not nil or byte-string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 750
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Item 0 (protected headers) is not a byte-string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 747
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected at least four items in COSE_Sign1 array"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 743
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Data item is not an array"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static coseSign1GetData(Lco/nstant/in/cbor/model/DataItem;)[B
    .locals 4

    .line 941
    invoke-virtual {p0}, Lco/nstant/in/cbor/model/DataItem;->getMajorType()Lco/nstant/in/cbor/model/MajorType;

    move-result-object v0

    sget-object v1, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    if-ne v0, v1, :cond_5

    .line 944
    check-cast p0, Lco/nstant/in/cbor/model/Array;

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p0

    .line 945
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x2

    .line 949
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/DataItem;->getMajorType()Lco/nstant/in/cbor/model/MajorType;

    move-result-object v2

    sget-object v3, Lco/nstant/in/cbor/model/MajorType;->SPECIAL:Lco/nstant/in/cbor/model/MajorType;

    if-ne v2, v3, :cond_2

    .line 950
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/nstant/in/cbor/model/Special;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/Special;->getSpecialType()Lco/nstant/in/cbor/model/SpecialType;

    move-result-object v2

    sget-object v3, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE:Lco/nstant/in/cbor/model/SpecialType;

    if-ne v2, v3, :cond_1

    .line 955
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/SimpleValue;

    .line 956
    invoke-virtual {p0}, Lco/nstant/in/cbor/model/SimpleValue;->getSimpleValueType()Lco/nstant/in/cbor/model/SimpleValueType;

    move-result-object p0

    sget-object v1, Lco/nstant/in/cbor/model/SimpleValueType;->NULL:Lco/nstant/in/cbor/model/SimpleValueType;

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 957
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Item 2 (payload) is a simple but not the value null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 952
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Item 2 (payload) is a special but not a simple value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 960
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/DataItem;->getMajorType()Lco/nstant/in/cbor/model/MajorType;

    move-result-object v0

    sget-object v2, Lco/nstant/in/cbor/model/MajorType;->BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

    if-ne v0, v2, :cond_3

    .line 961
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object v0

    :goto_0
    return-object v0

    .line 963
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Item 2 (payload) is not nil or byte-string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 946
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected at least four items in COSE_Sign1 array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 942
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Data item is not an array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static coseSign1GetX5Chain(Lco/nstant/in/cbor/model/DataItem;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/nstant/in/cbor/model/DataItem;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 973
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 974
    invoke-virtual {p0}, Lco/nstant/in/cbor/model/DataItem;->getMajorType()Lco/nstant/in/cbor/model/MajorType;

    move-result-object v1

    sget-object v2, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    if-ne v1, v2, :cond_6

    .line 977
    check-cast p0, Lco/nstant/in/cbor/model/Array;

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p0

    .line 978
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_5

    const/4 v1, 0x1

    .line 981
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/DataItem;->getMajorType()Lco/nstant/in/cbor/model/MajorType;

    move-result-object v2

    sget-object v3, Lco/nstant/in/cbor/model/MajorType;->MAP:Lco/nstant/in/cbor/model/MajorType;

    if-ne v2, v3, :cond_4

    .line 984
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/Map;

    .line 985
    new-instance v1, Lco/nstant/in/cbor/model/UnsignedInteger;

    const-wide/16 v2, 0x21

    invoke-direct {v1, v2, v3}, Lco/nstant/in/cbor/model/UnsignedInteger;-><init>(J)V

    invoke-virtual {p0, v1}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p0

    if-eqz p0, :cond_3

    :try_start_0
    const-string v1, "X.509"

    .line 988
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 989
    instance-of v2, p0, Lco/nstant/in/cbor/model/ByteString;

    if-eqz v2, :cond_0

    .line 990
    new-instance v2, Ljava/io/ByteArrayInputStream;

    check-cast p0, Lco/nstant/in/cbor/model/ByteString;

    .line 991
    invoke-virtual {p0}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 992
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 993
    :cond_0
    instance-of v2, p0, Lco/nstant/in/cbor/model/Array;

    if-eqz v2, :cond_2

    .line 994
    check-cast p0, Lco/nstant/in/cbor/model/Array;

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/nstant/in/cbor/model/DataItem;

    .line 995
    instance-of v3, v2, Lco/nstant/in/cbor/model/ByteString;

    if-eqz v3, :cond_1

    .line 999
    new-instance v3, Ljava/io/ByteArrayInputStream;

    check-cast v2, Lco/nstant/in/cbor/model/ByteString;

    .line 1000
    invoke-virtual {v2}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1001
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 996
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected type for array item in x5chain value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1004
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected type for x5chain value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 1007
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected error"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_1
    return-object v0

    .line 982
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Item 1 (unprotected headers) is not a map"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 979
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected at least four items in COSE_Sign1 array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 975
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Data item is not an array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static coseSign1Sign(Ljava/security/PrivateKey;[B[BLjava/util/Collection;)Lco/nstant/in/cbor/model/DataItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "[B[B",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lco/nstant/in/cbor/model/DataItem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    const-string v0, "SHA256withECDSA"

    .line 735
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 736
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 737
    invoke-static {v0, p1, p2, p3}, Landroidx/security/identity/Util;->coseSign1Sign(Ljava/security/Signature;[B[BLjava/util/Collection;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p0

    return-object p0
.end method

.method public static coseSign1Sign(Ljava/security/Signature;[B[BLjava/util/Collection;)Lco/nstant/in/cbor/model/DataItem;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Signature;",
            "[B[B",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lco/nstant/in/cbor/model/DataItem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 681
    array-length v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 682
    array-length v2, p2

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-lez v1, :cond_3

    if-gtz v2, :cond_2

    goto :goto_2

    .line 684
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "data and detachedContent cannot both be non-empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 687
    :cond_3
    :goto_2
    new-instance v1, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v1}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 688
    invoke-virtual {v1}, Lco/nstant/in/cbor/CborBuilder;->addMap()Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v2

    const-wide/16 v3, 0x1

    const-wide/16 v5, -0x7

    .line 689
    invoke-virtual {v2, v3, v4, v5, v6}, Lco/nstant/in/cbor/builder/MapBuilder;->put(JJ)Lco/nstant/in/cbor/builder/MapBuilder;

    .line 690
    invoke-virtual {v1}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    invoke-static {v1}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object v1

    .line 692
    invoke-static {v1, p1, p2}, Landroidx/security/identity/Util;->coseBuildToBeSigned([B[B[B)[B

    move-result-object p2

    .line 696
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/security/Signature;->update([B)V

    .line 697
    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    .line 698
    invoke-static {p0}, Landroidx/security/identity/Util;->signatureDerToCose([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    new-instance p2, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {p2}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 704
    invoke-virtual {p2}, Lco/nstant/in/cbor/CborBuilder;->addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v2

    .line 705
    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    .line 706
    invoke-virtual {v2}, Lco/nstant/in/cbor/builder/ArrayBuilder;->addMap()Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v1

    if-eqz p3, :cond_5

    .line 707
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 708
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    const-wide/16 v5, 0x21

    if-ne v3, v4, :cond_4

    .line 709
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/security/cert/X509Certificate;

    .line 710
    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p3

    invoke-virtual {v1, v5, v6, p3}, Lco/nstant/in/cbor/builder/MapBuilder;->put(J[B)Lco/nstant/in/cbor/builder/MapBuilder;

    goto :goto_4

    .line 713
    :cond_4
    invoke-virtual {v1, v5, v6}, Lco/nstant/in/cbor/builder/MapBuilder;->putArray(J)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v1

    .line 714
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 715
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    goto :goto_3

    :cond_5
    :goto_4
    if-eqz p1, :cond_7

    .line 719
    array-length p3, p1

    if-nez p3, :cond_6

    goto :goto_5

    .line 722
    :cond_6
    invoke-virtual {v2, p1}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    goto :goto_6

    .line 720
    :cond_7
    :goto_5
    new-instance p1, Lco/nstant/in/cbor/model/SimpleValue;

    sget-object p3, Lco/nstant/in/cbor/model/SimpleValueType;->NULL:Lco/nstant/in/cbor/model/SimpleValueType;

    invoke-direct {p1, p3}, Lco/nstant/in/cbor/model/SimpleValue;-><init>(Lco/nstant/in/cbor/model/SimpleValueType;)V

    invoke-virtual {v2, p1}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    .line 724
    :goto_6
    invoke-virtual {v2, p0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    .line 726
    invoke-virtual {p2}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/DataItem;

    return-object p0

    :catch_0
    move-exception p0

    .line 700
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error signing data"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static createEphemeralKeyPair()Ljava/security/KeyPair;
    .locals 3

    :try_start_0
    const-string v0, "EC"

    .line 1522
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 1523
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string v2, "prime256v1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 1524
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1525
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1529
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error generating ephemeral key-pair"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static createItemsRequest(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .line 1502
    new-instance v0, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v0}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 1503
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborBuilder;->addMap()Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v2, "docType"

    .line 1505
    invoke-virtual {v1, v2, p1}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lco/nstant/in/cbor/builder/MapBuilder;

    :cond_0
    const-string p1, "nameSpaces"

    .line 1508
    invoke-virtual {v1, p1}, Lco/nstant/in/cbor/builder/MapBuilder;->putMap(Ljava/lang/String;)Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object p1

    .line 1509
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1510
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 1512
    invoke-virtual {p1, v2}, Lco/nstant/in/cbor/builder/MapBuilder;->putMap(Ljava/lang/String;)Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v2

    .line 1513
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1514
    invoke-virtual {v2, v5, v3}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;Z)Lco/nstant/in/cbor/builder/MapBuilder;

    goto :goto_0

    .line 1517
    :cond_2
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/DataItem;

    invoke-static {p0}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p0

    return-object p0
.end method

.method private static encodePositiveBigInteger(Ljava/math/BigInteger;)[B
    .locals 2

    .line 633
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x0

    .line 634
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 635
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 637
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 638
    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 640
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed writing data"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-object p0
.end method

.method public static fromHex(Ljava/lang/String;)[B
    .locals 6

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    .line 113
    div-int/lit8 v0, v0, 0x2

    .line 114
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 116
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    .line 117
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 111
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid length of hex string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static generateAuthenticationKeyCert(Ljava/lang/String;Ljava/lang/String;[B)Ljava/security/cert/X509Certificate;
    .locals 11

    :try_start_0
    const-string v0, "AndroidKeyStore"

    .line 401
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 402
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 404
    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 405
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    .line 407
    invoke-virtual {v0, p1, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p0

    check-cast p0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 408
    invoke-virtual {p0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p0

    .line 410
    new-instance v3, Lorg/bouncycastle/asn1/x500/X500Name;

    const-string p1, "CN=Android Identity Credential Key"

    invoke-direct {v3, p1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    .line 411
    new-instance v7, Lorg/bouncycastle/asn1/x500/X500Name;

    const-string p1, "CN=Android Identity Credential Authentication Key"

    invoke-direct {v7, p1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    .line 413
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 415
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide v9, 0x757b12c00L

    add-long/2addr v0, v9

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 416
    new-instance v4, Ljava/math/BigInteger;

    const-string p1, "1"

    invoke-direct {v4, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 417
    new-instance p1, Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Ljava/security/PublicKey;)V

    if-eqz p2, :cond_0

    .line 426
    new-instance v0, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v0}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 427
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborBuilder;->addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v0

    const-string v1, "ProofOfBinding"

    .line 428
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Ljava/lang/String;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v0

    .line 429
    invoke-virtual {v0, p2}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p2

    .line 430
    invoke-virtual {p2}, Lco/nstant/in/cbor/builder/ArrayBuilder;->end()Lco/nstant/in/cbor/builder/AbstractBuilder;

    move-result-object p2

    check-cast p2, Lco/nstant/in/cbor/CborBuilder;

    .line 431
    invoke-virtual {p2}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lco/nstant/in/cbor/model/DataItem;

    .line 426
    invoke-static {p2}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p2

    .line 432
    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1.3.6.1.4.1.11129.2.1.26"

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0, p2}, Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)Lorg/bouncycastle/cert/X509v3CertificateBuilder;

    .line 436
    :cond_0
    new-instance p2, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    const-string v0, "SHA256withECDSA"

    invoke-direct {p2, v0}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/ContentSigner;

    move-result-object p0

    .line 437
    invoke-virtual {p1, p0}, Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;->build(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object p0

    const-string p1, "X.509"

    .line 439
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    .line 440
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 441
    invoke-virtual {p1, p2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 444
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error signing public key with private key"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static getIdentityCredentialStore(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;
    .locals 0

    .line 1341
    invoke-static {p0}, Landroidx/security/identity/IdentityCredentialStore;->getSoftwareInstance(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;

    move-result-object p0

    return-object p0
.end method

.method static getPopSha256FromAuthKeyCert(Ljava/security/cert/X509Certificate;)[B
    .locals 4

    const-string v0, "1.3.6.1.4.1.11129.2.1.26"

    .line 1534
    invoke-virtual {p0, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1539
    :cond_0
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 1540
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    .line 1542
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1543
    new-instance p0, Lco/nstant/in/cbor/CborDecoder;

    invoke-direct {p0, v0}, Lco/nstant/in/cbor/CborDecoder;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lco/nstant/in/cbor/CborDecoder;->decode()Ljava/util/List;

    move-result-object p0

    .line 1544
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    .line 1547
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lco/nstant/in/cbor/model/Array;

    if-eqz v2, :cond_6

    .line 1550
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/Array;

    .line 1551
    invoke-virtual {p0}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p0

    .line 1552
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    .line 1556
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lco/nstant/in/cbor/model/UnicodeString;

    if-eqz v2, :cond_4

    .line 1559
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ProofOfBinding"

    .line 1560
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1563
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lco/nstant/in/cbor/model/ByteString;

    if-eqz v0, :cond_2

    .line 1566
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {p0}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object p0

    .line 1567
    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    return-object p0

    .line 1568
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected bstr to be 32 bytes, it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1564
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Second array item is not a bytestring"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1561
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected ProofOfBinding, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1557
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "First array item is not a string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1553
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected at least 2 array items, found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1554
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1548
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Item is not a map"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1545
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected 1 item, found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lco/nstant/in/cbor/CborException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 1575
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error decoding data"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1573
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error decoding extension data"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static hasSubByteArray([B[B)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 883
    :goto_0
    array-length v2, p1

    add-int/2addr v2, v1

    array-length v3, p0

    if-gt v2, v3, :cond_3

    move v2, v0

    .line 885
    :goto_1
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 886
    aget-byte v3, p1, v2

    add-int v5, v1, v2

    aget-byte v5, p0, v5

    if-eq v3, v5, :cond_0

    move v2, v0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_2
    if-eqz v2, :cond_2

    return v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method static hexdump(Ljava/lang/String;[B)V
    .locals 11

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    const/4 v2, 0x0

    move v3, v2

    .line 135
    :goto_0
    array-length v4, p1

    const-string v5, "\n"

    if-ge v3, v4, :cond_4

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "%04x  "

    invoke-virtual {v1, v7, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v6, v2

    :goto_1
    const/16 v7, 0x10

    if-ge v6, v7, :cond_0

    add-int v8, v3, v6

    .line 137
    array-length v9, p1

    if-ge v8, v9, :cond_0

    new-array v7, v4, [Ljava/lang/Object;

    .line 138
    aget-byte v8, p1, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "%02x "

    invoke-virtual {v1, v8, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    :goto_2
    if-ge v6, v7, :cond_1

    const-string v8, "   "

    .line 141
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    const-string v6, " "

    .line 143
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v2

    :goto_3
    if-ge v6, v7, :cond_3

    add-int v8, v3, v6

    .line 144
    array-length v9, p1

    if-ge v8, v9, :cond_3

    .line 145
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    new-array v9, v4, [Ljava/lang/Object;

    .line 146
    invoke-static {v8}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v8, 0x2e

    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v2

    const-string v8, "%c"

    invoke-virtual {v1, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 148
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x10

    goto :goto_0

    .line 150
    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ": dumping "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " bytes\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Util"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static namespaceDataFromCbor(Ljava/lang/String;Lco/nstant/in/cbor/model/DataItem;)Landroidx/security/identity/PersonalizationData$NamespaceData;
    .locals 7

    .line 305
    instance-of v0, p1, Lco/nstant/in/cbor/model/Array;

    if-eqz v0, :cond_3

    .line 308
    check-cast p1, Lco/nstant/in/cbor/model/Array;

    .line 310
    new-instance v0, Landroidx/security/identity/PersonalizationData$Builder;

    invoke-direct {v0}, Landroidx/security/identity/PersonalizationData$Builder;-><init>()V

    .line 312
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    .line 313
    instance-of v2, v1, Lco/nstant/in/cbor/model/Map;

    if-eqz v2, :cond_1

    .line 316
    check-cast v1, Lco/nstant/in/cbor/model/Map;

    .line 318
    new-instance v2, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v3, "name"

    invoke-direct {v2, v3}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v2

    check-cast v2, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v2

    .line 320
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 321
    new-instance v4, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v5, "accessControlProfiles"

    invoke-direct {v4, v5}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v1, v4}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v4

    check-cast v4, Lco/nstant/in/cbor/model/Array;

    .line 324
    invoke-virtual {v4}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/nstant/in/cbor/model/DataItem;

    .line 325
    new-instance v6, Landroidx/security/identity/AccessControlProfileId;

    check-cast v5, Lco/nstant/in/cbor/model/Number;

    .line 326
    invoke-virtual {v5}, Lco/nstant/in/cbor/model/Number;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v6, v5}, Landroidx/security/identity/AccessControlProfileId;-><init>(I)V

    .line 325
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 329
    :cond_0
    new-instance v4, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v5, "value"

    invoke-direct {v4, v5}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v1

    .line 330
    invoke-static {v1}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object v1

    .line 331
    invoke-virtual {v0, p0, v2, v3, v1}, Landroidx/security/identity/PersonalizationData$Builder;->putEntry(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;[B)Landroidx/security/identity/PersonalizationData$Builder;

    goto :goto_0

    .line 314
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Item is not a map"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 334
    :cond_2
    invoke-virtual {v0}, Landroidx/security/identity/PersonalizationData$Builder;->build()Landroidx/security/identity/PersonalizationData;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/security/identity/PersonalizationData;->getNamespaceData(Ljava/lang/String;)Landroidx/security/identity/PersonalizationData$NamespaceData;

    move-result-object p0

    return-object p0

    .line 306
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Item is not an Array"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static namespaceDataToCbor(Landroidx/security/identity/PersonalizationData$NamespaceData;)Lco/nstant/in/cbor/model/DataItem;
    .locals 11

    .line 279
    new-instance v0, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v0}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 280
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborBuilder;->addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v1

    .line 281
    invoke-virtual {p0}, Landroidx/security/identity/PersonalizationData$NamespaceData;->getEntryNames()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 282
    invoke-virtual {p0, v3}, Landroidx/security/identity/PersonalizationData$NamespaceData;->getEntryValue(Ljava/lang/String;)[B

    move-result-object v5

    .line 284
    invoke-virtual {p0, v3}, Landroidx/security/identity/PersonalizationData$NamespaceData;->getAccessControlProfileIds(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v6

    .line 287
    new-instance v7, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v7}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 289
    invoke-virtual {v7}, Lco/nstant/in/cbor/CborBuilder;->addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v8

    .line 290
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/security/identity/AccessControlProfileId;

    .line 291
    invoke-virtual {v9}, Landroidx/security/identity/AccessControlProfileId;->getId()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(J)Lco/nstant/in/cbor/builder/ArrayBuilder;

    goto :goto_1

    .line 294
    :cond_0
    invoke-virtual {v1}, Lco/nstant/in/cbor/builder/ArrayBuilder;->addMap()Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v6

    const-string v8, "name"

    .line 295
    invoke-virtual {v6, v8, v3}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lco/nstant/in/cbor/builder/MapBuilder;

    .line 296
    new-instance v3, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v8, "accessControlProfiles"

    invoke-direct {v3, v8}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v7}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/nstant/in/cbor/model/DataItem;

    .line 296
    invoke-virtual {v6, v3, v4}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    .line 298
    new-instance v3, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v4, "value"

    invoke-direct {v3, v4}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroidx/security/identity/Util;->cborDecode([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/DataItem;

    return-object p0
.end method

.method public static replaceLine(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "\n"

    .line 1246
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1247
    array-length v2, v1

    if-gez p1, :cond_0

    neg-int p1, p1

    sub-int p1, v2, p1

    .line 1251
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    if-ne v4, p1, :cond_1

    .line 1254
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1256
    :cond_1
    aget-object v5, v1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v5, v2, -0x1

    const/16 v6, 0xa

    if-ne v4, v5, :cond_2

    .line 1260
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1261
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1264
    :cond_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1267
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static signPublicKeyWithPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 13

    :try_start_0
    const-string v0, "AndroidKeyStore"

    .line 1374
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 1375
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1391
    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 1392
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object p0

    .line 1394
    invoke-virtual {v0, p1, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    const-string v0, "SHA256withECDSA"

    .line 1395
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 1396
    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 1397
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 1398
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/16 v2, 0x30

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v4, -0x7e

    const/4 v5, 0x1

    aput-byte v4, v1, v5

    const/4 v4, 0x2

    aput-byte v3, v1, v4

    const/4 v6, 0x3

    aput-byte v3, v1, v6

    const/16 v7, 0xc

    new-array v8, v7, [B

    aput-byte v2, v8, v3

    const/16 v2, 0xa

    aput-byte v2, v8, v5

    const/4 v9, 0x6

    aput-byte v9, v8, v4

    const/16 v10, 0x8

    aput-byte v10, v8, v6

    const/16 v11, 0x2a

    aput-byte v11, v8, v0

    const/4 v11, 0x5

    const/16 v12, -0x7a

    aput-byte v12, v8, v11

    const/16 v11, 0x48

    aput-byte v11, v8, v9

    const/4 v9, 0x7

    const/16 v11, -0x32

    aput-byte v11, v8, v9

    const/16 v9, 0x3d

    aput-byte v9, v8, v10

    const/16 v9, 0x9

    aput-byte v0, v8, v9

    aput-byte v6, v8, v2

    const/16 v0, 0xb

    aput-byte v4, v8, v0

    new-array v0, v6, [B

    aput-byte v6, v0, v3

    aput-byte v3, v0, v5

    aput-byte v3, v0, v4

    .line 1429
    array-length v2, p0

    add-int/2addr v2, v7

    add-int/2addr v2, v6

    array-length v3, p1

    add-int/2addr v2, v3

    const/16 v3, 0x80

    if-lt v2, v3, :cond_1

    const v7, 0xffff

    if-gt v2, v7, :cond_1

    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 1440
    array-length v2, p1

    add-int/2addr v2, v5

    if-ge v2, v3, :cond_0

    int-to-byte v2, v2

    aput-byte v2, v0, v5

    .line 1447
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1448
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1449
    invoke-virtual {v2, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1450
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1451
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1452
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1453
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string p1, "X.509"

    .line 1455
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    .line 1456
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1457
    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    return-object p0

    .line 1442
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected signatureValueLength "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1434
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected sequenceLength "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 1460
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error signing public key with private key"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static signatureCoseToDer([B)[B
    .locals 5

    .line 648
    array-length v0, p0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 654
    new-instance v0, Ljava/math/BigInteger;

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {p0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 655
    new-instance v2, Ljava/math/BigInteger;

    invoke-static {p0, v3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v2, v4, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 656
    invoke-static {v0}, Landroidx/security/identity/Util;->encodePositiveBigInteger(Ljava/math/BigInteger;)[B

    move-result-object p0

    .line 657
    invoke-static {v2}, Landroidx/security/identity/Util;->encodePositiveBigInteger(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 658
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x30

    .line 660
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 661
    array-length v2, p0

    const/4 v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v3

    array-length v4, v0

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 662
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 663
    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 664
    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 665
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 666
    array-length p0, v0

    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 667
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 669
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    .line 649
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "signature.length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", expected 64"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static signatureDerToCose([B)[B
    .locals 6

    .line 583
    array-length v0, p0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_6

    const/4 v0, 0x0

    .line 587
    aget-byte v2, p0, v0

    const/16 v3, 0x30

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    .line 591
    aget-byte v3, p0, v2

    and-int/2addr v1, v3

    if-nez v1, :cond_4

    const/4 v1, 0x3

    .line 596
    aget-byte v1, p0, v1

    const/4 v2, 0x4

    add-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    .line 598
    invoke-static {p0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 597
    invoke-static {v3}, Landroidx/security/identity/Util;->stripLeadingZeroes([B)[B

    move-result-object v3

    add-int/2addr v2, v1

    add-int/lit8 v1, v2, 0x1

    .line 601
    aget-byte v1, p0, v1

    add-int/lit8 v4, v2, 0x2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x2

    .line 603
    invoke-static {p0, v4, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 602
    invoke-static {p0}, Landroidx/security/identity/Util;->stripLeadingZeroes([B)[B

    move-result-object p0

    .line 605
    array-length v1, v3

    const-string v2, " which is > 32"

    const/16 v4, 0x20

    if-gt v1, v4, :cond_3

    .line 609
    array-length v1, p0

    if-gt v1, v4, :cond_2

    .line 614
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v2, v0

    .line 616
    :goto_0
    :try_start_0
    array-length v5, v3

    rsub-int/lit8 v5, v5, 0x20

    if-ge v2, v5, :cond_0

    .line 617
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 619
    :cond_0
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move v2, v0

    .line 620
    :goto_1
    array-length v3, p0

    rsub-int/lit8 v3, v3, 0x20

    if-ge v2, v3, :cond_1

    .line 621
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 623
    :cond_1
    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 625
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    .line 610
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sBytes.length is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rBytes.length is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 592
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected second byte "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", bit 7 shouldn\'t be set"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected first byte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte p0, p0, v0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", expected 0x30"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 584
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", expected less than 128"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static stripLeadingZeroes([B)[B
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 901
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 904
    :cond_0
    array-length v2, p0

    sub-int/2addr v2, v1

    .line 905
    new-array v2, v2, [B

    .line 907
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v1, 0x1

    .line 908
    aget-byte v1, p0, v1

    aput-byte v1, v2, v0

    move v0, v3

    move v1, v4

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 5

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 124
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 125
    aget-byte v3, p0, v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 126
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v3, "%02x"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static validateCertificateChain(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .line 460
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 466
    :try_start_0
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p0, 0x0

    return p0

    :cond_0
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
