.class public Landroidx/security/app/authenticator/AppAuthenticator;
.super Ljava/lang/Object;
.source "AppAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;,
        Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;
    }
.end annotation


# static fields
.field static final ALL_PACKAGES_TAG:Ljava/lang/String; = "all-packages"

.field private static final CERT_DIGEST_TAG:Ljava/lang/String; = "cert-digest"

.field static final DEFAULT_DIGEST_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final EXPECTED_IDENTITY_TAG:Ljava/lang/String; = "expected-identity"

.field private static final NAME_ATTRIBUTE:Ljava/lang/String; = "name"

.field private static final PACKAGE_TAG:Ljava/lang/String; = "package"

.field public static final PERMISSION_DENIED_NO_MATCH:I = -0x3

.field public static final PERMISSION_DENIED_PACKAGE_UID_MISMATCH:I = -0x5

.field public static final PERMISSION_DENIED_UNKNOWN_PACKAGE:I = -0x4

.field public static final PERMISSION_GRANTED:I = 0x0

.field private static final PERMISSION_TAG:Ljava/lang/String; = "permission"

.field private static final ROOT_TAG:Ljava/lang/String; = "app-authenticator"

.field public static final SIGNATURE_MATCH:I = 0x0

.field public static final SIGNATURE_NO_MATCH:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AppAuthenticator"


# instance fields
.field private mAppAuthenticatorUtils:Landroidx/security/app/authenticator/AppAuthenticatorUtils;

.field private mAppSignatureVerifier:Landroidx/security/app/authenticator/AppSignatureVerifier;


# direct methods
.method constructor <init>(Landroidx/security/app/authenticator/AppSignatureVerifier;Landroidx/security/app/authenticator/AppAuthenticatorUtils;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appSignatureVerifier",
            "appAuthenticatorUtils"
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Landroidx/security/app/authenticator/AppAuthenticator;->mAppSignatureVerifier:Landroidx/security/app/authenticator/AppSignatureVerifier;

    .line 152
    iput-object p2, p0, Landroidx/security/app/authenticator/AppAuthenticator;->mAppAuthenticatorUtils:Landroidx/security/app/authenticator/AppAuthenticatorUtils;

    return-void
.end method

.method private static assertExpectedAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parser",
            "tagName",
            "expectedAttribute",
            "required"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/app/authenticator/AppAuthenticatorXmlException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 644
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const-string v1, " on line "

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 651
    :cond_0
    new-instance p3, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The attribute "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is required for tag "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 652
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1
    :goto_0
    const/4 p3, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 656
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 657
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez p3, :cond_2

    .line 659
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_2
    const-string v3, ", "

    .line 661
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    :goto_2
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_6

    const-string v0, "Tag "

    if-nez p2, :cond_5

    .line 669
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " does not support any attributes"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 671
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " only supports attribute "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 673
    :goto_3
    new-instance p2, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; found the following unsupported attributes on line "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 675
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    return-void

    .line 646
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "parser#getAttributeCount called for event type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 647
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 648
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private checkCallingAppIdentityInternal(Ljava/lang/String;Ljava/lang/String;II)Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "permission",
            "pid",
            "uid"
        }
    .end annotation

    .line 286
    :try_start_0
    iget-object p3, p0, Landroidx/security/app/authenticator/AppAuthenticator;->mAppAuthenticatorUtils:Landroidx/security/app/authenticator/AppAuthenticatorUtils;

    invoke-virtual {p3, p1}, Landroidx/security/app/authenticator/AppAuthenticatorUtils;->getUidForPackage(Ljava/lang/String;)I

    move-result p3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p3, p4, :cond_0

    const/4 p2, -0x5

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The expected UID, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, ", of the app "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " does not match the actual UID, "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;->create(ILjava/lang/String;)Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;

    move-result-object p1

    return-object p1

    .line 296
    :cond_0
    iget-object p3, p0, Landroidx/security/app/authenticator/AppAuthenticator;->mAppSignatureVerifier:Landroidx/security/app/authenticator/AppSignatureVerifier;

    invoke-virtual {p3, p1, p2}, Landroidx/security/app/authenticator/AppSignatureVerifier;->verifySigningIdentity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 297
    invoke-static {p1, p2}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;->create(ILjava/lang/String;)Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p2, -0x3

    .line 299
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The signing identity of app "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " does not match the expected identity"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;->create(ILjava/lang/String;)Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p2, -0x4

    .line 288
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The app "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " was not found on the device"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;->create(ILjava/lang/String;)Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;

    move-result-object p1

    return-object p1
