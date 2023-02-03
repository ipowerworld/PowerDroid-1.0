.class Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;
.super Ljava/lang/Object;
.source "AppSignatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/app/authenticator/AppSignatureVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mCache:Landroidx/security/app/authenticator/AppSignatureVerifier$Cache;

.field private final mContext:Landroid/content/Context;

.field private mDigestAlgorithm:Ljava/lang/String;

.field private mExpectedIdentities:Ljava/util/Map;
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

.field private mPermissionAllowMap:Ljava/util/Map;
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
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method build()Landroidx/security/app/authenticator/AppSignatureVerifier;
    .locals 8

    .line 151
    iget-object v0, p0, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->mPermissionAllowMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->mPermissionAllowMap:Ljava/util/Map;

    .line 154
    :cond_0
    iget-object v0, p0, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->mExpectedIdentities:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 155
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->mExpectedIdentities:Ljava/util/Map;

    .line 157
    :cond_1
    iget-object v0, p0, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->mDigestAlgorithm:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "SHA-256"

    .line 158
    iput-object v0, p0, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->mDigestAlgorithm:Ljava/lang/String;

    .line 160
    :cond_2
    iget-object v0, p0, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->mCache:Landroidx/security/app/authenticator/AppSignatureVerifier$Cache;

    if-nez v0, :cond_3

    .line 161
    new-instance v0, Landroidx/security/app/authenticator/AppSignatureVerifier$Cache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/security/app/authenticator/AppSignatureVerifier$Cache;-><init>(I)V

    iput-object v0, p0, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->mCache:Landroidx/security/app/authenticator/AppSignatureVerifier$Cache;

    .line 163
    :cond_3
    new-instance v0, Landroidx/security/app/authenticator/AppSignatureVerifier;

    iget-object v3, p0, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->mPermissionAllowMap:Ljava/util/Map;

    iget-object v5, p0, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->mExpectedIdentities:Ljava/util/Map;

    iget-object v6, p0, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->mDigestAlgorithm:Ljava/lang/String;

    iget-object v7, p0, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->mCache:Landroidx/security/app/authenticator/AppSignatureVerifier$Cache;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/security/app/authenticator/AppSignatureVerifier;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Landroidx/security/app/authenticator/AppSignatureVerifier$Cache;)V

    return-object v0
.end method

.method setCache(Landroidx/security/app/authenticator/AppSignatureVerifier$Cache;)Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cache"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->mCache:Landroidx/security/app/authenticator/AppSignatureVerifier$Cache;

    return-object p0
.end method

.method setDigestAlgorithm(Ljava/lang/String;)Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digestAlgorithm"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->mDigestAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method setExpectedIdentities(Ljava/util/Map;)Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedIdentities"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->mExpectedIdentities:Ljava/util/Map;

    return-object p0
.end method

.method setPermissionAllowMap(Ljava/util/Map;)Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permissionAllowMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->mPermissionAllowMap:Ljava/util/Map;

    return-object p0
.end method
