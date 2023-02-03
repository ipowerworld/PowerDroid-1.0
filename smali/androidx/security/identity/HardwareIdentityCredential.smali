.class Landroidx/security/identity/HardwareIdentityCredential;
.super Landroidx/security/identity/IdentityCredential;
.source "HardwareIdentityCredential.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/security/identity/HardwareIdentityCredential$ApiImplS;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HardwareIdentityCredential"


# instance fields
.field private mCredential:Landroid/security/identity/IdentityCredential;

.field private mEphemeralKeyPair:Ljava/security/KeyPair;

.field private mReaderEphemeralPublicKey:Ljava/security/PublicKey;

.field private mSKDevice:Ljavax/crypto/SecretKey;

.field private mSKDeviceCounter:I

.field private mSKReader:Ljavax/crypto/SecretKey;

.field private mSKReaderCounter:I

.field private mSessionTranscript:[B


# direct methods
.method constructor <init>(Landroid/security/identity/IdentityCredential;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroidx/security/identity/IdentityCredential;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mEphemeralKeyPair:Ljava/security/KeyPair;

    .line 54
    iput-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mReaderEphemeralPublicKey:Ljava/security/PublicKey;

    .line 55
    iput-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mSessionTranscript:[B

    .line 57
    iput-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mSKDevice:Ljavax/crypto/SecretKey;

    .line 58
    iput-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mSKReader:Ljavax/crypto/SecretKey;

    .line 66
    iput-object p1, p0, Landroidx/security/identity/HardwareIdentityCredential;->mCredential:Landroid/security/identity/IdentityCredential;

    return-void
.end method

.method private ensureSessionEncryptionKey()V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "AES"

    const-string v2, "HmacSha256"

    .line 93
    iget-object v3, v1, Landroidx/security/identity/HardwareIdentityCredential;->mSKDevice:Ljavax/crypto/SecretKey;

    if-eqz v3, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v3, v1, Landroidx/security/identity/HardwareIdentityCredential;->mReaderEphemeralPublicKey:Ljava/security/PublicKey;

    if-eqz v3, :cond_2

    .line 99
    iget-object v3, v1, Landroidx/security/identity/HardwareIdentityCredential;->mSessionTranscript:[B

    if-eqz v3, :cond_1

    :try_start_0
    const-string v3, "ECDH"

    .line 103
    invoke-static {v3}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v3

    .line 104
    iget-object v4, v1, Landroidx/security/identity/HardwareIdentityCredential;->mEphemeralKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v4}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 105
    iget-object v4, v1, Landroidx/security/identity/HardwareIdentityCredential;->mReaderEphemeralPublicKey:Ljava/security/PublicKey;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 106
    invoke-virtual {v3}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v3

    .line 108
    iget-object v4, v1, Landroidx/security/identity/HardwareIdentityCredential;->mSessionTranscript:[B

    .line 109
    invoke-static {v4}, Landroidx/security/identity/Util;->cborBuildTaggedByteString([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v4

    invoke-static {v4}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object v4

    const-string v6, "SHA-256"

    .line 110
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    const/16 v6, 0x8

    new-array v7, v6, [B

    const/16 v8, 0x53

    const/4 v9, 0x0

    aput-byte v8, v7, v9

    const/16 v10, 0x4b

    aput-byte v10, v7, v5

    const/16 v11, 0x44

    const/4 v12, 0x2

    aput-byte v11, v7, v12

    const/4 v11, 0x3

    const/16 v13, 0x65

    aput-byte v13, v7, v11

    const/16 v14, 0x76

    const/4 v15, 0x4

    aput-byte v14, v7, v15

    const/16 v14, 0x69

    const/16 v16, 0x5

    aput-byte v14, v7, v16

    const/16 v14, 0x63

    const/16 v17, 0x6

    aput-byte v14, v7, v17

    const/4 v14, 0x7

    aput-byte v13, v7, v14

    const/16 v14, 0x20

    .line 113
    invoke-static {v2, v3, v4, v7, v14}, Landroidx/security/identity/Util;->computeHkdf(Ljava/lang/String;[B[B[BI)[B

    move-result-object v7

    .line 114
    new-instance v14, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v14, v7, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v14, v1, Landroidx/security/identity/HardwareIdentityCredential;->mSKDevice:Ljavax/crypto/SecretKey;

    new-array v6, v6, [B

    aput-byte v8, v6, v9

    aput-byte v10, v6, v5

    const/16 v7, 0x52

    aput-byte v7, v6, v12

    aput-byte v13, v6, v11

    const/16 v7, 0x61

    aput-byte v7, v6, v15

    const/16 v7, 0x64

    aput-byte v7, v6, v16

    aput-byte v13, v6, v17

    const/16 v7, 0x72

    const/4 v8, 0x7

    aput-byte v7, v6, v8

    const/16 v7, 0x20

    .line 117
    invoke-static {v2, v3, v4, v6, v7}, Landroidx/security/identity/Util;->computeHkdf(Ljava/lang/String;[B[B[BI)[B

    move-result-object v2

    .line 118
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v3, v1, Landroidx/security/identity/HardwareIdentityCredential;->mSKReader:Ljavax/crypto/SecretKey;

    .line 120
    iput v5, v1, Landroidx/security/identity/HardwareIdentityCredential;->mSKDeviceCounter:I

    .line 121
    iput v5, v1, Landroidx/security/identity/HardwareIdentityCredential;->mSKReaderCounter:I
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 125
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error performing key agreement"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Session transcript not set"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Reader ephemeral key not set"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createEphemeralKeyPair()Ljava/security/KeyPair;
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mEphemeralKeyPair:Ljava/security/KeyPair;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mCredential:Landroid/security/identity/IdentityCredential;

    invoke-virtual {v0}, Landroid/security/identity/IdentityCredential;->createEphemeralKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mEphemeralKeyPair:Ljava/security/KeyPair;

    .line 74
    :cond_0
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mEphemeralKeyPair:Ljava/security/KeyPair;

    return-object v0
.end method

.method public decryptMessageFromReader([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/MessageDecryptionException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Landroidx/security/identity/HardwareIdentityCredential;->ensureSessionEncryptionKey()V

    const/16 v0, 0xc

    .line 160
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 161
    invoke-virtual {v0, v1, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    .line 162
    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 163
    iget v1, p0, Landroidx/security/identity/HardwareIdentityCredential;->mSKReaderCounter:I

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    :try_start_0
    const-string v1, "AES/GCM/NoPadding"

    .line 166
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 167
    iget-object v3, p0, Landroidx/security/identity/HardwareIdentityCredential;->mSKReader:Ljavax/crypto/SecretKey;

    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    .line 168
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {v4, v5, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 167
    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 169
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    iget v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mSKReaderCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mSKReaderCounter:I

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    goto :goto_0

    :catch_5
    move-exception p1

    .line 176
    :goto_0
    new-instance v0, Landroidx/security/identity/MessageDecryptionException;

    const-string v1, "Error decrypting message"

    invoke-direct {v0, v1, p1}, Landroidx/security/identity/MessageDecryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public delete([B)[B
    .locals 2

    .line 361
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 362
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mCredential:Landroid/security/identity/IdentityCredential;

    invoke-static {v0, p1}, Landroidx/security/identity/HardwareIdentityCredential$ApiImplS;->callDelete(Landroid/security/identity/IdentityCredential;[B)[B

    move-result-object p1

    return-object p1

    .line 364
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public encryptMessageToReader([B)[B
    .locals 5

    .line 132
    invoke-direct {p0}, Landroidx/security/identity/HardwareIdentityCredential;->ensureSessionEncryptionKey()V

    const/16 v0, 0xc

    .line 135
    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 136
    invoke-virtual {v0, v1, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 137
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    .line 138
    iget v3, p0, Landroidx/security/identity/HardwareIdentityCredential;->mSKDeviceCounter:I

    invoke-virtual {v0, v1, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const-string v1, "AES/GCM/NoPadding"

    .line 139
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 140
    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v4, 0x80

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 141
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mSKDevice:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 142
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    iget v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mSKDeviceCounter:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mSKDeviceCounter:I

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    goto :goto_0

    :catch_5
    move-exception p1

    .line 149
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error encrypting message"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAuthKeysNeedingCertification()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mCredential:Landroid/security/identity/IdentityCredential;

    invoke-virtual {v0}, Landroid/security/identity/IdentityCredential;->getAuthKeysNeedingCertification()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticationDataUsageCount()[I
    .locals 1

    .line 273
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mCredential:Landroid/security/identity/IdentityCredential;

    invoke-virtual {v0}, Landroid/security/identity/IdentityCredential;->getAuthenticationDataUsageCount()[I

    move-result-object v0

    return-object v0
.end method

.method public getCredentialKeyCertificateChain()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mCredential:Landroid/security/identity/IdentityCredential;

    invoke-virtual {v0}, Landroid/security/identity/IdentityCredential;->getCredentialKeyCertificateChain()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;
    .locals 2

    .line 196
    new-instance v0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    iget-object v1, p0, Landroidx/security/identity/HardwareIdentityCredential;->mCredential:Landroid/security/identity/IdentityCredential;

    invoke-direct {v0, v1}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Landroid/security/identity/IdentityCredential;)V

    return-object v0
.end method

.method public getEntries([BLjava/util/Map;[B)Landroidx/security/identity/ResultData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;[B)",
            "Landroidx/security/identity/ResultData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/NoAuthenticationKeyAvailableException;,
            Landroidx/security/identity/InvalidReaderSignatureException;,
            Landroidx/security/identity/InvalidRequestMessageException;,
            Landroidx/security/identity/EphemeralPublicKeyNotFoundException;
        }
    .end annotation

    .line 212
    :try_start_0
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mCredential:Landroid/security/identity/IdentityCredential;

    iget-object v1, p0, Landroidx/security/identity/HardwareIdentityCredential;->mSessionTranscript:[B

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/security/identity/IdentityCredential;->getEntries([BLjava/util/Map;[B[B)Landroid/security/identity/ResultData;

    move-result-object p1
    :try_end_0
    .catch Landroid/security/identity/NoAuthenticationKeyAvailableException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/security/identity/InvalidReaderSignatureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/security/identity/InvalidRequestMessageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/security/identity/EphemeralPublicKeyNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/security/identity/SessionTranscriptMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    new-instance p2, Landroidx/security/identity/SimpleResultData$Builder;

    invoke-direct {p2}, Landroidx/security/identity/SimpleResultData$Builder;-><init>()V

    .line 229
    invoke-virtual {p1}, Landroid/security/identity/ResultData;->getMessageAuthenticationCode()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/security/identity/SimpleResultData$Builder;->setMessageAuthenticationCode([B)Landroidx/security/identity/SimpleResultData$Builder;

    .line 230
    invoke-virtual {p1}, Landroid/security/identity/ResultData;->getAuthenticatedData()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/security/identity/SimpleResultData$Builder;->setAuthenticatedData([B)Landroidx/security/identity/SimpleResultData$Builder;

    .line 231
    invoke-virtual {p1}, Landroid/security/identity/ResultData;->getStaticAuthenticationData()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/security/identity/SimpleResultData$Builder;->setStaticAuthenticationData([B)Landroidx/security/identity/SimpleResultData$Builder;

    .line 233
    invoke-virtual {p1}, Landroid/security/identity/ResultData;->getNamespaces()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    invoke-virtual {p1, v0}, Landroid/security/identity/ResultData;->getEntryNames(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 235
    invoke-virtual {p1, v0, v2}, Landroid/security/identity/ResultData;->getStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 237
    invoke-virtual {p1, v0, v2}, Landroid/security/identity/ResultData;->getEntry(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 238
    invoke-virtual {p2, v0, v2, v3}, Landroidx/security/identity/SimpleResultData$Builder;->addEntry(Ljava/lang/String;Ljava/lang/String;[B)Landroidx/security/identity/SimpleResultData$Builder;

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {p2, v0, v2, v3}, Landroidx/security/identity/SimpleResultData$Builder;->addErrorStatus(Ljava/lang/String;Ljava/lang/String;I)Landroidx/security/identity/SimpleResultData$Builder;

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {p2}, Landroidx/security/identity/SimpleResultData$Builder;->build()Landroidx/security/identity/SimpleResultData;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 225
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Unexpected SessionMismatchException"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 223
    new-instance p2, Landroidx/security/identity/EphemeralPublicKeyNotFoundException;

    invoke-virtual {p1}, Landroid/security/identity/EphemeralPublicKeyNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroidx/security/identity/EphemeralPublicKeyNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 221
    new-instance p2, Landroidx/security/identity/InvalidRequestMessageException;

    invoke-virtual {p1}, Landroid/security/identity/InvalidRequestMessageException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroidx/security/identity/InvalidRequestMessageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 219
    new-instance p2, Landroidx/security/identity/InvalidReaderSignatureException;

    invoke-virtual {p1}, Landroid/security/identity/InvalidReaderSignatureException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroidx/security/identity/InvalidReaderSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    .line 217
    new-instance p2, Landroidx/security/identity/NoAuthenticationKeyAvailableException;

    invoke-virtual {p1}, Landroid/security/identity/NoAuthenticationKeyAvailableException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroidx/security/identity/NoAuthenticationKeyAvailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public proveOwnership([B)[B
    .locals 2

    .line 352
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 353
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mCredential:Landroid/security/identity/IdentityCredential;

    invoke-static {v0, p1}, Landroidx/security/identity/HardwareIdentityCredential$ApiImplS;->callProveOwnership(Landroid/security/identity/IdentityCredential;[B)[B

    move-result-object p1

    return-object p1

    .line 355
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setAllowUsingExhaustedKeys(Z)V
    .locals 1

    .line 190
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mCredential:Landroid/security/identity/IdentityCredential;

    invoke-virtual {v0, p1}, Landroid/security/identity/IdentityCredential;->setAllowUsingExhaustedKeys(Z)V

    return-void
.end method

.method public setAllowUsingExpiredKeys(Z)V
    .locals 2

    .line 321
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 322
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mCredential:Landroid/security/identity/IdentityCredential;

    invoke-static {v0, p1}, Landroidx/security/identity/HardwareIdentityCredential$ApiImplS;->callSetAllowUsingExpiredKeys(Landroid/security/identity/IdentityCredential;Z)V

    return-void

    .line 324
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setAvailableAuthenticationKeys(II)V
    .locals 1

    .line 250
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mCredential:Landroid/security/identity/IdentityCredential;

    invoke-virtual {v0, p1, p2}, Landroid/security/identity/IdentityCredential;->setAvailableAuthenticationKeys(II)V

    return-void
.end method

.method public setReaderEphemeralPublicKey(Ljava/security/PublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 80
    iput-object p1, p0, Landroidx/security/identity/HardwareIdentityCredential;->mReaderEphemeralPublicKey:Ljava/security/PublicKey;

    .line 81
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mCredential:Landroid/security/identity/IdentityCredential;

    invoke-virtual {v0, p1}, Landroid/security/identity/IdentityCredential;->setReaderEphemeralPublicKey(Ljava/security/PublicKey;)V

    return-void
.end method

.method public setSessionTranscript([B)V
    .locals 1

    .line 86
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mSessionTranscript:[B

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroidx/security/identity/HardwareIdentityCredential;->mSessionTranscript:[B

    return-void

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "SessionTranscript already set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public storeStaticAuthenticationData(Ljava/security/cert/X509Certificate;Landroid/icu/util/Calendar;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/UnknownAuthenticationKeyException;
        }
    .end annotation

    .line 334
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 337
    :try_start_0
    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p2

    .line 338
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mCredential:Landroid/security/identity/IdentityCredential;

    invoke-static {v0, p1, p2, p3}, Landroidx/security/identity/HardwareIdentityCredential$ApiImplS;->callStoreStaticAuthenticationData(Landroid/security/identity/IdentityCredential;Ljava/security/cert/X509Certificate;Ljava/time/Instant;[B)V
    :try_end_0
    .catch Landroid/security/identity/UnknownAuthenticationKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 343
    new-instance p2, Landroidx/security/identity/UnknownAuthenticationKeyException;

    invoke-virtual {p1}, Landroid/security/identity/UnknownAuthenticationKeyException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroidx/security/identity/UnknownAuthenticationKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 346
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public storeStaticAuthenticationData(Ljava/security/cert/X509Certificate;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/UnknownAuthenticationKeyException;
        }
    .end annotation

    .line 264
    :try_start_0
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mCredential:Landroid/security/identity/IdentityCredential;

    invoke-virtual {v0, p1, p2}, Landroid/security/identity/IdentityCredential;->storeStaticAuthenticationData(Ljava/security/cert/X509Certificate;[B)V
    :try_end_0
    .catch Landroid/security/identity/UnknownAuthenticationKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 266
    new-instance p2, Landroidx/security/identity/UnknownAuthenticationKeyException;

    invoke-virtual {p1}, Landroid/security/identity/UnknownAuthenticationKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroidx/security/identity/UnknownAuthenticationKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public update(Landroidx/security/identity/PersonalizationData;)[B
    .locals 2

    .line 370
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 371
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredential;->mCredential:Landroid/security/identity/IdentityCredential;

    .line 372
    invoke-static {p1}, Landroidx/security/identity/HardwareWritableIdentityCredential;->convertPDFromJetpack(Landroidx/security/identity/PersonalizationData;)Landroid/security/identity/PersonalizationData;

    move-result-object p1

    .line 371
    invoke-static {v0, p1}, Landroidx/security/identity/HardwareIdentityCredential$ApiImplS;->callUpdate(Landroid/security/identity/IdentityCredential;Landroid/security/identity/PersonalizationData;)[B

    move-result-object p1

    return-object p1

    .line 374
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
