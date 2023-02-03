.class Landroidx/security/identity/SimpleResultData;
.super Landroidx/security/identity/ResultData;
.source "SimpleResultData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/security/identity/SimpleResultData$Builder;,
        Landroidx/security/identity/SimpleResultData$EntryData;
    }
.end annotation


# instance fields
.field protected mAuthenticatedData:[B

.field protected mData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/security/identity/SimpleResultData$EntryData;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mEcdsaSignature:[B

.field protected mMessageAuthenticationCode:[B

.field protected mStaticAuthenticationData:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroidx/security/identity/ResultData;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Landroidx/security/identity/SimpleResultData;->mStaticAuthenticationData:[B

    .line 34
    iput-object v0, p0, Landroidx/security/identity/SimpleResultData;->mAuthenticatedData:[B

    .line 35
    iput-object v0, p0, Landroidx/security/identity/SimpleResultData;->mEcdsaSignature:[B

    .line 36
    iput-object v0, p0, Landroidx/security/identity/SimpleResultData;->mMessageAuthenticationCode:[B

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/security/identity/SimpleResultData;->mData:Ljava/util/Map;

    return-void
.end method

.method private getEntryData(Ljava/lang/String;Ljava/lang/String;)Landroidx/security/identity/SimpleResultData$EntryData;
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/security/identity/SimpleResultData;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 107
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/security/identity/SimpleResultData$EntryData;

    return-object p1
.end method


# virtual methods
.method public getAuthenticatedData()[B
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/security/identity/SimpleResultData;->mAuthenticatedData:[B

    return-object v0
.end method

.method public getEcdsaSignature()[B
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/security/identity/SimpleResultData;->mEcdsaSignature:[B

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2}, Landroidx/security/identity/SimpleResultData;->getEntryData(Ljava/lang/String;Ljava/lang/String;)Landroidx/security/identity/SimpleResultData$EntryData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 126
    :cond_0
    iget-object p1, p1, Landroidx/security/identity/SimpleResultData$EntryData;->mValue:[B

    return-object p1
.end method

.method public getEntryNames(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroidx/security/identity/SimpleResultData;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 84
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getMessageAuthenticationCode()[B
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/security/identity/SimpleResultData;->mMessageAuthenticationCode:[B

    return-object v0
.end method

.method public getNamespaces()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroidx/security/identity/SimpleResultData;->mData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getRetrievedEntryNames(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroidx/security/identity/SimpleResultData;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 93
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/security/identity/SimpleResultData$EntryData;

    iget v2, v2, Landroidx/security/identity/SimpleResultData$EntryData;->mStatus:I

    if-nez v2, :cond_1

    .line 96
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getStaticAuthenticationData()[B
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/security/identity/SimpleResultData;->mStaticAuthenticationData:[B

    return-object v0
.end method

.method public getStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Landroidx/security/identity/SimpleResultData;->getEntryData(Ljava/lang/String;Ljava/lang/String;)Landroidx/security/identity/SimpleResultData$EntryData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    return p1

    .line 117
    :cond_0
    iget p1, p1, Landroidx/security/identity/SimpleResultData$EntryData;->mStatus:I

    return p1
.end method
