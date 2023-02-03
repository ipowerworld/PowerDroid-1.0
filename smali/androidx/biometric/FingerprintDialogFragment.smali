.class public Landroidx/biometric/FingerprintDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "FingerprintDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/FingerprintDialogFragment$Api21Impl;,
        Landroidx/biometric/FingerprintDialogFragment$Api26Impl;
    }
.end annotation


# static fields
.field private static final MESSAGE_DISPLAY_TIME_MS:I = 0x7d0

.field static final STATE_FINGERPRINT:I = 0x1

.field static final STATE_FINGERPRINT_AUTHENTICATED:I = 0x3

.field static final STATE_FINGERPRINT_ERROR:I = 0x2

.field static final STATE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FingerprintFragment"


# instance fields
.field private mErrorTextColor:I

.field private mFingerprintIcon:Landroid/widget/ImageView;

.field final mHandler:Landroid/os/Handler;

.field mHelpMessageView:Landroid/widget/TextView;

.field private mNormalTextColor:I

.field final mResetDialogRunnable:Ljava/lang/Runnable;

.field mViewModel:Landroidx/biometric/BiometricViewModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 103
    new-instance v0, Landroid/os/Handler;

    .line 104
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Landroidx/biometric/FingerprintDialogFragment$1;

    invoke-direct {v0, p0}, Landroidx/biometric/FingerprintDialogFragment$1;-><init>(Landroidx/biometric/FingerprintDialogFragment;)V

    iput-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->mResetDialogRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private connectViewModel()V
    .locals 2

    .line 246
    invoke-virtual {p0}, Landroidx/biometric/FingerprintDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Landroidx/biometric/BiometricViewModel;

    iput-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 253
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getFingerprintDialogState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Landroidx/biometric/FingerprintDialogFragment$3;

    invoke-direct {v1, p0}, Landroidx/biometric/FingerprintDialogFragment$3;-><init>(Landroidx/biometric/FingerprintDialogFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 263
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getFingerprintDialogHelpMessage()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Landroidx/biometric/FingerprintDialogFragment$4;

    invoke-direct {v1, p0}, Landroidx/biometric/FingerprintDialogFragment$4;-><init>(Landroidx/biometric/FingerprintDialogFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 400
    invoke-virtual {p0}, Landroidx/biometric/FingerprintDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "FingerprintFragment"

    const-string p2, "Unable to get animation. Context is null."

    .line 402
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/4 v2, 0x1

    if-nez p1, :cond_1

    if-ne p2, v2, :cond_1

    .line 408
    sget p1, Landroidx/biometric/R$drawable;->fingerprint_dialog_fp_to_error:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v2, :cond_2

    if-ne p2, v3, :cond_2

    .line 410
    sget p1, Landroidx/biometric/R$drawable;->fingerprint_dialog_fp_to_error:I

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    if-ne p2, v2, :cond_3

    .line 412
    sget p1, Landroidx/biometric/R$drawable;->fingerprint_dialog_error_to_fp:I

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    const/4 p1, 0x3

    if-ne p2, p1, :cond_4

    .line 416
    sget p1, Landroidx/biometric/R$drawable;->fingerprint_dialog_error_to_fp:I

    .line 421
    :goto_0
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1
.end method

.method private getThemedColorFor(I)I
    .locals 5

    .line 354
    invoke-virtual {p0}, Landroidx/biometric/FingerprintDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 355
    invoke-virtual {p0}, Landroidx/biometric/FingerprintDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 362
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v4, 0x1

    .line 363
    invoke-virtual {v0, p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 364
    iget v0, v3, Landroid/util/TypedValue;->data:I

    new-array v3, v4, [I

    aput p1, v3, v2

    invoke-virtual {v1, v0, v3}, Landroidx/fragment/app/FragmentActivity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 366
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 367
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return v0

    :cond_1
    :goto_0
    const-string p1, "FingerprintFragment"

    const-string v0, "Unable to get themed color. Context or activity is null."

    .line 357
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method static newInstance()Landroidx/biometric/FingerprintDialogFragment;
    .locals 1

    .line 151
    new-instance v0, Landroidx/biometric/FingerprintDialogFragment;

    invoke-direct {v0}, Landroidx/biometric/FingerprintDialogFragment;-><init>()V

    return-object v0
.end method

.method private shouldAnimateForTransition(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    return v1

    :cond_1
    if-ne p1, v2, :cond_2

    if-ne p2, v1, :cond_2

    return v1

    :cond_2
    return v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 237
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 238
    iget-object p1, p0, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogCancelPending(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 156
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 157
    invoke-direct {p0}, Landroidx/biometric/FingerprintDialogFragment;->connectViewModel()V

    .line 159
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 160
    invoke-static {}, Landroidx/biometric/FingerprintDialogFragment$Api26Impl;->getColorErrorAttr()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/biometric/FingerprintDialogFragment;->getThemedColorFor(I)I

    move-result p1

    iput p1, p0, Landroidx/biometric/FingerprintDialogFragment;->mErrorTextColor:I

    goto :goto_1

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/FingerprintDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 164
    sget v0, Landroidx/biometric/R$color;->biometric_error_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 165
    :goto_0
    iput p1, p0, Landroidx/biometric/FingerprintDialogFragment;->mErrorTextColor:I

    :goto_1
    const p1, 0x1010038

    .line 167
    invoke-direct {p0, p1}, Landroidx/biometric/FingerprintDialogFragment;->getThemedColorFor(I)I

    move-result p1

    iput p1, p0, Landroidx/biometric/FingerprintDialogFragment;->mNormalTextColor:I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 173
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/biometric/FingerprintDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 178
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/biometric/R$layout;->fingerprint_dialog_layout:I

    const/4 v2, 0x0

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 181
    sget v1, Landroidx/biometric/R$id;->fingerprint_subtitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 182
    sget v2, Landroidx/biometric/R$id;->fingerprint_description:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 184
    iget-object v3, p0, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v3}, Landroidx/biometric/BiometricViewModel;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 185
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 186
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :goto_0
    iget-object v1, p0, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 193
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 196
    :cond_1
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :goto_1
    sget v1, Landroidx/biometric/R$id;->fingerprint_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroidx/biometric/FingerprintDialogFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    .line 201
    sget v1, Landroidx/biometric/R$id;->fingerprint_error:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/biometric/FingerprintDialogFragment;->mHelpMessageView:Landroid/widget/TextView;

    .line 204
    iget-object v1, p0, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getAllowedAuthenticators()I

    move-result v1

    invoke-static {v1}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    sget v1, Landroidx/biometric/R$string;->confirm_device_credential_password:I

    invoke-virtual {p0, v1}, Landroidx/biometric/FingerprintDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 206
    :cond_2
    iget-object v1, p0, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 207
    :goto_2
    new-instance v2, Landroidx/biometric/FingerprintDialogFragment$2;

    invoke-direct {v2, p0}, Landroidx/biometric/FingerprintDialogFragment$2;-><init>(Landroidx/biometric/FingerprintDialogFragment;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 214
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 215
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 216
    invoke-virtual {p1, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 231
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onPause()V

    .line 232
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 222
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 223
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogPreviousState(I)V

    .line 224
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogState(I)V

    .line 225
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    sget v1, Landroidx/biometric/R$string;->fingerprint_dialog_touch_sensor:I

    .line 226
    invoke-virtual {p0, v1}, Landroidx/biometric/FingerprintDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogHelpMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method resetDialog()V
    .locals 3

    .line 336
    invoke-virtual {p0}, Landroidx/biometric/FingerprintDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "FingerprintFragment"

    const-string v1, "Not resetting the dialog. Context is null."

    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 342
    :cond_0
    iget-object v1, p0, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogState(I)V

    .line 343
    iget-object v1, p0, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    sget v2, Landroidx/biometric/R$string;->fingerprint_dialog_touch_sensor:I

    .line 344
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-virtual {v1, v0}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogHelpMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateFingerprintIcon(I)V
    .locals 3

    .line 282
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 290
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getFingerprintDialogPreviousState()I

    move-result v0

    .line 292
    invoke-direct {p0, v0, p1}, Landroidx/biometric/FingerprintDialogFragment;->getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 297
    :cond_1
    iget-object v2, p0, Landroidx/biometric/FingerprintDialogFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    invoke-direct {p0, v0, p1}, Landroidx/biometric/FingerprintDialogFragment;->shouldAnimateForTransition(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    invoke-static {v1}, Landroidx/biometric/FingerprintDialogFragment$Api21Impl;->startAnimation(Landroid/graphics/drawable/Drawable;)V

    .line 302
    :cond_2
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogPreviousState(I)V

    :cond_3
    return-void
.end method

.method updateHelpMessageColor(I)V
    .locals 2

    .line 313
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->mHelpMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 315
    iget p1, p0, Landroidx/biometric/FingerprintDialogFragment;->mErrorTextColor:I

    goto :goto_1

    :cond_1
    iget p1, p0, Landroidx/biometric/FingerprintDialogFragment;->mNormalTextColor:I

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method updateHelpMessageText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 326
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->mHelpMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
