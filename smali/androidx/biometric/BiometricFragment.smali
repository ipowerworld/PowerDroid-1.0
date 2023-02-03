.class public Landroidx/biometric/BiometricFragment;
.super Landroidx/fragment/app/Fragment;
.source "BiometricFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricFragment$Api21Impl;,
        Landroidx/biometric/BiometricFragment$Api28Impl;,
        Landroidx/biometric/BiometricFragment$Api29Impl;,
        Landroidx/biometric/BiometricFragment$Api30Impl;,
        Landroidx/biometric/BiometricFragment$StopIgnoringCancelRunnable;,
        Landroidx/biometric/BiometricFragment$PromptExecutor;
    }
.end annotation


# static fields
.field static final CANCELED_FROM_CLIENT:I = 0x3

.field static final CANCELED_FROM_INTERNAL:I = 0x0

.field static final CANCELED_FROM_NEGATIVE_BUTTON:I = 0x2

.field static final CANCELED_FROM_USER:I = 0x1

.field private static final DEBUG_FORCE_FINGERPRINT:Z = false

.field private static final DISMISS_INSTANTLY_DELAY_MS:I = 0x1f4

.field private static final FINGERPRINT_DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.biometric.FingerprintDialogFragment"

.field private static final HIDE_DIALOG_DELAY_MS:I = 0x7d0

