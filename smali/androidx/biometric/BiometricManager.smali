.class public Landroidx/biometric/BiometricManager;
.super Ljava/lang/Object;
.source "BiometricManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricManager$Api29Impl;,
        Landroidx/biometric/BiometricManager$Api30Impl;,
        Landroidx/biometric/BiometricManager$DefaultInjector;,
        Landroidx/biometric/BiometricManager$Injector;,
        Landroidx/biometric/BiometricManager$Authenticators;
    }
.end annotation


# static fields
.field public static final BIOMETRIC_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final BIOMETRIC_ERROR_NONE_ENROLLED:I = 0xb

.field public static final BIOMETRIC_ERROR_NO_HARDWARE:I = 0xc

.field public static final BIOMETRIC_ERROR_SECURITY_UPDATE_REQUIRED:I = 0xf

.field public static final BIOMETRIC_ERROR_UNSUPPORTED:I = -0x2

.field public static final BIOMETRIC_STATUS_UNKNOWN:I = -0x1

.field public static final BIOMETRIC_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BiometricManager"


# instance fields
.field private final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field private final mFingerprintManager:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

.field private final mInjector:Landroidx/biometric/BiometricManager$Injector;


# direct methods
.method constructor <init>(Landroidx/biometric/BiometricManager$Injector;)V
    .locals 3

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Landroidx/biometric/BiometricManager;->mInjector:Landroidx/biometric/BiometricManager$Injector;

    .line 285
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 286
    invoke-interface {p1}, Landroidx/biometric/BiometricManager$Injector;->getBiometricManager()Landroid/hardware/biometrics/BiometricManager;

    move-result-object p1

    iput-object p1, p0, Landroidx/biometric/BiometricManager;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 287
    iput-object v1, p0, Landroidx/biometric/BiometricManager;->mFingerprintManager:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    goto :goto_0

    .line 289
    :cond_0
    iput-object v1, p0, Landroidx/biometric/BiometricManager;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 290
    invoke-interface {p1}, Landroidx/biometric/BiometricManager$Injector;->getFingerprintManager()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object p1

    iput-object p1, p0, Landroidx/biometric/BiometricManager;->mFingerprintManager:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    :goto_0
    return-void
.end method

