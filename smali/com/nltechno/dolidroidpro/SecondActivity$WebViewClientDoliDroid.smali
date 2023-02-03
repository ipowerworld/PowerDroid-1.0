.class Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;
.super Landroid/webkit/WebViewClient;
.source "SecondActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nltechno/dolidroidpro/SecondActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewClientDoliDroid"
.end annotation


# instance fields
.field counthttpauth:I

.field final jsInjectCodeForLoginSubmit:Ljava/lang/String;

.field private final secondActivity:Lcom/nltechno/dolidroidpro/SecondActivity;

.field final synthetic this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

.field webViewtitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nltechno/dolidroidpro/SecondActivity;Lcom/nltechno/dolidroidpro/SecondActivity;)V
    .locals 0

    .line 1430
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    .line 1395
    iput p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->counthttpauth:I

    const-string p1, ""

    .line 1398
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->webViewtitle:Ljava/lang/String;

    const-string p1, "console.log(\'Execute jsInjectCodeForLoginSubmit\');function dolidroidParseFormAfterSubmit(event) {    var form = this;    if (this.tagName.toLowerCase() != \'form\') form = this.form;    var data = \'\';    if (!form.method)  form.method = \'get\';    data += \'method=\' + form.method;    data += \'&action=\' + form.action;    var inputs = document.forms[0].getElementsByTagName(\'input\');    for (var i = 0; i < inputs.length; i++) {         var field = inputs[i];         if (field.type != \'submit\' && field.type != \'reset\' && field.type != \'button\')             data += \'&\' + field.name + \'=\' + field.value;    }    console.log(\'We have set a data string to \'+data);    window.HTMLOUT.functionJavaCalledByJsProcessFormSubmit(data);    console.log(\'Finished\');}for (var form_idx = 0; form_idx < document.forms.length; ++form_idx) {    document.forms[form_idx].addEventListener(\'submit\', dolidroidParseFormAfterSubmit, false);}var inputs = document.getElementsByTagName(\'input\'); for (var i = 0; i < inputs.length; i++) {    if (inputs[i].getAttribute(\'type\') == \'button\')        inputs[i].addEventListener(\'click\', dolidroidParseFormAfterSubmit, false);}console.log(\'End of jsInjectCodeForLoginSubmit\');"

    .line 1399
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->jsInjectCodeForLoginSubmit:Ljava/lang/String;

    .line 1431
    iput-object p2, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->secondActivity:Lcom/nltechno/dolidroidpro/SecondActivity;

    return-void
.end method