.field private static final REQUEST_CONFIRM_CREDENTIAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BiometricFragment"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mViewModel:Landroidx/biometric/BiometricViewModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static checkForFingerprintPreAuthenticationErrors(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;)I
    .locals 1

    .line 841
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0xc

    return p0

    .line 843
    :cond_0
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0xb

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private connectViewModel()V
    .locals 2

    .line 218
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Landroidx/biometric/BiometricViewModel;

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 225
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAuthenticationResult()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Landroidx/biometric/BiometricFragment$1;

    invoke-direct {v1, p0}, Landroidx/biometric/BiometricFragment$1;-><init>(Landroidx/biometric/BiometricFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 238
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAuthenticationError()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Landroidx/biometric/BiometricFragment$2;

    invoke-direct {v1, p0}, Landroidx/biometric/BiometricFragment$2;-><init>(Landroidx/biometric/BiometricFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 252
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAuthenticationHelpMessage()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Landroidx/biometric/BiometricFragment$3;

    invoke-direct {v1, p0}, Landroidx/biometric/BiometricFragment$3;-><init>(Landroidx/biometric/BiometricFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 264
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isAuthenticationFailurePending()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Landroidx/biometric/BiometricFragment$4;

    invoke-direct {v1, p0}, Landroidx/biometric/BiometricFragment$4;-><init>(Landroidx/biometric/BiometricFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 276
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isNegativeButtonPressPending()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Landroidx/biometric/BiometricFragment$5;

    invoke-direct {v1, p0}, Landroidx/biometric/BiometricFragment$5;-><init>(Landroidx/biometric/BiometricFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 292
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isFingerprintDialogCancelPending()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Landroidx/biometric/BiometricFragment$6;

    invoke-direct {v1, p0}, Landroidx/biometric/BiometricFragment$6;-><init>(Landroidx/biometric/BiometricFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private dismissFingerprintDialog()V
    .locals 3

    .line 513
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setPromptShowing(Z)V

    .line 514
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "androidx.biometric.FingerprintDialogFragment"

    .line 517
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/biometric/FingerprintDialogFragment;

    if-eqz v1, :cond_1

    .line 520
    invoke-virtual {v1}, Landroidx/biometric/FingerprintDialogFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    invoke-virtual {v1}, Landroidx/biometric/FingerprintDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 523
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    :goto_0
    return-void
.end method

.method private getDismissDialogDelay()I
    .locals 2

    .line 910
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 911
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/biometric/DeviceUtils;->shouldHideFingerprintDialog(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d0

    :goto_0
    return v0
.end method

.method private handleConfirmCredentialResult(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 708
    new-instance p1, Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Landroidx/biometric/BiometricPrompt$AuthenticationResult;-><init>(Landroidx/biometric/BiometricPrompt$CryptoObject;I)V

    invoke-direct {p0, p1}, Landroidx/biometric/BiometricFragment;->sendSuccessAndDismiss(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    .line 714
    sget v0, Landroidx/biometric/R$string;->generic_error_user_canceled:I

    .line 716
    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-virtual {p0, p1, v0}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private isChangingConfigurations()Z
    .locals 1

    .line 895
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUsingFingerprintDialog()Z
    .locals 2

    .line 869
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->shouldForceFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private launchConfirmCredentialActivity()V
    .locals 4

    .line 656
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "BiometricFragment"

    const-string v1, "Failed to check device credential. Client FragmentActivity not found."

    .line 658
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 663
    :cond_0
    invoke-static {v0}, Landroidx/biometric/KeyguardUtils;->getKeyguardManager(Landroid/content/Context;)Landroid/app/KeyguardManager;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0xc

    .line 665
    sget v1, Landroidx/biometric/R$string;->generic_error_no_keyguard:I

    .line 667
    invoke-virtual {p0, v1}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 665
    invoke-virtual {p0, v0, v1}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    return-void

    .line 672
    :cond_1
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 673
    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v2}, Landroidx/biometric/BiometricViewModel;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 674
    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v3}, Landroidx/biometric/BiometricViewModel;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 677
    :goto_0
    invoke-static {v0, v1, v2}, Landroidx/biometric/BiometricFragment$Api21Impl;->createConfirmDeviceCredentialIntent(Landroid/app/KeyguardManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3

    const/16 v0, 0xe

    .line 682
    sget v1, Landroidx/biometric/R$string;->generic_error_no_device_credential:I

    .line 684
    invoke-virtual {p0, v1}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 682
    invoke-virtual {p0, v0, v1}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    return-void

    .line 688
    :cond_3
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/biometric/BiometricViewModel;->setConfirmingDeviceCredential(Z)V

    .line 691
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 692
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->dismissFingerprintDialog()V

    :cond_4
    const/high16 v1, 0x8080000

    .line 696
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 697
    invoke-virtual {p0, v0, v2}, Landroidx/biometric/BiometricFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static newInstance()Landroidx/biometric/BiometricFragment;
    .locals 1

    .line 171
    new-instance v0, Landroidx/biometric/BiometricFragment;

    invoke-direct {v0}, Landroidx/biometric/BiometricFragment;-><init>()V

    return-object v0
.end method

.method private sendErrorToClient(ILjava/lang/CharSequence;)V
    .locals 2

    .line 795
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isConfirmingDeviceCredential()Z

    move-result v0

    const-string v1, "BiometricFragment"

    if-eqz v0, :cond_0

    const-string p1, "Error not sent to client. User is confirming their device credential."

    .line 796
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isAwaitingResult()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Error not sent to client. Client is not awaiting a result."

    .line 801
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 805
    :cond_1
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setAwaitingResult(Z)V

    .line 806
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getClientExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/biometric/BiometricFragment$10;

    invoke-direct {v1, p0, p1, p2}, Landroidx/biometric/BiometricFragment$10;-><init>(Landroidx/biometric/BiometricFragment;ILjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendFailureToClient()V
    .locals 2

    .line 820
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isAwaitingResult()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BiometricFragment"

    const-string v1, "Failure not sent to client. Client is not awaiting a result."

    .line 821
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getClientExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/biometric/BiometricFragment$11;

    invoke-direct {v1, p0}, Landroidx/biometric/BiometricFragment$11;-><init>(Landroidx/biometric/BiometricFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendSuccessAndDismiss(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    .line 741
    invoke-direct {p0, p1}, Landroidx/biometric/BiometricFragment;->sendSuccessToClient(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 742
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    return-void
.end method

.method private sendSuccessToClient(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 2

    .line 770
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isAwaitingResult()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "BiometricFragment"

    const-string v0, "Success not sent to client. Client is not awaiting a result."

    .line 771
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 775
    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setAwaitingResult(Z)V

    .line 776
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getClientExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/biometric/BiometricFragment$9;

    invoke-direct {v1, p0, p1}, Landroidx/biometric/BiometricFragment$9;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private shouldForceFingerprint()Z
    .locals 3

    .line 882
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 883
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 884
    invoke-static {v0, v1, v2}, Landroidx/biometric/DeviceUtils;->shouldUseFingerprintForCrypto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showBiometricPromptForAuthentication()V
    .locals 5

    .line 418
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/biometric/BiometricFragment$Api28Impl;->createPromptBuilder(Landroid/content/Context;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 420
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 421
    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v2}, Landroidx/biometric/BiometricViewModel;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 422
    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v3}, Landroidx/biometric/BiometricViewModel;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v1, :cond_0

    .line 424
    invoke-static {v0, v1}, Landroidx/biometric/BiometricFragment$Api28Impl;->setTitle(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 427
    invoke-static {v0, v2}, Landroidx/biometric/BiometricFragment$Api28Impl;->setSubtitle(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 430
    invoke-static {v0, v3}, Landroidx/biometric/BiometricFragment$Api28Impl;->setDescription(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    .line 433
    :cond_2
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 434
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 435
    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 438
    invoke-virtual {v2}, Landroidx/biometric/BiometricViewModel;->getClientExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 439
    invoke-virtual {v3}, Landroidx/biometric/BiometricViewModel;->getNegativeButtonListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 435
    invoke-static {v0, v1, v2, v3}, Landroidx/biometric/BiometricFragment$Api28Impl;->setNegativeButton(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V

    .line 443
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_4

    .line 444
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->isConfirmationRequired()Z

    move-result v1

    invoke-static {v0, v1}, Landroidx/biometric/BiometricFragment$Api29Impl;->setConfirmationRequired(Landroid/hardware/biometrics/BiometricPrompt$Builder;Z)V

    .line 448
    :cond_4
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 449
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getAllowedAuthenticators()I

    move-result v1

    .line 450
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_5

    .line 451
    invoke-static {v0, v1}, Landroidx/biometric/BiometricFragment$Api30Impl;->setAllowedAuthenticators(Landroid/hardware/biometrics/BiometricPrompt$Builder;I)V

    goto :goto_0

    .line 452
    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_6

    .line 454
    invoke-static {v1}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v1

    .line 453
    invoke-static {v0, v1}, Landroidx/biometric/BiometricFragment$Api29Impl;->setDeviceCredentialAllowed(Landroid/hardware/biometrics/BiometricPrompt$Builder;Z)V

    .line 458
    :cond_6
    :goto_0
    invoke-static {v0}, Landroidx/biometric/BiometricFragment$Api28Impl;->buildPrompt(Landroid/hardware/biometrics/BiometricPrompt$Builder;)Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    .line 459
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 460
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getCancellationSignalProvider()Landroidx/biometric/CancellationSignalProvider;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/biometric/CancellationSignalProvider;->getBiometricCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v1

    .line 461
    new-instance v2, Landroidx/biometric/BiometricFragment$PromptExecutor;

    invoke-direct {v2}, Landroidx/biometric/BiometricFragment$PromptExecutor;-><init>()V

    .line 462
    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 463
    invoke-virtual {v3}, Landroidx/biometric/BiometricViewModel;->getAuthenticationCallbackProvider()Landroidx/biometric/AuthenticationCallbackProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/biometric/AuthenticationCallbackProvider;->getBiometricCallback()Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v3

    .line 464
    iget-object v4, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v4}, Landroidx/biometric/BiometricViewModel;->getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v4

    if-nez v4, :cond_7

    .line 466
    invoke-static {v0, v1, v2, v3}, Landroidx/biometric/BiometricFragment$Api28Impl;->authenticate(Landroid/hardware/biometrics/BiometricPrompt;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    goto :goto_1

    .line 469
    :cond_7
    invoke-static {v4}, Landroidx/biometric/CryptoObjectUtils;->wrapForBiometricPrompt(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 470
    invoke-static {v0, v4, v1, v2, v3}, Landroidx/biometric/BiometricFragment$Api28Impl;->authenticate(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    :goto_1
    return-void
.end method

.method private showFingerprintDialogForAuthentication()V
    .locals 7

    .line 375
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 377
    invoke-static {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v1

    .line 378
    invoke-static {v1}, Landroidx/biometric/BiometricFragment;->checkForFingerprintPreAuthenticationErrors(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/biometric/ErrorUtils;->getFingerprintErrorString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-virtual {p0, v2, v0}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    return-void

    .line 385
    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogDismissedInstantly(Z)V

    .line 387
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v2}, Landroidx/biometric/DeviceUtils;->shouldHideFingerprintDialog(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/biometric/BiometricFragment$7;

    invoke-direct {v2, p0}, Landroidx/biometric/BiometricFragment$7;-><init>(Landroidx/biometric/BiometricFragment;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 397
    invoke-static {}, Landroidx/biometric/FingerprintDialogFragment;->newInstance()Landroidx/biometric/FingerprintDialogFragment;

    move-result-object v0

    .line 398
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "androidx.biometric.FingerprintDialogFragment"

    invoke-virtual {v0, v2, v3}, Landroidx/biometric/FingerprintDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 401
    :cond_1
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/biometric/BiometricViewModel;->setCanceledFrom(I)V

    .line 402
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 403
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v0

    invoke-static {v0}, Landroidx/biometric/CryptoObjectUtils;->wrapForFingerprintManager(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 405
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getCancellationSignalProvider()Landroidx/biometric/CancellationSignalProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/biometric/CancellationSignalProvider;->getFingerprintCancellationSignal()Landroidx/core/os/CancellationSignal;

    move-result-object v4

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 406
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAuthenticationCallbackProvider()Landroidx/biometric/AuthenticationCallbackProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/biometric/AuthenticationCallbackProvider;->getFingerprintCallback()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    move-result-object v5

    const/4 v6, 0x0

    .line 402
    invoke-virtual/range {v1 .. v6}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->authenticate(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V

    :cond_2
    return-void
.end method

.method private showFingerprintErrorMessage(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 728
    :cond_0
    sget p1, Landroidx/biometric/R$string;->default_error_msg:I

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 729
    :goto_0
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogState(I)V

    .line 730
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogHelpMessage(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 4

    .line 316
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "BiometricFragment"

    if-nez v0, :cond_0

    const-string p1, "Not launching prompt. Client activity was null."

    .line 318
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 322
    :cond_0
    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v2, p1}, Landroidx/biometric/BiometricViewModel;->setPromptInfo(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    .line 326
    invoke-static {p1, p2}, Landroidx/biometric/AuthenticatorUtils;->getConsolidatedAuthenticators(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)I

    move-result p1

    .line 327
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_1

    const/16 v2, 0xf

    if-ne p1, v2, :cond_1

    if-nez p2, :cond_1

    .line 331
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-static {}, Landroidx/biometric/CryptoObjectUtils;->createFakeCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricViewModel;->setCryptoObject(Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    goto :goto_0

    .line 333
    :cond_1
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricViewModel;->setCryptoObject(Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    .line 336
    :goto_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isManagingDeviceCredentialButton()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 337
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    sget p2, Landroidx/biometric/R$string;->confirm_device_credential_password:I

    .line 338
    invoke-virtual {p0, p2}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 337
    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricViewModel;->setNegativeButtonTextOverride(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 341
    :cond_2
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricViewModel;->setNegativeButtonTextOverride(Ljava/lang/CharSequence;)V

    .line 345
    :goto_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    const/4 v2, 0x1

    if-lt p1, p2, :cond_3

    .line 346
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isManagingDeviceCredentialButton()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 347
    invoke-static {v0}, Landroidx/biometric/BiometricManager;->from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object p1

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricManager;->canAuthenticate(I)I

    move-result p1

    if-eqz p1, :cond_3

    .line 349
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p1, v2}, Landroidx/biometric/BiometricViewModel;->setAwaitingResult(Z)V

    .line 350
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->launchConfirmCredentialActivity()V

    return-void

    .line 354
    :cond_3
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p1}, Landroidx/biometric/BiometricViewModel;->isPromptShowing()Z

    move-result p1

    if-nez p1, :cond_6

    .line 355
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "Not showing biometric prompt. Context is null."

    .line 356
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 360
    :cond_4
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p1, v2}, Landroidx/biometric/BiometricViewModel;->setPromptShowing(Z)V

    .line 361
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p1, v2}, Landroidx/biometric/BiometricViewModel;->setAwaitingResult(Z)V

    .line 362
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 363
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->showFingerprintDialogForAuthentication()V

    goto :goto_2

    .line 365
    :cond_5
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->showBiometricPromptForAuthentication()V

    :cond_6
    :goto_2
    return-void
.end method

.method cancelAuthentication(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 481
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isIgnoringCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 485
    :cond_0
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricViewModel;->setCanceledFrom(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 490
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {p1, v0}, Landroidx/biometric/ErrorUtils;->getFingerprintErrorString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 489
    invoke-direct {p0, v0, p1}, Landroidx/biometric/BiometricFragment;->sendErrorToClient(ILjava/lang/CharSequence;)V

    .line 494
    :cond_1
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p1}, Landroidx/biometric/BiometricViewModel;->getCancellationSignalProvider()Landroidx/biometric/CancellationSignalProvider;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/biometric/CancellationSignalProvider;->cancel()V

    return-void
.end method

.method dismiss()V
    .locals 2

    .line 502
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setPromptShowing(Z)V

    .line 503
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->dismissFingerprintDialog()V

    .line 504
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isConfirmingDeviceCredential()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method isManagingDeviceCredentialButton()Z
    .locals 2

    .line 857
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 859
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAllowedAuthenticators()I

    move-result v0

    .line 858
    invoke-static {v0}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 206
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 208
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroidx/biometric/BiometricViewModel;->setConfirmingDeviceCredential(Z)V

    .line 209
    invoke-direct {p0, p2}, Landroidx/biometric/BiometricFragment;->handleConfirmCredentialResult(I)V

    :cond_0
    return-void
.end method

.method onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 551
    invoke-static {p1}, Landroidx/biometric/ErrorUtils;->isKnownError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 555
    :goto_0
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p2, :cond_1

    goto :goto_1

    .line 559
    :cond_1
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Landroidx/biometric/ErrorUtils;->getFingerprintErrorString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 563
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getCanceledFrom()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 566
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->sendErrorToClient(ILjava/lang/CharSequence;)V

    .line 569
    :cond_3
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    goto :goto_4

    .line 571
    :cond_4
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->isFingerprintDialogDismissedInstantly()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 572
    invoke-virtual {p0, v0, p2}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 574
    :cond_5
    invoke-direct {p0, p2}, Landroidx/biometric/BiometricFragment;->showFingerprintErrorMessage(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/biometric/BiometricFragment$8;

    invoke-direct {v1, p0, p1, p2}, Landroidx/biometric/BiometricFragment$8;-><init>(Landroidx/biometric/BiometricFragment;ILjava/lang/CharSequence;)V

    .line 582
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getDismissDialogDelay()I

    move-result p1

    int-to-long p1, p1

    .line 575
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 587
    :goto_2
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogDismissedInstantly(Z)V

    goto :goto_4

    :cond_6
    if-eqz p2, :cond_7

    goto :goto_3

    .line 594
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroidx/biometric/R$string;->default_error_msg:I

    .line 592
    invoke-virtual {p0, v1}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 595
    :goto_3
    invoke-virtual {p0, v0, p2}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    :goto_4
    return-void
.end method

.method onAuthenticationFailed()V
    .locals 1

    .line 616
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    sget v0, Landroidx/biometric/R$string;->fingerprint_not_recognized:I

    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/biometric/BiometricFragment;->showFingerprintErrorMessage(Ljava/lang/CharSequence;)V

    .line 619
    :cond_0
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->sendFailureToClient()V

    return-void
.end method

.method onAuthenticationHelp(Ljava/lang/CharSequence;)V
    .locals 1

    .line 606
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    invoke-direct {p0, p1}, Landroidx/biometric/BiometricFragment;->showFingerprintErrorMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    .line 538
    invoke-direct {p0, p1}, Landroidx/biometric/BiometricFragment;->sendSuccessAndDismiss(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method

.method onCancelButtonPressed()V
    .locals 2

    .line 641
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 646
    :cond_0
    sget v0, Landroidx/biometric/R$string;->default_error_msg:I

    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v1, 0xd

    .line 642
    invoke-virtual {p0, v1, v0}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    const/4 v0, 0x2

    .line 647
    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->cancelAuthentication(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 176
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->connectViewModel()V

    return-void
.end method

.method onDeviceCredentialButtonPressed()V
    .locals 2

    .line 628
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const-string v0, "BiometricFragment"

    const-string v1, "Failed to check device credential. Not supported prior to API 21."

    .line 629
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 632
    :cond_0
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->launchConfirmCredentialActivity()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 182
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 188
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAllowedAuthenticators()I

    move-result v0

    .line 187
    invoke-static {v0}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setIgnoringCancel(Z)V

    .line 190
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/biometric/BiometricFragment$StopIgnoringCancelRunnable;

    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-direct {v1, v2}, Landroidx/biometric/BiometricFragment$StopIgnoringCancelRunnable;-><init>(Landroidx/biometric/BiometricViewModel;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 196
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 198
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isConfirmingDeviceCredential()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->cancelAuthentication(I)V

    :cond_0
    return-void
.end method

.method sendErrorAndDismiss(ILjava/lang/CharSequence;)V
    .locals 0

    .line 755
    invoke-direct {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->sendErrorToClient(ILjava/lang/CharSequence;)V

    .line 756
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    return-void
.end method
