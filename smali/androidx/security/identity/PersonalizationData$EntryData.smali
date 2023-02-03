.class Landroidx/security/identity/PersonalizationData$EntryData;
.super Ljava/lang/Object;
.source "PersonalizationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/identity/PersonalizationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntryData"
.end annotation


# instance fields
.field mAccessControlProfileIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroidx/security/identity/AccessControlProfileId;",
            ">;"
        }
    .end annotation
.end field

.field mValue:[B


# direct methods
.method constructor <init>([BLjava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Landroidx/security/identity/AccessControlProfileId;",
            ">;)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Landroidx/security/identity/PersonalizationData$EntryData;->mValue:[B

    .line 104
    iput-object p2, p0, Landroidx/security/identity/PersonalizationData$EntryData;->mAccessControlProfileIds:Ljava/util/Collection;

    return-void
.end method
