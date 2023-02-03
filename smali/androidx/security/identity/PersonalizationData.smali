.class public Landroidx/security/identity/PersonalizationData;
.super Ljava/lang/Object;
.source "PersonalizationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/security/identity/PersonalizationData$Builder;,
        Landroidx/security/identity/PersonalizationData$EntryData;,
        Landroidx/security/identity/PersonalizationData$NamespaceData;
    }
.end annotation


# instance fields
.field mNamespaces:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/security/identity/PersonalizationData$NamespaceData;",
            ">;"
        }
    .end annotation
.end field

.field mProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/security/identity/AccessControlProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/security/identity/PersonalizationData;->mProfiles:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
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

    .line 49
    iget-object v0, p0, Landroidx/security/identity/PersonalizationData;->mProfiles:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getNamespaceData(Ljava/lang/String;)Landroidx/security/identity/PersonalizationData$NamespaceData;
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/security/identity/PersonalizationData$NamespaceData;

    return-object p1
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

    .line 57
    iget-object v0, p0, Landroidx/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getNamespaces()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Landroidx/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
