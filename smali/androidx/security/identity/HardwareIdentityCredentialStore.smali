.class Landroidx/security/identity/HardwareIdentityCredentialStore;
.super Landroidx/security/identity/IdentityCredentialStore;
.source "HardwareIdentityCredentialStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HardwareIdentityCredentialStore"


# instance fields
.field mCapabilities:Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;

.field private final mContext:Landroid/content/Context;

.field private mIsDirectAccess:Z

.field private mStore:Landroid/security/identity/IdentityCredentialStore;


# direct methods
.method private constructor <init>(Landroid/security/identity/IdentityCredentialStore;Landroid/content/Context;Z)V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/security/identity/IdentityCredentialStore;-><init>()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Landroidx/security/identity/HardwareIdentityCredentialStore;->mCapabilities:Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;

    .line 44
    iput-object p1, p0, Landroidx/security/identity/HardwareIdentityCredentialStore;->mStore:Landroid/security/identity/IdentityCredentialStore;

    .line 45
    iput-object p2, p0, Landroidx/security/identity/HardwareIdentityCredentialStore;->mContext:Landroid/content/Context;

    .line 46
    iput-boolean p3, p0, Landroidx/security/identity/HardwareIdentityCredentialStore;->mIsDirectAccess:Z

    return-void
.end method