# virtual methods
.method public deleteSessionCookies()V
    .locals 4

    .line 2297
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const-string v1, "DoliDroidSecondActivity"

    const-string v2, "delete session cookies"

    .line 2299
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 2301
    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    .line 2304
    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v2}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cookie_string (path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v3}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public listCookies()Ljava/lang/String;
    .locals 3

    .line 2282
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 2284
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cookie_string (path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v2}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DoliDroidSecondActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadResource url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " originalUrl="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DoliDroidSecondActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 11

    .line 1863
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object v0, v0, Lcom/nltechno/dolidroidpro/SecondActivity;->listOfCookiesAfterLogon:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "DoliDroidSecondActivity"

    const-string v1, "onPageFinished Save session cookies for the download manager into var listOfCookiesAfterLogon"

    .line 1865
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->listCookies()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nltechno/dolidroidpro/SecondActivity;->listOfCookiesAfterLogon:Ljava/lang/String;

    .line 1870
    :cond_0
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object v0, v0, Lcom/nltechno/dolidroidpro/SecondActivity;->swipe:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1873
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$000(Lcom/nltechno/dolidroidpro/SecondActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    const-string v2, "DoliDroidSecondActivity"

    .line 1876
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPageFinished Begin url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " canGoBack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$1900(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2000(Lcom/nltechno/dolidroidpro/SecondActivity;)I

    move-result v0

    if-lez v0, :cond_1

    const-string p1, "JSERR001"

    .line 1882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "An error loading page was detected into some javascript part of your page."

    const-string v2, "This is commonly a problem on your server side, not into DoliDroid."

    const-string v3, "DoliDroid will not work corrrectly until you solve this."

    const-string v4, "-If you have installed external modules, try after disabling them (some external modules introduce bugs)"

    const-string v5, "-Try also to call login page from a standard PC by adding &dol_use_jmobile=1 as parameter of URL and check you don\'t have any javascript errors."

    .line 1889
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "For online help to solve this, go on page:<br><br>\n<strong><font size=\"-1\">http://wiki.dolibarr.org/index.php/Application_Android_-_DoliDroid#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v6, "</font></strong>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1890
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Note: Page you want to load is:<br><br>\n<font size=\"-1\">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v6, "</font>"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v6, "DoliDroidSecondActivity"

    .line 1891
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Show user message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    iget-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$1902(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1895
    iget-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v4}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$000(Lcom/nltechno/dolidroidpro/SecondActivity;)Landroid/webkit/WebView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "<br><br>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br>\n<br>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "<br><br><br>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "text/html"

    const-string v0, "UTF-8"

    invoke-virtual {v4, p1, p2, v0}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1897
    :cond_1
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2200(Lcom/nltechno/dolidroidpro/SecondActivity;)I

    move-result v0

    if-lez v0, :cond_2

    .line 1899
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object p1, p1, Lcom/nltechno/dolidroidpro/SecondActivity;->activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {p2}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1901
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2102(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_c

    .line 1905
    :cond_2
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0, v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2002(Lcom/nltechno/dolidroidpro/SecondActivity;I)I

    .line 1909
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$000(Lcom/nltechno/dolidroidpro/SecondActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->webViewtitle:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 1912
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2300(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->webViewtitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1913
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 1915
    iget-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v4}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2400(Lcom/nltechno/dolidroidpro/SecondActivity;)Landroid/view/Menu;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v4, :cond_6

    .line 1916
    iget-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v4}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2400(Lcom/nltechno/dolidroidpro/SecondActivity;)Landroid/view/Menu;

    move-result-object v4

    const v7, 0x7f08007b

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v3, :cond_6

    .line 1919
    iget-object v7, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2502(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1920
    iget-object v7, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2602(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string v7, "DoliDroidSecondActivity"

    .line 1921
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPageFinished Title of page is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->webViewtitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - Found login or home page + version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v9}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2500(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - Suggest to use asset: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v9}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2600(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    iget-object v7, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v7}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2400(Lcom/nltechno/dolidroidpro/SecondActivity;)Landroid/view/Menu;

    move-result-object v7

    const v8, 0x7f08007f

    invoke-interface {v7, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const/16 v8, 0xf

    if-eqz v7, :cond_4

    .line 1926
    iget-object v9, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v9}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2700(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/util/regex/Pattern;

    move-result-object v9

    iget-object v10, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->webViewtitle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 1928
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-lt v9, v8, :cond_3

    .line 1929
    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v7, "DoliDroidSecondActivity"

    const-string v9, "onPageFinished Module multicompany was found and Version major found >= 15, we enable the multicompany menu entry"

    .line 1930
    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    iget-object v7, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v7, v2}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2802(Lcom/nltechno/dolidroidpro/SecondActivity;Z)Z

    goto :goto_0

    .line 1933
    :cond_3
    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v7, "DoliDroidSecondActivity"

    const-string v9, "onPageFinished Module multicompany was NOT found or major version < 15, we disable the multicompany menu entry"

    .line 1934
    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    iget-object v7, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v7, v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2802(Lcom/nltechno/dolidroidpro/SecondActivity;Z)Z

    goto :goto_0

    .line 1938
    :cond_4
    iget-object v7, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v7, v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2802(Lcom/nltechno/dolidroidpro/SecondActivity;Z)Z

    .line 1943
    :goto_0
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, v8, :cond_5

    const-string v7, "DoliDroidSecondActivity"

    const-string v8, "onPageFinished Version major found >= 15, we enable the bookmark menu entry"

    .line 1944
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1946
    iget-object v7, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v7, v2}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2902(Lcom/nltechno/dolidroidpro/SecondActivity;Z)Z

    goto :goto_1

    :cond_5
    const-string v7, "DoliDroidSecondActivity"

    const-string v8, "onPageFinished Version major found < 15, we disable the bookmark menu entry"

    .line 1948
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1950
    iget-object v7, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v7, v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2902(Lcom/nltechno/dolidroidpro/SecondActivity;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v7, "DoliDroidSecondActivity"

    .line 1953
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPageFinished Failed to parse version found = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1962
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v4}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$3000(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/util/regex/Pattern;

    move-result-object v4

    iget-object v7, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->webViewtitle:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v4}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$3100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/util/regex/Pattern;

    move-result-object v4

    iget-object v7, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->webViewtitle:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_3

    .line 2059
    :cond_7
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {p1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$3300(Lcom/nltechno/dolidroidpro/SecondActivity;)Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "DoliDroidSecondActivity"

    const-string v0, "onPageFinished We have just received a page that is not Login page after submitting login form."

    .line 2061
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {p1, v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$3302(Lcom/nltechno/dolidroidpro/SecondActivity;Z)Z

    .line 2064
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-virtual {p1}, Lcom/nltechno/dolidroidpro/SecondActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "prefAlwaysAutoFill"

    .line 2067
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string v0, "DoliDroidSecondActivity"

    const-string v3, "onPageFinished We save some fields of the submited form (prefAlwaysAutoFill is true) into a file (secret_shared_prefs)."

    .line 2069
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :try_start_1
    sget-object v0, Landroidx/security/crypto/MasterKeys;->AES256_GCM_SPEC:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v0}, Landroidx/security/crypto/MasterKeys;->getOrCreate(Landroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "secret_shared_prefs"

    .line 2076
    iget-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    .line 2079
    invoke-virtual {v4}, Lcom/nltechno/dolidroidpro/SecondActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->AES256_SIV:Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    sget-object v6, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->AES256_GCM:Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    .line 2076
    invoke-static {v3, v0, v4, v5, v6}, Landroidx/security/crypto/EncryptedSharedPreferences;->create(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "lastsubmit-username"

    const-string v4, ""

    .line 2084
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "lastsubmit-password"

    const-string v5, ""

    .line 2085
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_8

    const-string v5, ""

    .line 2086
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    if-eqz v4, :cond_b

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 2088
    :cond_9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "DoliDroidSecondActivity"

    .line 2089
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPageFinished Save "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v7}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-username="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v6}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-username"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "DoliDroidSecondActivity"

    .line 2091
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPageFinished Save "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v6}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-password="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v5}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-password"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2093
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string v0, "DoliDroidSecondActivity"

    const-string v3, "onPageFinished Failed to read or write into EncryptedSharedPreferences."

    .line 2097
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    const-string v0, "DoliDroidSecondActivity"

    const-string v3, "onPageFinished We don\'t save form fields (prefAlwaysAutoFill is false)."

    .line 2100
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0, p1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$3202(Lcom/nltechno/dolidroidpro/SecondActivity;Z)Z

    const-string p1, "DoliDroidSecondActivity"

    const-string v0, "onPageFinished We clear history to removes the login page history entry"

    .line 2105
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {p1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$000(Lcom/nltechno/dolidroidpro/SecondActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    goto/16 :goto_a

    .line 1964
    :cond_c
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v7}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$600(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string p1, "DoliDroidSecondActivity"

    const-string v0, "onPageFinished We ignore page since url is not a specific page (not /index.php, not /myapge.php, ...)"

    .line 1966
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1970
    :cond_d
    monitor-enter p0

    if-eqz v3, :cond_f

    .line 1975
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v5, :cond_e

    move v3, v1

    goto :goto_4

    :cond_e
    move v3, v2

    .line 1976
    :goto_4
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ge v4, v5, :cond_10

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x6

    if-ge v0, v4, :cond_10

    goto :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :catch_2
    :cond_f
    :goto_5
    move v3, v1

    :cond_10
    if-eqz v3, :cond_11

    :try_start_3
    const-string v0, "DoliDroidSecondActivity"

    .line 1988
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPageFinished Dolidroid is compatible with your Dolibarr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v4}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2500(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_11
    const-string v0, "DoliDroidSecondActivity"

    .line 1990
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPageFinished Dolidroid is NOT compatible with your Dolibarr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v4}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2500(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object v0, v0, Lcom/nltechno/dolidroidpro/SecondActivity;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    const v4, 0x7f0e006c

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2500(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_12

    iget-object v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->webViewtitle:Ljava/lang/String;

    goto :goto_6

    :cond_12
    iget-object v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v6}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$2500(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v6

    :goto_6
    aput-object v6, v5, v1

    const-string v6, "3.4"

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/nltechno/dolidroidpro/SecondActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 1992
    new-instance v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid$3;

    const-wide/16 v6, 0x1388

    const-wide/16 v8, 0x3e8

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid$3;-><init>(Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;JJLandroid/widget/Toast;)V

    .line 1996
    invoke-virtual {v0}, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid$3;->start()Landroid/os/CountDownTimer;

    :goto_7
    const-string v0, ""

    .line 2000
    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v3}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$3200(Lcom/nltechno/dolidroidpro/SecondActivity;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_17

    :try_start_4
    const-string v3, "DoliDroidSecondActivity"

    const-string v4, "onPageFinished Open file to read shared preferences (secret_shared_prefs)"

    .line 2004
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    sget-object v3, Landroidx/security/crypto/MasterKeys;->AES256_GCM_SPEC:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v3}, Landroidx/security/crypto/MasterKeys;->getOrCreate(Landroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "secret_shared_prefs"

    .line 2008
    iget-object v5, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    .line 2011
    invoke-virtual {v5}, Lcom/nltechno/dolidroidpro/SecondActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->AES256_SIV:Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    sget-object v7, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->AES256_GCM:Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    .line 2008
    invoke-static {v4, v3, v5, v6, v7}, Landroidx/security/crypto/EncryptedSharedPreferences;->create(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2016
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v5}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-username"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2017
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v6}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-password"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_13

    const-string v5, ""

    .line 2019
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_13
    if-eqz v3, :cond_16

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 2020
    :cond_14
    iget-object v5, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v5, v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$3202(Lcom/nltechno/dolidroidpro/SecondActivity;Z)Z

    const-string v5, "DoliDroidSecondActivity"

    .line 2021
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPageFinished Prepare js to autofill login form with username="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " password="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    const-string v8, "*"

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_15

    const-string v5, ""

    .line 2025
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 2026
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "document.getElementById(\'username\').value=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\';"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_15
    if-eqz v3, :cond_18

    const-string v4, ""

    .line 2027
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 2028
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "document.getElementById(\'password\').value=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\';"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_16
    const-string v3, "DoliDroidSecondActivity"

    const-string v4, "onPageFinished No predefined login/pass to autofill login form"

    .line 2030
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :catch_3
    :try_start_5
    const-string v3, "DoliDroidSecondActivity"

    const-string v4, "onPageFinished Error on reading saved username/password"

    .line 2037
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_4
    const-string v3, "DoliDroidSecondActivity"

    const-string v4, "onPageFinished Error IO on reading saved username/password"

    .line 2034
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_17
    const-string v3, "DoliDroidSecondActivity"

    const-string v4, "onPageFinished Do not autofill login form with login/pass. tagToOverwriteLoginPass is false."

    .line 2040
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    :cond_18
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "document.getElementById(\'dol_hide_topmenu\').value=\'1\';"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2045
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "document.getElementById(\'dol_hide_leftmenu\').value=\'1\';"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2046
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "document.getElementById(\'dol_optimize_smallscreen\').value=\'1\';"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2047
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "document.getElementById(\'dol_no_mouse_hover\').value=\'1\';"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2048
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "document.getElementById(\'dol_use_jmobile\').value=\'1\';"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2049
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "console.log(\'Execute jsInjectCodeForLoginSubmit\');function dolidroidParseFormAfterSubmit(event) {    var form = this;    if (this.tagName.toLowerCase() != \'form\') form = this.form;    var data = \'\';    if (!form.method)  form.method = \'get\';    data += \'method=\' + form.method;    data += \'&action=\' + form.action;    var inputs = document.forms[0].getElementsByTagName(\'input\');    for (var i = 0; i < inputs.length; i++) {         var field = inputs[i];         if (field.type != \'submit\' && field.type != \'reset\' && field.type != \'button\')             data += \'&\' + field.name + \'=\' + field.value;    }    console.log(\'We have set a data string to \'+data);    window.HTMLOUT.functionJavaCalledByJsProcessFormSubmit(data);    console.log(\'Finished\');}for (var form_idx = 0; form_idx < document.forms.length; ++form_idx) {    document.forms[form_idx].addEventListener(\'submit\', dolidroidParseFormAfterSubmit, false);}var inputs = document.getElementsByTagName(\'input\'); for (var i = 0; i < inputs.length; i++) {    if (inputs[i].getAttribute(\'type\') == \'button\')        inputs[i].addEventListener(\'click\', dolidroidParseFormAfterSubmit, false);}console.log(\'End of jsInjectCodeForLoginSubmit\');"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DoliDroidSecondActivity"

    const-string v4, "onPageFinished Inject javascript jsInjectCodeForSetForm into page (to autofill form if allowed and to hook the submit of form to catch submitted params)"

    .line 2051
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:(function() { "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " })()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2053
    monitor-exit p0

    goto :goto_a

    :goto_9
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    :cond_19
    :goto_a
    const-string p1, "logout.php"

    .line 2113
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 2115
    monitor-enter p0

    .line 2117
    :try_start_6
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {p1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$3400(Lcom/nltechno/dolidroidpro/SecondActivity;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const-string p1, "DoliDroidSecondActivity"

    .line 2119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageFinished End of logout page, tagToLogout="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v3}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$3400(Lcom/nltechno/dolidroidpro/SecondActivity;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {p1, v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$3402(Lcom/nltechno/dolidroidpro/SecondActivity;Z)Z

    .line 2121
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {p1, v2}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$3202(Lcom/nltechno/dolidroidpro/SecondActivity;Z)Z

    const-string p1, "DoliDroidSecondActivity"

    const-string v0, "onPageFinished We finish activity resultCode=1"

    .line 2122
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-virtual {p1, v2}, Lcom/nltechno/dolidroidpro/SecondActivity;->setResult(I)V

    .line 2124
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-virtual {p1}, Lcom/nltechno/dolidroidpro/SecondActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    .line 2125
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-virtual {p1}, Lcom/nltechno/dolidroidpro/SecondActivity;->finish()V

    .line 2127
    :cond_1a
    monitor-exit p0

    goto :goto_b

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    :cond_1b
    :goto_b
    const-string p1, ""

    .line 2161
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$3500(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    const-string p1, "DoliDroidSecondActivity"

    .line 2163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished We add an entry into history stack because nextAltHistoryStackBis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$3500(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object p1, p1, Lcom/nltechno/dolidroidpro/SecondActivity;->altHistoryStack:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$3500(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2165
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$3502(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "data:text/html"

    .line 2166
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$702(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2169
    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$600(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    const-string p1, "data:text/html"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1e

    :cond_1d
    const-string p1, "DoliDroidSecondActivity"

    .line 2171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished We finished to load a page with a bad history "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {p1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$700(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$3502(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2175
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$702(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2178
    :cond_1e
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {p1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$000(Lcom/nltechno/dolidroidpro/SecondActivity;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nltechno/dolidroidpro/SecondActivity;->dumpBackForwardList(Landroid/webkit/WebView;)V

    :goto_c
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 8

    const-string p3, "http:"

    const-string v0, "DoliDroidSecondActivity"

    .line 1445
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " originalUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view.getUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " savedDolBasedUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v2}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$600(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1448
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string p1, "://[^:]+:[^:]+@"

    const-string v2, "://"

    .line 1450
    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1452
    invoke-virtual {v1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v2}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$600(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1456
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "OK"

    const/4 v4, -0x3

    const v5, 0x7f0e001c

    if-eqz p1, :cond_1

    :try_start_1
    const-string p1, "onPageStarted value of url is value of view.getUrl with a s added, we change the savedDolRootUrl"

    .line 1457
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object v6, v6, Lcom/nltechno/dolidroidpro/SecondActivity;->activity:Landroid/app/Activity;

    invoke-direct {p1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1463
    iget-object v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-virtual {v6, v5}, Lcom/nltechno/dolidroidpro/SecondActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1464
    iget-object v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    const v7, 0x7f0e0002

    invoke-virtual {v6, v7}, Lcom/nltechno/dolidroidpro/SecondActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1465
    new-instance v6, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid$1;

    invoke-direct {v6, p0}, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid$1;-><init>(Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;)V

    invoke-virtual {p1, v4, v3, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1471
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 1474
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->secondActivity:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-boolean p1, p1, Lcom/nltechno/dolidroidpro/SecondActivity;->httpWarningWasViewed:Z

    if-nez p1, :cond_2

    .line 1476
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object p2, p2, Lcom/nltechno/dolidroidpro/SecondActivity;->activity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1477
    iget-object p2, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-virtual {p2, v5}, Lcom/nltechno/dolidroidpro/SecondActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1478
    iget-object p2, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    const p3, 0x7f0e0001

    invoke-virtual {p2, p3}, Lcom/nltechno/dolidroidpro/SecondActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1479
    new-instance p2, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid$2;

    invoke-direct {p2, p0}, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid$2;-><init>(Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;)V

    invoke-virtual {p1, v4, v3, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1485
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 1486
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->secondActivity:Lcom/nltechno/dolidroidpro/SecondActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/nltechno/dolidroidpro/SecondActivity;->httpWarningWasViewed:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1491
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 2220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on URL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoliDroidSecondActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 2223
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    const-string p2, "net::ERR_ACCESS_DENIED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 2224
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object p1, p1, Lcom/nltechno/dolidroidpro/SecondActivity;->activity:Landroid/app/Activity;

    const-string p3, "Your WebView failed to gain permission for action (submit a captured file ?), for an unknown reason."

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2226
    :cond_0
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object p1, p1, Lcom/nltechno/dolidroidpro/SecondActivity;->activity:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Your Internet Connection may not be active Or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p1, "DoliDroidSecondActivity"

    const-string p3, "A request to send http basic auth has been received"

    .line 2189
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    iget p3, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->counthttpauth:I

    const/4 p4, 0x1

    add-int/2addr p3, p4

    iput p3, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->counthttpauth:I

    const/4 v0, 0x3

    if-lt p3, v0, :cond_0

    const/4 p3, 0x0

    .line 2196
    iput p3, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->counthttpauth:I

    .line 2197
    iget-object p3, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-virtual {p3}, Lcom/nltechno/dolidroidpro/SecondActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "The server is protected by Basic Authentication. You must include login/pass into your login URL:\nhttp://login:password@mydomain.com"

    invoke-static {p3, v0, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    .line 2198
    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 2200
    :cond_0
    iget p3, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->counthttpauth:I

    if-ne p3, p4, :cond_1

    add-int/2addr p3, p4

    .line 2202
    iput p3, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->counthttpauth:I

    .line 2204
    :cond_1
    iget p3, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->counthttpauth:I

    const/4 p4, 0x2

    if-ne p3, p4, :cond_2

    .line 2207
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "We try to proceed with info from URL username="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {p4}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$300(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " password=hidden"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {p1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$300(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {p3}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$500(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .line 2236
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown certificate error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "The certificate authority is not trusted."

    goto :goto_0

    :cond_1
    const-string p1, "The certificate Hostname mismatch."

    goto :goto_0

    :cond_2
    const-string p1, "The certificate has expired."

    goto :goto_0

    :cond_3
    const-string p1, "The certificate is not yet valid."

    .line 2254
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedSslError error message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " string = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DoliDroidSecondActivity"

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    iget-object p3, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->secondActivity:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-boolean p3, p3, Lcom/nltechno/dolidroidpro/SecondActivity;->sslErrorWasAccepted:Z

    if-nez p3, :cond_4

    .line 2261
    new-instance p3, Lcom/nltechno/dolidroidpro/SslAlertDialog;

    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->secondActivity:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-direct {p3, p2, v0, p1}, Lcom/nltechno/dolidroidpro/SslAlertDialog;-><init>(Landroid/webkit/SslErrorHandler;Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)V

    .line 2262
    invoke-virtual {p3}, Lcom/nltechno/dolidroidpro/SslAlertDialog;->show()V

    goto :goto_1

    :cond_4
    const-string p1, "onReceivedSslError SSL error already accepted, we do handler.proceed()"

    .line 2266
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    :goto_1
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "quickaccess"

    const-string v2, "menu"

    const-string v3, "shouldInterceptRequest Filename "

    .line 1509
    invoke-interface/range {p2 .. p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 1510
    invoke-interface/range {p2 .. p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    const/4 v6, 0x0

    const-string v7, "/"

    const-string v8, ""

    const/4 v9, 0x1

    const-string v10, "DoliDroidSecondActivity"

    if-eqz v4, :cond_2

    :try_start_0
    const-string v11, "data:"

    .line 1517
    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1519
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "version"

    .line 1520
    invoke-virtual {v11, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v12, :cond_1

    :try_start_1
    const-string v13, "\\."

    .line 1523
    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1524
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v13, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v13, v13, v9

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1526
    :cond_1
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 1527
    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v11, v5

    goto :goto_3

    :catch_1
    move-object v11, v5

    move-object v12, v11

    goto :goto_3

    :cond_2
    move-object v11, v5

    move-object v12, v11

    move-object v13, v12

    :goto_1
    if-eqz v13, :cond_4

    .line 1533
    :try_start_2
    iget-object v14, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->secondActivity:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v14}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$1200(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1534
    iget-object v14, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->secondActivity:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v14}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$1200(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 1536
    :cond_3
    iget-object v14, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->secondActivity:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v14}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$1200(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1538
    :goto_2
    invoke-virtual {v13, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1539
    invoke-virtual {v13, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    :goto_3
    const-string v13, "shouldInterceptRequest Error into getting fileName or host"

    .line 1545
    invoke-static {v10, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v5

    .line 1549
    :cond_4
    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "shouldInterceptRequest url="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", host="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ", fileName="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ", savedDolBasedUrl="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v14, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v14}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$600(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " version in url param (for js or css pages)="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v4, :cond_6

    const-string v11, ".pdf"

    .line 1552
    invoke-virtual {v4, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ".odt"

    invoke-virtual {v4, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ".ods"

    invoke-virtual {v4, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_5
    const-string v11, "action="

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    const-string v11, "document.php"

    .line 1553
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    if-eqz v4, :cond_8

    const-string v11, "output=file"

    .line 1554
    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1555
    :cond_7
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1558
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_9

    if-eqz v4, :cond_9

    iget-object v11, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v11}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$600(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v11}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$1300(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v11, "shouldInterceptRequest AlertDownloadBadHTTPS Bad savedDolBasedUrl that does not allow download"

    .line 1560
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v13, :cond_14

    .line 1565
    iget-object v11, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v11}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$600(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1566
    iget-object v4, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v4}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$1400(Lcom/nltechno/dolidroidpro/SecondActivity;)Z

    move-result v4

    if-eqz v4, :cond_13

    :try_start_3
    const-string v4, "14.0"

    if-nez v12, :cond_a

    move-object v12, v8

    :cond_a
    const-string v11, "favicon.ico"

    .line 1580
    invoke-virtual {v13, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    const-string v14, "UTF-8"

    if-nez v11, :cond_f

    :try_start_4
    const-string v11, "theme/"

    invoke-virtual {v13, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_f

    const-string v11, "includes/"

    invoke-virtual {v13, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_f

    const-string v11, "public/demo/"

    invoke-virtual {v13, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    goto/16 :goto_5

    :cond_b
    const-string v4, "data:text/html"

    .line 1591
    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1592
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldInterceptRequest We make a back to go to a bad history url fileName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object v4, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object v4, v4, Lcom/nltechno/dolidroidpro/SecondActivity;->altHistoryStack:Ljava/util/ArrayList;

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object v4, v4, Lcom/nltechno/dolidroidpro/SecondActivity;->altHistoryStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 1596
    iget-object v4, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object v4, v4, Lcom/nltechno/dolidroidpro/SecondActivity;->altHistoryStack:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object v5, v5, Lcom/nltechno/dolidroidpro/SecondActivity;->altHistoryStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v9

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1598
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    const-string v7, "text/html"

    if-eqz v5, :cond_d

    :try_start_5
    iget-object v5, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v5}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$800(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 1599
    iget-object v1, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v1, v2}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$702(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1600
    iget-object v1, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object v1, v1, Lcom/nltechno/dolidroidpro/SecondActivity;->altHistoryStack:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object v2, v2, Lcom/nltechno/dolidroidpro/SecondActivity;->altHistoryStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v1, "shouldInterceptRequest Return instead content of cacheForMenu"

    .line 1601
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    new-instance v1, Landroid/webkit/WebResourceResponse;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v4, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v4}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$800(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v7, v14, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v1

    .line 1604
    :cond_d
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v2}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$900(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1605
    iget-object v2, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v2, v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$702(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1606
    iget-object v1, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object v1, v1, Lcom/nltechno/dolidroidpro/SecondActivity;->altHistoryStack:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object v2, v2, Lcom/nltechno/dolidroidpro/SecondActivity;->altHistoryStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v1, "shouldInterceptRequest Return instead content of cacheQuickAccess"

    .line 1607
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    new-instance v1, Landroid/webkit/WebResourceResponse;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v4, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v4}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$900(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v7, v14, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v1

    :cond_e
    const-string v1, "shouldInterceptRequest Nothing to return instead"

    .line 1612
    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_f
    :goto_5
    const-string v1, ".png"

    .line 1581
    invoke-virtual {v13, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, ".jpg"

    invoke-virtual {v13, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, ".gif"

    invoke-virtual {v13, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, ".ico"

    invoke-virtual {v13, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_6

    .line 1584
    :cond_10
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, ".js"

    invoke-virtual {v13, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intercepted. Replaced with js assets file into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v2, "application/x-javascript"

    iget-object v4, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-virtual {v4}, Lcom/nltechno/dolidroidpro/SecondActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v2, v14, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v1

    .line 1587
    :cond_11
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, ".css"

    invoke-virtual {v13, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intercepted. Replaced with css assets file into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v2, "text/css"

    iget-object v4, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-virtual {v4}, Lcom/nltechno/dolidroidpro/SecondActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v2, v14, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v1

    .line 1582
    :cond_12
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intercepted. Replaced with image assets file into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    new-instance v1, Landroid/webkit/WebResourceResponse;

    iget-object v2, v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-virtual {v2}, Lcom/nltechno/dolidroidpro/SecondActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v5, v5, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    return-object v1

    .line 1615
    :catch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intercepted but failed to find/open it from assets, we do standard process (so use cache of webview browser if not expired or download)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_13
    const-string v1, "shouldInterceptRequest option is off"

    .line 1618
    invoke-static {v10, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :cond_14
    :goto_7
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "shouldInterceptRequest AlertDownloadFromAPost Your app tried to make a download from a POST. This is forbidden by Dolibarr good practices. Not supported."

    .line 1625
    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_15
    const-string v1, "shouldInterceptRequest Not a download link"

    .line 1629
    invoke-static {v10, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    :goto_8
    invoke-super/range {p0 .. p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    return-object v1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 21

    move-object/from16 v1, p0

    const-string v0, "message/rfc822"

    const-string v2, " "

    const-string v3, "%20"

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v5, "&body="

    const-string v6, "&subject="

    const-string v7, "&bcc="

    const-string v8, "&cc="

    .line 1646
    invoke-interface/range {p2 .. p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1647
    invoke-interface/range {p2 .. p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 1650
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "shouldOverrideUrlLoading url="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " originalUrl="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "DoliDroidSecondActivity"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "shouldOverrideUrlLoading savedDolRootUrl="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v1, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v12}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " savedDolRootUrlWithSForced = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v1, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v12}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$1500(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " savedDolBasedUrl="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v1, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v12}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$600(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "tel:"

    .line 1660
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const/4 v12, 0x1

    if-eqz v10, :cond_1

    .line 1661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch dialer : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    new-instance v0, Landroid/content/Intent;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1663
    iget-object v2, v1, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-virtual {v2, v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->startActivity(Landroid/content/Intent;)V

    return v12

    :cond_1
    const-string v10, "geo:"

    .line 1665
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const-string v13, "android.intent.action.VIEW"

    if-eqz v10, :cond_2

    .line 1666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch geo : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    new-instance v0, Landroid/content/Intent;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1668
    iget-object v2, v1, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-virtual {v2, v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->startActivity(Landroid/content/Intent;)V

    return v12

    :cond_2
    const-string v10, "mailto:"

    .line 1670
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const/4 v14, 0x0

    const-string v15, ""

    if-eqz v10, :cond_19

    .line 1671
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Launch mailto : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :try_start_0
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 1675
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 v12, v17

    goto :goto_1

    :cond_3
    move v12, v14

    :goto_1
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 v18, v17

    goto :goto_2

    :cond_4
    move/from16 v18, v14

    :goto_2
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 v19, v17

    goto :goto_3

    :cond_5
    move/from16 v19, v14

    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual {v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 v20, v17

    goto :goto_4

    :cond_6
    move/from16 v20, v14

    .line 1677
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_7

    add-int/lit8 v4, v12, 0x0

    .line 1678
    invoke-virtual {v9, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-object/from16 v17, v0

    move/from16 v1, v18

    move/from16 v0, v19

    move-object/from16 v18, v2

    :goto_5
    move/from16 v2, v20

    goto :goto_6

    .line 1679
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v17, :cond_8

    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_8

    move/from16 v4, v18

    add-int/lit8 v1, v4, 0x0

    .line 1680
    invoke-virtual {v9, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move v1, v4

    move/from16 v0, v19

    goto :goto_5

    :cond_8
    move/from16 v1, v18

    .line 1681
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v17, v0

    move/from16 v4, v19

    add-int/lit8 v0, v4, 0x0

    .line 1682
    invoke-virtual {v9, v14, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-object/from16 v18, v2

    move v0, v4

    goto :goto_5

    :cond_9
    move-object/from16 v17, v0

    move/from16 v0, v19

    .line 1683
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_a

    move-object/from16 v18, v2

    move/from16 v4, v20

    add-int/lit8 v2, v4, 0x0

    .line 1684
    invoke-virtual {v9, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move v2, v4

    goto :goto_6

    :cond_a
    move-object/from16 v18, v2

    move/from16 v2, v20

    .line 1685
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1691
    :goto_6
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    sub-int v4, v1, v12

    .line 1692
    invoke-virtual {v9, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 1693
    :cond_b
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c

    sub-int v4, v0, v12

    .line 1694
    invoke-virtual {v9, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 1695
    :cond_c
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_d

    sub-int v4, v2, v12

    .line 1696
    invoke-virtual {v9, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 1697
    :cond_d
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1698
    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_e
    move-object v4, v15

    .line 1702
    :goto_7
    invoke-virtual {v4, v8, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1704
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_f

    sub-int v8, v0, v1

    .line 1705
    invoke-virtual {v9, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 1706
    :cond_f
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_10

    sub-int v8, v2, v1

    .line 1707
    invoke-virtual {v9, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 1708
    :cond_10
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1709
    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_11
    move-object v1, v15

    .line 1713
    :goto_8
    invoke-virtual {v1, v7, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1715
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_12

    sub-int v7, v2, v0

    .line 1716
    invoke-virtual {v9, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 1717
    :cond_12
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1718
    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_13
    move-object v0, v15

    .line 1722
    :goto_9
    invoke-virtual {v0, v6, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1724
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1725
    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_14
    move-object v2, v15

    .line 1729
    :goto_a
    invoke-virtual {v2, v5, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v18

    .line 1730
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1731
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%0A"

    const-string v5, "\n"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    .line 1732
    invoke-virtual {v9, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1734
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1735
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v7, v17

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1736
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.extra.EMAIL"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    aput-object v3, v8, v14

    .line 1737
    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1738
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "android.intent.extra.CC"

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1739
    :cond_15
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "android.intent.extra.BCC"

    invoke-virtual {v5, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1740
    :cond_16
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1741
    :cond_17
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_18
    move-object/from16 v1, p0

    .line 1742
    :try_start_2
    iget-object v0, v1, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    const-string v2, "Email..."

    invoke-static {v5, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nltechno/dolidroidpro/SecondActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    :catch_0
    move-object/from16 v1, p0

    :catch_1
    :goto_b
    const/4 v2, 0x1

    return v2

    .line 1746
    :cond_19
    iget-object v0, v1, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$600(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v1, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$1300(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch external url in default browser : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1750
    iget-object v2, v1, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-virtual {v2, v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    const/4 v2, 0x1

    return v2

    :cond_1a
    const-string v0, ".pdf"

    .line 1757
    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, ".odt"

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, ".ods"

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    const-string v0, "action="

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    .line 1758
    invoke-static {v2}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "document.php?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    .line 1759
    invoke-static {v3}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$1500(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "output=file"

    .line 1760
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_c

    :cond_1d
    const-string v0, "Not a special link, not a download link"

    .line 1835
    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    .line 1762
    :cond_1e
    :goto_c
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v2, ".*file="

    .line 1764
    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&.*"

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".*/"

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1766
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldOverrideUrlLoading Start activity to download file="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "dol_hide_topmenu="

    .line 1773
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "&"

    const-string v5, "?"

    if-nez v2, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_20

    move-object v6, v3

    goto :goto_d

    :cond_20
    move-object v6, v5

    :goto_d
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "dol_hide_topmenu=1"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_21
    const-string v2, "dol_hide_leftmenu="

    .line 1774
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_22

    move-object v6, v3

    goto :goto_e

    :cond_22
    move-object v6, v5

    :goto_e
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "dol_hide_leftmenu=1"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_23
    const-string v2, "dol_optimize_smallscreen="

    .line 1775
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_24

    move-object v6, v3

    goto :goto_f

    :cond_24
    move-object v6, v5

    :goto_f
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "dol_optimize_smallscreen=1"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_25
    const-string v2, "dol_no_mouse_hover="

    .line 1776
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_26

    move-object v6, v3

    goto :goto_10

    :cond_26
    move-object v6, v5

    :goto_10
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "dol_no_mouse_hover=1"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_27
    const-string v2, "dol_use_jmobile="

    .line 1777
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_28

    goto :goto_11

    :cond_28
    move-object v3, v5

    :goto_11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dol_use_jmobile=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1779
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->listCookies()Ljava/lang/String;

    move-result-object v2

    .line 1783
    :try_start_4
    iget-object v3, v1, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v3, v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$1602(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1784
    iget-object v3, v1, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v3, v9}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$1702(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1785
    iget-object v3, v1, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-static {v3, v2}, Lcom/nltechno/dolidroidpro/SecondActivity;->access$1802(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1788
    iget-object v3, v1, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-virtual {v3, v4}, Lcom/nltechno/dolidroidpro/SecondActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2a

    .line 1790
    iget-object v0, v1, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Lcom/nltechno/dolidroidpro/SecondActivity;->requestPermissions([Ljava/lang/String;I)V

    return v14

    .line 1794
    :cond_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldOverrideUrlLoading url to download = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    iget-object v3, v1, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-virtual {v3, v0, v9, v2}, Lcom/nltechno/dolidroidpro/SecondActivity;->putDownloadInQueue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "shouldOverrideUrlLoading URI has been added in queue - Now waiting event onReceive ACTION_DOWNLOAD_COMPLETE"

    .line 1820
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v3, 0x1

    goto :goto_12

    :catch_3
    move-exception v0

    .line 1829
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    iget-object v2, v1, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object v2, v2, Lcom/nltechno/dolidroidpro/SecondActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_12

    :catch_4
    move-exception v0

    const/4 v3, 0x1

    .line 1824
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    iget-object v2, v1, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    iget-object v2, v2, Lcom/nltechno/dolidroidpro/SecondActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_12
    return v3
.end method
