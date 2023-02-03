.class public interface abstract Lorg/bouncycastle/tsp/TSPAlgorithms;
.super Ljava/lang/Object;


# static fields
.field public static final ALLOWED:Ljava/util/Set;

.field public static final GOST3411:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final MD5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final RIPEMD128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final RIPEMD160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final RIPEMD256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/tsp/TSPAlgorithms;->MD5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v1, Lorg/bouncycastle/tsp/TSPAlgorithms;->SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v2, Lorg/bouncycastle/tsp/TSPAlgorithms;->SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v3, Lorg/bouncycastle/tsp/TSPAlgorithms;->SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v4, Lorg/bouncycastle/tsp/TSPAlgorithms;->SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v5, Lorg/bouncycastle/tsp/TSPAlgorithms;->SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v6, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v6, Lorg/bouncycastle/tsp/TSPAlgorithms;->RIPEMD128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v7, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v7, Lorg/bouncycastle/tsp/TSPAlgorithms;->RIPEMD160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v8, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v8, Lorg/bouncycastle/tsp/TSPAlgorithms;->RIPEMD256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v9, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v9, Lorg/bouncycastle/tsp/TSPAlgorithms;->GOST3411:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v10, Ljava/util/HashSet;

    const/16 v11, 0xa

    new-array v11, v11, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v9, 0x1

    aput-object v0, v11, v9

    const/4 v0, 0x2

    aput-object v1, v11, v0

    const/4 v0, 0x3

    aput-object v2, v11, v0

    const/4 v0, 0x4

    aput-object v3, v11, v0

    const/4 v0, 0x5

    aput-object v4, v11, v0

    const/4 v0, 0x6

    aput-object v5, v11, v0

    const/4 v0, 0x7

    aput-object v6, v11, v0

    const/16 v0, 0x8

    aput-object v7, v11, v0

    const/16 v0, 0x9

    aput-object v8, v11, v0

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v10, Lorg/bouncycastle/tsp/TSPAlgorithms;->ALLOWED:Ljava/util/Set;

    return-void
.end method
