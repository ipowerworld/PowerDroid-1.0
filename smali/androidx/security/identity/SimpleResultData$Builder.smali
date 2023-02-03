.class Landroidx/security/identity/SimpleResultData$Builder;
.super Ljava/lang/Object;
.source "SimpleResultData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/identity/SimpleResultData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mResultData:Landroidx/security/identity/SimpleResultData;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Landroidx/security/identity/SimpleResultData;

    invoke-direct {v0}, Landroidx/security/identity/SimpleResultData;-><init>()V

    iput-object v0, p0, Landroidx/security/identity/SimpleResultData$Builder;->mResultData:Landroidx/security/identity/SimpleResultData;

    return-void
.end method

.method private getOrCreateInnerMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/security/identity/SimpleResultData$EntryData;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Landroidx/security/identity/SimpleResultData$Builder;->mResultData:Landroidx/security/identity/SimpleResultData;

    iget-object v0, v0, Landroidx/security/identity/SimpleResultData;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 160
    iget-object v1, p0, Landroidx/security/identity/SimpleResultData$Builder;->mResultData:Landroidx/security/identity/SimpleResultData;

    iget-object v1, v1, Landroidx/security/identity/SimpleResultData;->mData:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method addEntry(Ljava/lang/String;Ljava/lang/String;[B)Landroidx/security/identity/SimpleResultData$Builder;
    .locals 2

    .line 166
    invoke-direct {p0, p1}, Landroidx/security/identity/SimpleResultData$Builder;->getOrCreateInnerMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 167
    new-instance v0, Landroidx/security/identity/SimpleResultData$EntryData;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Landroidx/security/identity/SimpleResultData$EntryData;-><init>([BI)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method addErrorStatus(Ljava/lang/String;Ljava/lang/String;I)Landroidx/security/identity/SimpleResultData$Builder;
    .locals 2

    .line 172
    invoke-direct {p0, p1}, Landroidx/security/identity/SimpleResultData$Builder;->getOrCreateInnerMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 173
    new-instance v0, Landroidx/security/identity/SimpleResultData$EntryData;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p3}, Landroidx/security/identity/SimpleResultData$EntryData;-><init>([BI)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method build()Landroidx/security/identity/SimpleResultData;
    .locals 1

    .line 178
    iget-object v0, p0, Landroidx/security/identity/SimpleResultData$Builder;->mResultData:Landroidx/security/identity/SimpleResultData;

    return-object v0
.end method

.method setAuthenticatedData([B)Landroidx/security/identity/SimpleResultData$Builder;
    .locals 1

    .line 142
    iget-object v0, p0, Landroidx/security/identity/SimpleResultData$Builder;->mResultData:Landroidx/security/identity/SimpleResultData;

    iput-object p1, v0, Landroidx/security/identity/SimpleResultData;->mAuthenticatedData:[B

    return-object p0
.end method

.method setEcdsaSignature([B)Landroidx/security/identity/SimpleResultData$Builder;
    .locals 1

    .line 147
    iget-object v0, p0, Landroidx/security/identity/SimpleResultData$Builder;->mResultData:Landroidx/security/identity/SimpleResultData;

    iput-object p1, v0, Landroidx/security/identity/SimpleResultData;->mEcdsaSignature:[B

    return-object p0
.end method

.method setMessageAuthenticationCode([B)Landroidx/security/identity/SimpleResultData$Builder;
    .locals 1

    .line 152
    iget-object v0, p0, Landroidx/security/identity/SimpleResultData$Builder;->mResultData:Landroidx/security/identity/SimpleResultData;

    iput-object p1, v0, Landroidx/security/identity/SimpleResultData;->mMessageAuthenticationCode:[B

    return-object p0
.end method

.method setStaticAuthenticationData([B)Landroidx/security/identity/SimpleResultData$Builder;
    .locals 1

    .line 137
    iget-object v0, p0, Landroidx/security/identity/SimpleResultData$Builder;->mResultData:Landroidx/security/identity/SimpleResultData;

    iput-object p1, v0, Landroidx/security/identity/SimpleResultData;->mStaticAuthenticationData:[B

    return-object p0
.end method