.end method

.method static createConfigFromParser(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/app/authenticator/AppAuthenticatorXmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "name"

    const-string v1, "expected-identity"

    const-string v2, "permission"

    const-string v3, "app-authenticator"

    .line 459
    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    .line 460
    new-instance v5, Landroidx/collection/ArrayMap;

    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    .line 462
    :try_start_0
    invoke-static {p0}, Landroidx/security/app/authenticator/AppAuthenticator;->parseToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 463
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 464
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 468
    invoke-static {p0, v3, v7, v6}, Landroidx/security/app/authenticator/AppAuthenticator;->assertExpectedAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "SHA-256"

    .line 470
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v8

    :goto_0
    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 473
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 474
    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_2

    .line 475
    invoke-static {p0, v2, v0, v10}, Landroidx/security/app/authenticator/AppAuthenticator;->assertExpectedAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 476
    invoke-interface {p0, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 477
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 482
    invoke-static {p0, v10}, Landroidx/security/app/authenticator/AppAuthenticator;->parsePackages(Lorg/xmlpull/v1/XmlPullParser;Z)Ljava/util/Map;

    move-result-object v9

    .line 483
    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 484
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 486
    :cond_0
    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 478
    :cond_1
    new-instance p0, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;

    const-string v0, "The permission tag requires a non-empty value for the name attribute"

    invoke-direct {p0, v0}, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 488
    :cond_2
    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 489
    invoke-static {p0, v1, v7, v10}, Landroidx/security/app/authenticator/AppAuthenticator;->assertExpectedAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 490
    invoke-static {p0, v6}, Landroidx/security/app/authenticator/AppAuthenticator;->parsePackages(Lorg/xmlpull/v1/XmlPullParser;Z)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 496
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v8

    goto :goto_0

    .line 492
    :cond_3
    new-instance v0, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected permission or expected-identity under root tag at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 494
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_4
    invoke-static {v4, v5, v3}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;->create(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;

    move-result-object p0

    return-object p0

    .line 465
    :cond_5
    new-instance p0, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;

    const-string v0, "Provided XML does not contain the expected root tag: app-authenticator"

    invoke-direct {p0, v0}, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 501
    new-instance v0, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;

    const-string v1, "Caught an exception parsing the provided XML:"

    invoke-direct {v0, v1, p0}, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static createFromConfig(Landroid/content/Context;Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;)Landroidx/security/app/authenticator/AppAuthenticator;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "config"
        }
    .end annotation

    .line 435
    invoke-static {p0}, Landroidx/security/app/authenticator/AppSignatureVerifier;->builder(Landroid/content/Context;)Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;

    move-result-object v0

    .line 436
    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;->getPermissionAllowMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->setPermissionAllowMap(Ljava/util/Map;)Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;

    move-result-object v0

    .line 437
    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;->getExpectedIdentities()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->setExpectedIdentities(Ljava/util/Map;)Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;

    move-result-object v0

    .line 438
    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->setDigestAlgorithm(Ljava/lang/String;)Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;

    move-result-object p1

    .line 439
    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppSignatureVerifier$Builder;->build()Landroidx/security/app/authenticator/AppSignatureVerifier;

    move-result-object p1

    .line 440
    new-instance v0, Landroidx/security/app/authenticator/AppAuthenticator;

    new-instance v1, Landroidx/security/app/authenticator/AppAuthenticatorUtils;

    invoke-direct {v1, p0}, Landroidx/security/app/authenticator/AppAuthenticatorUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Landroidx/security/app/authenticator/AppAuthenticator;-><init>(Landroidx/security/app/authenticator/AppSignatureVerifier;Landroidx/security/app/authenticator/AppAuthenticatorUtils;)V

    return-object v0
.end method

.method public static createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroidx/security/app/authenticator/AppAuthenticator;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "xmlInputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/app/authenticator/AppAuthenticatorXmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 364
    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    invoke-static {p0, v0}, Landroidx/security/app/authenticator/AppAuthenticator;->createFromParser(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroidx/security/app/authenticator/AppAuthenticator;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 366
    new-instance p1, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;

    const-string v0, "Unable to create parser from provided InputStream"

    invoke-direct {p1, v0, p0}, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static createFromParser(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroidx/security/app/authenticator/AppAuthenticator;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/app/authenticator/AppAuthenticatorXmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    invoke-static {p1}, Landroidx/security/app/authenticator/AppAuthenticator;->createConfigFromParser(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;

    move-result-object p1

    .line 417
    invoke-static {p0, p1}, Landroidx/security/app/authenticator/AppAuthenticator;->createFromConfig(Landroid/content/Context;Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;)Landroidx/security/app/authenticator/AppAuthenticator;

    move-result-object p0

    return-object p0
.end method

.method public static createFromResource(Landroid/content/Context;I)Landroidx/security/app/authenticator/AppAuthenticator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "xmlResource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/app/authenticator/AppAuthenticatorXmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 392
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 393
    invoke-static {p0, p1}, Landroidx/security/app/authenticator/AppAuthenticator;->createFromParser(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroidx/security/app/authenticator/AppAuthenticator;

    move-result-object p0

    return-object p0
.end method

.method static normalizeCertDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certDigest"
        }
    .end annotation

    .line 613
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseCertDigests(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/app/authenticator/AppAuthenticatorXmlException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 581
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 582
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    :goto_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 584
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cert-digest"

    .line 585
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 589
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 590
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 595
    invoke-static {v1}, Landroidx/security/app/authenticator/AppAuthenticator;->normalizeCertDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 596
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    goto :goto_0

    .line 591
    :cond_0
    new-instance v0, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The cert-digest element on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 592
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " must have non-empty text containing the certificate digest of the signer"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_1
    new-instance v0, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected cert-digest on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 587
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method private static parsePackages(Lorg/xmlpull/v1/XmlPullParser;Z)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parser",
            "allPackagesAllowed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/security/app/authenticator/AppAuthenticatorXmlException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 524
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 525
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    :goto_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 527
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    .line 529
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "all-packages"

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    const-string v4, "name"

    .line 530
    invoke-static {p0, v2, v4, v3}, Landroidx/security/app/authenticator/AppAuthenticator;->assertExpectedAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    .line 531
    invoke-interface {p0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 532
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 533
    :cond_0
    new-instance p0, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;

    const-string p1, "The package tag requires a non-empty value for the name attribute"

    invoke-direct {p0, p1}, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 537
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p1, :cond_4

    .line 550
    :goto_1
    invoke-static {p0}, Landroidx/security/app/authenticator/AppAuthenticator;->parseCertDigests(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Set;

    move-result-object v2

    .line 551
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 555
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 556
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 558
    :cond_2
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    goto :goto_0

    .line 552
    :cond_3
    new-instance p1, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No cert-digest tag found within "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " element on line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 553
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 540
    :cond_4
    new-instance p1, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The all-packages tag is not allowed within this element on line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 542
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 545
    :cond_5
    new-instance v0, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " on line "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 546
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "; expected "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p1, :cond_6

    const-string v1, " or all-packages"

    .line 548
    :cond_6
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/security/app/authenticator/AppAuthenticatorXmlException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-object v0
.end method

.method private static parseToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 624
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public checkAppIdentity(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Landroidx/security/app/authenticator/AppAuthenticator;->mAppSignatureVerifier:Landroidx/security/app/authenticator/AppSignatureVerifier;

    invoke-virtual {v0, p1}, Landroidx/security/app/authenticator/AppSignatureVerifier;->verifyExpectedIdentity(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public checkCallingAppIdentity(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "permission"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Landroidx/security/app/authenticator/AppAuthenticator;->mAppAuthenticatorUtils:Landroidx/security/app/authenticator/AppAuthenticatorUtils;

    .line 238
    invoke-virtual {v0}, Landroidx/security/app/authenticator/AppAuthenticatorUtils;->getCallingPid()I

    move-result v0

    iget-object v1, p0, Landroidx/security/app/authenticator/AppAuthenticator;->mAppAuthenticatorUtils:Landroidx/security/app/authenticator/AppAuthenticatorUtils;

    invoke-virtual {v1}, Landroidx/security/app/authenticator/AppAuthenticatorUtils;->getCallingUid()I

    move-result v1

    .line 237
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/security/app/authenticator/AppAuthenticator;->checkCallingAppIdentity(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public checkCallingAppIdentity(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "permission",
            "pid",
            "uid"
        }
    .end annotation

    .line 263
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/security/app/authenticator/AppAuthenticator;->checkCallingAppIdentityInternal(Ljava/lang/String;Ljava/lang/String;II)Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;

    move-result-object p1

    .line 265
    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;->getResultCode()I

    move-result p2

    if-eqz p2, :cond_0

    .line 266
    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;->getResultMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AppAuthenticator"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;->getResultCode()I

    move-result p1

    return p1
.end method

.method public enforceAppIdentity(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 317
    invoke-virtual {p0, p1}, Landroidx/security/app/authenticator/AppAuthenticator;->checkAppIdentity(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " does not match the expected signing identity"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enforceCallingAppIdentity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "permission"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroidx/security/app/authenticator/AppAuthenticator;->mAppAuthenticatorUtils:Landroidx/security/app/authenticator/AppAuthenticatorUtils;

    .line 189
    invoke-virtual {v0}, Landroidx/security/app/authenticator/AppAuthenticatorUtils;->getCallingPid()I

    move-result v0

    iget-object v1, p0, Landroidx/security/app/authenticator/AppAuthenticator;->mAppAuthenticatorUtils:Landroidx/security/app/authenticator/AppAuthenticatorUtils;

    invoke-virtual {v1}, Landroidx/security/app/authenticator/AppAuthenticatorUtils;->getCallingUid()I

    move-result v1

    .line 188
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/security/app/authenticator/AppAuthenticator;->enforceCallingAppIdentity(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public enforceCallingAppIdentity(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "permission",
            "pid",
            "uid"
        }
    .end annotation

    .line 208
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/security/app/authenticator/AppAuthenticator;->checkCallingAppIdentityInternal(Ljava/lang/String;Ljava/lang/String;II)Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;->getResultCode()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 211
    :cond_0
    new-instance p2, Ljava/lang/SecurityException;

    invoke-virtual {p1}, Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;->getResultMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method setAppAuthenticatorUtils(Landroidx/security/app/authenticator/AppAuthenticatorUtils;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appAuthenticatorUtils"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Landroidx/security/app/authenticator/AppAuthenticator;->mAppAuthenticatorUtils:Landroidx/security/app/authenticator/AppAuthenticatorUtils;

    return-void
.end method

.method setAppSignatureVerifier(Landroidx/security/app/authenticator/AppSignatureVerifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appSignatureVerifier"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Landroidx/security/app/authenticator/AppAuthenticator;->mAppSignatureVerifier:Landroidx/security/app/authenticator/AppSignatureVerifier;

    return-void
.end method
