.class public Lcom/nltechno/dolidroidpro/SslAlertDialog;
.super Ljava/lang/Object;
.source "SslAlertDialog.java"


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private handler:Landroid/webkit/SslErrorHandler;

.field public savedactivity:Lcom/nltechno/dolidroidpro/SecondActivity;


# direct methods
.method public constructor <init>(Landroid/webkit/SslErrorHandler;Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/nltechno/dolidroidpro/SslAlertDialog;->handler:Landroid/webkit/SslErrorHandler;

    .line 30
    iput-object v0, p0, Lcom/nltechno/dolidroidpro/SslAlertDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iput-object p2, p0, Lcom/nltechno/dolidroidpro/SslAlertDialog;->savedactivity:Lcom/nltechno/dolidroidpro/SecondActivity;

    .line 46
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SslAlertDialog;->handler:Landroid/webkit/SslErrorHandler;

    .line 48
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0e006d

    invoke-virtual {p2, v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const v0, 0x7f0e006e

    invoke-virtual {p2, v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p2, 0x7f0e001e

    .line 50
    new-instance p3, Lcom/nltechno/dolidroidpro/SslAlertDialog$1;

    invoke-direct {p3, p0}, Lcom/nltechno/dolidroidpro/SslAlertDialog$1;-><init>(Lcom/nltechno/dolidroidpro/SslAlertDialog;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p2, 0x7f0e0011

    .line 57
    new-instance p3, Lcom/nltechno/dolidroidpro/SslAlertDialog$2;

    invoke-direct {p3, p0}, Lcom/nltechno/dolidroidpro/SslAlertDialog$2;-><init>(Lcom/nltechno/dolidroidpro/SslAlertDialog;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SslAlertDialog;->dialog:Landroid/app/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/nltechno/dolidroidpro/SslAlertDialog;)Landroid/webkit/SslErrorHandler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SslAlertDialog;->handler:Landroid/webkit/SslErrorHandler;

    return-object p0
.end method


# virtual methods
.method public show()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SslAlertDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
