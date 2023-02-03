.class public Lcom/nltechno/dolidroidpro/SecondActivity;
.super Landroid/app/Activity;
.source "SecondActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nltechno/dolidroidpro/SecondActivity$MyJavaScriptInterface;,
        Lcom/nltechno/dolidroidpro/SecondActivity$WebChromeClientDoliDroid;,
        Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;,
        Lcom/nltechno/dolidroidpro/SecondActivity$DownloadWebPageTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DoliDroidSecondActivity"

.field static final REQUEST_ABOUT:I = 0x1

.field static final REQUEST_CODE_ASK_PERMISSIONS_WRITE_EXTERNAL_STORAGE:I = 0x7b

.field static final REQUEST_INPUTFILE:I = 0x3

.field static final RESULT_ABOUT:I = 0x1

.field static final RESULT_WEBVIEW:I = 0x2

.field public static final VERSION_RESOURCES:Ljava/lang/String; = "14.0"


# instance fields
.field final activity:Landroid/app/Activity;

.field altHistoryStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cacheForBookmarks:Ljava/lang/String;

.field private cacheForMenu:Ljava/lang/String;

.field private cacheForMultiCompany:Ljava/lang/String;

.field private cacheForQuickAccess:Ljava/lang/String;

.field public httpWarningWasViewed:Z

.field imageUri:Landroid/net/Uri;

.field private isBookmarkOn:Z

.field private isMulticompanyOn:Z

.field private lastLoadUrl:Ljava/lang/String;

.field private lastversionfound:Ljava/lang/String;

.field private lastversionfoundforasset:Ljava/lang/String;

.field listOfCookiesAfterLogon:Ljava/lang/String;

.field private mCameraPhotoPathString:Ljava/lang/String;

.field private mFilePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mWebBackForwardList:Landroid/webkit/WebBackForwardList;

.field private menuAre:Ljava/lang/String;

.field private messageNoPreviousPageShown:Z

.field myWebChromeClientDoliDroid:Lcom/nltechno/dolidroidpro/SecondActivity$WebChromeClientDoliDroid;

.field private myWebView:Landroid/webkit/WebView;

.field myWebViewClientDoliDroid:Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;

.field private nextAltHistoryStack:Ljava/lang/String;

.field private nextAltHistoryStackBis:Ljava/lang/String;

.field outputFileUri:Landroid/net/Uri;

.field private final patternLoginHomePageForMulticompany:Ljava/util/regex/Pattern;

.field private final patternLoginHomePageForVersion:Ljava/util/regex/Pattern;

.field private final patternLoginPage:Ljava/util/regex/Pattern;

.field private final patternLoginPage2:Ljava/util/regex/Pattern;

.field private prefAlwaysUseLocalResources:Z

.field private progress:Landroid/widget/ProgressBar;

.field private savMenu:Landroid/view/Menu;

.field private saveListOfCookiesForonRequestPermissionsResult:Ljava/lang/String;

.field private saveQueryForonRequestPermissionsResult:Ljava/lang/String;

.field private saveUrlForonRequestPermissionsResult:Ljava/lang/String;

.field private savedAuthpass:Ljava/lang/String;

.field private savedAuthuser:Ljava/lang/String;

.field private savedDolBasedUrl:Ljava/lang/String;

.field private savedDolBasedUrlWithSForced:Ljava/lang/String;

.field private savedDolBasedUrlWithoutUserInfo:Ljava/lang/String;

.field private savedDolBasedUrlWithoutUserInfoWithSForced:Ljava/lang/String;

.field private savedDolHost:Ljava/lang/String;

.field private savedDolPort:I

.field private savedDolRootUrl:Ljava/lang/String;

.field private savedDolRootUrlRel:Ljava/lang/String;

.field private savedDolRootUrlWithSForced:Ljava/lang/String;

.field private savedDolScheme:Ljava/lang/String;

.field private savedDolUserInfoEncoded:Ljava/lang/String;

.field private savedUserAgent:Ljava/lang/String;

.field public sslErrorWasAccepted:Z

.field swipe:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private tagLastLoginPassToSavedLoginPass:Z

.field private tagToLogout:Z

.field private tagToOverwriteLoginPass:Z

.field private tagToShowCounter:I

.field private tagToShowInterruptCounter:I

.field private tagToShowInterruptMessage:Ljava/lang/String;

