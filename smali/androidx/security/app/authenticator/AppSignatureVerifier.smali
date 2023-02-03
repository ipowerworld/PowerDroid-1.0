.class Landroidx/security/app/authenticator/AppSignatureVerifier;
.super Ljava/lang/Object;
.source "AppSignatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/security/app/authenticator/AppSignatureVerifier$AppSignatureVerifierException;,
        Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;,
        Landroidx/security/app/authenticator/AppSignatureVerifier$CacheEntry;,
        Landroidx/security/app/authenticator/AppSignatureVerifier$Cache;,
        Landroidx/security/app/authenticator/AppSignatureVerifier$DefaultImpl;,
        Landroidx/security/app/authenticator/AppSignatureVerifier$Api28Impl;,
        Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0x10

.field private static final EXPECTED_IDENTITY_QUERY:Ljava/lang/String; = "expected-identity"

.field private static final TAG:Ljava/lang/String; = "AppSignatureVerifier"


# instance fields
.field private final mCache:Landroidx/security/app/authenticator/AppSignatureVerifier$Cache;

.field private final mDigestAlgorithm:Ljava/lang/String;

.field private final mExpectedIdentities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPermissionAllowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Landroidx/security/app/authenticator/AppSignatureVerifier$Cache;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "permissionAllowMap",
            "expectedIdentities",
            "digestAlgorithm",
            "cache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Landroidx/security/app/authenticator/AppSignatureVerifier$Cache;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Landroidx/security/app/authenticator/AppSignatureVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 73
    iput-object p2, p0, Landroidx/security/app/authenticator/AppSignatureVerifier;->mPermissionAllowMap:Ljava/util/Map;

    .line 74
    iput-object p3, p0, Landroidx/security/app/authenticator/AppSignatureVerifier;->mExpectedIdentities:Ljava/util/Map;

    .line 75
    iput-object p4, p0, Landroidx/security/app/authenticator/AppSignatureVerifier;->mDigestAlgorithm:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Landroidx/security/app/authenticator/AppSignatureVerifier;->mCache:Landroidx/security/app/authenticator/AppSignatureVerifier$Cache;

    return-void
.end method

.method static builder(Landroid/content/Context;)Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 84
    new-instance v0, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;

    invoke-direct {v0, p0}, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private verifySigningLineage(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "signatures",
            "packageCertDigests",
            "allPackagesCertDigests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 261
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/Signature;

    .line 262
    iget-object v1, p0, Landroidx/security/app/authenticator/AppSignatureVerifier;->mDigestAlgorithm:Ljava/lang/String;

    .line 263
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 262
    invoke-static {v1, v0}, Landroidx/security/app/authenticator/AppAuthenticatorUtils;->computeDigest(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 264
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    if-eqz p3, :cond_0

    .line 268
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method verifyCurrentSigners(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "signatures",
            "packageCertDigests",
            "allPackagesCertDigests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/Signature;

    .line 286
    iget-object v2, p0, Landroidx/security/app/authenticator/AppSignatureVerifier;->mDigestAlgorithm:Ljava/lang/String;

    .line 287
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 286
    invoke-static {v2, v1}, Landroidx/security/app/authenticator/AppAuthenticatorUtils;->computeDigest(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 289
    invoke-interface {p2, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_1

    return p1

    :cond_1
    if-eqz p3, :cond_2

    .line 293
    invoke-interface {p3, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method verifyExpectedIdentity(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Landroidx/security/app/authenticator/AppSignatureVerifier;->mExpectedIdentities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x0

    const-string v2, "expected-identity"

    .line 201
    invoke-virtual {p0, p1, v2, v0, v1}, Landroidx/security/app/authenticator/AppSignatureVerifier;->verifySigningIdentityForQuery(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method verifySigningIdentity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "permission"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Landroidx/security/app/authenticator/AppSignatureVerifier;->mPermissionAllowMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 179
    sget-object p1, Landroidx/security/app/authenticator/AppSignatureVerifier;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No expected signing identities declared for permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 182
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    const-string v3, "all-packages"

    .line 184
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    return v1

    .line 188
    :cond_1
    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/security/app/authenticator/AppSignatureVerifier;->verifySigningIdentityForQuery(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method verifySigningIdentityForQuery(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "query",
            "packageCertDigests",
            "allPackagesCertDigests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 217
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Landroidx/security/app/authenticator/AppSignatureVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Landroidx/security/app/authenticator/AppSignatureVerifier$Api28Impl;->getAppSigningInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Landroidx/security/app/authenticator/AppSignatureVerifier;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Landroidx/security/app/authenticator/AppSignatureVerifier$DefaultImpl;->getAppSigningInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;

    move-result-object v0
    :try_end_0
    .catch Landroidx/security/app/authenticator/AppSignatureVerifier$AppSignatureVerifierException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    iget-object v1, p0, Landroidx/security/app/authenticator/AppSignatureVerifier;->mCache:Landroidx/security/app/authenticator/AppSignatureVerifier$Cache;

    invoke-virtual {v1, p1, p2}, Landroidx/security/app/authenticator/AppSignatureVerifier$Cache;->get(Ljava/lang/String;Ljava/lang/String;)Landroidx/security/app/authenticator/AppSignatureVerifier$CacheEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 232
    invoke-virtual {v1}, Landroidx/security/app/authenticator/AppSignatureVerifier$CacheEntry;->getLastUpdateTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;->getLastUpdateTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 233
    invoke-virtual {v1}, Landroidx/security/app/authenticator/AppSignatureVerifier$CacheEntry;->getVerificationResult()Z

    move-result p1

    return p1

    .line 239
    :cond_1
    invoke-virtual {v0}, Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;->getSigningLineage()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 240
    invoke-virtual {v0}, Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;->getSigningLineage()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p3, p4}, Landroidx/security/app/authenticator/AppSignatureVerifier;->verifySigningLineage(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Z

    move-result p3

    goto :goto_1

    .line 243
    :cond_2
    invoke-virtual {v0}, Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;->getCurrentSignatures()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p3, p4}, Landroidx/security/app/authenticator/AppSignatureVerifier;->verifyCurrentSigners(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Z

    move-result p3

    .line 246
    :goto_1
    iget-object p4, p0, Landroidx/security/app/authenticator/AppSignatureVerifier;->mCache:Landroidx/security/app/authenticator/AppSignatureVerifier$Cache;

    .line 247
    invoke-virtual {v0}, Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;->getLastUpdateTime()J

    move-result-wide v0

    .line 246
    invoke-static {p3, v0, v1}, Landroidx/security/app/authenticator/AppSignatureVerifier$CacheEntry;->create(ZJ)Landroidx/security/app/authenticator/AppSignatureVerifier$CacheEntry;

    move-result-object v0

    invoke-virtual {p4, p1, p2, v0}, Landroidx/security/app/authenticator/AppSignatureVerifier$Cache;->put(Ljava/lang/String;Ljava/lang/String;Landroidx/security/app/authenticator/AppSignatureVerifier$CacheEntry;)V

    return p3

    :catch_0
    move-exception p2

    .line 223
    sget-object p3, Landroidx/security/app/authenticator/AppSignatureVerifier;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Caught an exception obtaining signing info for package "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method
