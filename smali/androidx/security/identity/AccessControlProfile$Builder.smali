.class public final Landroidx/security/identity/AccessControlProfile$Builder;
.super Ljava/lang/Object;
.source "AccessControlProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/identity/AccessControlProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mProfile:Landroidx/security/identity/AccessControlProfile;


# direct methods
.method public constructor <init>(Landroidx/security/identity/AccessControlProfileId;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroidx/security/identity/AccessControlProfile;

    invoke-direct {v0}, Landroidx/security/identity/AccessControlProfile;-><init>()V

    iput-object v0, p0, Landroidx/security/identity/AccessControlProfile$Builder;->mProfile:Landroidx/security/identity/AccessControlProfile;

    .line 72
    iput-object p1, v0, Landroidx/security/identity/AccessControlProfile;->mAccessControlProfileId:Landroidx/security/identity/AccessControlProfileId;

    return-void
.end method


# virtual methods
.method public build()Landroidx/security/identity/AccessControlProfile;
    .locals 1

    .line 141
    iget-object v0, p0, Landroidx/security/identity/AccessControlProfile$Builder;->mProfile:Landroidx/security/identity/AccessControlProfile;

    return-object v0
.end method

.method public setReaderCertificate(Ljava/security/cert/X509Certificate;)Landroidx/security/identity/AccessControlProfile$Builder;
    .locals 1

    .line 131
    iget-object v0, p0, Landroidx/security/identity/AccessControlProfile$Builder;->mProfile:Landroidx/security/identity/AccessControlProfile;

    iput-object p1, v0, Landroidx/security/identity/AccessControlProfile;->mReaderCertificate:Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public setUserAuthenticationRequired(Z)Landroidx/security/identity/AccessControlProfile$Builder;
    .locals 1

    .line 91
    iget-object v0, p0, Landroidx/security/identity/AccessControlProfile$Builder;->mProfile:Landroidx/security/identity/AccessControlProfile;

    iput-boolean p1, v0, Landroidx/security/identity/AccessControlProfile;->mUserAuthenticationRequired:Z

    return-object p0
.end method

.method public setUserAuthenticationTimeout(J)Landroidx/security/identity/AccessControlProfile$Builder;
    .locals 1

    .line 112
    iget-object v0, p0, Landroidx/security/identity/AccessControlProfile$Builder;->mProfile:Landroidx/security/identity/AccessControlProfile;

    iput-wide p1, v0, Landroidx/security/identity/AccessControlProfile;->mUserAuthenticationTimeout:J

    return-object p0
.end method