.field private tagToShowMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 117
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedAuthuser:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedAuthpass:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedUserAgent:Ljava/lang/String;

    const/4 v1, 0x1

    .line 148
    iput-boolean v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->prefAlwaysUseLocalResources:Z

    const/4 v2, 0x0

    .line 149
    iput-boolean v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->sslErrorWasAccepted:Z

    .line 150
    iput-boolean v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->httpWarningWasViewed:Z

    .line 157
    iput-boolean v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToOverwriteLoginPass:Z

    .line 158
    iput-boolean v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagLastLoginPassToSavedLoginPass:Z

    .line 159
    iput-boolean v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToLogout:Z

    const-string v3, ""

    .line 160
    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToShowInterruptMessage:Ljava/lang/String;

    .line 161
    iput v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToShowInterruptCounter:I

    .line 162
    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToShowMessage:Ljava/lang/String;

    .line 163
    iput v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToShowCounter:I

    .line 171
    iput-boolean v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->isMulticompanyOn:Z

    .line 172
    iput-boolean v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->isBookmarkOn:Z

    const-string v1, "hardwareonly"

    .line 174
    iput-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->menuAre:Ljava/lang/String;

    .line 176
    iput-boolean v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->messageNoPreviousPageShown:Z

    .line 177
    iput-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->listOfCookiesAfterLogon:Ljava/lang/String;

    .line 183
    iput-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->activity:Landroid/app/Activity;

    const-string v0, " (?:[@-]) (?:Doli[a-zA-Z]+ |)(\\d+)\\.(\\d+)\\.([^\\s]+)"

    .line 200
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->patternLoginHomePageForVersion:Ljava/util/regex/Pattern;

    const-string v0, "multicompany"

    .line 201
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->patternLoginHomePageForMulticompany:Ljava/util/regex/Pattern;

    const-string v0, "Login Doli[a-zA-Z]+ (\\d+)\\.(\\d+)\\.([^\\s]+)"

    .line 202
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->patternLoginPage:Ljava/util/regex/Pattern;

    const-string v0, " @ (?:Doli[a-zA-Z]+ |)(\\d+)\\.(\\d+)\\.([^\\s]+)"

    .line 203
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->patternLoginPage2:Ljava/util/regex/Pattern;

    .line 205
    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->nextAltHistoryStack:Ljava/lang/String;

    .line 206
    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->nextAltHistoryStackBis:Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->altHistoryStack:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/nltechno/dolidroidpro/SecondActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->cacheForBookmarks:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->cacheForMultiCompany:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrlRel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolBasedUrlWithSForced:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/nltechno/dolidroidpro/SecondActivity;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->prefAlwaysUseLocalResources:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrlWithSForced:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->saveQueryForonRequestPermissionsResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->saveUrlForonRequestPermissionsResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->saveListOfCookiesForonRequestPermissionsResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToShowInterruptMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToShowInterruptMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->lastLoadUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/nltechno/dolidroidpro/SecondActivity;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToShowInterruptCounter:I

    return p0
.end method

.method static synthetic access$2002(Lcom/nltechno/dolidroidpro/SecondActivity;I)I
    .locals 0

    .line 117
    iput p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToShowInterruptCounter:I

    return p1
.end method

