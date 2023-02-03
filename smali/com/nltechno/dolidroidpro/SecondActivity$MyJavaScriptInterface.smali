.class public Lcom/nltechno/dolidroidpro/SecondActivity$MyJavaScriptInterface;
.super Ljava/lang/Object;
.source "SecondActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nltechno/dolidroidpro/SecondActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyJavaScriptInterface"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DoliDroidMyJavaScriptInterface"


# instance fields
.field activity:Landroid/app/Activity;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/nltechno/dolidroidpro/SecondActivity;


# direct methods
.method constructor <init>(Lcom/nltechno/dolidroidpro/SecondActivity;Landroid/app/Activity;)V
    .locals 0

    .line 2599
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$MyJavaScriptInterface;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2600
    iput-object p2, p0, Lcom/nltechno/dolidroidpro/SecondActivity$MyJavaScriptInterface;->activity:Landroid/app/Activity;

    return-void
.end method

.method constructor <init>(Lcom/nltechno/dolidroidpro/SecondActivity;Landroid/content/Context;)V
    .locals 0

    .line 2594
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$MyJavaScriptInterface;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2595
    iput-object p2, p0, Lcom/nltechno/dolidroidpro/SecondActivity$MyJavaScriptInterface;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public functionJavaCalledByJsProcessFormSubmit(Ljava/lang/String;)V
    .locals 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "username"

    const-string v1, "="

    .line 2631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "functionJavaCalledByJsProcessFormSubmit execution of code infected by jsInjectCodeForSetForm with data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DoliDroidMyJavaScriptInterface"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "&"

    .line 2632
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2637
    :try_start_0
    sget-object v2, Landroidx/security/crypto/MasterKeys;->AES256_GCM_SPEC:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v2}, Landroidx/security/crypto/MasterKeys;->getOrCreate(Landroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "secret_shared_prefs"

    .line 2638
    iget-object v5, p0, Lcom/nltechno/dolidroidpro/SecondActivity$MyJavaScriptInterface;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    .line 2641
    invoke-virtual {v5}, Lcom/nltechno/dolidroidpro/SecondActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->AES256_SIV:Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    sget-object v7, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->AES256_GCM:Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    .line 2638
    invoke-static {v4, v2, v5, v6, v7}, Landroidx/security/crypto/EncryptedSharedPreferences;->create(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2646
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2647
    array-length v4, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, p1, v6

    const/4 v8, 0x2

    .line 2648
    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 2649
    array-length v9, v7

    if-lt v9, v8, :cond_2

    .line 2650
    aget-object v8, v7, v5

    const/4 v9, 0x1

    .line 2651
    aget-object v7, v7, v9

    .line 2652
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "password"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2653
    :cond_0
    iget-object v10, p0, Lcom/nltechno/dolidroidpro/SecondActivity$MyJavaScriptInterface;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v10, v9}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$3302(Lcom/nltechno/dolidroidpro/SecondActivity;Z)Z

    .line 2654
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "functionJavaCalledByJsProcessFormSubmit save lastsubmit-"

    if-eqz v9, :cond_1

    .line 2655
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2657
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=hidden"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastsubmit-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2663
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "functionJavaCalledByJsProcessFormSubmit Failed to read the EncryptedSharedPreferences"

    .line 2666
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
