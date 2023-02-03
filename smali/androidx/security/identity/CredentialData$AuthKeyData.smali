.class Landroidx/security/identity/CredentialData$AuthKeyData;
.super Ljava/lang/Object;
.source "CredentialData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/identity/CredentialData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthKeyData"
.end annotation


# instance fields
.field mAlias:Ljava/lang/String;

.field mCertificate:[B

.field mExpirationDate:Landroid/icu/util/Calendar;

.field mPendingAlias:Ljava/lang/String;

.field mPendingCertificate:[B

.field mStaticAuthenticationData:[B

.field mUseCount:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 1238
    iput-object v0, p0, Landroidx/security/identity/CredentialData$AuthKeyData;->mAlias:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 1240
    iput-object v2, p0, Landroidx/security/identity/CredentialData$AuthKeyData;->mCertificate:[B

    new-array v2, v1, [B

    .line 1243
    iput-object v2, p0, Landroidx/security/identity/CredentialData$AuthKeyData;->mStaticAuthenticationData:[B

    .line 1245
    iput v1, p0, Landroidx/security/identity/CredentialData$AuthKeyData;->mUseCount:I

    .line 1249
    iput-object v0, p0, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingAlias:Ljava/lang/String;

    new-array v0, v1, [B

    .line 1251
    iput-object v0, p0, Landroidx/security/identity/CredentialData$AuthKeyData;->mPendingCertificate:[B

    const/4 v0, 0x0

    .line 1253
    iput-object v0, p0, Landroidx/security/identity/CredentialData$AuthKeyData;->mExpirationDate:Landroid/icu/util/Calendar;

    return-void
.end method