.method static synthetic access$202(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->lastLoadUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToShowMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToShowMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/nltechno/dolidroidpro/SecondActivity;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToShowCounter:I

    return p0
.end method

.method static synthetic access$2208(Lcom/nltechno/dolidroidpro/SecondActivity;)I
    .locals 2

    .line 117
    iget v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToShowCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToShowCounter:I

    return v0
.end method

.method static synthetic access$2300(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/util/regex/Pattern;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->patternLoginHomePageForVersion:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/nltechno/dolidroidpro/SecondActivity;)Landroid/view/Menu;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savMenu:Landroid/view/Menu;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->lastversionfound:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->lastversionfound:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->lastversionfoundforasset:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->lastversionfoundforasset:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/util/regex/Pattern;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->patternLoginHomePageForMulticompany:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/nltechno/dolidroidpro/SecondActivity;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->isMulticompanyOn:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/nltechno/dolidroidpro/SecondActivity;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->isBookmarkOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedAuthuser:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/util/regex/Pattern;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->patternLoginPage:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/util/regex/Pattern;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->patternLoginPage2:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/nltechno/dolidroidpro/SecondActivity;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToOverwriteLoginPass:Z

    return p0
.end method

.method static synthetic access$3202(Lcom/nltechno/dolidroidpro/SecondActivity;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToOverwriteLoginPass:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/nltechno/dolidroidpro/SecondActivity;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagLastLoginPassToSavedLoginPass:Z

    return p0
.end method

.method static synthetic access$3302(Lcom/nltechno/dolidroidpro/SecondActivity;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagLastLoginPassToSavedLoginPass:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/nltechno/dolidroidpro/SecondActivity;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToLogout:Z

    return p0
.end method

.method static synthetic access$3402(Lcom/nltechno/dolidroidpro/SecondActivity;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToLogout:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->nextAltHistoryStackBis:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->nextAltHistoryStackBis:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/nltechno/dolidroidpro/SecondActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->progress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/nltechno/dolidroidpro/SecondActivity;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/nltechno/dolidroidpro/SecondActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->mCameraPhotoPathString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3802(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->mCameraPhotoPathString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedAuthpass:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolBasedUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->nextAltHistoryStack:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->nextAltHistoryStack:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->cacheForMenu:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->cacheForMenu:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/nltechno/dolidroidpro/SecondActivity;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->cacheForQuickAccess:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/nltechno/dolidroidpro/SecondActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->cacheForQuickAccess:Ljava/lang/String;

    return-object p1
.end method

.method private codeForBack()Z
    .locals 9

    .line 1195
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1197
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    .line 1200
    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    iput-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->mWebBackForwardList:Landroid/webkit/WebBackForwardList;

    .line 1201
    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v2, :cond_0

    .line 1202
    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->mWebBackForwardList:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    sub-int/2addr v2, v5

    .line 1203
    iget-object v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->mWebBackForwardList:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v6, v2}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v3

    move v2, v4

    .line 1206
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "We called codeForBack. canGoBack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", currentUrl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", previousUrl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", savedDolBasedUrl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolBasedUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DoliDroidSecondActivity"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v2, v5, :cond_1

    .line 1208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolBasedUrl:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/index.php"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "We disable the goBack for this case. We replace it with the case there is no previous page."

    .line 1212
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    :cond_1
    if-eqz v1, :cond_6

    .line 1218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolBasedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "data:text/html"

    if-nez v1, :cond_3

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "We clear nextAltHistoryStack"

    .line 1241
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->nextAltHistoryStack:Ljava/lang/String;

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, "Previous Url is a page with an history problem"

    .line 1220
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1223
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->altHistoryStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1225
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->altHistoryStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->nextAltHistoryStack:Ljava/lang/String;

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current page has &ui-page, we set nextAltHistoryStack to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->nextAltHistoryStack:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and consume the history stack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->altHistoryStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1232
    :cond_4
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->altHistoryStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "We do nothing, we let shouldInterceptRequest consume and pop the history stack"

    .line 1236
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "We clear nextAltHistoryStackBis and make the goBack to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->nextAltHistoryStackBis:Ljava/lang/String;

    .line 1247
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_3

    .line 1251
    :cond_6
    iget-boolean v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->messageNoPreviousPageShown:Z

    if-nez v0, :cond_7

    .line 1253
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->activity:Landroid/app/Activity;

    const v1, 0x7f0e0012

    invoke-virtual {p0, v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1254
    iput-boolean v5, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->messageNoPreviousPageShown:Z

    goto :goto_3

    :cond_7
    const-string v0, "Second click on Previous when no previous available."

    .line 1258
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "We finish activity resultCode=1"

    .line 1259
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iput-boolean v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->messageNoPreviousPageShown:Z

    .line 1261
    invoke-virtual {p0, v5}, Lcom/nltechno/dolidroidpro/SecondActivity;->setResult(I)V

    .line 1262
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    .line 1263
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->finish()V

    :goto_3
    return v5
.end method

.method private codeForBookmarks()Z
    .locals 3

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "core/bookmarks_page.php?cache=600&dol_hide_topmenu=1&dol_hide_leftmenu=1&dol_optimize_smallscreen=1&dol_no_mouse_hover=1&dol_use_jmobile=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "We called codeForBookmarks after click on Bookmarks : savedDolBasedUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolBasedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " urlToGo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DoliDroidSecondActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method private codeForCopyUrl()Z
    .locals 4

    .line 1140
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "We called codeForCopyUrl after click on copyUrl : savedDolBasedUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolBasedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DoliDroidSecondActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "&dol_hide_topmenu=1"

    const-string v2, ""

    .line 1147
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dol_hide_topmenu=1&"

    .line 1148
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&dol_hide_leftmenu=1"

    .line 1149
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dol_hide_leftmenu=1&"

    .line 1150
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&dol_optimize_smallscreen=1"

    .line 1151
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dol_optimize_smallscreen=1&"

    .line 1152
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&dol_no_mouse_hover=1"

    .line 1153
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dol_no_mouse_hover=1&"

    .line 1154
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&dol_use_jmobile=1"

    .line 1155
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dol_use_jmobile=1&"

    .line 1156
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dol_hide_topmenu=1"

    .line 1158
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dol_hide_leftmenu=1"

    .line 1159
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dol_optimize_smallscreen=1"

    .line 1160
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dol_no_mouse_hover=1"

    .line 1161
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dol_use_jmobile=1"

    .line 1162
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clipboard"

    .line 1164
    invoke-virtual {p0, v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    const v2, 0x7f0e0018

    .line 1165
    invoke-virtual {p0, v2}, Lcom/nltechno/dolidroidpro/SecondActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1166
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1174
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1
.end method

.method private codeForMenu()Z
    .locals 3

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "core/get_menudiv.php?cache=600&dol_hide_topmenu=1&dol_hide_leftmenu=1&dol_optimize_smallscreen=1&dol_no_mouse_hover=1&dol_use_jmobile=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "We called codeForMenu after click on Menu : savedDolBasedUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolBasedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " urlToGo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DoliDroidSecondActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method private codeForMultiCompany()Z
    .locals 3

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "core/multicompany_page.php?dol_hide_topmenu=1&dol_hide_leftmenu=1&dol_optimize_smallscreen=1&dol_no_mouse_hover=1&dol_use_jmobile=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "We called codeForMultiCompany after click on Multicompany : savedDolBasedUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolBasedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " urlToGo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DoliDroidSecondActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Clear caches and history of webView"

    .line 1114
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 1116
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    const/4 v1, 0x0

    .line 1117
    iput-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->cacheForMenu:Ljava/lang/String;

    .line 1118
    iput-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->cacheForQuickAccess:Ljava/lang/String;

    .line 1119
    iput-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->cacheForBookmarks:Ljava/lang/String;

    .line 1120
    iput-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->cacheForMultiCompany:Ljava/lang/String;

    .line 1124
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v2
.end method

.method private codeForQuickAccess()Z
    .locals 3

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "core/search_page.php?cache=600&dol_hide_topmenu=1&dol_hide_leftmenu=1&dol_optimize_smallscreen=1&dol_no_mouse_hover=1&dol_use_jmobile=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "We called codeForQuickAccess after click on Search : savedDolBasedUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolBasedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " urlToGo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DoliDroidSecondActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dumpBackForwardList(Landroid/webkit/WebView;)V
    .locals 0

    return-void
.end method

.method public getNewHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 7

    .line 803
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 804
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 806
    new-instance v1, Lcom/nltechno/utils/MySSLSocketFactory;

    invoke-direct {v1, v0}, Lcom/nltechno/utils/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 807
    sget-object v0, Lcom/nltechno/utils/MySSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v0}, Lcom/nltechno/utils/MySSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 809
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 810
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v2, "UTF-8"

    .line 811
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 813
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 814
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 815
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v1, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 817
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 819
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 821
    :catch_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 2679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFilePathCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoliDroidSecondActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string v0, "onActivityResult not a return after an input file selection"

    .line 2683
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    .line 2688
    :cond_0
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_1

    const-string v0, "onActivityResult return after input file selection but mFilePathCallback was empty"

    .line 2689
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_1
    const-string p1, "onActivityResult we should have just selected a file from an external activity"

    .line 2696
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    .line 2699
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult data = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "onActivityResult data is null"

    .line 2701
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_c

    const-string p1, "onActivityResult result code is ok"

    .line 2710
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p3, :cond_3

    .line 2725
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 2726
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    goto :goto_1

    .line 2729
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult imageUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " outputFileUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->outputFileUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2733
    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2734
    invoke-virtual {p0, v2}, Lcom/nltechno/dolidroidpro/SecondActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2738
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2739
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, p2, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, p1

    new-instance v2, Lcom/nltechno/dolidroidpro/SecondActivity$2;

    invoke-direct {v2, p0}, Lcom/nltechno/dolidroidpro/SecondActivity$2;-><init>(Lcom/nltechno/dolidroidpro/SecondActivity;)V

    invoke-static {v3, v4, v0, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    move-object v2, v0

    move-object v3, v2

    :goto_1
    const-string v4, "onActivityResult results="

    if-eqz p3, :cond_a

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    goto/16 :goto_5

    :cond_4
    const-string p3, "onActivityResult data is not null"

    .line 2770
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "onActivityResult system return URI:"

    if-eqz v2, :cond_6

    .line 2773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult uri="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, p2, [Landroid/net/Uri;

    aput-object v2, v3, p1

    :goto_2
    if-ge p1, p2, :cond_9

    .line 2776
    aget-object v2, v3, p1

    if-eqz v2, :cond_5

    .line 2778
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_8

    .line 2784
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult uris="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    new-array p2, p2, [Landroid/net/Uri;

    .line 2787
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    :goto_3
    if-ge p1, v2, :cond_7

    .line 2789
    invoke-virtual {v3, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    .line 2790
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    move-object v3, p2

    goto :goto_4

    :cond_8
    move-object v3, v0

    .line 2796
    :cond_9
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_6

    .line 2751
    :cond_a
    :goto_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult data or (uri and uris is null), mCameraPhotoPathString="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->mCameraPhotoPathString:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, " imageUri="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    iget-object p3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->imageUri:Landroid/net/Uri;

    if-eqz p3, :cond_b

    new-array p2, p2, [Landroid/net/Uri;

    aput-object p3, p2, p1

    .line 2760
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 2764
    :cond_b
    iput-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->mCameraPhotoPathString:Ljava/lang/String;

    .line 2765
    iput-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->imageUri:Landroid/net/Uri;

    goto :goto_6

    :cond_c
    const-string p1, "onActivityResult resultCode is 0 (error)"

    .line 2801
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :goto_6
    const-string p1, "onActivityResult end of management of external activity result"

    .line 2805
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    iput-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate savedInstanceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DoliDroidSecondActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "prefAlwaysShowBar"

    const/4 v2, 0x1

    .line 226
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "prefAlwaysAutoFill"

    .line 227
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "prefAlwaysUseLocalResources"

    .line 228
    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->prefAlwaysUseLocalResources:Z

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate Read the non encrypted shared preferences file: prefAlwaysShowBar="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " prefAlwaysAutoFill="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " prefAlwaysUseLocResouces="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->prefAlwaysUseLocalResources:Z

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iput-boolean v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToOverwriteLoginPass:Z

    .line 234
    invoke-static {p0}, Lcom/nltechno/utils/Utils;->hasMenuHardware(Landroid/app/Activity;)Z

    move-result p1

    const-string v3, "actionbar"

    if-eqz p1, :cond_0

    if-eqz v1, :cond_1

    .line 237
    :cond_0
    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->menuAre:Ljava/lang/String;

    .line 239
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate hasMenuHardware="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " menuAre="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->menuAre:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->menuAre:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 251
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 256
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "dolRootUrl"

    .line 257
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "dolRequestUrl"

    .line 258
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 260
    iput-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    const-string v3, "^(?i)http(s?):"

    const-string v4, "http$1:"

    .line 261
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    .line 262
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolScheme:Ljava/lang/String;

    .line 263
    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPort()I

    move-result v3

    iput v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolPort:I

    .line 264
    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolHost:Ljava/lang/String;

    .line 265
    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedUserInfo()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolUserInfoEncoded:Ljava/lang/String;

    const-string v4, ""

    if-nez v3, :cond_4

    .line 267
    iput-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolUserInfoEncoded:Ljava/lang/String;

    .line 269
    :cond_4
    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolScheme:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 270
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolScheme:Ljava/lang/String;

    .line 271
    :cond_5
    iget v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolPort:I

    const/4 v5, 0x0

    if-lez v3, :cond_6

    move v3, v2

    goto :goto_1

    :cond_6
    move v3, v5

    .line 272
    :goto_1
    iget-object v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolScheme:Ljava/lang/String;

    const-string v7, "http"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolPort:I

    const/16 v7, 0x50

    if-ne v6, v7, :cond_7

    .line 274
    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    const-string v6, ":80"

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    move v3, v5

    .line 276
    :cond_7
    iget-object v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolScheme:Ljava/lang/String;

    const-string v7, "https"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolPort:I

    const/16 v7, 0x1bb

    if-ne v6, v7, :cond_8

    .line 278
    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    const-string v6, ":443"

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    move v3, v5

    .line 280
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    const-string v9, "http:"

    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrlWithSForced:Ljava/lang/String;

    .line 281
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolScheme:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "://"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolUserInfoEncoded:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolUserInfoEncoded:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    move-object v10, v4

    goto :goto_2

    :cond_9
    const-string v10, "@"

    :goto_2
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolHost:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ":"

    if-eqz v3, :cond_a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolPort:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_a
    move-object v11, v4

    :goto_3
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolBasedUrl:Ljava/lang/String;

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v11, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolBasedUrl:Ljava/lang/String;

    invoke-virtual {v11, v9, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolBasedUrlWithSForced:Ljava/lang/String;

    .line 283
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolScheme:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolHost:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolPort:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_b
    move-object v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolBasedUrlWithoutUserInfo:Ljava/lang/String;

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolBasedUrlWithoutUserInfo:Ljava/lang/String;

    invoke-virtual {v6, v9, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolBasedUrlWithoutUserInfoWithSForced:Ljava/lang/String;

    .line 286
    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolBasedUrl:Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrlRel:Ljava/lang/String;

    .line 289
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v3}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const/4 v4, 0x2

    .line 293
    invoke-virtual {v3, v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 295
    aget-object v4, v3, v5

    iput-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedAuthuser:Ljava/lang/String;

    .line 296
    array-length v4, v3

    if-le v4, v2, :cond_c

    .line 297
    aget-object v3, v3, v2

    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedAuthpass:Ljava/lang/String;

    .line 299
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate Saving basic authentication found into URL authuser="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedAuthuser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " authpass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedAuthpass:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_d
    const-string v3, "onCreate No basic authentication info into URL"

    .line 303
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 304
    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedAuthuser:Ljava/lang/String;

    .line 305
    iput-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedAuthpass:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v3

    .line 309
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate We have original root url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate => savedDolRootUrl="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - savedDolRootUrlRel="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrlRel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - savedDolRootUrlWithSForced = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrlWithSForced:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate => savedDolBasedUrl="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolBasedUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - savedDolBasedUrlWithSForced="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolBasedUrlWithSForced:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "?"

    .line 316
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, ".php"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "index.php?dol_hide_topmenu=1&dol_hide_leftmenu=1&dol_optimize_smallscreen=1&dol_no_mouse_hover=1&dol_use_jmobile=1"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    .line 317
    :cond_e
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "&dol_hide_topmenu=1&dol_hide_leftmenu=1&dol_optimize_smallscreen=1&dol_no_mouse_hover=1&dol_use_jmobile=1"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    .line 318
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "?dol_hide_topmenu=1&dol_hide_leftmenu=1&dol_optimize_smallscreen=1&dol_no_mouse_hover=1&dol_use_jmobile=1"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 320
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate isDownloadManagerAvailable="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/nltechno/utils/Utils;->isDownloadManagerAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate We are in onCreate and will load URL urlToGo="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0b001e

    .line 324
    invoke-virtual {p0, v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->setContentView(I)V

    const v1, 0x7f080091

    .line 326
    invoke-virtual {p0, v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    .line 327
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    const v1, 0x7f0800d9

    .line 332
    invoke-virtual {p0, v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    .line 333
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 334
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0e0043

    invoke-virtual {p0, v3}, Lcom/nltechno/dolidroidpro/SecondActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedUserAgent:Ljava/lang/String;

    .line 338
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 339
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 340
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 343
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 344
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 351
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 362
    new-instance v1, Lcom/nltechno/dolidroidpro/SecondActivity$MyJavaScriptInterface;

    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->activity:Landroid/app/Activity;

    invoke-direct {v1, p0, v3}, Lcom/nltechno/dolidroidpro/SecondActivity$MyJavaScriptInterface;-><init>(Lcom/nltechno/dolidroidpro/SecondActivity;Landroid/app/Activity;)V

    .line 363
    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    const-string v4, "HTMLOUT"

    invoke-virtual {v3, v1, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const-string v1, "onCreate Method setDisplayZoomControls exists. Set to false."

    .line 366
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 368
    new-instance v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;

    invoke-direct {v0, p0, p0}, Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;-><init>(Lcom/nltechno/dolidroidpro/SecondActivity;Lcom/nltechno/dolidroidpro/SecondActivity;)V

    iput-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebViewClientDoliDroid:Lcom/nltechno/dolidroidpro/SecondActivity$WebViewClientDoliDroid;

    .line 369
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 370
    new-instance v0, Lcom/nltechno/dolidroidpro/SecondActivity$WebChromeClientDoliDroid;

    invoke-direct {v0, p0}, Lcom/nltechno/dolidroidpro/SecondActivity$WebChromeClientDoliDroid;-><init>(Lcom/nltechno/dolidroidpro/SecondActivity;)V

    iput-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebChromeClientDoliDroid:Lcom/nltechno/dolidroidpro/SecondActivity$WebChromeClientDoliDroid;

    .line 371
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 373
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->lastLoadUrl:Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const p1, 0x7f0800b6

    .line 377
    invoke-virtual {p0, p1}, Lcom/nltechno/dolidroidpro/SecondActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->swipe:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 378
    new-instance v0, Lcom/nltechno/dolidroidpro/SecondActivity$1;

    invoke-direct {v0, p0}, Lcom/nltechno/dolidroidpro/SecondActivity$1;-><init>(Lcom/nltechno/dolidroidpro/SecondActivity;)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 12

    .line 432
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 434
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu this.menuAre="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->menuAre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DoliDroidSecondActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nltechno/utils/Utils;->hasMenuHardware(Landroid/app/Activity;)Z

    move-result v1

    const-string v3, "actionbar"

    const v4, 0x7f08007a

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->menuAre:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateOptionsMenu Hide button back because there is hardware and this.menuAre="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->menuAre:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->menuAre:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x7f080082

    const v6, 0x7f08007e

    const v7, 0x7f08007f

    const v8, 0x7f08007b

    const/4 v9, 0x1

    if-eqz v1, :cond_1

    .line 446
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v10, 0x2

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 447
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 448
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 449
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v1, 0x7f080080

    .line 450
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v10, 0x7f080081

    .line 451
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 452
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 454
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 455
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 457
    :cond_1
    iget-object v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->menuAre:Ljava/lang/String;

    const-string v10, "hardwareonly"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 461
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 462
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 463
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 466
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    const v1, 0x7f080043

    .line 470
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 471
    iget-object v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/nltechno/utils/Utils;->hasMenuHardware(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 473
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v3, "prefAlwaysShowBar"

    .line 474
    invoke-interface {v0, v3, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 475
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateOptionsMenu prefAlwaysShowBar value is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 480
    :cond_3
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    const v1, 0x7f080042

    .line 485
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const-string v3, "prefAlwaysAutoFill"

    .line 486
    invoke-interface {v0, v3, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateOptionsMenu prefAlwaysAutoFill value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const v0, 0x7f080050

    .line 491
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 492
    sget-object v1, Lcom/nltechno/dolidroidpro/MainActivity;->listOfRootUrl:Ljava/util/List;

    const v3, 0x7f0e0057

    if-eqz v1, :cond_4

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/nltechno/dolidroidpro/SecondActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/nltechno/dolidroidpro/MainActivity;->listOfRootUrl:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    .line 495
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/nltechno/dolidroidpro/SecondActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (0)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_1
    const v0, 0x7f080044

    .line 499
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateOptionsMenu prefAlwaysUseLocalResources value is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->prefAlwaysUseLocalResources:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-boolean v1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->prefAlwaysUseLocalResources:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 503
    iget-boolean v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->isBookmarkOn:Z

    if-eqz v0, :cond_5

    const-string v0, "onCreateOptionsMenu Bookmark feature must be on, we show picto"

    .line 504
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 506
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_5
    const-string v0, "onCreateOptionsMenu Bookmark feature must be disabled, we hide picto"

    .line 508
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 510
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 514
    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->isMulticompanyOn:Z

    if-eqz v0, :cond_7

    const-string v0, "onCreateOptionsMenu Module multicompany was found, we show picto"

    .line 515
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 517
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_7
    const-string v0, "onCreateOptionsMenu Module multicompany was NOT found, we hide picto"

    .line 519
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 521
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_8
    :goto_3
    const-string v0, "onCreateOptionsMenu Add menu Copy url"

    .line 525
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f08007c

    .line 526
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 528
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0700d8

    .line 529
    invoke-virtual {p0, v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_9
    const-string v0, "onCreateOptionsMenu Add menu Clear cache"

    .line 532
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f080051

    .line 533
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 535
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0700cf

    .line 536
    invoke-virtual {p0, v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_a
    const-string v0, "onCreateOptionsMenu Add menu Reload page"

    .line 539
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f080096

    .line 540
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 542
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0700d4

    .line 543
    invoke-virtual {p0, v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_b
    const-string v0, "onCreateOptionsMenu Add menu About"

    .line 546
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f08000a

    .line 547
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 549
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_c
    const-string v0, "onCreateOptionsMenu Add menu Logout"

    .line 553
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f08007d

    .line 554
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 556
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0700d1

    .line 557
    invoke-virtual {p0, v1}, Lcom/nltechno/dolidroidpro/SecondActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 560
    :cond_d
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savMenu:Landroid/view/Menu;

    return v9
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x2

    .line 2579
    invoke-virtual {p0, v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->setResult(I)V

    .line 2580
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 973
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 978
    invoke-direct {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->codeForBack()Z

    move-result p1

    return p1

    .line 983
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecondActivity::onOptionsItemSelected Click onto menu: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoliDroidSecondActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const-string v0, "The encrypted shared preferences file has been cleared"

    const-string v2, "secret_shared_prefs"

    const-string v3, "Failed to clear encrypted shared preferences file"

    const/4 v4, 0x0

    const-string v5, "Clear caches and history of webView"

    const-string v6, "Switched value is now "

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    return v4

    .line 721
    :sswitch_0
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "urlToGo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_c

    const-string v0, "data:text"

    .line 724
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    :cond_0
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    :cond_1
    const-string v0, "dol_hide_topmenu="

    .line 728
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "&"

    const-string v3, "?"

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p1, v2

    goto :goto_0

    :cond_2
    move-object p1, v3

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "dol_hide_topmenu=1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    const-string v0, "dol_hide_leftmenu="

    .line 729
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    move-object p1, v2

    goto :goto_1

    :cond_4
    move-object p1, v3

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "dol_hide_leftmenu=1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    const-string v0, "dol_optimize_smallscreen="

    .line 730
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    move-object p1, v2

    goto :goto_2

    :cond_6
    move-object p1, v3

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "dol_optimize_smallscreen=1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_7
    const-string v0, "dol_no_mouse_hover="

    .line 731
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    move-object p1, v2

    goto :goto_3

    :cond_8
    move-object p1, v3

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "dol_no_mouse_hover=1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_9
    const-string v0, "dol_use_jmobile="

    .line 732
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    move-object v2, v3

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "dol_use_jmobile=1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 733
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadUrl after select Refresh : Load url "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->lastLoadUrl:Ljava/lang/String;

    .line 735
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_c
    return v7

    :sswitch_1
    const-string p1, "Call finish activity, with setResult = 2"

    .line 715
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 716
    invoke-virtual {p0, p1}, Lcom/nltechno/dolidroidpro/SecondActivity;->setResult(I)V

    .line 717
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->finish()V

    return v7

    .line 585
    :sswitch_2
    invoke-direct {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->codeForQuickAccess()Z

    move-result p1

    return p1

    .line 591
    :sswitch_3
    invoke-direct {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->codeForMultiCompany()Z

    move-result p1

    return p1

    .line 583
    :sswitch_4
    invoke-direct {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->codeForMenu()Z

    move-result p1

    return p1

    .line 703
    :sswitch_5
    iput-boolean v7, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->tagToLogout:Z

    .line 705
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "user/logout.php?noredirect=1&dol_hide_topmenu=1&dol_hide_leftmenu=1&dol_optimize_smallscreen=1&dol_no_mouse_hover=1&dol_use_jmobile=1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadUrl after select Logout : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->lastLoadUrl:Ljava/lang/String;

    .line 709
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 710
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v7}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 712
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    return v7

    .line 593
    :sswitch_6
    invoke-direct {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->codeForCopyUrl()Z

    move-result p1

    return p1

    .line 589
    :sswitch_7
    invoke-direct {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->codeForBookmarks()Z

    move-result p1

    return p1

    .line 587
    :sswitch_8
    invoke-direct {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->codeForBack()Z

    move-result p1

    return p1

    .line 740
    :sswitch_9
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v7}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 742
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    const/4 p1, 0x0

    .line 743
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->cacheForMenu:Ljava/lang/String;

    .line 744
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->cacheForQuickAccess:Ljava/lang/String;

    .line 745
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->cacheForBookmarks:Ljava/lang/String;

    .line 746
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->cacheForMultiCompany:Ljava/lang/String;

    .line 748
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->activity:Landroid/app/Activity;

    const v0, 0x7f0e0006

    invoke-static {p1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v7

    .line 752
    :sswitch_a
    new-instance p1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dolidroid_prefs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clear predefined URL list dolidroid_prefs (from SecondActivity) by deleting file with full path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 755
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/nltechno/dolidroidpro/MainActivity;->listOfRootUrl:Ljava/util/List;

    .line 765
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savMenu:Landroid/view/Menu;

    const v4, 0x7f080050

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 766
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0e0057

    invoke-virtual {p0, v5}, Lcom/nltechno/dolidroidpro/SecondActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/nltechno/dolidroidpro/MainActivity;->listOfRootUrl:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 771
    :try_start_0
    sget-object p1, Landroidx/security/crypto/MasterKeys;->AES256_GCM_SPEC:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {p1}, Landroidx/security/crypto/MasterKeys;->getOrCreate(Landroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    move-result-object p1

    .line 775
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->AES256_SIV:Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    sget-object v6, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->AES256_GCM:Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    .line 772
    invoke-static {v2, p1, v4, v5, v6}, Landroidx/security/crypto/EncryptedSharedPreferences;->create(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 779
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 780
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 781
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 783
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 786
    :catch_0
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return v7

    .line 670
    :sswitch_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Click onto switch uselocalresources, prefAlwaysUseLocalResources is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->prefAlwaysUseLocalResources:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-boolean p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->prefAlwaysUseLocalResources:Z

    xor-int/2addr p1, v7

    iput-boolean p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->prefAlwaysUseLocalResources:Z

    .line 673
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 674
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 675
    iget-boolean v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->prefAlwaysUseLocalResources:Z

    const-string v2, "prefAlwaysUseLocalResources"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 676
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 678
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->prefAlwaysUseLocalResources:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-boolean p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->prefAlwaysUseLocalResources:Z

    const v0, 0x7f080044

    if-eqz p1, :cond_d

    .line 681
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savMenu:Landroid/view/Menu;

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f0e006a

    invoke-virtual {p0, v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_6

    .line 683
    :cond_d
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savMenu:Landroid/view/Menu;

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f0e0069

    invoke-virtual {p0, v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 685
    :goto_6
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->invalidateOptionsMenu()V

    return v7

    .line 595
    :sswitch_c
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "prefAlwaysShowBar"

    .line 596
    invoke-interface {p1, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 598
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Click onto switch show bar, prefAlwaysShowBar is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/2addr v2, v7

    .line 601
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 602
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 603
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 604
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f080043

    if-eqz v2, :cond_e

    .line 609
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const-string p1, "actionbar"

    .line 610
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->menuAre:Ljava/lang/String;

    .line 612
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->invalidateOptionsMenu()V

    .line 614
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 615
    invoke-virtual {p1}, Landroid/app/ActionBar;->show()V

    goto :goto_7

    .line 620
    :cond_e
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const-string p1, "hardwareonly"

    .line 621
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->menuAre:Ljava/lang/String;

    .line 623
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 624
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 626
    :cond_f
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->invalidateOptionsMenu()V

    :cond_10
    :goto_7
    return v7

    .line 630
    :sswitch_d
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v4, "prefAlwaysAutoFill"

    .line 631
    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 633
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Click onto switch autofill, prefAlwaysAutoFill is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/2addr v5, v7

    .line 636
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 637
    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 638
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 639
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f080042

    if-eqz v5, :cond_11

    .line 642
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f0e0054

    invoke-virtual {p0, v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_8

    .line 644
    :cond_11
    iget-object v4, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savMenu:Landroid/view/Menu;

    invoke-interface {v4, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const v4, 0x7f0e0053

    invoke-virtual {p0, v4}, Lcom/nltechno/dolidroidpro/SecondActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 649
    :try_start_1
    sget-object p1, Landroidx/security/crypto/MasterKeys;->AES256_GCM_SPEC:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {p1}, Landroidx/security/crypto/MasterKeys;->getOrCreate(Landroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    move-result-object p1

    .line 653
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->AES256_SIV:Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    sget-object v6, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->AES256_GCM:Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    .line 650
    invoke-static {v2, p1, v4, v5, v6}, Landroidx/security/crypto/EncryptedSharedPreferences;->create(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 657
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 658
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 659
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 661
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    .line 664
    :catch_1
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :goto_8
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->invalidateOptionsMenu()V

    return v7

    :sswitch_e
    const-string p1, "Start activity About"

    .line 688
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nltechno/dolidroidpro/AboutActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 691
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "currentUrl"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "userAgent"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedDolRootUrl:Ljava/lang/String;

    const-string v2, "savedDolRootUrl"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->lastversionfound:Ljava/lang/String;

    const-string v2, "lastversionfound"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->lastversionfoundforasset:Ljava/lang/String;

    const-string v2, "lastversionfoundforasset"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedAuthuser:Ljava/lang/String;

    const-string v2, "savedAuthuser"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    iget-object v0, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedAuthpass:Ljava/lang/String;

    const-string v2, "savedAuthpass"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "startActivityForResult with requestCode=1"

    .line 699
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-virtual {p0, p1, v7}, Lcom/nltechno/dolidroidpro/SecondActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08000a -> :sswitch_e
        0x7f080042 -> :sswitch_d
        0x7f080043 -> :sswitch_c
        0x7f080044 -> :sswitch_b
        0x7f080050 -> :sswitch_a
        0x7f080051 -> :sswitch_9
        0x7f08007a -> :sswitch_8
        0x7f08007b -> :sswitch_7
        0x7f08007c -> :sswitch_6
        0x7f08007d -> :sswitch_5
        0x7f08007e -> :sswitch_4
        0x7f08007f -> :sswitch_3
        0x7f080082 -> :sswitch_2
        0x7f080094 -> :sswitch_1
        0x7f080096 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "DoliDroidSecondActivity"

    const-string v1, "onPause stop cookie sync"

    .line 2555
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "DoliDroidSecondActivity"

    const-string v1, "onRequestPermissionsResult override"

    .line 1304
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x7b

    if-eq p1, v1, :cond_0

    .line 1320
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void

    .line 1308
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 1311
    iget-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->saveQueryForonRequestPermissionsResult:Ljava/lang/String;

    iget-object p2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->saveUrlForonRequestPermissionsResult:Ljava/lang/String;

    iget-object p3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->saveListOfCookiesForonRequestPermissionsResult:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/nltechno/dolidroidpro/SecondActivity;->putDownloadInQueue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string p1, "Sorry, permission was not granted by user to do so."

    .line 1315
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "DoliDroidSecondActivity"

    const-string v1, "onResume start cookie sync"

    .line 2544
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "DoliDroidSecondActivity"

    const-string v1, "onStart"

    .line 413
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 418
    invoke-virtual {p0}, Lcom/nltechno/dolidroidpro/SecondActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    const/4 v0, 0x2

    .line 2566
    invoke-virtual {p0, v0}, Lcom/nltechno/dolidroidpro/SecondActivity;->setResult(I)V

    .line 2567
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public putDownloadInQueue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putDownloadInQueue url to download = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoliDroidSecondActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 1340
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 1341
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const-string p2, "Cookie"

    .line 1342
    invoke-virtual {v0, p2, p3}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1343
    iget-object p2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedAuthuser:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 1344
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "putDownloadInQueue add header Authorization Basic for user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedAuthuser:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Basic "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedAuthuser:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, ":"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v2, p0, Lcom/nltechno/dolidroidpro/SecondActivity;->savedAuthpass:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    const/4 v2, 0x2

    invoke-static {p3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Authorization"

    invoke-virtual {v0, p3, p2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    :cond_0
    const/4 p2, 0x3

    .line 1347
    invoke-virtual {v0, p2}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    const/4 p2, 0x1

    .line 1348
    invoke-virtual {v0, p2}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 1349
    invoke-virtual {v0, p2}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 1350
    invoke-virtual {v0, p2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 1351
    invoke-virtual {v0}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 1353
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putDownloadInQueue Set output dirType="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, " subPath="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    sget-object p3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, p3, p1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const-string p1, "download"

    .line 1359
    invoke-virtual {p0, p1}, Lcom/nltechno/dolidroidpro/SecondActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    .line 1360
    invoke-virtual {p1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    .line 1361
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "putDownloadInQueue id="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method
