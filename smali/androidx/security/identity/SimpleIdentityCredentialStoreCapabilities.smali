.class Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;
.super Landroidx/security/identity/IdentityCredentialStoreCapabilities;
.source "SimpleIdentityCredentialStoreCapabilities.java"


# instance fields
.field mFeatureVersion:I

.field mIsDeleteCredentialSupported:Z

.field mIsDirectAccess:Z

.field mIsHardwareBacked:Z

.field mIsProveOwnershipSupported:Z

.field mIsStaticAuthenticationDataExpirationDateSupported:Z

.field mIsUpdateCredentialSupported:Z

.field mSupportedDocTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZIZLjava/util/Set;ZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZZ)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroidx/security/identity/IdentityCredentialStoreCapabilities;-><init>()V

    .line 42
    iput-boolean p1, p0, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;->mIsDirectAccess:Z

    .line 43
    iput p2, p0, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;->mFeatureVersion:I

    .line 44
    iput-boolean p3, p0, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;->mIsHardwareBacked:Z

    .line 45
    iput-object p4, p0, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;->mSupportedDocTypes:Ljava/util/Set;

    .line 46
    iput-boolean p5, p0, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;->mIsDeleteCredentialSupported:Z

    .line 47
    iput-boolean p7, p0, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;->mIsProveOwnershipSupported:Z

    .line 48
    iput-boolean p6, p0, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;->mIsUpdateCredentialSupported:Z

    .line 49
    iput-boolean p8, p0, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;->mIsStaticAuthenticationDataExpirationDateSupported:Z

    return-void
.end method

.method static getFeatureVersion202009(ZZLjava/util/Set;)Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;"
        }
    .end annotation

    .line 57
    new-instance v9, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;

    const v2, 0x31519

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move v1, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;-><init>(ZIZLjava/util/Set;ZZZZ)V

    return-object v9
.end method

.method static getFeatureVersion202101(ZZLjava/util/Set;)Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;"
        }
    .end annotation

    .line 72
    new-instance v9, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;

    const v2, 0x31575

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, v9

    move v1, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;-><init>(ZIZLjava/util/Set;ZZZZ)V

    return-object v9
.end method


# virtual methods
.method public getFeatureVersion()I
    .locals 1

    .line 90
    iget v0, p0, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;->mFeatureVersion:I

    return v0
.end method

.method public getSupportedDocTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;->mSupportedDocTypes:Ljava/util/Set;

    return-object v0
.end method

.method public isDeleteSupported()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;->mIsDeleteCredentialSupported:Z

    return v0
.end method

.method public isDirectAccess()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;->mIsDirectAccess:Z

    return v0
.end method

.method public isHardwareBacked()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;->mIsHardwareBacked:Z

    return v0
.end method

.method public isProveOwnershipSupported()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;->mIsProveOwnershipSupported:Z

    return v0
.end method

.method public isStaticAuthenticationDataExpirationSupported()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;->mIsStaticAuthenticationDataExpirationDateSupported:Z

    return v0
.end method

.method public isUpdateSupported()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Landroidx/security/identity/SimpleIdentityCredentialStoreCapabilities;->mIsUpdateCredentialSupported:Z

    return v0
.end method
