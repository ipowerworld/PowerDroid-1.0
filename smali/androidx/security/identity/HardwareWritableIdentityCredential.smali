.class Landroidx/security/identity/HardwareWritableIdentityCredential;
.super Landroidx/security/identity/WritableIdentityCredential;
.source "HardwareWritableIdentityCredential.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HardwareWritableIdentityCredential"


# instance fields
.field mWritableCredential:Landroid/security/identity/WritableIdentityCredential;


# direct methods
.method constructor <init>(Landroid/security/identity/WritableIdentityCredential;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/security/identity/WritableIdentityCredential;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/security/identity/HardwareWritableIdentityCredential;->mWritableCredential:Landroid/security/identity/WritableIdentityCredential;

    return-void
.end method

.method static convertPDFromJetpack(Landroidx/security/identity/PersonalizationData;)Landroid/security/identity/PersonalizationData;
    .locals 9

    .line 49
    new-instance v0, Landroid/security/identity/PersonalizationData$Builder;

    invoke-direct {v0}, Landroid/security/identity/PersonalizationData$Builder;-><init>()V

    .line 51
    invoke-virtual {p0}, Landroidx/security/identity/PersonalizationData;->getNamespaceDatas()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/security/identity/PersonalizationData$NamespaceData;

    .line 52
    invoke-virtual {v2}, Landroidx/security/identity/PersonalizationData$NamespaceData;->getEntryNames()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 53
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-virtual {v2, v4}, Landroidx/security/identity/PersonalizationData$NamespaceData;->getAccessControlProfileIds(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/security/identity/AccessControlProfileId;

    .line 56
    new-instance v8, Landroid/security/identity/AccessControlProfileId;

    invoke-virtual {v7}, Landroidx/security/identity/AccessControlProfileId;->getId()I

    move-result v7

    invoke-direct {v8, v7}, Landroid/security/identity/AccessControlProfileId;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v2}, Landroidx/security/identity/PersonalizationData$NamespaceData;->getNamespaceName()Ljava/lang/String;

    move-result-object v6

    .line 61
    invoke-virtual {v2, v4}, Landroidx/security/identity/PersonalizationData$NamespaceData;->getEntryValue(Ljava/lang/String;)[B

    move-result-object v7

    .line 58
    invoke-virtual {v0, v6, v4, v5, v7}, Landroid/security/identity/PersonalizationData$Builder;->putEntry(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;[B)Landroid/security/identity/PersonalizationData$Builder;

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Landroidx/security/identity/PersonalizationData;->getAccessControlProfiles()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/security/identity/AccessControlProfile;

    .line 66
    new-instance v2, Landroid/security/identity/AccessControlProfileId;

    .line 68
    invoke-virtual {v1}, Landroidx/security/identity/AccessControlProfile;->getAccessControlProfileId()Landroidx/security/identity/AccessControlProfileId;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/security/identity/AccessControlProfileId;->getId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/security/identity/AccessControlProfileId;-><init>(I)V

    .line 69
    new-instance v3, Landroid/security/identity/AccessControlProfile$Builder;

    invoke-direct {v3, v2}, Landroid/security/identity/AccessControlProfile$Builder;-><init>(Landroid/security/identity/AccessControlProfileId;)V

    .line 71
    invoke-virtual {v1}, Landroidx/security/identity/AccessControlProfile;->getReaderCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/security/identity/AccessControlProfile$Builder;->setReaderCertificate(Ljava/security/cert/X509Certificate;)Landroid/security/identity/AccessControlProfile$Builder;

    .line 72
    invoke-virtual {v1}, Landroidx/security/identity/AccessControlProfile;->getUserAuthenticationTimeout()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/security/identity/AccessControlProfile$Builder;->setUserAuthenticationTimeout(J)Landroid/security/identity/AccessControlProfile$Builder;

    .line 73
    invoke-virtual {v1}, Landroidx/security/identity/AccessControlProfile;->isUserAuthenticationRequired()Z

    move-result v1

    invoke-virtual {v3, v1}, Landroid/security/identity/AccessControlProfile$Builder;->setUserAuthenticationRequired(Z)Landroid/security/identity/AccessControlProfile$Builder;

    .line 74
    invoke-virtual {v3}, Landroid/security/identity/AccessControlProfile$Builder;->build()Landroid/security/identity/AccessControlProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/identity/PersonalizationData$Builder;->addAccessControlProfile(Landroid/security/identity/AccessControlProfile;)Landroid/security/identity/PersonalizationData$Builder;

    goto :goto_2

    .line 77
    :cond_3
    invoke-virtual {v0}, Landroid/security/identity/PersonalizationData$Builder;->build()Landroid/security/identity/PersonalizationData;

    move-result-object p0

    return-object p0
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

    .line 43
    iget-object v0, p0, Landroidx/security/identity/HardwareWritableIdentityCredential;->mWritableCredential:Landroid/security/identity/WritableIdentityCredential;

    invoke-virtual {v0, p1}, Landroid/security/identity/WritableIdentityCredential;->getCredentialKeyCertificateChain([B)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public personalize(Landroidx/security/identity/PersonalizationData;)[B
    .locals 1

    .line 83
    iget-object v0, p0, Landroidx/security/identity/HardwareWritableIdentityCredential;->mWritableCredential:Landroid/security/identity/WritableIdentityCredential;

    invoke-static {p1}, Landroidx/security/identity/HardwareWritableIdentityCredential;->convertPDFromJetpack(Landroidx/security/identity/PersonalizationData;)Landroid/security/identity/PersonalizationData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/security/identity/WritableIdentityCredential;->personalize(Landroid/security/identity/PersonalizationData;)[B

    move-result-object p1

    return-object p1
.end method
