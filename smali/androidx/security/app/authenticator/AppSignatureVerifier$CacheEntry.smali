.class abstract Landroidx/security/app/authenticator/AppSignatureVerifier$CacheEntry;
.super Ljava/lang/Object;
.source "AppSignatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/app/authenticator/AppSignatureVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CacheEntry"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(ZJ)Landroidx/security/app/authenticator/AppSignatureVerifier$CacheEntry;
    .locals 1
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

    .line 421
    new-instance v0, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_CacheEntry;

    invoke-direct {v0, p0, p1, p2}, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_CacheEntry;-><init>(ZJ)V

    return-object v0
.end method


# virtual methods
.method abstract getLastUpdateTime()J
.end method

.method abstract getVerificationResult()Z
.end method
