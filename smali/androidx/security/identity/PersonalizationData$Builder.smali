.class public final Landroidx/security/identity/PersonalizationData$Builder;
.super Ljava/lang/Object;
.source "PersonalizationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/identity/PersonalizationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mData:Landroidx/security/identity/PersonalizationData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Landroidx/security/identity/PersonalizationData;

    invoke-direct {v0}, Landroidx/security/identity/PersonalizationData;-><init>()V

    iput-object v0, p0, Landroidx/security/identity/PersonalizationData$Builder;->mData:Landroidx/security/identity/PersonalizationData;

    return-void
.end method


# virtual methods
.method public addAccessControlProfile(Landroidx/security/identity/AccessControlProfile;)Landroidx/security/identity/PersonalizationData$Builder;
    .locals 1

    .line 268
    iget-object v0, p0, Landroidx/security/identity/PersonalizationData$Builder;->mData:Landroidx/security/identity/PersonalizationData;

    iget-object v0, v0, Landroidx/security/identity/PersonalizationData;->mProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroidx/security/identity/PersonalizationData;
    .locals 1

    .line 278
    iget-object v0, p0, Landroidx/security/identity/PersonalizationData$Builder;->mData:Landroidx/security/identity/PersonalizationData;

    return-object v0
.end method

.method public putEntry(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;[B)Landroidx/security/identity/PersonalizationData$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroidx/security/identity/AccessControlProfileId;",
            ">;[B)",
            "Landroidx/security/identity/PersonalizationData$Builder;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Landroidx/security/identity/PersonalizationData$Builder;->mData:Landroidx/security/identity/PersonalizationData;

    iget-object v0, v0, Landroidx/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/security/identity/PersonalizationData$NamespaceData;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroidx/security/identity/PersonalizationData$NamespaceData;

    invoke-direct {v0, p1}, Landroidx/security/identity/PersonalizationData$NamespaceData;-><init>(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Landroidx/security/identity/PersonalizationData$Builder;->mData:Landroidx/security/identity/PersonalizationData;

    iget-object v1, v1, Landroidx/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_0
    iget-object p1, v0, Landroidx/security/identity/PersonalizationData$NamespaceData;->mEntries:Ljava/util/LinkedHashMap;

    new-instance v0, Landroidx/security/identity/PersonalizationData$EntryData;

    invoke-direct {v0, p4, p3}, Landroidx/security/identity/PersonalizationData$EntryData;-><init>([BLjava/util/Collection;)V

    invoke-virtual {p1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putEntryBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Z)Landroidx/security/identity/PersonalizationData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroidx/security/identity/AccessControlProfileId;",
            ">;Z)",
            "Landroidx/security/identity/PersonalizationData$Builder;"
        }
    .end annotation

    .line 232
    invoke-static {p4}, Landroidx/security/identity/Util;->cborEncodeBoolean(Z)[B

    move-result-object p4

    .line 231
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/security/identity/PersonalizationData$Builder;->putEntry(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;[B)Landroidx/security/identity/PersonalizationData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putEntryBytestring(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;[B)Landroidx/security/identity/PersonalizationData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroidx/security/identity/AccessControlProfileId;",
            ">;[B)",
            "Landroidx/security/identity/PersonalizationData$Builder;"
        }
    .end annotation

    .line 189
    invoke-static {p4}, Landroidx/security/identity/Util;->cborEncodeBytestring([B)[B

    move-result-object p4

    .line 188
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/security/identity/PersonalizationData$Builder;->putEntry(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;[B)Landroidx/security/identity/PersonalizationData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putEntryCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/icu/util/Calendar;)Landroidx/security/identity/PersonalizationData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroidx/security/identity/AccessControlProfileId;",
            ">;",
            "Landroid/icu/util/Calendar;",
            ")",
            "Landroidx/security/identity/PersonalizationData$Builder;"
        }
    .end annotation

    .line 258
    invoke-static {p4}, Landroidx/security/identity/Util;->cborBuildDateTime(Landroid/icu/util/Calendar;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p4

    invoke-static {p4}, Landroidx/security/identity/Util;->cborEncode(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p4

    .line 257
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/security/identity/PersonalizationData$Builder;->putEntry(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;[B)Landroidx/security/identity/PersonalizationData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putEntryInteger(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;J)Landroidx/security/identity/PersonalizationData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroidx/security/identity/AccessControlProfileId;",
            ">;J)",
            "Landroidx/security/identity/PersonalizationData$Builder;"
        }
    .end annotation

    .line 210
    invoke-static {p4, p5}, Landroidx/security/identity/Util;->cborEncodeNumber(J)[B

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/security/identity/PersonalizationData$Builder;->putEntry(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;[B)Landroidx/security/identity/PersonalizationData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putEntryString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Landroidx/security/identity/PersonalizationData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroidx/security/identity/AccessControlProfileId;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/security/identity/PersonalizationData$Builder;"
        }
    .end annotation

    .line 168
    invoke-static {p4}, Landroidx/security/identity/Util;->cborEncodeString(Ljava/lang/String;)[B

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/security/identity/PersonalizationData$Builder;->putEntry(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;[B)Landroidx/security/identity/PersonalizationData$Builder;

    move-result-object p1

    return-object p1
.end method
