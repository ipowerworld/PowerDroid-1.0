.class public Landroidx/security/identity/AccessControlProfile;
.super Ljava/lang/Object;
.source "AccessControlProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/security/identity/AccessControlProfile$Builder;
    }
.end annotation


# instance fields
.field mAccessControlProfileId:Landroidx/security/identity/AccessControlProfileId;

.field mReaderCertificate:Ljava/security/cert/X509Certificate;

.field mUserAuthenticationRequired:Z

.field mUserAuthenticationTimeout:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroidx/security/identity/AccessControlProfileId;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/security/identity/AccessControlProfileId;-><init>(I)V

    iput-object v0, p0, Landroidx/security/identity/AccessControlProfile;->mAccessControlProfileId:Landroidx/security/identity/AccessControlProfileId;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Landroidx/security/identity/AccessControlProfile;->mReaderCertificate:Ljava/security/cert/X509Certificate;

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Landroidx/security/identity/AccessControlProfile;->mUserAuthenticationRequired:Z

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Landroidx/security/identity/AccessControlProfile;->mUserAuthenticationTimeout:J

    return-void
.end method


# virtual methods
.method getAccessControlProfileId()Landroidx/security/identity/AccessControlProfileId;
    .locals 1

    .line 38
    iget-object v0, p0, Landroidx/security/identity/AccessControlProfile;->mAccessControlProfileId:Landroidx/security/identity/AccessControlProfileId;

    return-object v0
.end method

.method getReaderCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/security/identity/AccessControlProfile;->mReaderCertificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method getUserAuthenticationTimeout()J
    .locals 2

    .line 42
    iget-wide v0, p0, Landroidx/security/identity/AccessControlProfile;->mUserAuthenticationTimeout:J

    return-wide v0
.end method

.method isUserAuthenticationRequired()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Landroidx/security/identity/AccessControlProfile;->mUserAuthenticationRequired:Z

    return v0
.end method
