.class abstract Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;
.super Ljava/lang/Object;
.source "AppSignatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/app/authenticator/AppSignatureVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AppSigningInfo"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Ljava/lang/String;[Landroid/content/pm/Signature;[Landroid/content/pm/Signature;J)Landroidx/security/app/authenticator/AppSignatureVerifier$AppSigningInfo;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "currentSignatures",
            "signingLineage",
            "lastUpdateTime"
        }
    .end annotation

    .line 450
    new-instance v6, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;

    .line 451
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 452
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v3, p1

    move-object v0, v6

    move-object v1, p0

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/security/app/authenticator/AutoValue_AppSignatureVerifier_AppSigningInfo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;J)V

    return-object v6
.end method


# virtual methods
.method abstract getCurrentSignatures()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end method

.method abstract getLastUpdateTime()J
.end method

.method abstract getPackageName()Ljava/lang/String;
.end method

.method abstract getSigningLineage()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end method
