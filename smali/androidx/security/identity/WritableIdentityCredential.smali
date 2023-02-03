.class public abstract Landroidx/security/identity/WritableIdentityCredential;
.super Ljava/lang/Object;
.source "WritableIdentityCredential.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCredentialKeyCertificateChain([B)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract personalize(Landroidx/security/identity/PersonalizationData;)[B
.end method
