.class Landroidx/security/identity/HardwareIdentityCredential$ApiImplS;
.super Ljava/lang/Object;
.source "HardwareIdentityCredential.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/identity/HardwareIdentityCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiImplS"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static callDelete(Landroid/security/identity/IdentityCredential;[B)[B
    .locals 0

    .line 308
    invoke-virtual {p0, p1}, Landroid/security/identity/IdentityCredential;->delete([B)[B

    move-result-object p0

    return-object p0
.end method

.method static callProveOwnership(Landroid/security/identity/IdentityCredential;[B)[B
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Landroid/security/identity/IdentityCredential;->proveOwnership([B)[B

    move-result-object p0

    return-object p0
.end method

.method static callSetAllowUsingExpiredKeys(Landroid/security/identity/IdentityCredential;Z)V
    .locals 0

    .line 282
    invoke-virtual {p0, p1}, Landroid/security/identity/IdentityCredential;->setAllowUsingExpiredKeys(Z)V

    return-void
.end method

.method static callStoreStaticAuthenticationData(Landroid/security/identity/IdentityCredential;Ljava/security/cert/X509Certificate;Ljava/time/Instant;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/UnknownAuthenticationKeyException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/identity/IdentityCredential;->storeStaticAuthenticationData(Ljava/security/cert/X509Certificate;Ljava/time/Instant;[B)V

    return-void
.end method

.method static callUpdate(Landroid/security/identity/IdentityCredential;Landroid/security/identity/PersonalizationData;)[B
    .locals 0

    .line 315
    invoke-virtual {p0, p1}, Landroid/security/identity/IdentityCredential;->update(Landroid/security/identity/PersonalizationData;)[B

    move-result-object p0

    return-object p0
.end method
