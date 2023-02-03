.class final Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_CacheEntry;
.super Landroidx/security/app/authenticator/AppSignatureVerifier$CacheEntry;
.source "AutoValue_AppSignatureVerifier_CacheEntry.java"


# instance fields
.field private final lastUpdateTime:J

.field private final verificationResult:Z


# direct methods
.method constructor <init>(ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "verificationResult",
            "lastUpdateTime"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Landroidx/security/app/authenticator/AppSignatureVerifier$CacheEntry;-><init>()V

    .line 15
    iput-boolean p1, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_CacheEntry;->verificationResult:Z

    .line 16
    iput-wide p2, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_CacheEntry;->lastUpdateTime:J

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

    .line 42
    :cond_0
    instance-of v1, p1, Landroidx/security/app/authenticator/AppSignatureVerifier$CacheEntry;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 43
    check-cast p1, Landroidx/security/app/authenticator/AppSignatureVerifier$CacheEntry;

    .line 44
    iget-boolean v1, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_CacheEntry;->verificationResult:Z

    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppSignatureVerifier$CacheEntry;->getVerificationResult()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_CacheEntry;->lastUpdateTime:J

    .line 45
    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppSignatureVerifier$CacheEntry;->getLastUpdateTime()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method getLastUpdateTime()J
    .locals 2

    .line 26
    iget-wide v0, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_CacheEntry;->lastUpdateTime:J

    return-wide v0
.end method

.method getVerificationResult()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_CacheEntry;->verificationResult:Z

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 54
    iget-boolean v0, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_CacheEntry;->verificationResult:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 56
    iget-wide v1, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_CacheEntry;->lastUpdateTime:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheEntry{verificationResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_CacheEntry;->verificationResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_CacheEntry;->lastUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
