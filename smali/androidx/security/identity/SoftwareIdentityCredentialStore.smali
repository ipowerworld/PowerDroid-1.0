.class Landroidx/security/identity/SoftwareIdentityCredentialStore;
.super Landroidx/security/identity/IdentityCredentialStore;
.source "SoftwareIdentityCredentialStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SoftwareIdentityCredentialStore"


# instance fields
.field mCapabilities:Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/security/identity/IdentityCredentialStore;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredentialStore;->mCapabilities:Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;

    .line 35
    iput-object p1, p0, Landroidx/security/identity/SoftwareIdentityCredentialStore;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getDirectAccessInstance(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;
    .locals 1

    .line 46
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Direct-access IdentityCredential is not supported"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;
    .locals 1

    .line 40
    new-instance v0, Landroidx/security/identity/SoftwareIdentityCredentialStore;

    invoke-direct {v0, p0}, Landroidx/security/identity/SoftwareIdentityCredentialStore;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static isDirectAccessSupported(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createCredential(Ljava/lang/String;Ljava/lang/String;)Landroidx/security/identity/WritableIdentityCredential;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/AlreadyPersonalizedException;,
            Landroidx/security/identity/DocTypeNotSupportedException;
        }
    .end annotation

    .line 86
    new-instance v0, Landroidx/security/identity/SoftwareWritableIdentityCredential;

    iget-object v1, p0, Landroidx/security/identity/SoftwareIdentityCredentialStore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Landroidx/security/identity/SoftwareWritableIdentityCredential;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public deleteCredentialByName(Ljava/lang/String;)[B
    .locals 1

    .line 104
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredentialStore;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/security/identity/SoftwareIdentityCredential;->delete(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getCapabilities()Landroidx/security/identity/IdentityCredentialStoreCapabilities;
    .locals 2

    .line 71
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredentialStore;->mCapabilities:Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v1, 0x0

    .line 73
    invoke-static {v1, v1, v0}, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;->getFeatureVersion202101(ZZLjava/util/Set;)Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;

    move-result-object v0

    iput-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredentialStore;->mCapabilities:Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;

    .line 78
    :cond_0
    iget-object v0, p0, Landroidx/security/identity/SoftwareIdentityCredentialStore;->mCapabilities:Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;

    return-object v0
.end method

.method public getCredentialByName(Ljava/lang/String;I)Landroidx/security/identity/IdentityCredential;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/CipherSuiteNotSupportedException;
        }
    .end annotation

    .line 93
    new-instance v0, Landroidx/security/identity/SoftwareIdentityCredential;

    iget-object v1, p0, Landroidx/security/identity/SoftwareIdentityCredentialStore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Landroidx/security/identity/SoftwareIdentityCredential;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 95
    invoke-virtual {v0}, Landroidx/security/identity/SoftwareIdentityCredential;->loadData()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSupportedDocTypes()[Ljava/lang/String;
    .locals 5

    .line 57
    invoke-virtual {p0}, Landroidx/security/identity/SoftwareIdentityCredentialStore;->getCapabilities()Landroidx/security/identity/IdentityCredentialStoreCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/security/identity/IdentityCredentialStoreCapabilities;->getSupportedDocTypes()Ljava/util/Set;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 60
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    .line 61
    aput-object v3, v1, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v1
.end method
