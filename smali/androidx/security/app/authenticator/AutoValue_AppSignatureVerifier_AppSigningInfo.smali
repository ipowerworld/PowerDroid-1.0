.class final Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;
.super Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;
.source "AutoValue_AppSignatureVerifier_AppSigningInfo.java"


# instance fields
.field private final currentSignatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final lastUpdateTime:J

.field private final packageName:Ljava/lang/String;

.field private final signingLineage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "currentSignatures",
            "signingLineage",
            "lastUpdateTime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/Signature;",
            ">;J)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;-><init>()V

    const-string v0, "Null packageName"

    .line 26
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->packageName:Ljava/lang/String;

    const-string p1, "Null currentSignatures"

    .line 30
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iput-object p2, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->currentSignatures:Ljava/util/List;

    .line 33
    iput-object p3, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->signingLineage:Ljava/util/List;

    .line 34
    iput-wide p4, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->lastUpdateTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
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

    .line 73
    :cond_0
    instance-of v1, p1, Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 74
    check-cast p1, Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;

    .line 75
    iget-object v1, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->currentSignatures:Ljava/util/List;

    .line 76
    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;->getCurrentSignatures()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->signingLineage:Ljava/util/List;

    if-nez v1, :cond_1

    .line 77
    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;->getSigningLineage()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;->getSigningLineage()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-wide v3, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->lastUpdateTime:J

    .line 78
    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;->getLastUpdateTime()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method getCurrentSignatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->currentSignatures:Ljava/util/List;

    return-object v0
.end method

.method getLastUpdateTime()J
    .locals 2

    .line 55
    iget-wide v0, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->lastUpdateTime:J

    return-wide v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method getSigningLineage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->signingLineage:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 87
    iget-object v0, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 89
    iget-object v2, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->currentSignatures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 91
    iget-object v2, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->signingLineage:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 93
    iget-wide v1, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->lastUpdateTime:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppSigningInfo{packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentSignatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->currentSignatures:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signingLineage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->signingLineage:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;->lastUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
