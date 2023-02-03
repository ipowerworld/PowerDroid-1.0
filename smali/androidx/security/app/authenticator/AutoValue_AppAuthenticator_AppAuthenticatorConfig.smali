.class final Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorConfig;
.super Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;
.source "AutoValue_AppAuthenticator_AppAuthenticatorConfig.java"


# instance fields
.field private final digestAlgorithm:Ljava/lang/String;

.field private final expectedIdentities:Ljava/util/Map;
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

.field private final permissionAllowMap:Ljava/util/Map;
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
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "permissionAllowMap",
            "expectedIdentities",
            "digestAlgorithm"
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
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;-><init>()V

    const-string v0, "Null permissionAllowMap"

    .line 22
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorConfig;->permissionAllowMap:Ljava/util/Map;

    const-string p1, "Null expectedIdentities"

    .line 26
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iput-object p2, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorConfig;->expectedIdentities:Ljava/util/Map;

    const-string p1, "Null digestAlgorithm"

    .line 30
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iput-object p3, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorConfig;->digestAlgorithm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 64
    :cond_0
    instance-of v1, p1, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 65
    check-cast p1, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;

    .line 66
    iget-object v1, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorConfig;->permissionAllowMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;->getPermissionAllowMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorConfig;->expectedIdentities:Ljava/util/Map;

    .line 67
    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;->getExpectedIdentities()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorConfig;->digestAlgorithm:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorConfig;->digestAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method getExpectedIdentities()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorConfig;->expectedIdentities:Ljava/util/Map;

    return-object v0
.end method

.method getPermissionAllowMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorConfig;->permissionAllowMap:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 77
    iget-object v0, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorConfig;->permissionAllowMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 79
    iget-object v2, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorConfig;->expectedIdentities:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 81
    iget-object v1, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorConfig;->digestAlgorithm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppAuthenticatorConfig{permissionAllowMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorConfig;->permissionAllowMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expectedIdentities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorConfig;->expectedIdentities:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", digestAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorConfig;->digestAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
