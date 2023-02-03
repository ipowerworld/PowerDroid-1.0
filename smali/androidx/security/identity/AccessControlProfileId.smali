.class public Landroidx/security/identity/AccessControlProfileId;
.super Ljava/lang/Object;
.source "AccessControlProfileId.java"


# instance fields
.field private mId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroidx/security/identity/AccessControlProfileId;->mId:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 40
    iget v0, p0, Landroidx/security/identity/AccessControlProfileId;->mId:I

    return v0
.end method
