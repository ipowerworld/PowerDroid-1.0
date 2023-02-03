.class Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid$3;
.super Landroid/os/CountDownTimer;
.source "SecondActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;

.field final synthetic val$aToast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;JJLandroid/widget/Toast;)V
    .locals 0

    .line 1993
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid$3;->this$1:Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;

    iput-object p6, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid$3;->val$aToast:Landroid/widget/Toast;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1995
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid$3;->val$aToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 1994
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid$3;->val$aToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
