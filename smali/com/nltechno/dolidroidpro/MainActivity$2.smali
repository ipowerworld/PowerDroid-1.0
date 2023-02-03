.class Lcom/nltechno/dolidroidpro/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nltechno/dolidroidpro/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nltechno/dolidroidpro/MainActivity;


# direct methods
.method constructor <init>(Lcom/nltechno/dolidroidpro/MainActivity;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/MainActivity$2;->this$0:Lcom/nltechno/dolidroidpro/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 335
    iget-object p2, p0, Lcom/nltechno/dolidroidpro/MainActivity$2;->this$0:Lcom/nltechno/dolidroidpro/MainActivity;

    const p3, 0x7f08004b

    invoke-virtual {p2, p3}, Lcom/nltechno/dolidroidpro/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 336
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onTextChanged s="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "DoliDroidMainActivity"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, ""

    .line 337
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object p4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "http://"

    invoke-virtual {p4, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "https://"

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 342
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 343
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setClickable(Z)V

    const/4 p1, -0x1

    .line 344
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 338
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 339
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setClickable(Z)V

    const p1, -0x333334

    .line 340
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(I)V

    :goto_1
    return-void
.end method
