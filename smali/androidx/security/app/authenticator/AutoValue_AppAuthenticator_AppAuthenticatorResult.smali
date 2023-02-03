.class final Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorResult;
.super Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;
.source "AutoValue_AppAuthenticator_AppAuthenticatorResult.java"


# instance fields
.field private final resultCode:I

.field private final resultMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultCode",
            "resultMessage"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;-><init>()V

    .line 17
    iput p1, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorResult;->resultCode:I

    .line 18
    iput-object p2, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorResult;->resultMessage:Ljava/lang/String;

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

    .line 45
    :cond_0
    instance-of v1, p1, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 46
    check-cast p1, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;

    .line 47
    iget v1, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorResult;->resultCode:I

    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;->getResultCode()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorResult;->resultMessage:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 48
    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;->getResultMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;->getResultMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method getResultCode()I
    .locals 1

    .line 23
    iget v0, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorResult;->resultCode:I

    return v0
.end method

.method getResultMessage()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorResult;->resultMessage:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 57
    iget v0, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorResult;->resultCode:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorResult;->resultMessage:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppAuthenticatorResult{resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorResult;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorResult;->resultMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