.method public static getDirectAccessInstance(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;
    .locals 1

    .line 80
    invoke-static {p0}, Landroidx/security/identity/HardwareIdentityCredentialStore;->getDirectAccessInstanceIfSupported(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 84
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "HW-backed direct-access IdentityCredential not supported"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static getDirectAccessInstanceIfSupported(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;
    .locals 3

    .line 70
    invoke-static {p0}, Landroid/security/identity/IdentityCredentialStore;->getDirectAccessInstance(Landroid/content/Context;)Landroid/security/identity/IdentityCredentialStore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v1, Landroidx/security/identity/HardwareIdentityCredentialStore;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Landroidx/security/identity/HardwareIdentityCredentialStore;-><init>(Landroid/security/identity/IdentityCredentialStore;Landroid/content/Context;Z)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;
    .locals 1

    .line 60
    invoke-static {p0}, Landroidx/security/identity/HardwareIdentityCredentialStore;->getInstanceIfSupported(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "HW-backed IdentityCredential not supported"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static getInstanceIfSupported(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;
    .locals 3

    .line 51
    invoke-static {p0}, Landroid/security/identity/IdentityCredentialStore;->getInstance(Landroid/content/Context;)Landroid/security/identity/IdentityCredentialStore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Landroidx/security/identity/HardwareIdentityCredentialStore;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Landroidx/security/identity/HardwareIdentityCredentialStore;-><init>(Landroid/security/identity/IdentityCredentialStore;Landroid/content/Context;Z)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isDirectAccessSupported(Landroid/content/Context;)Z
    .locals 0

    .line 88
    invoke-static {p0}, Landroidx/security/identity/HardwareIdentityCredentialStore;->getDirectAccessInstanceIfSupported(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createCredential(Ljava/lang/String;Ljava/lang/String;)Landroidx/security/identity/WritableIdentityCredential;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/AlreadyPersonalizedException;,
            Landroidx/security/identity/DocTypeNotSupportedException;
        }
    .end annotation

    .line 113
    :try_start_0
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredentialStore;->mStore:Landroid/security/identity/IdentityCredentialStore;

    .line 114
    invoke-virtual {v0, p1, p2}, Landroid/security/identity/IdentityCredentialStore;->createCredential(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/WritableIdentityCredential;

    move-result-object p1

    .line 115
    new-instance p2, Landroidx/security/identity/HardwareWritableIdentityCredential;

    invoke-direct {p2, p1}, Landroidx/security/identity/HardwareWritableIdentityCredential;-><init>(Landroid/security/identity/WritableIdentityCredential;)V
    :try_end_0
    .catch Landroid/security/identity/AlreadyPersonalizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/security/identity/DocTypeNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 119
    new-instance p2, Landroidx/security/identity/DocTypeNotSupportedException;

    invoke-virtual {p1}, Landroid/security/identity/DocTypeNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroidx/security/identity/DocTypeNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 117
    new-instance p2, Landroidx/security/identity/AlreadyPersonalizedException;

    invoke-virtual {p1}, Landroid/security/identity/AlreadyPersonalizedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroidx/security/identity/AlreadyPersonalizedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public deleteCredentialByName(Ljava/lang/String;)[B
    .locals 1

    .line 142
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredentialStore;->mStore:Landroid/security/identity/IdentityCredentialStore;

    invoke-virtual {v0, p1}, Landroid/security/identity/IdentityCredentialStore;->deleteCredentialByName(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getCapabilities()Landroidx/security/identity/IdentityCredentialStoreCapabilities;
    .locals 4

    .line 150
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Landroidx/security/identity/HardwareIdentityCredentialStore;->mStore:Landroid/security/identity/IdentityCredentialStore;

    .line 151
    invoke-virtual {v1}, Landroid/security/identity/IdentityCredentialStore;->getSupportedDocTypes()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 153
    iget-object v1, p0, Landroidx/security/identity/HardwareIdentityCredentialStore;->mCapabilities:Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;

    if-nez v1, :cond_2

    .line 154
    iget-object v1, p0, Landroidx/security/identity/HardwareIdentityCredentialStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 156
    iget-boolean v2, p0, Landroidx/security/identity/HardwareIdentityCredentialStore;->mIsDirectAccess:Z

    if-eqz v2, :cond_0

    const-string v2, "android.hardware.identity_credential_direct_access"

    goto :goto_0

    :cond_0
    const-string v2, "android.hardware.identity_credential"

    :goto_0
    const v3, 0x31575

    .line 160
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 162
    iget-boolean v1, p0, Landroidx/security/identity/HardwareIdentityCredentialStore;->mIsDirectAccess:Z

    invoke-static {v1, v2, v0}, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;->getFeatureVersion202101(ZZLjava/util/Set;)Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;

    move-result-object v0

    iput-object v0, p0, Landroidx/security/identity/HardwareIdentityCredentialStore;->mCapabilities:Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;

    goto :goto_1

    .line 167
    :cond_1
    iget-boolean v1, p0, Landroidx/security/identity/HardwareIdentityCredentialStore;->mIsDirectAccess:Z

    invoke-static {v1, v2, v0}, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;->getFeatureVersion202009(ZZLjava/util/Set;)Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;

    move-result-object v0

    iput-object v0, p0, Landroidx/security/identity/HardwareIdentityCredentialStore;->mCapabilities:Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;

    .line 173
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredentialStore;->mCapabilities:Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;

    return-object v0
.end method

.method public getCredentialByName(Ljava/lang/String;I)Landroidx/security/identity/IdentityCredential;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/CipherSuiteNotSupportedException;
        }
    .end annotation

    .line 128
    :try_start_0
    iget-object v0, p0, Landroidx/security/identity/HardwareIdentityCredentialStore;->mStore:Landroid/security/identity/IdentityCredentialStore;

    .line 129
    invoke-virtual {v0, p1, p2}, Landroid/security/identity/IdentityCredentialStore;->getCredentialByName(Ljava/lang/String;I)Landroid/security/identity/IdentityCredential;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 133
    :cond_0
    new-instance p2, Landroidx/security/identity/HardwareIdentityCredential;

    invoke-direct {p2, p1}, Landroidx/security/identity/HardwareIdentityCredential;-><init>(Landroid/security/identity/IdentityCredential;)V
    :try_end_0
    .catch Landroid/security/identity/CipherSuiteNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 135
    new-instance p2, Landroidx/security/identity/CipherSuiteNotSupportedException;

    invoke-virtual {p1}, Landroid/security/identity/CipherSuiteNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroidx/security/identity/CipherSuiteNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getSupportedDocTypes()[Ljava/lang/String;
    .locals 5

    .line 98
    invoke-virtual {p0}, Landroidx/security/identity/HardwareIdentityCredentialStore;->getCapabilities()Landroidx/security/identity/IdentityCredentialStoreCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/security/identity/IdentityCredentialStoreCapabilities;->getSupportedDocTypes()Ljava/util/Set;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 101
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

    .line 102
    aput-object v3, v1, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v1
.end method
