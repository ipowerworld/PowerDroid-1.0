.class Landroidx/security/identity/SoftwareWritableIdentityCredential;
.super Landroidx/security/identity/WritableIdentityCredential;
.source "SoftwareWritableIdentityCredential.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SoftwareWritableIdentityCredential"


# instance fields
.field private mCertificates:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCredentialName:Ljava/lang/String;

.field private mDocType:Ljava/lang/String;

.field private mKeyPair:Ljava/security/KeyPair;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/AlreadyPersonalizedException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Landroidx/security/identity/WritableIdentityCredential;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Landroidx/security/identity/SoftwareWritableIdentityCredential;->mKeyPair:Ljava/security/KeyPair;

    .line 57
    iput-object v0, p0, Landroidx/security/identity/SoftwareWritableIdentityCredential;->mCertificates:Ljava/util/Collection;

    .line 65
    iput-object p1, p0, Landroidx/security/identity/SoftwareWritableIdentityCredential;->mContext:Landroid/content/Context;

    .line 66
    iput-object p3, p0, Landroidx/security/identity/SoftwareWritableIdentityCredential;->mDocType:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Landroidx/security/identity/SoftwareWritableIdentityCredential;->mCredentialName:Ljava/lang/String;

    .line 68
    invoke-static {p1, p2}, Landroidx/security/identity/CredentialData;->credentialAlreadyExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    new-instance p1, Landroidx/security/identity/AlreadyPersonalizedException;

    const-string p2, "Credential with given name already exists"

    invoke-direct {p1, p2}, Landroidx/security/identity/AlreadyPersonalizedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static buildProofOfProvisioningWithSignature(Ljava/lang/String;Landroidx/security/identity/PersonalizationData;Ljava/security/PrivateKey;)Lco/nstant/in/cbor/model/DataItem;
    .locals 6

    .line 153
    new-instance v0, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v0}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 154
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborBuilder;->addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v1

    .line 155
    invoke-virtual {p1}, Landroidx/security/identity/PersonalizationData;->getAccessControlProfiles()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/security/identity/AccessControlProfile;

    .line 156
    invoke-static {v3}, Landroidx/security/identity/Util;->accessControlProfileToCbor(Landroidx/security/identity/AccessControlProfile;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    goto :goto_0

    .line 159
    :cond_0
    new-instance v1, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {v1}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 160
    invoke-virtual {v1}, Lco/nstant/in/cbor/CborBuilder;->addMap()Lco/nstant/in/cbor/builder/MapBuilder;

    move-result-object v2

    .line 162
    invoke-virtual {p1}, Landroidx/security/identity/PersonalizationData;->getNamespaceDatas()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/security/identity/PersonalizationData$NamespaceData;

    .line 163
    new-instance v4, Lco/nstant/in/cbor/model/UnicodeString;

    .line 164
    invoke-virtual {v3}, Landroidx/security/identity/PersonalizationData$NamespaceData;->getNamespaceName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-static {v3}, Landroidx/security/identity/Util;->namespaceDataToCbor(Landroidx/security/identity/PersonalizationData$NamespaceData;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v3

    .line 163
    invoke-virtual {v2, v4, v3}, Lco/nstant/in/cbor/builder/MapBuilder;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/MapBuilder;

    goto :goto_1

    .line 168
    :cond_1
    new-instance p1, Lco/nstant/in/cbor/CborBuilder;

    invoke-direct {p1}, Lco/nstant/in/cbor/CborBuilder;-><init>()V

    .line 169
    invoke-virtual {p1}, Lco/nstant/in/cbor/CborBuilder;->addArray()Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v2

    const-string v3, "ProofOfProvisioning"

    .line 170
    invoke-virtual {v2, v3}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Ljava/lang/String;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object v2

    .line 171
    invoke-virtual {v2, p0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Ljava/lang/String;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p0

    .line 172
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p0

    .line 173
    invoke-virtual {v1}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/builder/ArrayBuilder;

    move-result-object p0

    .line 174
    invoke-virtual {p0, v2}, Lco/nstant/in/cbor/builder/ArrayBuilder;->add(Z)Lco/nstant/in/cbor/builder/ArrayBuilder;

    .line 178
    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    new-instance v0, Lco/nstant/in/cbor/CborEncoder;

    invoke-direct {v0, p0}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    .line 180
    invoke-virtual {p1}, Lco/nstant/in/cbor/CborBuilder;->build()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {v0, p1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    .line 181
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 p1, 0x0

    .line 183
    invoke-static {p2, p0, p1, p1}, Landroidx/security/identity/Util;->coseSign1Sign(Ljava/security/PrivateKey;[B[BLjava/util/Collection;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lco/nstant/in/cbor/CborException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    .line 191
    :goto_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Error building ProofOfProvisioning"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private ensureCredentialKey([B)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    const-string v0, "AndroidKeyStore"

    .line 86
    iget-object v1, p0, Landroidx/security/identity/SoftwareWritableIdentityCredential;->mKeyPair:Ljava/security/KeyPair;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 90
    :cond_0
    iget-object v1, p0, Landroidx/security/identity/SoftwareWritableIdentityCredential;->mCredentialName:Ljava/lang/String;

    invoke-static {v1}, Landroidx/security/identity/CredentialData;->getAliasFromCredentialName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    :try_start_0
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 94
    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 95
    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    :cond_1
    const-string v2, "EC"

    .line 106
    invoke-static {v2, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 108
    new-instance v2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/16 v4, 0xc

    invoke-direct {v2, v1, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v4, "SHA-256"

    const-string v5, "SHA-512"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {v2, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    const/4 v4, 0x0

    if-nez p1, :cond_2

    new-array p1, v4, [B

    .line 117
    :cond_2
    invoke-virtual {v2, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 118
    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 119
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    iput-object p1, p0, Landroidx/security/identity/SoftwareWritableIdentityCredential;->mKeyPair:Ljava/security/KeyPair;

    .line 121
    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p1

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/security/identity/SoftwareWritableIdentityCredential;->mCertificates:Ljava/util/Collection;

    .line 123
    array-length v0, p1

    :goto_0
    if-ge v4, v0, :cond_3

    aget-object v1, p1, v4

    .line 124
    iget-object v2, p0, Landroidx/security/identity/SoftwareWritableIdentityCredential;->mCertificates:Ljava/util/Collection;

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
    :cond_3
    iget-object p1, p0, Landroidx/security/identity/SoftwareWritableIdentityCredential;->mCertificates:Ljava/util/Collection;

    return-object p1

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

    goto :goto_1

    :catch_4
    move-exception p1

    goto :goto_1

    :catch_5
    move-exception p1

    .line 132
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error creating CredentialKey"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getCredentialKeyCertificateChain([B)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1}, Landroidx/security/identity/SoftwareWritableIdentityCredential;->ensureCredentialKey([B)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 142
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "getCredentialKeyCertificateChain() must be called before personalize()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public personalize(Landroidx/security/identity/PersonalizationData;)[B
    .locals 11

    const/4 v0, 0x0

    .line 201
    :try_start_0
    invoke-direct {p0, v0}, Landroidx/security/identity/SoftwareWritableIdentityCredential;->ensureCredentialKey([B)Ljava/util/Collection;

    .line 203
    iget-object v0, p0, Landroidx/security/identity/SoftwareWritableIdentityCredential;->mDocType:Ljava/lang/String;

    iget-object v1, p0, Landroidx/security/identity/SoftwareWritableIdentityCredential;->mKeyPair:Ljava/security/KeyPair;

    .line 205
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    .line 203
    invoke-static {v0, p1, v1}, Landroidx/security/identity/SoftwareWritableIdentityCredential;->buildProofOfProvisioningWithSignature(Ljava/lang/String;Landroidx/security/identity/PersonalizationData;Ljava/security/PrivateKey;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    .line 207
    invoke-static {v0}, Landroidx/security/identity/Util;->coseSign1GetData(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object v1

    const-string v2, "SHA-256"

    .line 208
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v9

    .line 211
    iget-object v3, p0, Landroidx/security/identity/SoftwareWritableIdentityCredential;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroidx/security/identity/SoftwareWritableIdentityCredential;->mDocType:Ljava/lang/String;

    iget-object v5, p0, Landroidx/security/identity/SoftwareWritableIdentityCredential;->mCredentialName:Ljava/lang/String;

    .line 215
    invoke-static {v5}, Landroidx/security/identity/CredentialData;->getAliasFromCredentialName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroidx/security/identity/SoftwareWritableIdentityCredential;->mCertificates:Ljava/util/Collection;

    const/4 v10, 0x0

    move-object v8, p1

    .line 211
    invoke-static/range {v3 .. v10}, Landroidx/security/identity/CredentialData;->createCredentialData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroidx/security/identity/PersonalizationData;[BZ)Landroidx/security/identity/CredentialData;

    .line 221
    invoke-static {v0}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 223
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error digesting ProofOfProvisioning"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
