.class Landroidx/security/identity/SimpleResultData$EntryData;
.super Ljava/lang/Object;
.source "SimpleResultData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/identity/SimpleResultData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntryData"
.end annotation


# instance fields
.field mStatus:I

.field mValue:[B


# direct methods
.method constructor <init>([BI)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/security/identity/SimpleResultData$EntryData;->mValue:[B

    .line 47
    iput p2, p0, Landroidx/security/identity/SimpleResultData$EntryData;->mStatus:I

    return-void
.end method