.method private canAuthenticateCompat(I)I
    .locals 2

    .line 353
    invoke-static {p1}, Landroidx/biometric/AuthenticatorUtils;->isSupportedCombination(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const/16 v0, 0xc

    if-nez p1, :cond_1

    return v0

    .line 363
    :cond_1
    iget-object v1, p0, Landroidx/biometric/BiometricManager;->mInjector:Landroidx/biometric/BiometricManager$Injector;

    invoke-interface {v1}, Landroidx/biometric/BiometricManager$Injector;->isDeviceSecurable()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 368
    :cond_2
    iget-object v0, p0, Landroidx/biometric/BiometricManager;->mInjector:Landroidx/biometric/BiometricManager$Injector;

    invoke-interface {v0}, Landroidx/biometric/BiometricManager$Injector;->isDeviceSecuredWithCredential()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 p1, 0xb

    return p1

    .line 373
    :cond_3
    invoke-static {p1}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    return p1

    .line 378
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_6

    .line 379
    invoke-static {p1}, Landroidx/biometric/AuthenticatorUtils;->isWeakBiometricAllowed(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 380
    invoke-direct {p0}, Landroidx/biometric/BiometricManager;->canAuthenticateWithWeakBiometricOnApi29()I

    move-result p1

    goto :goto_0

    .line 381
    :cond_5
    invoke-direct {p0}, Landroidx/biometric/BiometricManager;->canAuthenticateWithStrongBiometricOnApi29()I

    move-result p1

    :goto_0
    return p1

    .line 385
    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_7

    .line 386
    invoke-direct {p0}, Landroidx/biometric/BiometricManager;->canAuthenticateWithFingerprintOrUnknown()I

    move-result p1

    return p1

    .line 390
    :cond_7
    invoke-direct {p0}, Landroidx/biometric/BiometricManager;->canAuthenticateWithFingerprint()I

    move-result p1

    return p1
.end method

.method private canAuthenticateWithFingerprint()I
    .locals 2

    .line 473
    iget-object v0, p0, Landroidx/biometric/BiometricManager;->mFingerprintManager:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    if-nez v0, :cond_0

    const-string v0, "BiometricManager"

    const-string v1, "Failure in canAuthenticate(). FingerprintManager was null."

    .line 474
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    .line 477
    :cond_0
    invoke-virtual {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xc

    return v0

    .line 480
    :cond_1
    iget-object v0, p0, Landroidx/biometric/BiometricManager;->mFingerprintManager:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    invoke-virtual {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xb

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private canAuthenticateWithFingerprintOrUnknown()I
    .locals 1

    .line 460
    invoke-direct {p0}, Landroidx/biometric/BiometricManager;->canAuthenticateWithFingerprint()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private canAuthenticateWithStrongBiometricOnApi29()I
    .locals 6

    const-string v0, "BiometricManager"

    .line 406
    invoke-static {}, Landroidx/biometric/BiometricManager$Api29Impl;->getCanAuthenticateWithCryptoMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 408
    invoke-static {}, Landroidx/biometric/CryptoObjectUtils;->createFakeCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 411
    :try_start_0
    iget-object v3, p0, Landroidx/biometric/BiometricManager;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 412
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 413
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 414
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const-string v1, "Invalid return type for canAuthenticate(CryptoObject)."

    .line 416
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    const-string v2, "Failed to invoke canAuthenticate(CryptoObject)."

    .line 418
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroidx/biometric/BiometricManager;->canAuthenticateWithWeakBiometricOnApi29()I

    move-result v0

    .line 425
    iget-object v1, p0, Landroidx/biometric/BiometricManager;->mInjector:Landroidx/biometric/BiometricManager$Injector;

    invoke-interface {v1}, Landroidx/biometric/BiometricManager$Injector;->isStrongBiometricGuaranteed()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    .line 430
    :cond_2
    invoke-direct {p0}, Landroidx/biometric/BiometricManager;->canAuthenticateWithFingerprintOrUnknown()I

    move-result v0

    :cond_3
    :goto_2
    return v0
.end method

.method private canAuthenticateWithWeakBiometricOnApi29()I
    .locals 2

    .line 444
    iget-object v0, p0, Landroidx/biometric/BiometricManager;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    if-nez v0, :cond_0

    const-string v0, "BiometricManager"

    const-string v1, "Failure in canAuthenticate(). BiometricManager was null."

    .line 445
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    .line 448
    :cond_0
    invoke-static {v0}, Landroidx/biometric/BiometricManager$Api29Impl;->canAuthenticate(Landroid/hardware/biometrics/BiometricManager;)I

    move-result v0

    return v0
.end method

.method public static from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;
    .locals 2

    .line 274
    new-instance v0, Landroidx/biometric/BiometricManager;

    new-instance v1, Landroidx/biometric/BiometricManager$DefaultInjector;

    invoke-direct {v1, p0}, Landroidx/biometric/BiometricManager$DefaultInjector;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroidx/biometric/BiometricManager;-><init>(Landroidx/biometric/BiometricManager$Injector;)V

    return-object v0
.end method


# virtual methods
.method public canAuthenticate()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xff

    .line 307
    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricManager;->canAuthenticate(I)I

    move-result v0

    return v0
.end method

.method public canAuthenticate(I)I
    .locals 2

    .line 329
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 330
    iget-object v0, p0, Landroidx/biometric/BiometricManager;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    if-nez v0, :cond_0

    const-string p1, "BiometricManager"

    const-string v0, "Failure in canAuthenticate(). BiometricManager was null."

    .line 331
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 334
    :cond_0
    invoke-static {v0, p1}, Landroidx/biometric/BiometricManager$Api30Impl;->canAuthenticate(Landroid/hardware/biometrics/BiometricManager;I)I

    move-result p1

    return p1

    .line 336
    :cond_1
    invoke-direct {p0, p1}, Landroidx/biometric/BiometricManager;->canAuthenticateCompat(I)I

    move-result p1

    return p1
.end method
