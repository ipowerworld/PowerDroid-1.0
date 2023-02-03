.class public abstract Landroidx/security/identity/IdentityCredential;
.super Ljava/lang/Object;
.source "IdentityCredential.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createEphemeralKeyPair()Ljava/security/KeyPair;
.end method

.method public abstract decryptMessageFromReader([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/MessageDecryptionException;
        }
    .end annotation
.end method

.method public delete([B)[B
    .locals 0

    .line 471
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract encryptMessageToReader([B)[B
.end method

.method public abstract getAuthKeysNeedingCertification()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAuthenticationDataUsageCount()[I
.end method

.method public abstract getCredentialKeyCertificateChain()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;
.end method

.method public abstract getEntries([BLjava/util/Map;[B)Landroidx/security/identity/ResultData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;[B)",
            "Landroidx/security/identity/ResultData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/NoAuthenticationKeyAvailableException;,
            Landroidx/security/identity/InvalidReaderSignatureException;,
            Landroidx/security/identity/EphemeralPublicKeyNotFoundException;,
            Landroidx/security/identity/InvalidRequestMessageException;
        }
    .end annotation
.end method

.method public proveOwnership([B)[B
    .locals 0

    .line 442
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract setAllowUsingExhaustedKeys(Z)V
.end method

.method public setAllowUsingExpiredKeys(Z)V
    .locals 0

    .line 147
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract setAvailableAuthenticationKeys(II)V
.end method

.method public abstract setReaderEphemeralPublicKey(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract setSessionTranscript([B)V
.end method

.method public storeStaticAuthenticationData(Ljava/security/cert/X509Certificate;Landroid/icu/util/Calendar;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/UnknownAuthenticationKeyException;
        }
    .end annotation

    .line 405
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract storeStaticAuthenticationData(Ljava/security/cert/X509Certificate;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/UnknownAuthenticationKeyException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public update(Landroidx/security/identity/PersonalizationData;)[B
    .locals 0

    .line 496
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
