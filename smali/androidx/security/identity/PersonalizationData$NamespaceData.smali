.class Landroidx/security/identity/PersonalizationData$NamespaceData;
.super Ljava/lang/Object;
.source "PersonalizationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/identity/PersonalizationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NamespaceData"
.end annotation


# instance fields
.field protected mEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/security/identity/PersonalizationData$EntryData;",
            ">;"
        }
    .end annotation
.end field

.field protected mNamespace:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/security/identity/PersonalizationData$NamespaceData;->mEntries:Ljava/util/LinkedHashMap;

    .line 70
    iput-object p1, p0, Landroidx/security/identity/PersonalizationData$NamespaceData;->mNamespace:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getAccessControlProfileIds(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Landroidx/security/identity/AccessControlProfileId;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Landroidx/security/identity/PersonalizationData$NamespaceData;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/security/identity/PersonalizationData$EntryData;

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p1, Landroidx/security/identity/PersonalizationData$EntryData;->mAccessControlProfileIds:Ljava/util/Collection;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getEntryNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Landroidx/security/identity/PersonalizationData$NamespaceData;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getEntryValue(Ljava/lang/String;)[B
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/security/identity/PersonalizationData$NamespaceData;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/security/identity/PersonalizationData$EntryData;

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p1, Landroidx/security/identity/PersonalizationData$EntryData;->mValue:[B

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getNamespaceName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Landroidx/security/identity/PersonalizationData$NamespaceData;->mNamespace:Ljava/lang/String;

    return-object v0
.end method
