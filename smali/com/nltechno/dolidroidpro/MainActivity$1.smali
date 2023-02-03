.class Lcom/nltechno/dolidroidpro/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nltechno/dolidroidpro/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 162
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/MainActivity$1;->this$0:Lcom/nltechno/dolidroidpro/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/MainActivity$1;->this$0:Lcom/nltechno/dolidroidpro/MainActivity;

    invoke-virtual {v0, p1}, Lcom/nltechno/dolidroidpro/MainActivity;->openDolUrl(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "DoliDroidMainActivity"

    const-string v0, "Error in openDolUrl"

    .line 170
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
