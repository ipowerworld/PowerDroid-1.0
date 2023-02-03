.class Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid$2;
.super Ljava/lang/Object;
.source "SecondActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;


# direct methods
.method constructor <init>(Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;)V
    .locals 0

    .line 1480
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid$2;->this$1:Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1482
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
