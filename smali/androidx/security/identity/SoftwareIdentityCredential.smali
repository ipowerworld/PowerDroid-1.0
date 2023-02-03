.class Landroidx/security/identity/SoftwareIdentityCredential;
.super Landroidx/security/identity/IdentityCredential;
.source "SoftwareIdentityCredential.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SWIdentityCredential"


# instance fields
.field mAllowUsingExhaustedKeys:Z

.field mAllowUsingExpiredKeys:Z

.field private mAuthKey:Ljava/security/PrivateKey;

.field private mAuthKeyAssociatedData:[B

.field private mContext:Landroid/content/Context;

.field private mCredentialName:Ljava/lang/String;

.field private mCryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;

.field private mData:Landroidx/security/identity/CredentialData;

.field private mDidUserAuthAlreadyCalled:Z

.field private mDidUserAuthResult:Z

.field private mEphemeralKeyPair:Ljava/security/KeyPair;

.field private mReaderEphemeralPublicKey:Ljava/security/PublicKey;

.field private mSKDevice:Ljavax/crypto/SecretKey;

.field private mSKDeviceCounter:I

.field private mSKReader:Ljavax/crypto/SecretKey;

.field private mSKReaderCounter:I

.field private mSessionTranscript:[B


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/CipherSuiteNotSupportedException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Landroidx/security/identity/IdentityCredential;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mEphemeralKeyPair:Ljava/security/KeyPair;

    .line 85
    iput-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mSKDevice:Ljavax/crypto/SecretKey;

    .line 86
    iput-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mSKReader:Ljavax/crypto/SecretKey;

    .line 90
    iput-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mAuthKeyAssociatedData:[B

    .line 91
    iput-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mAuthKey:Ljava/security/PrivateKey;

    .line 92
    iput-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mCryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;

    .line 94
    iput-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mReaderEphemeralPublicKey:Ljava/security/PublicKey;

    .line 95
    iput-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mSessionTranscript:[B

    const/4 v0, 0x1

    .line 355
    iput-boolean v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mAllowUsingExhaustedKeys:Z

    const/4 v1, 0x0

    .line 356
    iput-boolean v1, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mAllowUsingExpiredKeys:Z

    .line 396
    iput-boolean v1, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mDidUserAuthResult:Z

    .line 398
    iput-boolean v1, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mDidUserAuthAlreadyCalled:Z

    if-ne p3, v0, :cond_0

    .line 104
    iput-object p1, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mCredentialName:Ljava/lang/String;

    return-void

    .line 102
    :cond_0
    new-instance p1, Landroidx/security/identity/CipherSuiteNotSupportedException;

    const-string p2, "Unsupported Cipher Suite"

    invoke-direct {p1, p2}, Landroidx/security/identity/CipherSuiteNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkAccess(Ljava/util/Collection;Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/security/identity/AccessControlProfileId;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;)I"
        }
    .end annotation

    .line 681
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x6

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/security/identity/AccessControlProfileId;

    .line 682
    iget-object v1, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    invoke-virtual {v1, v0}, Landroidx/security/identity/CredentialData;->getAccessControlProfile(Landroidx/security/identity/AccessControlProfileId;)Landroidx/security/identity/AccessControlProfile;

    move-result-object v0

    .line 683
    invoke-direct {p0, v0, p2}, Landroidx/security/identity/SoftwareIdentityCredential;->checkAccessSingleProfile(Landroidx/security/identity/AccessControlProfile;Ljava/util/Collection;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return v0
.end method

.method private checkAccessSingleProfile(Landroidx/security/identity/AccessControlProfile;Ljava/util/Collection;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/security/identity/AccessControlProfile;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;)I"
        }
    .end annotation

    .line 640
    invoke-virtual {p1}, Landroidx/security/identity/AccessControlProfile;->isUserAuthenticationRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    invoke-virtual {p1}, Landroidx/security/identity/AccessControlProfile;->getAccessControlProfileId()Landroidx/security/identity/AccessControlProfileId;

    move-result-object v1

    .line 642
    invoke-direct {p0}, Landroidx/security/identity/SoftwareIdentityCredential;->didUserAuth()Z

    move-result v2

    .line 641
    invoke-virtual {v0, v1, v2}, Landroidx/security/identity/CredentialData;->checkUserAuthentication(Landroidx/security/identity/AccessControlProfileId;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x4

    return p1

    .line 647
    :cond_0
    invoke-virtual {p1}, Landroidx/security/identity/AccessControlProfile;->getReaderCertificate()Ljava/security/cert/X509Certificate;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x5

    if-nez p2, :cond_1

    return v1

    .line 655
    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    .line 656
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 657
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 658
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_0
    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method static delete(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-static {p0, p1, v0}, Landroidx/security/identity/CredentialData;->delete(Landroid/content/Context;Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private didUserAuth()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mDidUserAuthAlreadyCalled:Z

    if-nez v0, :cond_0

    .line 405
    invoke-direct {p0}, Landroidx/security/identity/SoftwareIdentityCredential;->didUserAuthNoCache()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mDidUserAuthResult:Z

    const/4 v0, 0x1

    .line 406
    iput-boolean v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mDidUserAuthAlreadyCalled:Z

    .line 408
    :cond_0
    iget-boolean v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mDidUserAuthResult:Z

    return v0
.end method

.method private didUserAuthNoCache()Z
    .locals 3

    .line 412
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mCryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 418
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 421
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method

.method private ensureAuthKey()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/NoAuthenticationKeyAvailableException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mAuthKey:Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    iget-boolean v1, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mAllowUsingExhaustedKeys:Z

    iget-boolean v2, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mAllowUsingExpiredKeys:Z

    invoke-virtual {v0, v1, v2}, Landroidx/security/identity/CredentialData;->selectAuthenticationKey(ZZ)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/security/PrivateKey;

    iput-object v1, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mAuthKey:Ljava/security/PrivateKey;

    .line 352
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    iput-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mAuthKeyAssociatedData:[B

    return-void

    .line 348
    :cond_1
    new-instance v0, Landroidx/security/identity/NoAuthenticationKeyAvailableException;

    const-string v1, "No authentication key available for signing"

    invoke-direct {v0, v1}, Landroidx/security/identity/NoAuthenticationKeyAvailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureCryptoObject()V
    .locals 3

    .line 315
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    invoke-virtual {v0}, Landroidx/security/identity/CredentialData;->getPerReaderSessionKeyAlias()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "AndroidKeyStore"

    .line 321
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    .line 322
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 323
    invoke-virtual {v1, v0, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    .line 324
    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    const-string v1, "AES/GCM/NoPadding"

    .line 325
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 326
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 327
    new-instance v0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-direct {v0, v1}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    iput-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mCryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0

    :catch_6
    move-exception v0

    .line 335
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error creating Cipher for perReaderSessionKey"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private ensureSessionEncryptionKey()V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "AES"

    const-string v2, "HmacSha256"

    .line 219
    iget-object v3, v1, Landroidx/security/identity/SoftwareIdentityCredential;->mSKDevice:Ljavax/crypto/SecretKey;

    if-eqz v3, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v3, v1, Landroidx/security/identity/SoftwareIdentityCredential;->mReaderEphemeralPublicKey:Ljava/security/PublicKey;

    if-eqz v3, :cond_2

    .line 225
    iget-object v3, v1, Landroidx/security/identity/SoftwareIdentityCredential;->mSessionTranscript:[B

    if-eqz v3, :cond_1

    :try_start_0
    const-string v3, "ECDH"

    .line 229
    invoke-static {v3}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v3

    .line 230
    iget-object v4, v1, Landroidx/security/identity/SoftwareIdentityCredential;->mEphemeralKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v4}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 231
    iget-object v4, v1, Landroidx/security/identity/SoftwareIdentityCredential;->mReaderEphemeralPublicKey:Ljava/security/PublicKey;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 232
    invoke-virtual {v3}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v3

    .line 234
    iget-object v4, v1, Landroidx/security/identity/SoftwareIdentityCredential;->mSessionTranscript:[B

    .line 235
    invoke-static {v4}, Landroidx/security/identity/Util;->cborBuildTaggedByteString([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v4

    invoke-static {v4}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object v4

    const-string v6, "SHA-256"

    .line 236
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

    .line 239
    invoke-static {v2, v3, v4, v7, v14}, Landroidx/security/identity/Util;->computeHkdf(Ljava/lang/String;[B[B[BI)[B

    move-result-object v7

    .line 240
    new-instance v14, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v14, v7, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v14, v1, Landroidx/security/identity/SoftwareIdentityCredential;->mSKDevice:Ljavax/crypto/SecretKey;

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

    .line 243
    invoke-static {v2, v3, v4, v6, v7}, Landroidx/security/identity/Util;->computeHkdf(Ljava/lang/String;[B[B[BI)[B

    move-result-object v2

    .line 244
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v3, v1, Landroidx/security/identity/SoftwareIdentityCredential;->mSKReader:Ljavax/crypto/SecretKey;

    .line 246
    iput v5, v1, Landroidx/security/identity/SoftwareIdentityCredential;->mSKDeviceCounter:I

    .line 247
    iput v5, v1, Landroidx/security/identity/SoftwareIdentityCredential;->mSKReaderCounter:I
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 251
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error performing key agreement"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 226
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Session transcript not set"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Reader ephemeral key not set"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasEphemeralKeyInSessionTranscript([B)Z
    .locals 3

    .line 376
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mEphemeralKeyPair:Ljava/security/KeyPair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 382
    :cond_0
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Landroidx/security/identity/Util;->stripLeadingZeroes([B)[B

    move-result-object v2

    .line 387
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroidx/security/identity/Util;->stripLeadingZeroes([B)[B

    move-result-object v0

    .line 388
    invoke-static {p1, v2}, Landroidx/security/identity/Util;->hasSubByteArray([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 389
    invoke-static {p1, v0}, Landroidx/security/identity/Util;->hasSubByteArray([B[B)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static parseRequestMessage([B)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 143
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 144
    new-instance p0, Lco/nstant/in/cbor/CborDecoder;

    invoke-direct {p0, v1}, Lco/nstant/in/cbor/CborDecoder;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lco/nstant/in/cbor/CborDecoder;->decode()Ljava/util/List;

    move-result-object p0

    .line 145
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/4 v1, 0x0

    .line 148
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lco/nstant/in/cbor/model/Map;

    if-eqz v2, :cond_7

    .line 151
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/Map;

    .line 153
    new-instance v1, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v2, "nameSpaces"

    invoke-direct {v1, v2}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p0

    .line 154
    instance-of v1, p0, Lco/nstant/in/cbor/model/Map;

    if-eqz v1, :cond_6

    .line 159
    move-object v1, p0

    check-cast v1, Lco/nstant/in/cbor/model/Map;

    invoke-virtual {v1}, Lco/nstant/in/cbor/model/Map;->getKeys()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/nstant/in/cbor/model/DataItem;

    .line 160
    instance-of v3, v2, Lco/nstant/in/cbor/model/UnicodeString;

    if-eqz v3, :cond_4

    .line 164
    move-object v3, v2

    check-cast v3, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-virtual {v3}, Lco/nstant/in/cbor/model/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v3

    .line 165
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 167
    move-object v5, p0

    check-cast v5, Lco/nstant/in/cbor/model/Map;

    invoke-virtual {v5, v2}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v2

    .line 168
    instance-of v5, v2, Lco/nstant/in/cbor/model/Map;

    if-eqz v5, :cond_3

    .line 172
    check-cast v2, Lco/nstant/in/cbor/model/Map;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/Map;->getKeys()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/nstant/in/cbor/model/DataItem;

    .line 173
    instance-of v6, v5, Lco/nstant/in/cbor/model/UnicodeString;

    if-eqz v6, :cond_1

    .line 177
    check-cast v5, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-virtual {v5}, Lco/nstant/in/cbor/model/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 174
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Item in nameSpaces array not UnicodeString"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_2
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Value item in NameSpaces map not Map"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 161
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Key item in NameSpaces map not UnicodeString"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object v0

    .line 155
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "nameSpaces entry not found or not map"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Item is not a map"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 146
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

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

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lco/nstant/in/cbor/CborException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 184
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error decoding request message"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private retrieveValues([BLjava/util/HashMap;Ljava/util/Collection;Ljava/util/Map;Landroidx/security/identity/SimpleResultData$Builder;Lco/nstant/in/cbor/builder/MapBuilder;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroidx/security/identity/SimpleResultData$Builder;",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "Lco/nstant/in/cbor/CborBuilder;",
            ">;)V"
        }
    .end annotation

    .line 562
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    move-object/from16 v1, p4

    .line 563
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    move-object v11, p0

    .line 565
    iget-object v2, v11, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    invoke-virtual {v2, v9}, Landroidx/security/identity/CredentialData;->lookupNamespaceData(Ljava/lang/String;)Landroidx/security/identity/PersonalizationData$NamespaceData;

    move-result-object v10

    move-object v12, p2

    .line 568
    invoke-virtual {p2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    move-object v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v6, p1

    move-object/from16 v8, p3

    .line 570
    invoke-direct/range {v2 .. v10}, Landroidx/security/identity/SoftwareIdentityCredential;->retrieveValuesForNamespace(Landroidx/security/identity/SimpleResultData$Builder;Lco/nstant/in/cbor/builder/MapBuilder;Ljava/util/Collection;[BLjava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Landroidx/security/identity/PersonalizationData$NamespaceData;)V

    goto :goto_0

    :cond_0
    move-object v11, p0

    return-void
.end method

.method private retrieveValuesForNamespace(Landroidx/security/identity/SimpleResultData$Builder;Lco/nstant/in/cbor/builder/MapBuilder;Ljava/util/Collection;[BLjava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Landroidx/security/identity/PersonalizationData$NamespaceData;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/security/identity/SimpleResultData$Builder;",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "Lco/nstant/in/cbor/CborBuilder;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/lang/String;",
            "Landroidx/security/identity/PersonalizationData$NamespaceData;",
            ")V"
        }
    .end annotation

    .line 592
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p8, :cond_0

    .line 596
    invoke-virtual {p8, v2}, Landroidx/security/identity/PersonalizationData$NamespaceData;->getEntryValue(Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v0

    :goto_1
    if-nez v3, :cond_1

    const/4 v3, 0x1

    .line 600
    invoke-virtual {p1, p7, v2, v3}, Landroidx/security/identity/SimpleResultData$Builder;->addErrorStatus(Ljava/lang/String;Ljava/lang/String;I)Landroidx/security/identity/SimpleResultData$Builder;

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_3

    if-eqz p5, :cond_2

    .line 608
    invoke-interface {p5, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const/4 v3, 0x3

    .line 609
    invoke-virtual {p1, p7, v2, v3}, Landroidx/security/identity/SimpleResultData$Builder;->addErrorStatus(Ljava/lang/String;Ljava/lang/String;I)Landroidx/security/identity/SimpleResultData$Builder;

    goto :goto_0

    .line 617
    :cond_3
    invoke-virtual {p8, v2}, Landroidx/security/identity/PersonalizationData$NamespaceData;->getAccessControlProfileIds(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    .line 620
    invoke-direct {p0, v4, p6}, Landroidx/security/identity/SoftwareIdentityCredential;->checkAccess(Ljava/util/Collection;Ljava/util/Collection;)I

    move-result v4

    if-eqz v4, :cond_4

    .line 622
    invoke-virtual {p1, p7, v2, v4}, Landroidx/security/identity/SimpleResultData$Builder;->addErrorStatus(Ljava/lang/String;Ljava/lang/String;I)Landroidx/security/identity/SimpleResultData$Builder;

    goto :goto_0

    .line 626
    :cond_4
    invoke-virtual {p1, p7, v2, v3}, Landroidx/security/identity/SimpleResultData$Builder;->addEntry(Ljava/lang/String;Ljava/lang/String;[B)Landroidx/security/identity/SimpleResultData$Builder;

    if-nez v1, :cond_5

    .line 628
    invoke-virtual {p2, p7}, Lco/nstant/in/cbor/builder/MapBuilder;->putMap(Ljava/lang/String;)Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v1

    .line 631
    :cond_5
    invoke-static {v3}, Landroidx/security/identity/Util;->cborDecode([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v3

    .line 632
    new-instance v4, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-direct {v4, v2}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v3}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public createEphemeralKeyPair()Ljava/security/KeyPair;
    .locals 3

    .line 191
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mEphemeralKeyPair:Ljava/security/KeyPair;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "EC"

    .line 193
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string v2, "prime256v1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 196
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mEphemeralKeyPair:Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 199
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error generating ephemeral key"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 202
    :cond_0
    :goto_1
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mEphemeralKeyPair:Ljava/security/KeyPair;

    return-object v0
.end method

.method public decryptMessageFromReader([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/MessageDecryptionException;
        }
    .end annotation

    .line 285
    invoke-direct {p0}, Landroidx/security/identity/SoftwareIdentityCredential;->ensureSessionEncryptionKey()V

    const/16 v0, 0xc

    .line 286
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 287
    invoke-virtual {v0, v1, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    .line 288
    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 289
    iget v1, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mSKReaderCounter:I

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    :try_start_0
    const-string v1, "AES/GCM/NoPadding"

    .line 292
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 293
    iget-object v3, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mSKReader:Ljavax/crypto/SecretKey;

    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    .line 294
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {v4, v5, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 293
    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 295
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    iget v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mSKReaderCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mSKReaderCounter:I

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

    .line 302
    :goto_0
    new-instance v0, Landroidx/security/identity/MessageDecryptionException;

    const-string v1, "Error decrypting message"

    invoke-direct {v0, v1, p1}, Landroidx/security/identity/MessageDecryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public delete([B)[B
    .locals 2

    .line 122
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mCredentialName:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroidx/security/identity/CredentialData;->delete(Landroid/content/Context;Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public encryptMessageToReader([B)[B
    .locals 5

    .line 258
    invoke-direct {p0}, Landroidx/security/identity/SoftwareIdentityCredential;->ensureSessionEncryptionKey()V

    const/16 v0, 0xc

    .line 261
    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 262
    invoke-virtual {v0, v1, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 263
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    .line 264
    iget v3, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mSKDeviceCounter:I

    invoke-virtual {v0, v1, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const-string v1, "AES/GCM/NoPadding"

    .line 265
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 266
    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v4, 0x80

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 267
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mSKDevice:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 268
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    iget v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mSKDeviceCounter:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mSKDeviceCounter:I

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

    .line 275
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

    .line 699
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    invoke-virtual {v0}, Landroidx/security/identity/CredentialData;->getAuthKeysNeedingCertification()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticationDataUsageCount()[I
    .locals 1

    .line 722
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    invoke-virtual {v0}, Landroidx/security/identity/CredentialData;->getAuthKeyUseCounts()[I

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

    .line 311
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    invoke-virtual {v0}, Landroidx/security/identity/CredentialData;->getCredentialKeyCertificateChain()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;
    .locals 1

    .line 371
    invoke-direct {p0}, Landroidx/security/identity/SoftwareIdentityCredential;->ensureCryptoObject()V

    .line 372
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mCryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;

    return-object v0
.end method

.method public getEntries([BLjava/util/Map;[B)Landroidx/security/identity/ResultData;
    .locals 10
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

    .line 441
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mSessionTranscript:[B

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroidx/security/identity/SoftwareIdentityCredential;->hasEphemeralKeyInSessionTranscript([B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    new-instance p1, Landroidx/security/identity/EphemeralPublicKeyNotFoundException;

    const-string p2, "Did not find ephemeral public key X and Y coordinates in SessionTranscript (make sure leading zeroes are not used)"

    invoke-direct {p1, p2}, Landroidx/security/identity/EphemeralPublicKeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 447
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/security/identity/SoftwareIdentityCredential;->parseRequestMessage([B)Ljava/util/HashMap;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz p3, :cond_7

    .line 452
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mSessionTranscript:[B

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    .line 461
    invoke-static {p3}, Landroidx/security/identity/Util;->cborDecode([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    .line 462
    invoke-static {v0}, Landroidx/security/identity/Util;->coseSign1GetX5Chain(Lco/nstant/in/cbor/model/DataItem;)Ljava/util/Collection;

    move-result-object v0

    .line 463
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_4

    .line 466
    invoke-static {v0}, Landroidx/security/identity/Util;->validateCertificateChain(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 469
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 471
    new-instance v3, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v3}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 472
    invoke-virtual {v3}, Lco/nstant/in/cbor/CborBuilder;->addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v3

    const-string v4, "ReaderAuthentication"

    .line 473
    invoke-virtual {v3, v4}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Ljava/lang/String;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mSessionTranscript:[B

    .line 474
    invoke-static {v4}, Landroidx/security/identity/Util;->cborDecode([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v3

    .line 475
    invoke-static {p1}, Landroidx/security/identity/Util;->cborBuildTaggedByteString([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v3

    .line 476
    invoke-virtual {v3}, Lco/nstant/in/cbor/builder/ArrayBuilder;->end()Lco/nstant/in/cbor/builder/AbstractBuilder;

    move-result-object v3

    check-cast v3, Lco/nstant/in/cbor/CborBuilder;

    .line 477
    invoke-virtual {v3}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/nstant/in/cbor/model/DataItem;

    .line 471
    invoke-static {v3}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object v3

    .line 480
    invoke-static {v3}, Landroidx/security/identity/Util;->cborBuildTaggedByteString([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v3

    invoke-static {v3}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object v3

    .line 482
    invoke-static {p3}, Landroidx/security/identity/Util;->cborDecode([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p3

    .line 481
    invoke-static {p3, v3, v1}, Landroidx/security/identity/Util;->coseSign1CheckSignature(Lco/nstant/in/cbor/model/DataItem;[BLjava/security/PublicKey;)Z

    move-result p3

    if-eqz p3, :cond_2

    move-object v3, v0

    goto :goto_1

    .line 485
    :cond_2
    new-instance p1, Landroidx/security/identity/InvalidReaderSignatureException;

    const-string p2, "Reader signature check failed"

    invoke-direct {p1, p2}, Landroidx/security/identity/InvalidReaderSignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 467
    :cond_3
    new-instance p1, Landroidx/security/identity/InvalidReaderSignatureException;

    const-string p2, "Error validating certificate chain"

    invoke-direct {p1, p2}, Landroidx/security/identity/InvalidReaderSignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 464
    :cond_4
    new-instance p1, Landroidx/security/identity/InvalidReaderSignatureException;

    const-string p2, "No x5chain element in reader signature"

    invoke-direct {p1, p2}, Landroidx/security/identity/InvalidReaderSignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 457
    :cond_5
    new-instance p1, Landroidx/security/identity/InvalidReaderSignatureException;

    const-string p2, "readerSignature non-null but requestMessage was null"

    invoke-direct {p1, p2}, Landroidx/security/identity/InvalidReaderSignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 453
    :cond_6
    new-instance p1, Landroidx/security/identity/InvalidReaderSignatureException;

    const-string p2, "readerSignature non-null but sessionTranscript was null"

    invoke-direct {p1, p2}, Landroidx/security/identity/InvalidReaderSignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    move-object v3, v8

    .line 489
    :goto_1
    new-instance p3, Landroidx/security/identity/SimpleResultData$Builder;

    invoke-direct {p3}, Landroidx/security/identity/SimpleResultData$Builder;-><init>()V

    .line 491
    new-instance v9, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v9}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 492
    invoke-virtual {v9}, Lco/nstant/in/cbor/CborBuilder;->addMap()Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 495
    invoke-direct/range {v0 .. v6}, Landroidx/security/identity/SoftwareIdentityCredential;->retrieveValues([BLjava/util/HashMap;Ljava/util/Collection;Ljava/util/Map;Landroidx/security/identity/SimpleResultData$Builder;Lco/nstant/in/cbor/builder/MapBuilder;)V

    .line 502
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 503
    new-instance p2, Lco/nstant/in/cbor/CborEncoder;

    invoke-direct {p2, p1}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    .line 504
    invoke-virtual {v9}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    .line 506
    :try_start_0
    invoke-virtual {p2, v0}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V
    :try_end_0
    .catch Lco/nstant/in/cbor/CborException; {:try_start_0 .. :try_end_0} :catch_3

    .line 510
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 511
    invoke-virtual {p3, p1}, Landroidx/security/identity/SimpleResultData$Builder;->setAuthenticatedData([B)Landroidx/security/identity/SimpleResultData$Builder;

    .line 520
    iget-object p2, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mSessionTranscript:[B

    if-eqz p2, :cond_8

    .line 521
    invoke-direct {p0}, Landroidx/security/identity/SoftwareIdentityCredential;->ensureAuthKey()V

    .line 522
    iget-object p2, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mAuthKeyAssociatedData:[B

    invoke-virtual {p3, p2}, Landroidx/security/identity/SimpleResultData$Builder;->setStaticAuthenticationData([B)Landroidx/security/identity/SimpleResultData$Builder;

    .line 524
    new-instance p2, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {p2}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 525
    invoke-virtual {p2}, Lco/nstant/in/cbor/CborBuilder;->addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p2

    const-string v0, "DeviceAuthentication"

    .line 526
    invoke-virtual {p2, v0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Ljava/lang/String;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p2

    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mSessionTranscript:[B

    .line 527
    invoke-static {v0}, Landroidx/security/identity/Util;->cborDecode([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    invoke-virtual {p2, v0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p2

    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    .line 528
    invoke-virtual {v0}, Landroidx/security/identity/CredentialData;->getDocType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Ljava/lang/String;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p2

    .line 529
    invoke-static {p1}, Landroidx/security/identity/Util;->cborBuildTaggedByteString([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-virtual {p2, p1}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p1

    .line 530
    invoke-virtual {p1}, Lco/nstant/in/cbor/builder/ArrayBuilder;->end()Lco/nstant/in/cbor/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lco/nstant/in/cbor/CborBuilder;

    .line 531
    invoke-virtual {p1}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lco/nstant/in/cbor/model/DataItem;

    .line 524
    invoke-static {p1}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p1

    .line 534
    invoke-static {p1}, Landroidx/security/identity/Util;->cborBuildTaggedByteString([B)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-static {p1}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p1

    :try_start_1
    const-string p2, "SHA256withECDSA"

    .line 537
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    .line 538
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mAuthKey:Ljava/security/PrivateKey;

    invoke-virtual {p2, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 540
    invoke-static {p2, v8, p1, v8}, Landroidx/security/identity/Util;->coseSign1Sign(Ljava/security/Signature;[B[BLjava/util/Collection;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-static {p1}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p1

    .line 539
    invoke-virtual {p3, p1}, Landroidx/security/identity/SimpleResultData$Builder;->setEcdsaSignature([B)Landroidx/security/identity/SimpleResultData$Builder;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 547
    :goto_2
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Error signing DeviceAuthentication CBOR"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 551
    :cond_8
    :goto_3
    invoke-virtual {p3}, Landroidx/security/identity/SimpleResultData$Builder;->build()Landroidx/security/identity/SimpleResultData;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    .line 508
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Error encoding deviceNameSpace"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method loadData()Z
    .locals 2

    .line 109
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mCredentialName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/security/identity/CredentialData;->loadCredentialData(Landroid/content/Context;Ljava/lang/String;)Landroidx/security/identity/CredentialData;

    move-result-object v0

    iput-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public proveOwnership([B)[B
    .locals 1

    .line 127
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    invoke-virtual {v0, p1}, Landroidx/security/identity/CredentialData;->proveOwnership([B)[B

    move-result-object p1

    return-object p1
.end method

.method public setAllowUsingExhaustedKeys(Z)V
    .locals 0

    .line 360
    iput-boolean p1, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mAllowUsingExhaustedKeys:Z

    return-void
.end method

.method public setAllowUsingExpiredKeys(Z)V
    .locals 0

    .line 365
    iput-boolean p1, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mAllowUsingExpiredKeys:Z

    return-void
.end method

.method public setAvailableAuthenticationKeys(II)V
    .locals 1

    .line 693
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    invoke-virtual {v0, p1, p2}, Landroidx/security/identity/CredentialData;->setAvailableAuthenticationKeys(II)V

    return-void
.end method

.method public setReaderEphemeralPublicKey(Ljava/security/PublicKey;)V
    .locals 0

    .line 207
    iput-object p1, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mReaderEphemeralPublicKey:Ljava/security/PublicKey;

    return-void
.end method

.method public setSessionTranscript([B)V
    .locals 1

    .line 212
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mSessionTranscript:[B

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mSessionTranscript:[B

    return-void

    .line 213
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "SessionTranscript already set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public storeStaticAuthenticationData(Ljava/security/cert/X509Certificate;Landroid/icu/util/Calendar;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/UnknownAuthenticationKeyException;
        }
    .end annotation

    .line 715
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/security/identity/CredentialData;->storeStaticAuthenticationData(Ljava/security/cert/X509Certificate;Landroid/icu/util/Calendar;[B)V

    return-void
.end method

.method public storeStaticAuthenticationData(Ljava/security/cert/X509Certificate;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/UnknownAuthenticationKeyException;
        }
    .end annotation

    .line 706
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroidx/security/identity/CredentialData;->storeStaticAuthenticationData(Ljava/security/cert/X509Certificate;Landroid/icu/util/Calendar;[B)V

    return-void
.end method

.method public update(Landroidx/security/identity/PersonalizationData;)[B
    .locals 11

    .line 728
    :try_start_0
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    invoke-virtual {v0}, Landroidx/security/identity/CredentialData;->getDocType()Ljava/lang/String;

    move-result-object v2

    .line 729
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    invoke-virtual {v0}, Landroidx/security/identity/CredentialData;->getCredentialKeyCertificateChain()Ljava/util/Collection;

    move-result-object v5

    .line 730
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    invoke-virtual {v0}, Landroidx/security/identity/CredentialData;->getCredentialKeyPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    .line 731
    iget-object v1, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    invoke-virtual {v1}, Landroidx/security/identity/CredentialData;->getAuthKeyCount()I

    move-result v9

    .line 732
    iget-object v1, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    invoke-virtual {v1}, Landroidx/security/identity/CredentialData;->getAuthMaxUsesPerKey()I

    move-result v10

    .line 735
    invoke-static {v2, p1, v0}, Landroidx/security/identity/SoftwareWritableIdentityCredential;->buildProofOfProvisioningWithSignature(Ljava/lang/String;Landroidx/security/identity/PersonalizationData;Ljava/security/PrivateKey;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    .line 740
    invoke-static {v0}, Landroidx/security/identity/Util;->coseSign1GetData(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object v1

    const-string v3, "SHA-256"

    .line 741
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 746
    iget-object v1, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    invoke-virtual {v1}, Landroidx/security/identity/CredentialData;->deleteKeysForReplacement()V

    .line 748
    iget-object v1, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mCredentialName:Ljava/lang/String;

    .line 752
    invoke-static {v3}, Landroidx/security/identity/CredentialData;->getAliasFromCredentialName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    move-object v6, p1

    .line 748
    invoke-static/range {v1 .. v8}, Landroidx/security/identity/CredentialData;->createCredentialData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroidx/security/identity/PersonalizationData;[BZ)Landroidx/security/identity/CredentialData;

    move-result-object p1

    iput-object p1, p0, Landroidx/security/identity/SoftwareIdentityCredential;->mData:Landroidx/security/identity/CredentialData;

    .line 759
    invoke-virtual {p1, v9, v10}, Landroidx/security/identity/CredentialData;->setAvailableAuthenticationKeys(II)V

    .line 761
    invoke-static {v0}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 764
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error digesting ProofOfProvisioning"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
