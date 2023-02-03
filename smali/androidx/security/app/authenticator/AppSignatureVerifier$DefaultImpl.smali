.class Landroidx/security/app/authenticator/AppSignatureVerifier$DefaultImpl;
.super Ljava/lang/Object;
.source "AppSignatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/app/authenticator/AppSignatureVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAppSigningInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageManager",
            "packageName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/app/authenticator/AppSignatureVerifier$AppSignatureVerifierException;
        }
    .end annotation

    const/16 v0, 0x40

    .line 362
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    iget-wide v2, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;->create(Ljava/lang/String;[Landroid/content/pm/Signature;[Landroid/content/pm/Signature;J)Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;

    move-result-object p0

    return-object p0

    .line 368
    :cond_0
    new-instance p0, Landroidx/security/app/authenticator/AppSignatureVerifier$AppSignatureVerifierException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No signatures returned for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/security/app/authenticator/AppSignatureVerifier$AppSignatureVerifierException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 365
    new-instance v0, Landroidx/security/app/authenticator/AppSignatureVerifier$AppSignatureVerifierException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " not found"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroidx/security/app/authenticator/AppSignatureVerifier$AppSignatureVerifierException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
