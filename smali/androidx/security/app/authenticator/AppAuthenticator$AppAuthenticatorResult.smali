.class abstract Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;
.super Ljava/lang/Object;
.source "AppAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/app/authenticator/AppAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AppAuthenticatorResult"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(ILjava/lang/String;)Landroidx/security/app/authenticator/AppAuthenticator$AppAuthenticatorResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultCode",
            "resultMessage"
        }
    .end annotation

    .line 744
    new-instance v0, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorResult;

    invoke-direct {v0, p0, p1}, Landroidx/security/app/authenticator/AutoValue_AppAuthenticator_AppAuthenticatorResult;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method abstract getResultCode()I
.end method

.method abstract getResultMessage()Ljava/lang/String;
.end method
