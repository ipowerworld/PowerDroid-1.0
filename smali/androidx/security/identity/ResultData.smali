.class public abstract Landroidx/security/identity/ResultData;
.super Ljava/lang/Object;
.source "ResultData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/security/identity/ResultData$Status;
    }
.end annotation


# static fields
.field public static final STATUS_NOT_IN_REQUEST_MESSAGE:I = 0x3

.field public static final STATUS_NOT_REQUESTED:I = 0x2

.field public static final STATUS_NO_ACCESS_CONTROL_PROFILES:I = 0x6

.field public static final STATUS_NO_SUCH_ENTRY:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_READER_AUTHENTICATION_FAILED:I = 0x5

.field public static final STATUS_USER_AUTHENTICATION_FAILED:I = 0x4


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAuthenticatedData()[B
.end method

.method public abstract getEcdsaSignature()[B
.end method

.method public abstract getEntry(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public getEntryBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 296
    invoke-virtual {p0, p1, p2}, Landroidx/security/identity/ResultData;->getEntry(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 300
    :cond_0
    invoke-static {p1}, Landroidx/security/identity/Util;->cborDecodeBoolean([B)Z

    move-result p1

    return p1
.end method

.method public getEntryBytestring(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    .line 260
    invoke-virtual {p0, p1, p2}, Landroidx/security/identity/ResultData;->getEntry(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 264
    :cond_0
    invoke-static {p1}, Landroidx/security/identity/Util;->cborDecodeByteString([B)[B

    move-result-object p1

    return-object p1
.end method

.method public getEntryCalendar(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/Calendar;
    .locals 0

    .line 316
    invoke-virtual {p0, p1, p2}, Landroidx/security/identity/ResultData;->getEntry(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 320
    :cond_0
    invoke-static {p1}, Landroidx/security/identity/Util;->cborDecodeDateTime([B)Landroid/icu/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getEntryInteger(Ljava/lang/String;Ljava/lang/String;)J
    .locals 0

    .line 278
    invoke-virtual {p0, p1, p2}, Landroidx/security/identity/ResultData;->getEntry(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 282
    :cond_0
    invoke-static {p1}, Landroidx/security/identity/Util;->cborDecodeLong([B)J

    move-result-wide p1

    return-wide p1
.end method

.method public abstract getEntryNames(Ljava/lang/String;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getEntryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 241
    invoke-virtual {p0, p1, p2}, Landroidx/security/identity/ResultData;->getEntry(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 245
    :cond_0
    invoke-static {p1}, Landroidx/security/identity/Util;->cborDecodeString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getMessageAuthenticationCode()[B
.end method

.method public abstract getNamespaces()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRetrievedEntryNames(Ljava/lang/String;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStaticAuthenticationData()[B
.end method

.method public abstract getStatus(Ljava/lang/String;Ljava/lang/String;)I
.end method
