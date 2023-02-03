.class Landroidx/security/identity/CredentialData;
.super Ljava/lang/Object;
.source "CredentialData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/security/identity/CredentialData$AuthKeyData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CredentialData"


# instance fields
.field private mAccessControlProfiles:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList<",
            "Landroidx/security/identity/AccessControlProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mAcpTimeoutKeyAliases:Ljava/util/AbstractMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthKeyCount:I

.field private mAuthKeyDatas:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList<",
            "Landroidx/security/identity/CredentialData$AuthKeyData;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthMaxUsesPerKey:I

.field private mCertificateChain:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCredentialKeyAlias:Ljava/lang/String;

.field private mCredentialName:Ljava/lang/String;

.field private mDocType:Ljava/lang/String;

.field private mNamespaceDatas:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList<",
            "Landroidx/security/identity/PersonalizationData$NamespaceData;",
            ">;"
        }
    .end annotation
.end field

.field private mPerReaderSessionKeyAlias:Ljava/lang/String;

.field private mProfileIdToAcpMap:Ljava/util/AbstractMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractMap<",
            "Ljava/lang/Integer;",
            "Landroidx/security/identity/AccessControlProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mProofOfProvisioningSha256:[B


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 88
    iput-object v0, p0, Landroidx/security/identity/CredentialData;->mDocType:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Landroidx/security/identity/CredentialData;->mCredentialKeyAlias:Ljava/lang/String;

    const/4 v1, 0x0

    .line 90
    iput-object v1, p0, Landroidx/security/identity/CredentialData;->mCertificateChain:Ljava/util/Collection;

    .line 91
    iput-object v1, p0, Landroidx/security/identity/CredentialData;->mProofOfProvisioningSha256:[B

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/security/identity/CredentialData;->mAccessControlProfiles:Ljava/util/AbstractList;

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/security/identity/CredentialData;->mProfileIdToAcpMap:Ljava/util/AbstractMap;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/security/identity/CredentialData;->mNamespaceDatas:Ljava/util/AbstractList;

    const/4 v1, 0x0

    .line 96
    iput v1, p0, Landroidx/security/identity/CredentialData;->mAuthKeyCount:I

    const/4 v1, 0x1

    .line 97
    iput v1, p0, Landroidx/security/identity/CredentialData;->mAuthMaxUsesPerKey:I

    .line 102
    iput-object v0, p0, Landroidx/security/identity/CredentialData;->mPerReaderSessionKeyAlias:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/security/identity/CredentialData;->mAuthKeyDatas:Ljava/util/AbstractList;

    .line 113
    iput-object p1, p0, Landroidx/security/identity/CredentialData;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Landroidx/security/identity/CredentialData;->mCredentialName:Ljava/lang/String;

    return-void
.end method

.method static buildProofOfDeletionSignature(Ljava/lang/String;Ljava/security/PrivateKey;[B)[B
    .locals 3

    .line 391
    new-instance v0, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v0}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 392
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborBuilder;->addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v1

    const-string v2, "ProofOfDeletion"

    .line 393
    invoke-virtual {v1, v2}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Ljava/lang/String;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v2

    .line 394
    invoke-virtual {v2, p0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Ljava/lang/String;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    if-eqz p2, :cond_0

    .line 396
    invoke-virtual {v1, p2}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    :cond_0
    const/4 p0, 0x0

    .line 398
    invoke-virtual {v1, p0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Z)Lco/nstant/in/cbor/builder/ArrayBuilder;

    .line 402
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 403
    new-instance v1, Lco/nstant/in/cbor/CborEncoder;

    invoke-direct {v1, p2}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    .line 404
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {v1, p0}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 405
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 p2, 0x0

    .line 407
    invoke-static {p1, p0, p2, p2}, Landroidx/security/identity/Util;->coseSign1Sign(Ljava/security/PrivateKey;[B[BLjava/util/Collection;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p0

    invoke-static {p0}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lco/nstant/in/cbor/CborException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    .line 415
    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Error building ProofOfDeletion"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private checkUserAuthenticationTimeout(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AndroidKeyStore"

    .line 1187
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    .line 1188
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1189
    invoke-virtual {v1, p1, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    .line 1190
    check-cast p1, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {p1}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    const-string v1, "AES/GCM/NoPadding"

    .line 1192
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 1193
    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 p1, 0x2

    new-array v3, p1, [B

    aput-byte v2, v3, v0

    aput-byte p1, v3, v2

    .line 1195
    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v0
.end method

.method static createCredentialData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroidx/security/identity/PersonalizationData;[BZ)Landroidx/security/identity/CredentialData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Landroidx/security/identity/PersonalizationData;",
            "[BZ)",
            "Landroidx/security/identity/CredentialData;"
        }
    .end annotation

    if-nez p7, :cond_1

    .line 182
    invoke-static {p0, p2}, Landroidx/security/identity/CredentialData;->credentialAlreadyExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p7

    if-nez p7, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Credential with given name already exists"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 187
    :cond_1
    :goto_0
    new-instance p7, Landroidx/security/identity/CredentialData;

    invoke-direct {p7, p0, p2}, Landroidx/security/identity/CredentialData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    iput-object p1, p7, Landroidx/security/identity/CredentialData;->mDocType:Ljava/lang/String;

    .line 189
    iput-object p3, p7, Landroidx/security/identity/CredentialData;->mCredentialKeyAlias:Ljava/lang/String;

    .line 190
    iput-object p4, p7, Landroidx/security/identity/CredentialData;->mCertificateChain:Ljava/util/Collection;

    .line 191
    iput-object p6, p7, Landroidx/security/identity/CredentialData;->mProofOfProvisioningSha256:[B

    .line 192
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, p7, Landroidx/security/identity/CredentialData;->mAccessControlProfiles:Ljava/util/AbstractList;

    .line 193
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, p7, Landroidx/security/identity/CredentialData;->mProfileIdToAcpMap:Ljava/util/AbstractMap;

    .line 194
    invoke-virtual {p5}, Landroidx/security/identity/PersonalizationData;->getAccessControlProfiles()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/security/identity/AccessControlProfile;

    .line 195
    iget-object p3, p7, Landroidx/security/identity/CredentialData;->mAccessControlProfiles:Ljava/util/AbstractList;

    invoke-virtual {p3, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object p3, p7, Landroidx/security/identity/CredentialData;->mProfileIdToAcpMap:Ljava/util/AbstractMap;

    invoke-virtual {p1}, Landroidx/security/identity/AccessControlProfile;->getAccessControlProfileId()Landroidx/security/identity/AccessControlProfileId;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/security/identity/AccessControlProfileId;->getId()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 198
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, p7, Landroidx/security/identity/CredentialData;->mNamespaceDatas:Ljava/util/AbstractList;

    .line 199
    invoke-virtual {p5}, Landroidx/security/identity/PersonalizationData;->getNamespaceDatas()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->addAll(Ljava/util/Collection;)Z

    .line 201
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, p7, Landroidx/security/identity/CredentialData;->mAcpTimeoutKeyAliases:Ljava/util/AbstractMap;

    .line 202
    invoke-virtual {p5}, Landroidx/security/identity/PersonalizationData;->getAccessControlProfiles()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/security/identity/AccessControlProfile;

    .line 203
    invoke-virtual {p1}, Landroidx/security/identity/AccessControlProfile;->isUserAuthenticationRequired()Z

    move-result p3

    .line 204
    invoke-virtual {p1}, Landroidx/security/identity/AccessControlProfile;->getUserAuthenticationTimeout()J

    move-result-wide p4

    if-eqz p3, :cond_3

    .line 209
    invoke-static {p2, p7}, Landroidx/security/identity/CredentialData;->ensurePerReaderSessionKey(Ljava/lang/String;Landroidx/security/identity/CredentialData;)V

    .line 211
    invoke-static {p2, p7, p1, p4, p5}, Landroidx/security/identity/CredentialData;->ensureAcpTimoutKeyForProfile(Ljava/lang/String;Landroidx/security/identity/CredentialData;Landroidx/security/identity/AccessControlProfile;J)V

    goto :goto_2

    .line 215
    :cond_4
    invoke-direct {p7}, Landroidx/security/identity/CredentialData;->createDataEncryptionKey()V

    .line 217
    invoke-direct {p7}, Landroidx/security/identity/CredentialData;->saveToDisk()V

    return-object p7
.end method

.method private createDataEncryptionKey()V
    .locals 4

    .line 487
    :try_start_0
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mCredentialName:Ljava/lang/String;

    invoke-static {v0}, Landroidx/security/identity/CredentialData;->getDataKeyAliasFromCredentialName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AES"

    const-string v2, "AndroidKeyStore"

    .line 488
    invoke-static {v1, v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 490
    new-instance v2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v0, "GCM"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-virtual {v2, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const-string v2, "NoPadding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 494
    invoke-virtual {v0, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const/16 v2, 0x80

    .line 495
    invoke-virtual {v0, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 497
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 501
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error creating data encryption key"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static credentialAlreadyExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 222
    invoke-static {p1}, Landroidx/security/identity/CredentialData;->getFilenameForCredentialData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 223
    new-instance v0, Landroid/util/AtomicFile;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 225
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method static delete(Landroid/content/Context;Ljava/lang/String;[B)[B
    .locals 3

    .line 421
    invoke-static {p1}, Landroidx/security/identity/CredentialData;->getFilenameForCredentialData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    new-instance v1, Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    .line 424
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    .line 429
    new-instance v2, Landroidx/security/identity/CredentialData;

    invoke-direct {v2, p0, p1}, Landroidx/security/identity/CredentialData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 430
    invoke-static {p1}, Landroidx/security/identity/CredentialData;->getDataKeyAliasFromCredentialName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 432
    :try_start_1
    invoke-direct {v2, p0}, Landroidx/security/identity/CredentialData;->loadFromDisk(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    const-string p0, "AndroidKeyStore"

    .line 442
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    .line 443
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 444
    iget-object p1, v2, Landroidx/security/identity/CredentialData;->mCredentialKeyAlias:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_2 .. :try_end_2} :catch_1

    .line 453
    iget-object v0, v2, Landroidx/security/identity/CredentialData;->mDocType:Ljava/lang/String;

    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 454
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    .line 453
    invoke-static {v0, p1, p2}, Landroidx/security/identity/CredentialData;->buildProofOfDeletionSignature(Ljava/lang/String;Ljava/security/PrivateKey;[B)[B

    move-result-object p1

    .line 456
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 460
    :try_start_3
    iget-object p2, v2, Landroidx/security/identity/CredentialData;->mCredentialKeyAlias:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 461
    iget-object p2, v2, Landroidx/security/identity/CredentialData;->mPerReaderSessionKeyAlias:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 462
    iget-object p2, v2, Landroidx/security/identity/CredentialData;->mPerReaderSessionKeyAlias:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 464
    :cond_0
    iget-object p2, v2, Landroidx/security/identity/CredentialData;->mAcpTimeoutKeyAliases:Ljava/util/AbstractMap;

    invoke-virtual {p2}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 465
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_1
    iget-object p2, v2, Landroidx/security/identity/CredentialData;->mAuthKeyDatas:Ljava/util/AbstractList;

    invoke-virtual {p2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/security/identity/CredentialData$AuthKeyData;

    .line 468
    iget-object v1, v0, Landroidx/security/identity/CredentialData$AuthKeyData;->mAlias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 469
    iget-object v1, v0, Landroidx/security/identity/CredentialData$AuthKeyData;->mAlias:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 471
    :cond_3
    iget-object v1, v0, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingAlias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 472
    iget-object v0, v0, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingAlias:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_4
    return-object p1

    :catch_0
    move-exception p0

    .line 476
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Error deleting key"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_2

    :catch_4
    move-exception p0

    goto :goto_2

    :catch_5
    move-exception p0

    .line 450
    :goto_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Error loading keystore"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_6
    const-string p0, "CredentialData"

    const-string p1, "Error parsing file on disk (old version?). Deleting anyway."

    .line 434
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    :catch_7
    return-object v0
.end method

.method private static ensureAcpTimoutKeyForProfile(Ljava/lang/String;Landroidx/security/identity/CredentialData;Landroidx/security/identity/AccessControlProfile;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 266
    invoke-virtual {p2}, Landroidx/security/identity/AccessControlProfile;->getAccessControlProfileId()Landroidx/security/identity/AccessControlProfileId;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/security/identity/AccessControlProfileId;->getId()I

    move-result p2

    .line 267
    invoke-static {p0, p2}, Landroidx/security/identity/CredentialData;->getAcpTimeoutKeyAliasFromCredentialName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    .line 270
    :try_start_0
    div-long/2addr p3, v0

    long-to-int p3, p3

    const-string p4, "AES"

    const-string v0, "AndroidKeyStore"

    .line 271
    invoke-static {p4, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p4

    .line 273
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v1, "GCM"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const-string v1, "NoPadding"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 278
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    .line 281
    invoke-virtual {v0, p3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p3

    const/16 v0, 0x80

    .line 282
    invoke-virtual {p3, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p3

    .line 283
    invoke-virtual {p3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 284
    invoke-virtual {p4}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    iget-object p1, p1, Landroidx/security/identity/CredentialData;->mAcpTimeoutKeyAliases:Ljava/util/AbstractMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 288
    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Error creating ACP auth-bound timeout key"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_1
    return-void
.end method

.method private static ensurePerReaderSessionKey(Ljava/lang/String;Landroidx/security/identity/CredentialData;)V
    .locals 2

    .line 235
    iget-object v0, p1, Landroidx/security/identity/CredentialData;->mPerReaderSessionKeyAlias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-static {p0}, Landroidx/security/identity/CredentialData;->getAcpKeyAliasFromCredentialName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroidx/security/identity/CredentialData;->mPerReaderSessionKeyAlias:Ljava/lang/String;

    :try_start_0
    const-string p0, "AES"

    const-string v0, "AndroidKeyStore"

    .line 240
    invoke-static {p0, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p0

    .line 243
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    iget-object p1, p1, Landroidx/security/identity/CredentialData;->mPerReaderSessionKeyAlias:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string p1, "GCM"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-virtual {v0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const-string v0, "NoPadding"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const/16 v0, 0x80

    .line 248
    invoke-virtual {p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 251
    invoke-virtual {p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const/4 v0, -0x1

    .line 252
    invoke-virtual {p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 254
    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 258
    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Error creating ACP auth-bound key"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static escapeCredentialName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 314
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "identity_credential_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "UTF-8"

    .line 315
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 317
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected UnsupportedEncodingException"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static getAcpKeyAliasFromCredentialName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "acp"

    .line 338
    invoke-static {v0, p0}, Landroidx/security/identity/CredentialData;->escapeCredentialName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getAcpTimeoutKeyAliasFromCredentialName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acp_timeout_for_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/security/identity/CredentialData;->escapeCredentialName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getAliasFromCredentialName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "credkey"

    .line 326
    invoke-static {v0, p0}, Landroidx/security/identity/CredentialData;->escapeCredentialName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getDataKeyAliasFromCredentialName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "datakey"

    .line 330
    invoke-static {v0, p0}, Landroidx/security/identity/CredentialData;->escapeCredentialName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getFilenameForCredentialData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "data"

    .line 322
    invoke-static {v0, p0}, Landroidx/security/identity/CredentialData;->escapeCredentialName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private loadAccessControlProfiles(Lco/nstant/in/cbor/model/Map;)V
    .locals 3

    .line 804
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v1, "accessControlProfiles"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    .line 805
    instance-of v0, p1, Lco/nstant/in/cbor/model/Array;

    if-eqz v0, :cond_1

    .line 809
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/security/identity/CredentialData;->mAccessControlProfiles:Ljava/util/AbstractList;

    .line 810
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/security/identity/CredentialData;->mProfileIdToAcpMap:Ljava/util/AbstractMap;

    .line 811
    check-cast p1, Lco/nstant/in/cbor/model/Array;

    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    .line 812
    invoke-static {v0}, Landroidx/security/identity/Util;->accessControlProfileFromCbor(Lco/nstant/in/cbor/model/DataItem;)Landroidx/security/identity/AccessControlProfile;

    move-result-object v0

    .line 813
    iget-object v1, p0, Landroidx/security/identity/CredentialData;->mAccessControlProfiles:Ljava/util/AbstractList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 814
    iget-object v1, p0, Landroidx/security/identity/CredentialData;->mProfileIdToAcpMap:Ljava/util/AbstractMap;

    invoke-virtual {v0}, Landroidx/security/identity/AccessControlProfile;->getAccessControlProfileId()Landroidx/security/identity/AccessControlProfileId;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/security/identity/AccessControlProfileId;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void

    .line 806
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "accessControlProfiles not found or not array"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private loadAuthKey(Lco/nstant/in/cbor/model/Map;)V
    .locals 6

    .line 722
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v1, "perReaderSessionKeyAlias"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/UnicodeString;

    .line 723
    invoke-virtual {v0}, Lco/nstant/in/cbor/model/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/security/identity/CredentialData;->mPerReaderSessionKeyAlias:Ljava/lang/String;

    .line 725
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v1, "acpTimeoutKeyMap"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    .line 726
    instance-of v1, v0, Lco/nstant/in/cbor/model/Map;

    if-eqz v1, :cond_7

    .line 729
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/security/identity/CredentialData;->mAcpTimeoutKeyAliases:Ljava/util/AbstractMap;

    .line 730
    check-cast v0, Lco/nstant/in/cbor/model/Map;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/Map;->getKeys()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/nstant/in/cbor/model/DataItem;

    .line 731
    instance-of v3, v2, Lco/nstant/in/cbor/model/UnsignedInteger;

    if-eqz v3, :cond_1

    .line 735
    move-object v3, v2

    check-cast v3, Lco/nstant/in/cbor/model/UnsignedInteger;

    invoke-virtual {v3}, Lco/nstant/in/cbor/model/UnsignedInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 736
    invoke-virtual {v0, v2}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v2

    .line 737
    instance-of v4, v2, Lco/nstant/in/cbor/model/UnicodeString;

    if-eqz v4, :cond_0

    .line 741
    check-cast v2, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v2

    .line 742
    iget-object v4, p0, Landroidx/security/identity/CredentialData;->mAcpTimeoutKeyAliases:Ljava/util/AbstractMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 738
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Item in acpTimeoutKeyMap is not a string"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 732
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Key in acpTimeoutKeyMap is not an integer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 745
    :cond_2
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v1, "authKeyCount"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/Number;

    .line 746
    invoke-virtual {v0}, Lco/nstant/in/cbor/model/Number;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/security/identity/CredentialData;->mAuthKeyCount:I

    .line 747
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v1, "authKeyMaxUses"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/Number;

    .line 748
    invoke-virtual {v0}, Lco/nstant/in/cbor/model/Number;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/security/identity/CredentialData;->mAuthMaxUsesPerKey:I

    .line 750
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v1, "authKeyDatas"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    .line 751
    instance-of v0, p1, Lco/nstant/in/cbor/model/Array;

    if-eqz v0, :cond_6

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/security/identity/CredentialData;->mAuthKeyDatas:Ljava/util/AbstractList;

    .line 755
    check-cast p1, Lco/nstant/in/cbor/model/Array;

    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    .line 756
    new-instance v1, Landroidx/security/identity/CredentialData$AuthKeyData;

    invoke-direct {v1}, Landroidx/security/identity/CredentialData$AuthKeyData;-><init>()V

    .line 758
    check-cast v0, Lco/nstant/in/cbor/model/Map;

    .line 760
    new-instance v2, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v3, "alias"

    invoke-direct {v2, v3}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v2

    check-cast v2, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/security/identity/CredentialData$AuthKeyData;->mAlias:Ljava/lang/String;

    .line 761
    new-instance v2, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v3, "useCount"

    invoke-direct {v2, v3}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v2

    check-cast v2, Lco/nstant/in/cbor/model/Number;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/Number;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    iput v2, v1, Landroidx/security/identity/CredentialData$AuthKeyData;->mUseCount:I

    .line 762
    new-instance v2, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v3, "certificate"

    invoke-direct {v2, v3}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v2

    check-cast v2, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object v2

    iput-object v2, v1, Landroidx/security/identity/CredentialData$AuthKeyData;->mCertificate:[B

    .line 763
    new-instance v2, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v3, "staticAuthenticationData"

    invoke-direct {v2, v3}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v2

    check-cast v2, Lco/nstant/in/cbor/model/ByteString;

    .line 764
    invoke-virtual {v2}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object v2

    iput-object v2, v1, Landroidx/security/identity/CredentialData$AuthKeyData;->mStaticAuthenticationData:[B

    .line 765
    new-instance v2, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v3, "pendingAlias"

    invoke-direct {v2, v3}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v2

    check-cast v2, Lco/nstant/in/cbor/model/UnicodeString;

    .line 766
    invoke-virtual {v2}, Lco/nstant/in/cbor/model/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingAlias:Ljava/lang/String;

    .line 767
    new-instance v2, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v3, "pendingCertificate"

    invoke-direct {v2, v3}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v2

    check-cast v2, Lco/nstant/in/cbor/model/ByteString;

    .line 768
    invoke-virtual {v2}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object v2

    iput-object v2, v1, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingCertificate:[B

    const-wide v2, 0x7fffffffffffffffL

    .line 772
    new-instance v4, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v5, "expirationDateMillis"

    invoke-direct {v4, v5}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 774
    instance-of v2, v0, Lco/nstant/in/cbor/model/Number;

    if-eqz v2, :cond_3

    .line 777
    check-cast v0, Lco/nstant/in/cbor/model/Number;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/Number;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    goto :goto_2

    .line 775
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "expirationDateMillis not a number"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 779
    :cond_4
    :goto_2
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 780
    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 781
    iput-object v0, v1, Landroidx/security/identity/CredentialData$AuthKeyData;->mExpirationDate:Landroid/icu/util/Calendar;

    .line 783
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mAuthKeyDatas:Ljava/util/AbstractList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    return-void

    .line 752
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "authKeyDatas not found or not array"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 727
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "acpTimeoutKeyMap not found or not map"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private loadBasic(Lco/nstant/in/cbor/model/Map;)V
    .locals 2

    .line 716
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v1, "docType"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/security/identity/CredentialData;->mDocType:Ljava/lang/String;

    .line 717
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v1, "credentialKeyAlias"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    check-cast p1, Lco/nstant/in/cbor/model/UnicodeString;

    .line 718
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/UnicodeString;->getString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/security/identity/CredentialData;->mCredentialKeyAlias:Ljava/lang/String;

    return-void
.end method

.method static loadCredentialData(Landroid/content/Context;Ljava/lang/String;)Landroidx/security/identity/CredentialData;
    .locals 1

    .line 304
    new-instance v0, Landroidx/security/identity/CredentialData;

    invoke-direct {v0, p0, p1}, Landroidx/security/identity/CredentialData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    invoke-static {p1}, Landroidx/security/identity/CredentialData;->getDataKeyAliasFromCredentialName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 306
    invoke-direct {v0, p0}, Landroidx/security/identity/CredentialData;->loadFromDisk(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private loadCredentialKeyCertChain(Lco/nstant/in/cbor/model/Map;)V
    .locals 3

    .line 829
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v1, "credentialKeyCertChain"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    .line 830
    instance-of v0, p1, Lco/nstant/in/cbor/model/Array;

    if-eqz v0, :cond_1

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/security/identity/CredentialData;->mCertificateChain:Ljava/util/Collection;

    .line 835
    check-cast p1, Lco/nstant/in/cbor/model/Array;

    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    .line 836
    check-cast v0, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object v0

    :try_start_0
    const-string v1, "X.509"

    .line 838
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 839
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 840
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mCertificateChain:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 842
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error decoding certificate blob"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void

    .line 831
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "credentialKeyCertChain not found or not array"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private loadFromDisk(Ljava/lang/String;)Z
    .locals 4

    .line 645
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mCredentialName:Ljava/lang/String;

    invoke-static {v0}, Landroidx/security/identity/CredentialData;->getFilenameForCredentialData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 648
    :try_start_0
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v3, p0, Landroidx/security/identity/CredentialData;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 649
    invoke-virtual {v2}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 654
    invoke-direct {p0, p1, v0}, Landroidx/security/identity/CredentialData;->loadFromDiskDecrypt(Ljava/lang/String;[B)[B

    move-result-object p1

    .line 657
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 658
    new-instance p1, Lco/nstant/in/cbor/CborDecoder;

    invoke-direct {p1, v0}, Lco/nstant/in/cbor/CborDecoder;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lco/nstant/in/cbor/CborDecoder;->decode()Ljava/util/List;

    move-result-object p1

    .line 659
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 662
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lco/nstant/in/cbor/model/Map;

    if-eqz v0, :cond_0

    .line 665
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lco/nstant/in/cbor/model/Map;

    .line 667
    invoke-direct {p0, p1}, Landroidx/security/identity/CredentialData;->loadBasic(Lco/nstant/in/cbor/model/Map;)V

    .line 668
    invoke-direct {p0, p1}, Landroidx/security/identity/CredentialData;->loadCredentialKeyCertChain(Lco/nstant/in/cbor/model/Map;)V

    .line 669
    invoke-direct {p0, p1}, Landroidx/security/identity/CredentialData;->loadProofOfProvisioningSha256(Lco/nstant/in/cbor/model/Map;)V

    .line 670
    invoke-direct {p0, p1}, Landroidx/security/identity/CredentialData;->loadAccessControlProfiles(Lco/nstant/in/cbor/model/Map;)V

    .line 671
    invoke-direct {p0, p1}, Landroidx/security/identity/CredentialData;->loadNamespaceDatas(Lco/nstant/in/cbor/model/Map;)V

    .line 672
    invoke-direct {p0, p1}, Landroidx/security/identity/CredentialData;->loadAuthKey(Lco/nstant/in/cbor/model/Map;)V

    return v2

    .line 663
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Item is not a map"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 660
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected 1 item, found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lco/nstant/in/cbor/CborException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 675
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error decoding data"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    return v1
.end method

.method private loadFromDiskDecrypt(Ljava/lang/String;[B)[B
    .locals 5

    :try_start_0
    const-string v0, "AndroidKeyStore"

    .line 683
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 684
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 685
    invoke-virtual {v0, p1, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    .line 686
    check-cast p1, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {p1}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 688
    array-length v0, p2

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 691
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-array v2, v1, [B

    .line 693
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 694
    array-length p2, p2

    sub-int/2addr p2, v1

    new-array p2, p2, [B

    .line 695
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const-string v0, "AES/GCM/NoPadding"

    .line 697
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 698
    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v4, 0x80

    invoke-direct {v3, v4, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v0, v1, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 699
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1

    .line 689
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Encrypted CBOR on disk is too small"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

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

    goto :goto_0

    :catch_6
    move-exception p1

    goto :goto_0

    :catch_7
    move-exception p1

    goto :goto_0

    :catch_8
    move-exception p1

    goto :goto_0

    :catch_9
    move-exception p1

    .line 710
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Error decrypting CBOR"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private loadNamespaceDatas(Lco/nstant/in/cbor/model/Map;)V
    .locals 4

    .line 788
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v1, "namespaceDatas"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    .line 789
    instance-of v0, p1, Lco/nstant/in/cbor/model/Map;

    if-eqz v0, :cond_2

    .line 792
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/security/identity/CredentialData;->mNamespaceDatas:Ljava/util/AbstractList;

    .line 793
    check-cast p1, Lco/nstant/in/cbor/model/Map;

    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Map;->getKeys()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    .line 794
    instance-of v2, v1, Lco/nstant/in/cbor/model/UnicodeString;

    if-eqz v2, :cond_0

    .line 797
    move-object v2, v1

    check-cast v2, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v2

    .line 798
    invoke-virtual {p1, v1}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v1

    .line 799
    iget-object v3, p0, Landroidx/security/identity/CredentialData;->mNamespaceDatas:Ljava/util/AbstractList;

    invoke-static {v2, v1}, Landroidx/security/identity/Util;->namespaceDataFromCbor(Ljava/lang/String;Lco/nstant/in/cbor/model/DataItem;)Landroidx/security/identity/PersonalizationData$NamespaceData;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 795
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Key in namespaceDatas is not a string"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void

    .line 790
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "namespaceDatas not found or not map"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private loadProofOfProvisioningSha256(Lco/nstant/in/cbor/model/Map;)V
    .locals 2

    .line 819
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    const-string v1, "proofOfProvisioningSha256"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    .line 821
    instance-of v0, p1, Lco/nstant/in/cbor/model/ByteString;

    if-eqz v0, :cond_0

    .line 825
    check-cast p1, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {p1}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Landroidx/security/identity/CredentialData;->mProofOfProvisioningSha256:[B

    return-void

    .line 822
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "proofOfProvisioningSha256 not found or not bstr"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private saveToDisk()V
    .locals 4

    .line 506
    new-instance v0, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v0}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 507
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborBuilder;->addMap()Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v1

    .line 509
    invoke-direct {p0, v1}, Landroidx/security/identity/CredentialData;->saveToDiskBasic(Lco/nstant/in/cbor/builder/MapBuilder;)V

    .line 510
    invoke-direct {p0, v1}, Landroidx/security/identity/CredentialData;->saveToDiskAuthDatas(Lco/nstant/in/cbor/builder/MapBuilder;)V

    .line 511
    invoke-direct {p0, v1}, Landroidx/security/identity/CredentialData;->saveToDiskACPs(Lco/nstant/in/cbor/builder/MapBuilder;)V

    .line 512
    invoke-direct {p0, v1}, Landroidx/security/identity/CredentialData;->saveToDiskNamespaceDatas(Lco/nstant/in/cbor/builder/MapBuilder;)V

    .line 513
    invoke-direct {p0, v1}, Landroidx/security/identity/CredentialData;->saveToDiskAuthKeys(Lco/nstant/in/cbor/builder/MapBuilder;)V

    .line 515
    invoke-direct {p0, v0}, Landroidx/security/identity/CredentialData;->saveToDiskEncode(Lco/nstant/in/cbor/CborBuilder;)[B

    move-result-object v0

    .line 517
    invoke-direct {p0, v0}, Landroidx/security/identity/CredentialData;->saveToDiskEncrypt([B)[B

    move-result-object v0

    .line 519
    iget-object v1, p0, Landroidx/security/identity/CredentialData;->mCredentialName:Ljava/lang/String;

    invoke-static {v1}, Landroidx/security/identity/CredentialData;->getFilenameForCredentialData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 520
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v3, p0, Landroidx/security/identity/CredentialData;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 523
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 524
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 525
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 526
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 529
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 531
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error writing data"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private saveToDiskACPs(Lco/nstant/in/cbor/builder/MapBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "Lco/nstant/in/cbor/CborBuilder;",
            ">;)V"
        }
    .end annotation

    const-string v0, "accessControlProfiles"

    .line 600
    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/builder/MapBuilder;->putArray(Ljava/lang/String;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p1

    .line 602
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mAccessControlProfiles:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/security/identity/AccessControlProfile;

    .line 603
    invoke-static {v1}, Landroidx/security/identity/Util;->accessControlProfileToCbor(Landroidx/security/identity/AccessControlProfile;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private saveToDiskAuthDatas(Lco/nstant/in/cbor/builder/MapBuilder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "Lco/nstant/in/cbor/CborBuilder;",
            ">;)V"
        }
    .end annotation

    const-string v0, "authKeyDatas"

    .line 608
    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/builder/MapBuilder;->putArray(Ljava/lang/String;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p1

    .line 610
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mAuthKeyDatas:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/security/identity/CredentialData$AuthKeyData;

    const-wide v2, 0x7fffffffffffffffL

    .line 612
    iget-object v4, v1, Landroidx/security/identity/CredentialData$AuthKeyData;->mExpirationDate:Landroid/icu/util/Calendar;

    if-eqz v4, :cond_0

    .line 613
    iget-object v2, v1, Landroidx/security/identity/CredentialData$AuthKeyData;->mExpirationDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 615
    :cond_0
    invoke-virtual {p1}, Lco/nstant/in/cbor/builder/ArrayBuilder;->addMap()Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v4

    iget-object v5, v1, Landroidx/security/identity/CredentialData$AuthKeyData;->mAlias:Ljava/lang/String;

    const-string v6, "alias"

    .line 616
    invoke-virtual {v4, v6, v5}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v4

    iget v5, v1, Landroidx/security/identity/CredentialData$AuthKeyData;->mUseCount:I

    int-to-long v5, v5

    const-string v7, "useCount"

    .line 617
    invoke-virtual {v4, v7, v5, v6}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;J)Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v4

    iget-object v5, v1, Landroidx/security/identity/CredentialData$AuthKeyData;->mCertificate:[B

    const-string v6, "certificate"

    .line 618
    invoke-virtual {v4, v6, v5}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;[B)Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v4

    iget-object v5, v1, Landroidx/security/identity/CredentialData$AuthKeyData;->mStaticAuthenticationData:[B

    const-string v6, "staticAuthenticationData"

    .line 619
    invoke-virtual {v4, v6, v5}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;[B)Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v4

    iget-object v5, v1, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingAlias:Ljava/lang/String;

    const-string v6, "pendingAlias"

    .line 620
    invoke-virtual {v4, v6, v5}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v4

    iget-object v1, v1, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingCertificate:[B

    const-string v5, "pendingCertificate"

    .line 621
    invoke-virtual {v4, v5, v1}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;[B)Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v1

    const-string v4, "expirationDateMillis"

    .line 622
    invoke-virtual {v1, v4, v2, v3}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;J)Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v1

    .line 623
    invoke-virtual {v1}, Lco/nstant/in/cbor/builder/MapBuilder;->end()Lco/nstant/in/cbor/builder/AbstractBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private saveToDiskAuthKeys(Lco/nstant/in/cbor/builder/MapBuilder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "Lco/nstant/in/cbor/CborBuilder;",
            ">;)V"
        }
    .end annotation

    .line 579
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mPerReaderSessionKeyAlias:Ljava/lang/String;

    const-string v1, "perReaderSessionKeyAlias"

    invoke-virtual {p1, v1, v0}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lco/nstant/in/cbor/builder/MapBuilder;

    const-string v0, "acpTimeoutKeyMap"

    .line 580
    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/builder/MapBuilder;->putMap(Ljava/lang/String;)Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object p1

    .line 582
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mAcpTimeoutKeyAliases:Ljava/util/AbstractMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 583
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 584
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 585
    new-instance v3, Lco/nstant/in/cbor/model/UnsignedInteger;

    int-to-long v4, v2

    invoke-direct {v3, v4, v5}, Lco/nstant/in/cbor/model/UnsignedInteger;-><init>(J)V

    new-instance v2, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-direct {v2, v1}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v2}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private saveToDiskBasic(Lco/nstant/in/cbor/builder/MapBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "Lco/nstant/in/cbor/CborBuilder;",
            ">;)V"
        }
    .end annotation

    .line 628
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mDocType:Ljava/lang/String;

    const-string v1, "docType"

    invoke-virtual {p1, v1, v0}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lco/nstant/in/cbor/builder/MapBuilder;

    .line 629
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mCredentialKeyAlias:Ljava/lang/String;

    const-string v1, "credentialKeyAlias"

    invoke-virtual {p1, v1, v0}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lco/nstant/in/cbor/builder/MapBuilder;

    const-string v0, "credentialKeyCertChain"

    .line 631
    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/builder/MapBuilder;->putArray(Ljava/lang/String;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v0

    .line 632
    iget-object v1, p0, Landroidx/security/identity/CredentialData;->mCertificateChain:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 634
    :try_start_0
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 636
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error encoding certificate"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 639
    :cond_0
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mProofOfProvisioningSha256:[B

    const-string v1, "proofOfProvisioningSha256"

    invoke-virtual {p1, v1, v0}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;[B)Lco/nstant/in/cbor/builder/MapBuilder;

    .line 640
    iget v0, p0, Landroidx/security/identity/CredentialData;->mAuthKeyCount:I

    int-to-long v0, v0

    const-string v2, "authKeyCount"

    invoke-virtual {p1, v2, v0, v1}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;J)Lco/nstant/in/cbor/builder/MapBuilder;

    .line 641
    iget v0, p0, Landroidx/security/identity/CredentialData;->mAuthMaxUsesPerKey:I

    int-to-long v0, v0

    const-string v2, "authKeyMaxUses"

    invoke-virtual {p1, v2, v0, v1}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Ljava/lang/String;J)Lco/nstant/in/cbor/builder/MapBuilder;

    return-void
.end method

.method private saveToDiskEncode(Lco/nstant/in/cbor/CborBuilder;)[B
    .locals 2

    .line 536
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 537
    new-instance v1, Lco/nstant/in/cbor/CborEncoder;

    invoke-direct {v1, v0}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    .line 539
    :try_start_0
    invoke-virtual {p1}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lco/nstant/in/cbor/CborEncoder;->encode(Ljava/util/List;)V
    :try_end_0
    .catch Lco/nstant/in/cbor/CborException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 541
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error encoding data"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private saveToDiskEncrypt([B)[B
    .locals 3

    :try_start_0
    const-string v0, "AndroidKeyStore"

    .line 549
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 550
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 551
    iget-object v2, p0, Landroidx/security/identity/CredentialData;->mCredentialName:Ljava/lang/String;

    invoke-static {v2}, Landroidx/security/identity/CredentialData;->getDataKeyAliasFromCredentialName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 553
    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    .line 554
    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    const-string v1, "AES/GCM/NoPadding"

    .line 555
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 556
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 558
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 560
    array-length v0, p1

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 561
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 562
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 563
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

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

    goto :goto_0

    :catch_6
    move-exception p1

    goto :goto_0

    :catch_7
    move-exception p1

    goto :goto_0

    :catch_8
    move-exception p1

    .line 573
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error encrypting CBOR for saving to disk"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private saveToDiskNamespaceDatas(Lco/nstant/in/cbor/builder/MapBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/nstant/in/cbor/builder/MapBuilder<",
            "Lco/nstant/in/cbor/CborBuilder;",
            ">;)V"
        }
    .end annotation

    const-string v0, "namespaceDatas"

    .line 591
    invoke-virtual {p1, v0}, Lco/nstant/in/cbor/builder/MapBuilder;->putMap(Ljava/lang/String;)Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object p1

    .line 593
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mNamespaceDatas:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/security/identity/PersonalizationData$NamespaceData;

    .line 594
    new-instance v2, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-virtual {v1}, Landroidx/security/identity/PersonalizationData$NamespaceData;->getNamespaceName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    .line 595
    invoke-static {v1}, Landroidx/security/identity/Util;->namespaceDataToCbor(Landroidx/security/identity/PersonalizationData$NamespaceData;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v1

    .line 594
    invoke-virtual {p1, v2, v1}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method checkUserAuthentication(Landroidx/security/identity/AccessControlProfileId;Z)Z
    .locals 4

    .line 1215
    invoke-virtual {p0, p1}, Landroidx/security/identity/CredentialData;->getAccessControlProfile(Landroidx/security/identity/AccessControlProfileId;)Landroidx/security/identity/AccessControlProfile;

    move-result-object v0

    .line 1216
    invoke-virtual {v0}, Landroidx/security/identity/AccessControlProfile;->getUserAuthenticationTimeout()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return p2

    .line 1219
    :cond_0
    iget-object p2, p0, Landroidx/security/identity/CredentialData;->mAcpTimeoutKeyAliases:Ljava/util/AbstractMap;

    invoke-virtual {p1}, Landroidx/security/identity/AccessControlProfileId;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 1224
    invoke-direct {p0, p2}, Landroidx/security/identity/CredentialData;->checkUserAuthenticationTimeout(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1221
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No key alias for ACP with ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1222
    invoke-virtual {p1}, Landroidx/security/identity/AccessControlProfileId;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method deleteKeysForReplacement()V
    .locals 4

    :try_start_0
    const-string v0, "AndroidKeyStore"

    .line 124
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :try_start_1
    iget-object v1, p0, Landroidx/security/identity/CredentialData;->mPerReaderSessionKeyAlias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    iget-object v1, p0, Landroidx/security/identity/CredentialData;->mPerReaderSessionKeyAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-object v1, p0, Landroidx/security/identity/CredentialData;->mAcpTimeoutKeyAliases:Ljava/util/AbstractMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Landroidx/security/identity/CredentialData;->mAuthKeyDatas:Ljava/util/AbstractList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/security/identity/CredentialData$AuthKeyData;

    .line 142
    iget-object v3, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mAlias:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 143
    iget-object v3, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 145
    :cond_3
    iget-object v3, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingAlias:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 146
    iget-object v2, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingAlias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    return-void

    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error deleting key"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    .line 130
    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error loading keystore"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method getAccessControlProfile(Landroidx/security/identity/AccessControlProfileId;)Landroidx/security/identity/AccessControlProfile;
    .locals 3

    .line 1176
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mProfileIdToAcpMap:Ljava/util/AbstractMap;

    invoke-virtual {p1}, Landroidx/security/identity/AccessControlProfileId;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/security/identity/AccessControlProfile;

    if-eqz v0, :cond_0

    return-object v0

    .line 1178
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No profile with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/security/identity/AccessControlProfileId;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getAccessControlProfiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/security/identity/AccessControlProfile;",
            ">;"
        }
    .end annotation

    .line 848
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mAccessControlProfiles:Ljava/util/AbstractList;

    return-object v0
.end method

.method getAuthKeyCount()I
    .locals 1

    .line 874
    iget v0, p0, Landroidx/security/identity/CredentialData;->mAuthKeyCount:I

    return v0
.end method

.method getAuthKeyUseCounts()[I
    .locals 5

    .line 882
    iget v0, p0, Landroidx/security/identity/CredentialData;->mAuthKeyCount:I

    new-array v0, v0, [I

    .line 884
    iget-object v1, p0, Landroidx/security/identity/CredentialData;->mAuthKeyDatas:Ljava/util/AbstractList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/security/identity/CredentialData$AuthKeyData;

    add-int/lit8 v4, v2, 0x1

    .line 885
    iget v3, v3, Landroidx/security/identity/CredentialData$AuthKeyData;->mUseCount:I

    aput v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getAuthKeysNeedingCertification()Ljava/util/Collection;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    const-string v0, "AndroidKeyStore"

    .line 948
    :try_start_0
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    .line 949
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5

    .line 957
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 959
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 963
    :goto_0
    iget v5, p0, Landroidx/security/identity/CredentialData;->mAuthKeyCount:I

    if-ge v4, v5, :cond_7

    .line 964
    iget-object v5, p0, Landroidx/security/identity/CredentialData;->mAuthKeyDatas:Ljava/util/AbstractList;

    invoke-virtual {v5, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/security/identity/CredentialData$AuthKeyData;

    .line 966
    iget v6, v5, Landroidx/security/identity/CredentialData$AuthKeyData;->mUseCount:I

    iget v7, p0, Landroidx/security/identity/CredentialData;->mAuthMaxUsesPerKey:I

    const/4 v8, 0x1

    if-lt v6, v7, :cond_0

    move v6, v8

    goto :goto_1

    :cond_0
    move v6, v3

    .line 968
    :goto_1
    iget-object v7, v5, Landroidx/security/identity/CredentialData$AuthKeyData;->mExpirationDate:Landroid/icu/util/Calendar;

    if-eqz v7, :cond_1

    .line 969
    iget-object v7, v5, Landroidx/security/identity/CredentialData$AuthKeyData;->mExpirationDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v7}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_2

    :cond_1
    move v7, v3

    .line 971
    :goto_2
    iget-object v9, v5, Landroidx/security/identity/CredentialData$AuthKeyData;->mAlias:Ljava/lang/String;

    .line 972
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    if-nez v6, :cond_3

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    move v6, v3

    goto :goto_4

    :cond_3
    :goto_3
    move v6, v8

    .line 973
    :goto_4
    iget-object v7, v5, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingAlias:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v8

    if-eqz v6, :cond_5

    if-nez v7, :cond_5

    .line 979
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroidx/security/identity/CredentialData;->mCredentialKeyAlias:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_auth_%d"

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 980
    iget-object v7, v5, Landroidx/security/identity/CredentialData$AuthKeyData;->mAlias:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 981
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_4
    const-string v7, "EC"

    .line 984
    invoke-static {v7, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v7

    .line 986
    new-instance v9, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/16 v10, 0xc

    invoke-direct {v9, v6, v10}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v10, "SHA-256"

    const-string v11, "SHA-512"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    .line 989
    invoke-virtual {v9, v10}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v9

    .line 990
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 991
    invoke-virtual {v7}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 993
    iget-object v7, p0, Landroidx/security/identity/CredentialData;->mCredentialKeyAlias:Ljava/lang/String;

    iget-object v9, p0, Landroidx/security/identity/CredentialData;->mProofOfProvisioningSha256:[B

    invoke-static {v6, v7, v9}, Landroidx/security/identity/Util;->generateAuthenticationKeyCert(Ljava/lang/String;Ljava/lang/String;[B)Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 996
    iput-object v6, v5, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingAlias:Ljava/lang/String;

    .line 997
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6

    iput-object v6, v5, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingCertificate:[B
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    .line 1003
    :goto_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error creating auth key"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    move v8, v7

    :goto_6
    if-eqz v8, :cond_6

    :try_start_2
    const-string v6, "X.509"

    .line 1009
    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    .line 1010
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v5, v5, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingCertificate:[B

    invoke-direct {v7, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1011
    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    .line 1013
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error creating certificate for auth key"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1019
    :cond_7
    invoke-direct {p0}, Landroidx/security/identity/CredentialData;->saveToDisk()V

    return-object v1

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    .line 954
    :goto_8
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error loading keystore"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method getAuthMaxUsesPerKey()I
    .locals 1

    .line 878
    iget v0, p0, Landroidx/security/identity/CredentialData;->mAuthMaxUsesPerKey:I

    return v0
.end method

.method getCredentialKeyAlias()Ljava/lang/String;
    .locals 1

    .line 866
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mCredentialKeyAlias:Ljava/lang/String;

    return-object v0
.end method

.method getCredentialKeyCertificateChain()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 1172
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mCertificateChain:Ljava/util/Collection;

    return-object v0
.end method

.method getCredentialKeyPrivate()Ljava/security/PrivateKey;
    .locals 3

    :try_start_0
    const-string v0, "AndroidKeyStore"

    .line 345
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 346
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 347
    iget-object v2, p0, Landroidx/security/identity/CredentialData;->mCredentialKeyAlias:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0

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

    .line 353
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error loading keystore"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method getDocType()Ljava/lang/String;
    .locals 1

    .line 1168
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mDocType:Ljava/lang/String;

    return-object v0
.end method

.method getNamespaceDatas()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/security/identity/PersonalizationData$NamespaceData;",
            ">;"
        }
    .end annotation

    .line 852
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mNamespaceDatas:Ljava/util/AbstractList;

    return-object v0
.end method

.method getPerReaderSessionKeyAlias()Ljava/lang/String;
    .locals 1

    .line 870
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mPerReaderSessionKeyAlias:Ljava/lang/String;

    return-object v0
.end method

.method lookupNamespaceData(Ljava/lang/String;)Landroidx/security/identity/PersonalizationData$NamespaceData;
    .locals 3

    .line 857
    iget-object v0, p0, Landroidx/security/identity/CredentialData;->mNamespaceDatas:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/security/identity/PersonalizationData$NamespaceData;

    .line 858
    invoke-virtual {v1}, Landroidx/security/identity/PersonalizationData$NamespaceData;->getNamespaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method proveOwnership([B)[B
    .locals 4

    .line 360
    invoke-virtual {p0}, Landroidx/security/identity/CredentialData;->getCredentialKeyPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    .line 362
    new-instance v1, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v1}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 363
    invoke-virtual {v1}, Lco/nstant/in/cbor/CborBuilder;->addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v2

    const-string v3, "ProofOfOwnership"

    .line 364
    invoke-virtual {v2, v3}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Ljava/lang/String;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/security/identity/CredentialData;->mDocType:Ljava/lang/String;

    .line 365
    invoke-virtual {v2, v3}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Ljava/lang/String;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v2

    .line 366
    invoke-virtual {v2, p1}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add([B)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p1

    const/4 v2, 0x0

    .line 367
    invoke-virtual {p1, v2}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Z)Lco/nstant/in/cbor/builder/ArrayBuilder;

    .line 370
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 371
    new-instance v3, Lco/nstant/in/cbor/CborEncoder;

    invoke-direct {v3, p1}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    .line 372
    invoke-virtual {v1}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {v3, v1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 373
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v1, 0x0

    .line 375
    invoke-static {v0, p1, v1, v1}, Landroidx/security/identity/Util;->coseSign1Sign(Ljava/security/PrivateKey;[B[BLjava/util/Collection;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p1

    invoke-static {p1}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lco/nstant/in/cbor/CborException; {:try_start_0 .. :try_end_0} :catch_0

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

    .line 383
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error building ProofOfOwnership"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method selectAuthenticationKey(ZZ)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Landroid/util/Pair<",
            "Ljava/security/PrivateKey;",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1099
    invoke-virtual {p0, p1, v0}, Landroidx/security/identity/CredentialData;->selectAuthenticationKeyHelper(ZZ)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 p2, 0x1

    .line 1107
    invoke-virtual {p0, p1, p2}, Landroidx/security/identity/CredentialData;->selectAuthenticationKeyHelper(ZZ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method selectAuthenticationKeyHelper(ZZ)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Landroid/util/Pair<",
            "Ljava/security/PrivateKey;",
            "[B>;"
        }
    .end annotation

    .line 1114
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    .line 1116
    :goto_0
    iget v4, p0, Landroidx/security/identity/CredentialData;->mAuthKeyCount:I

    if-ge v2, v4, :cond_3

    .line 1117
    iget-object v4, p0, Landroidx/security/identity/CredentialData;->mAuthKeyDatas:Ljava/util/AbstractList;

    invoke-virtual {v4, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/security/identity/CredentialData$AuthKeyData;

    .line 1118
    iget-object v5, v4, Landroidx/security/identity/CredentialData$AuthKeyData;->mAlias:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1119
    iget-object v5, v4, Landroidx/security/identity/CredentialData$AuthKeyData;->mExpirationDate:Landroid/icu/util/Calendar;

    if-eqz v5, :cond_0

    .line 1120
    iget-object v5, v4, Landroidx/security/identity/CredentialData$AuthKeyData;->mExpirationDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v5}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    .line 1128
    iget v5, v4, Landroidx/security/identity/CredentialData$AuthKeyData;->mUseCount:I

    iget v6, v3, Landroidx/security/identity/CredentialData$AuthKeyData;->mUseCount:I

    if-ge v5, v6, :cond_2

    :cond_1
    move-object v3, v4

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    return-object v1

    .line 1140
    :cond_4
    iget p2, v3, Landroidx/security/identity/CredentialData$AuthKeyData;->mUseCount:I

    iget v0, p0, Landroidx/security/identity/CredentialData;->mAuthMaxUsesPerKey:I

    if-lt p2, v0, :cond_5

    if-nez p1, :cond_5

    return-object v1

    :cond_5
    :try_start_0
    const-string p1, "AndroidKeyStore"

    .line 1146
    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    .line 1147
    invoke-virtual {p1, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1148
    iget-object p2, v3, Landroidx/security/identity/CredentialData$AuthKeyData;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    new-instance p2, Landroid/util/Pair;

    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 1158
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    iget-object v0, v3, Landroidx/security/identity/CredentialData$AuthKeyData;->mStaticAuthenticationData:[B

    invoke-direct {p2, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1161
    iget p1, v3, Landroidx/security/identity/CredentialData$AuthKeyData;->mUseCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v3, Landroidx/security/identity/CredentialData$AuthKeyData;->mUseCount:I

    .line 1162
    invoke-direct {p0}, Landroidx/security/identity/CredentialData;->saveToDisk()V

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    .line 1154
    :goto_2
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Error loading keystore"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method setAvailableAuthenticationKeys(II)V
    .locals 4

    .line 891
    iget v0, p0, Landroidx/security/identity/CredentialData;->mAuthKeyCount:I

    .line 892
    iput p1, p0, Landroidx/security/identity/CredentialData;->mAuthKeyCount:I

    .line 893
    iput p2, p0, Landroidx/security/identity/CredentialData;->mAuthMaxUsesPerKey:I

    if-ge v0, p1, :cond_0

    .line 897
    :goto_0
    iget p1, p0, Landroidx/security/identity/CredentialData;->mAuthKeyCount:I

    if-ge v0, p1, :cond_3

    .line 898
    iget-object p1, p0, Landroidx/security/identity/CredentialData;->mAuthKeyDatas:Ljava/util/AbstractList;

    new-instance p2, Landroidx/security/identity/CredentialData$AuthKeyData;

    invoke-direct {p2}, Landroidx/security/identity/CredentialData$AuthKeyData;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-le v0, p1, :cond_3

    :try_start_0
    const-string p1, "AndroidKeyStore"

    .line 903
    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    const/4 p2, 0x0

    .line 904
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2

    .line 912
    iget p2, p0, Landroidx/security/identity/CredentialData;->mAuthKeyCount:I

    sub-int/2addr v0, p2

    const/4 p2, 0x0

    move v1, p2

    :goto_1
    if-ge v1, v0, :cond_3

    .line 917
    iget-object v2, p0, Landroidx/security/identity/CredentialData;->mAuthKeyDatas:Ljava/util/AbstractList;

    invoke-virtual {v2, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/security/identity/CredentialData$AuthKeyData;

    .line 918
    iget-object v3, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mAlias:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 920
    :try_start_1
    iget-object v3, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 921
    iget-object v3, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 924
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error deleting auth key with mAlias "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 928
    :cond_1
    :goto_2
    iget-object v3, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingAlias:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 930
    :try_start_2
    iget-object v3, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingAlias:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 931
    iget-object v3, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingAlias:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 934
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error deleting auth key with mPendingAlias "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 939
    :cond_2
    :goto_3
    iget-object v2, p0, Landroidx/security/identity/CredentialData;->mAuthKeyDatas:Ljava/util/AbstractList;

    invoke-virtual {v2, p2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    goto :goto_4

    :catch_4
    move-exception p1

    goto :goto_4

    :catch_5
    move-exception p1

    .line 909
    :goto_4
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Error loading keystore"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 942
    :cond_3
    invoke-direct {p0}, Landroidx/security/identity/CredentialData;->saveToDisk()V

    return-void
.end method

.method storeStaticAuthenticationData(Ljava/security/cert/X509Certificate;Landroid/icu/util/Calendar;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/UnknownAuthenticationKeyException;
        }
    .end annotation

    :try_start_0
    const-string v0, "X.509"

    .line 1031
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 1033
    iget-object v1, p0, Landroidx/security/identity/CredentialData;->mAuthKeyDatas:Ljava/util/AbstractList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/security/identity/CredentialData$AuthKeyData;

    .line 1034
    iget-object v4, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingCertificate:[B

    array-length v4, v4

    if-lez v4, :cond_0

    .line 1035
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingCertificate:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1036
    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 1037
    invoke-virtual {v4, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_3

    .line 1052
    iget-object p1, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mAlias:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    :try_start_1
    const-string p1, "AndroidKeyStore"

    .line 1055
    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    .line 1056
    invoke-virtual {p1, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1057
    iget-object v0, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1058
    iget-object v0, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    .line 1064
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Error deleting old authentication key"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 1067
    :cond_2
    :goto_2
    iget-object p1, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingAlias:Ljava/lang/String;

    iput-object p1, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mAlias:Ljava/lang/String;

    .line 1068
    iget-object p1, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingCertificate:[B

    iput-object p1, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mCertificate:[B

    .line 1069
    iput-object p3, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mStaticAuthenticationData:[B

    const/4 p1, 0x0

    .line 1070
    iput p1, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mUseCount:I

    const-string p3, ""

    .line 1071
    iput-object p3, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingAlias:Ljava/lang/String;

    new-array p1, p1, [B

    .line 1072
    iput-object p1, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingCertificate:[B

    .line 1073
    iput-object p2, v2, Landroidx/security/identity/CredentialData$AuthKeyData;->mExpirationDate:Landroid/icu/util/Calendar;

    .line 1074
    invoke-direct {p0}, Landroidx/security/identity/CredentialData;->saveToDisk()V

    return-void

    .line 1048
    :cond_3
    new-instance p1, Landroidx/security/identity/UnknownAuthenticationKeyException;

    const-string p2, "No such authentication key"

    invoke-direct {p1, p2}, Landroidx/security/identity/UnknownAuthenticationKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_4
    move-exception p1

    .line 1044
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Error encoding certificate"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
