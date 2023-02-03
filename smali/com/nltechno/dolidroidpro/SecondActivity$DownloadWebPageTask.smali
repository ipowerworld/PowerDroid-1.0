.class Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;
.super Landroid/os/AsyncTask;
.source "SecondActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nltechno/dolidroidpro/SecondActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadWebPageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mode:Ljava/lang/String;

.field final synthetic this$0:Lcom/nltechno/dolidroidpro/SecondActivity;


# direct methods
.method constructor <init>(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    .line 835
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 836
    iput-object p2, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->mode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 829
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 847
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object v1, v1, Lcom/nltechno/dolidroidpro/SecondActivity;->listOfCookiesAfterLogon:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 848
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 851
    iget-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-virtual {v4}, Lcom/nltechno/dolidroidpro/SecondActivity;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    .line 852
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v6, "DoliDroidSecondActivity"

    .line 854
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doInBackground get url mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->mode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " savedAuthuser="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v7}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$300(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " cookies="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object v7, v7, Lcom/nltechno/dolidroidpro/SecondActivity;->listOfCookiesAfterLogon:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Cookie"

    .line 856
    iget-object v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object v6, v6, Lcom/nltechno/dolidroidpro/SecondActivity;->listOfCookiesAfterLogon:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "User-Agent"

    .line 858
    iget-object v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v6}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$400(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v3}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$300(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "Authorization"

    .line 860
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Basic "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v8}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$300(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v8}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$500(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    .line 863
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "Accept-Language"

    .line 864
    invoke-virtual {v5, v6, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :cond_1
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 868
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 870
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 872
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 873
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 878
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 883
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 829
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 14

    const-string v0, "onPostExecute mode="

    const-string v1, "DoliDroidSecondActivity"

    if-nez p1, :cond_0

    .line 900
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->mode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " result=null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 902
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->mode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :goto_0
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->mode:Ljava/lang/String;

    const-string v2, "menu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v3}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "core/get_menudiv.php?dol_hide_topmenu=1&dol_hide_leftmenu=1&dol_optimize_smallscreen=1&dol_no_mouse_hover=1&dol_use_jmobile=1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "<!-- Menu -->"

    goto :goto_1

    :cond_1
    move-object v0, v3

    .line 909
    :goto_1
    iget-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->mode:Ljava/lang/String;

    const-string v5, "quickaccess"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v3}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "core/search_page.php?dol_hide_topmenu=1&dol_hide_leftmenu=1&dol_optimize_smallscreen=1&dol_no_mouse_hover=1&dol_use_jmobile=1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "<!-- Quick access -->"

    .line 913
    :cond_2
    iget-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->mode:Ljava/lang/String;

    const-string v6, "bookmarks"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v3}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "core/bookmarks_page.php?dol_hide_topmenu=1&dol_hide_leftmenu=1&dol_optimize_smallscreen=1&dol_no_mouse_hover=1&dol_use_jmobile=1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "<!-- Bookmarks -->"

    .line 917
    :cond_3
    iget-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->mode:Ljava/lang/String;

    const-string v7, "multicompany"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v3}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "core/multicompany_page.php?dol_hide_topmenu=1&dol_hide_leftmenu=1&dol_optimize_smallscreen=1&dol_no_mouse_hover=1&dol_use_jmobile=1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "<!-- Multicompany selection  -->"

    :cond_4
    move-object v13, v3

    if-eqz p1, :cond_c

    const-string v3, ""

    .line 922
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 924
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostExecute Check result of doInBackground mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->mode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " savedDolBasedUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v8}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$600(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " stringforHistoryUrl="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "onPostExecute Load content from result of doInBackground mode="

    if-eqz v0, :cond_b

    .line 927
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 928
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->mode:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 929
    iget-object v9, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v9, v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$702(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 932
    :cond_5
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->mode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 933
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0, p1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$802(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 935
    :cond_6
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->mode:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 936
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0, p1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$902(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 938
    :cond_7
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->mode:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 939
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0, p1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$1002(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 941
    :cond_8
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->mode:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 942
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0, p1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$1102(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 946
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->mode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v2}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$600(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$000(Lcom/nltechno/dolidroidpro/SecondActivity;)Landroid/webkit/WebView;

    move-result-object v8

    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$600(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "text/html"

    const-string v12, "UTF-8"

    move-object v10, p1

    invoke-virtual/range {v8 .. v13}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string v0, "onPostExecute Failed to get page. Are you logged ?"

    .line 951
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object v0, v0, Lcom/nltechno/dolidroidpro/SecondActivity;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    const v3, 0x7f0e0046

    invoke-virtual {v2, v3}, Lcom/nltechno/dolidroidpro/SecondActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 953
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 956
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->mode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v2}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$600(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$000(Lcom/nltechno/dolidroidpro/SecondActivity;)Landroid/webkit/WebView;

    move-result-object v8

    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$600(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "text/html"

    const-string v12, "UTF-8"

    move-object v10, p1

    invoke-virtual/range {v8 .. v13}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_2
    const-string p1, "toremove"

    .line 962
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
