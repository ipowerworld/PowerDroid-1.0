.class Lcom/nltechno/dolidroidpro/SslAlertDialog$2;
.super Ljava/lang/Object;
.source "SslAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nltechno/dolidroidpro/SslAlertDialog;-><init>(Landroid/webkit/SslErrorHandler;Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nltechno/dolidroidpro/SslAlertDialog;


# direct methods
.method constructor <init>(Lcom/nltechno/dolidroidpro/SslAlertDialog;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SslAlertDialog$2;->this$0:Lcom/nltechno/dolidroidpro/SslAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SslAlertDialog$2;->this$0:Lcom/nltechno/dolidroidpro/SslAlertDialog;

    invoke-static {p1}, Lcom/nltechno/dolidroidpro/SslAlertDialog;->access$000(Lcom/nltechno/dolidroidpro/SslAlertDialog;)Landroid/webkit/SslErrorHandler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 61
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SslAlertDialog$2;->this$0:Lcom/nltechno/dolidroidpro/SslAlertDialog;

    iget-object p1, p1, Lcom/nltechno/dolidroidpro/SslAlertDialog;->savedactivity:Lcom/nltechno/dolidroidpro/SecondActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/nltechno/dolidroidpro/SecondActivity;->setResult(I)V

    .line 62
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SslAlertDialog$2;->this$0:Lcom/nltechno/dolidroidpro/SslAlertDialog;

    iget-object p1, p1, Lcom/nltechno/dolidroidpro/SslAlertDialog;->savedactivity:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-virtual {p1}, Lcom/nltechno/dolidroidpro/SecondActivity;->finish()V

    return-void
.end method
