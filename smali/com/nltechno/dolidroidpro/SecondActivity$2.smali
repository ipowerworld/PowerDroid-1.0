.class Lcom/nltechno/dolidroidpro/SecondActivity$2;
.super Ljava/lang/Object;
.source "SecondActivity.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nltechno/dolidroidpro/SecondActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nltechno/dolidroidpro/SecondActivity;


# direct methods
.method constructor <init>(Lcom/nltechno/dolidroidpro/SecondActivity;)V
    .locals 0

    .line 2740
    iput-object p1, p0, Lcom/nltechno/dolidroidpro/SecondActivity$2;->this$0:Lcom/nltechno/dolidroidpro/SecondActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    const-string p1, "DoliDroidSecondActivity"

    const-string p2, "MediaScannerConnection callback: Media have been refreshed"

    .line 2743
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
