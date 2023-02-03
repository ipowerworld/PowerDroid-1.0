.class public abstract Landroidx/security/identity/IdentityCredentialStore;
.super Ljava/lang/Object;
.source "IdentityCredentialStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/security/identity/IdentityCredentialStore$Ciphersuite;
    }
.end annotation


# static fields
.field public static final CIPHERSUITE_ECDHE_HKDF_ECDSA_WITH_AES_256_GCM_SHA256:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDirectAccessInstance(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;
    .locals 2

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 163
    invoke-static {p0}, Landroidx/security/identity/HardwareIdentityCredentialStore;->getDirectAccessInstance(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 169
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Direct-access IdentityCredential is not supported"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getHardwareInstance(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;
    .locals 2

    .line 303
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 304
    invoke-static {p0}, Landroidx/security/identity/HardwareIdentityCredentialStore;->getInstance(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;
    .locals 2

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 142
    invoke-static {p0}, Landroidx/security/identity/HardwareIdentityCredentialStore;->getInstanceIfSupported(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 147
    :cond_0
    invoke-static {p0}, Landroidx/security/identity/SoftwareIdentityCredentialStore;->getInstance(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;

    move-result-object p0

    return-object p0
.end method

.method public static getSoftwareInstance(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;
    .locals 0

    .line 285
    invoke-static {p0}, Landroidx/security/identity/SoftwareIdentityCredentialStore;->getInstance(Landroid/content/Context;)Landroidx/security/identity/IdentityCredentialStore;

    move-result-object p0

    return-object p0
.end method

.method public static isDirectAccessSupported(Landroid/content/Context;)Z
    .locals 2

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 194
    invoke-static {p0}, Landroidx/security/identity/HardwareIdentityCredentialStore;->isDirectAccessSupported(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract createCredential(Ljava/lang/String;Ljava/lang/String;)Landroidx/security/identity/WritableIdentityCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/AlreadyPersonalizedException;,
            Landroidx/security/identity/DocTypeNotSupportedException;
        }
    .end annotation
.end method

.method public abstract deleteCredentialByName(Ljava/lang/String;)[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getCapabilities()Landroidx/security/identity/IdentityCredentialStoreCapabilities;
    .locals 1

    .line 272
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getCredentialByName(Ljava/lang/String;I)Landroidx/security/identity/IdentityCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/identity/CipherSuiteNotSupportedException;
        }
    .end annotation
.end method

.method public abstract getSupportedDocTypes()[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
