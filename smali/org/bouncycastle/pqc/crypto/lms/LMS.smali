.class Lorg/bouncycastle/pqc/crypto/lms/LMS;
.super Ljava/lang/Object;


# static fields
.field static final D_INTR:S = -0x7c7ds

.field static final D_LEAF:S = -0x7d7es


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static algorithm6a(Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;[BI[B)[B
    .locals 10

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;->getQ()I

    move-result v6

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;->getOtsSignature()Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->getType()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getType()I

    move-result v0

    if-ne v0, p2, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;->getParameter()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getM()I

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getH()I

    move-result v8

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;->getY()[[B

    move-result-object v9

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getParametersForType(I)Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;->getOtsSignature()Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p1

    move v2, v6

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->lm_ots_validate_signature_calculate(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;[BILorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;[BZ)[B

    move-result-object p0

    const/4 p2, 0x1

    shl-int p3, p2, v8

    add-int/2addr p3, v6

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getDigestOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->getDigest(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v2, v1, [B

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v0, p1, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-static {p3, v0}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u32str(ILorg/bouncycastle/crypto/Digest;)V

    const/16 v3, -0x7d7e

    invoke-static {v3, v0}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u16str(SLorg/bouncycastle/crypto/Digest;)V

    array-length v3, p0

    invoke-interface {v0, p0, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v0, v2, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move p0, v4

    :goto_0
    if-le p3, p2, :cond_1

    and-int/lit8 v3, p3, 0x1

    const/16 v5, -0x7c7d

    if-ne v3, p2, :cond_0

    array-length v3, p1

    invoke-interface {v0, p1, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    div-int/lit8 v3, p3, 0x2

    invoke-static {v3, v0}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u32str(ILorg/bouncycastle/crypto/Digest;)V

    invoke-static {v5, v0}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u16str(SLorg/bouncycastle/crypto/Digest;)V

    aget-object v3, v9, p0

    aget-object v5, v9, p0

    array-length v5, v5

    invoke-interface {v0, v3, v4, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v0, v2, v4, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_1

    :cond_0
    array-length v3, p1

    invoke-interface {v0, p1, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    div-int/lit8 v3, p3, 0x2

    invoke-static {v3, v0}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u32str(ILorg/bouncycastle/crypto/Digest;)V

    invoke-static {v5, v0}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u16str(SLorg/bouncycastle/crypto/Digest;)V

    invoke-interface {v0, v2, v4, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    aget-object v3, v9, p0

    aget-object v5, v9, p0

    array-length v5, v5

    invoke-interface {v0, v3, v4, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :goto_1
    invoke-interface {v0, v2, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    div-int/lit8 p3, p3, 0x2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ots type from lsm signature does not match ots signature type from embedded ots signature"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateKeys(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;I[B[B)Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p4, :cond_0

    array-length v0, p4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getM()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getH()I

    move-result v1

    shl-int v7, v0, v1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;I[BI[B)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "root seed is less than "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getM()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static generateSign(Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;[B)Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;
    .locals 8

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->getSigParameters()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getH()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->getIndex()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->getNextOtsPrivateKey()Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->lm_ots_generate_signature(Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;[BZ)Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;

    move-result-object p1

    const/4 v3, 0x1

    shl-int v5, v3, v1

    add-int/2addr v5, v2

    new-array v6, v1, [[B

    :goto_0
    if-ge v4, v1, :cond_0

    shl-int v7, v3, v4

    div-int v7, v5, v7

    xor-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->findT(I)[B

    move-result-object v7

    aput-object v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    invoke-direct {p0, v2, p1, v0, v6}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;-><init>(ILorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;[[B)V

    return-object p0
.end method

.method public static verifySignature(Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;[B)Z
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;->refI()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;->getOtsParameters()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getType()I

    move-result v1

    invoke-static {p1, v0, v1, p2}, Lorg/bouncycastle/pqc/crypto/lms/LMS;->algorithm6a(Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;[BI[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;->matchesT1([B)Z

    move-result p0

    return p0
.end method
