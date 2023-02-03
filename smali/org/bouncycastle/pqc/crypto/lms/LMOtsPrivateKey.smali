.class Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;
.super Ljava/lang/Object;


# instance fields
.field private final I:[B

.field private final masterSecret:[B

.field private final parameter:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field private final q:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;[BI[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->parameter:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->I:[B

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->q:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->masterSecret:[B

    return-void
.end method


# virtual methods
.method getDerivationFunction()Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->I:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->masterSecret:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->parameter:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getDigestOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->getDigest(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;-><init>([B[BLorg/bouncycastle/crypto/Digest;)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->q:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->setQ(I)V

    return-object v0
.end method

.method public getI()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->I:[B

    return-object v0
.end method

.method public getMasterSecret()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->masterSecret:[B

    return-object v0
.end method

.method public getParameter()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->parameter:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    return-object v0
.end method

.method public getQ()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->q:I

    return v0
.end method
