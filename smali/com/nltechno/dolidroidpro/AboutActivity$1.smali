.class Lcom/nltechno/dolidroidpro/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nltechno/dolidroidpro/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nltechno/dolidroidpro/AboutActivity;

.field final synthetic val$btn:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/nltechno/dolidroidpro/AboutActivity;Landroid/widget/Button;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/AboutActivity$1;->this$0:Lcom/nltechno/dolidroidpro/AboutActivity;

    iput-object p2, p0, Lcom/nltechno/dolidroidpro/AboutActivity$1;->val$btn:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const-string p1, "DoliDroidAboutActivity"

    const-string v0, "We click on Delete predefined Url"

    .line 122
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/AboutActivity$1;->this$0:Lcom/nltechno/dolidroidpro/AboutActivity;

    invoke-virtual {v0}, Lcom/nltechno/dolidroidpro/AboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "savedDolRootUrl"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/AboutActivity$1;->this$0:Lcom/nltechno/dolidroidpro/AboutActivity;

    const-string v2, "dolidroid_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nltechno/dolidroidpro/AboutActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    const/4 v2, -0x1

    .line 133
    sget-object v4, Lcom/nltechno/dolidroidpro/MainActivity;->listOfRootUrl:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    .line 136
    sget-object v6, Lcom/nltechno/dolidroidpro/MainActivity;->listOfRootUrl:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 137
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "write "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_1

    .line 142
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exclude entry "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v2, p0, Lcom/nltechno/dolidroidpro/AboutActivity$1;->val$btn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    iget-object v2, p0, Lcom/nltechno/dolidroidpro/AboutActivity$1;->val$btn:Landroid/widget/Button;

    const v6, -0x333334

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setTextColor(I)V

    move v2, v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    if-ltz v2, :cond_2

    .line 152
    sget-object v0, Lcom/nltechno/dolidroidpro/MainActivity;->listOfRootUrl:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, "Error"

    .line 157
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method
