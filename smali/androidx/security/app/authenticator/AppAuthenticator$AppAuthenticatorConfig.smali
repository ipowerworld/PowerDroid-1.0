.class abstract Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;
.super Ljava/lang/Object;
.source "AppAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/app/authenticator/AppAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AppAuthenticatorConfig"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "permissionAllowMap",
            "expectedIdentities",
            "digestAlgorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorConfig;"
        }
    .end annotation

    .line 717
    new-instance v0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorConfig;

    invoke-direct {v0, p0, p1, p2}, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorConfig;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method abstract getDigestAlgorithm()Ljava/lang/String;
.end method

.method abstract getExpectedIdentities()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method abstract getPermissionAllowMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end method
