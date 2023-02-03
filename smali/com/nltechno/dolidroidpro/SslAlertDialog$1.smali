.class Lcom/nltechno/dolidroidpro/SslAlertDialog$1;
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

    .line 50
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SslAlertDialog$1;->this$0:Lcom/nltechno/dolidroidpro/SslAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SslAlertDialog$1;->this$0:Lcom/nltechno/dolidroidpro/SslAlertDialog;

    invoke-static {p1}, Lcom/nltechno/dolidroidpro/SslAlertDialog;->access$000(Lcom/nltechno/dolidroidpro/SslAlertDialog;)Landroid/webkit/SslErrorHandler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 54
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SslAlertDialog$1;->this$0:Lcom/nltechno/dolidroidpro/SslAlertDialog;

    iget-object p1, p1, Lcom/nltechno/dolidroidpro/SslAlertDialog;->savedactivity:Lcom/nltechno/dolidroidpro/SecondActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/nltechno/dolidroidpro/SecondActivity;->sslErrorWasAccepted:Z

    return-void
.end method
