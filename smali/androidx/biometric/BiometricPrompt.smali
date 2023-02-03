.class public Landroidx/biometric/BiometricPrompt;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"

# interfaces
.implements Landroidx/biometric/BiometricConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricPrompt$PromptInfo;,
        Landroidx/biometric/BiometricPrompt$AuthenticationCallback;,
        Landroidx/biometric/BiometricPrompt$AuthenticationResult;,
        Landroidx/biometric/BiometricPrompt$CryptoObject;
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_RESULT_TYPE_BIOMETRIC:I = 0x2

.field public static final AUTHENTICATION_RESULT_TYPE_DEVICE_CREDENTIAL:I = 0x1

.field public static final AUTHENTICATION_RESULT_TYPE_UNKNOWN:I = -0x1

.field private static final BIOMETRIC_FRAGMENT_TAG:Ljava/lang/String; = "androidx.biometric.BiometricFragment"

.field private static final TAG:Ljava/lang/String; = "BiometricPromptCompat"


# instance fields
.field private mClientFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 2

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 681
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 682
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 683
    invoke-direct {p0, v0, p1, v1, p2}, Landroidx/biometric/BiometricPrompt;->init(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    return-void

    .line 678
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AuthenticationCallback must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 675
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Fragment must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 1

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 760
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 761
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 762
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/biometric/BiometricPrompt;->init(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    return-void

    .line 757
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AuthenticationCallback must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 754
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Executor must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 751
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Fragment must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 2

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 650
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 651
    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/biometric/BiometricPrompt;->init(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    return-void

    .line 647
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AuthenticationCallback must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 644
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FragmentActivity must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 1

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 721
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 722
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/biometric/BiometricPrompt;->init(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    return-void

    .line 718
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AuthenticationCallback must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 715
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Executor must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 712
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FragmentActivity must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private authenticateInternal(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 2

    .line 859
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "BiometricPromptCompat"

    if-nez v0, :cond_0

    const-string p1, "Unable to start authentication. Client fragment manager was null."

    .line 860
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 863
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Unable to start authentication. Called after onSaveInstanceState()."

    .line 864
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 868
    :cond_1
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 869
    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->findOrAddBiometricFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/biometric/BiometricFragment;

    move-result-object v0

    .line 870
    invoke-virtual {v0, p1, p2}, Landroidx/biometric/BiometricFragment;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    return-void
.end method

.method private static findBiometricFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/biometric/BiometricFragment;
    .locals 1

    const-string v0, "androidx.biometric.BiometricFragment"

    .line 906
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Landroidx/biometric/BiometricFragment;

    return-object p0
.end method

.method private static findOrAddBiometricFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/biometric/BiometricFragment;
    .locals 3

    .line 921
    invoke-static {p0}, Landroidx/biometric/BiometricPrompt;->findBiometricFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/biometric/BiometricFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 925
    invoke-static {}, Landroidx/biometric/BiometricFragment;->newInstance()Landroidx/biometric/BiometricFragment;

    move-result-object v0

    .line 926
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "androidx.biometric.BiometricFragment"

    .line 927
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 928
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 932
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-object v0
.end method

.method private init(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 0

    .line 780
    iput-object p2, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz p1, :cond_1

    .line 783
    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p2, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p1, Landroidx/biometric/BiometricViewModel;

    .line 784
    invoke-virtual {p2, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Landroidx/biometric/BiometricViewModel;

    if-eqz p3, :cond_0

    .line 786
    invoke-virtual {p1, p3}, Landroidx/biometric/BiometricViewModel;->setClientExecutor(Ljava/util/concurrent/Executor;)V

    .line 788
    :cond_0
    invoke-virtual {p1, p4}, Landroidx/biometric/BiometricViewModel;->setClientCallback(Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 849
    invoke-direct {p0, p1, v0}, Landroidx/biometric/BiometricPrompt;->authenticateInternal(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    return-void

    .line 846
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PromptInfo cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 3

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 821
    invoke-static {p1, p2}, Landroidx/biometric/AuthenticatorUtils;->getConsolidatedAuthenticators(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)I

    move-result v0

    .line 822
    invoke-static {v0}, Landroidx/biometric/AuthenticatorUtils;->isWeakBiometricAllowed(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 826
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    .line 827
    invoke-static {v0}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 828
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Crypto-based authentication is not supported for device credential prior to API 30."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 832
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/biometric/BiometricPrompt;->authenticateInternal(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    return-void

    .line 823
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Crypto-based authentication is not supported for Class 2 (Weak) biometrics."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 816
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CryptoObject cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 813
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PromptInfo cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancelAuthentication()V
    .locals 2

    .line 881
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "BiometricPromptCompat"

    if-nez v0, :cond_0

    const-string v0, "Unable to start authentication. Client fragment manager was null."

    .line 882
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 886
    :cond_0
    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->findBiometricFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/biometric/BiometricFragment;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Unable to cancel authentication. BiometricFragment not found."

    .line 888
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x3

    .line 892
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricFragment;->cancelAuthentication(I)V

    return-void
.end method
