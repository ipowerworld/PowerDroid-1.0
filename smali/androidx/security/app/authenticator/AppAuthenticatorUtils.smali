.class Landroidx/security/app/authenticator/AppAuthenticatorUtils;
.super Ljava/lang/Object;
.source "AppAuthenticatorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/security/app/authenticator/AppAuthenticatorUtils$AppAuthenticatorUtilsException;
    }
.end annotation


# static fields
.field private static final HEX_CHARACTERS:[C


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroidx/security/app/authenticator/AppAuthenticatorUtils;->HEX_CHARACTERS:[C

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/security/app/authenticator/AppAuthenticatorUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method static computeDigest(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digestAlgorithm",
            "data"
        }
    .end annotation

    .line 95
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Landroidx/security/app/authenticator/AppAuthenticatorUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    .line 99
    new-instance v0, Landroidx/security/app/authenticator/AppAuthenticatorUtils$AppAuthenticatorUtilsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " not supported on this device"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/security/app/authenticator/AppAuthenticatorUtils$AppAuthenticatorUtilsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static getApiLevel()I
    .locals 1

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method static toHexString([B)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 109
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 110
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    .line 112
    sget-object v3, Landroidx/security/app/authenticator/AppAuthenticatorUtils;->HEX_CHARACTERS:[C

    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v3, v4

    aput-char v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 113
    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method


# virtual methods
.method getCallingPid()I
    .locals 1

    .line 52
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    return v0
.end method

.method getCallingUid()I
    .locals 1

    .line 62
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method getUidForPackage(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Landroidx/security/app/authenticator/AppAuthenticatorUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 75
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    return p1
.end method
