.class Lcom/android/OriginalSettings/motion/MotionView$4;
.super Ljava/lang/Object;
.source "MotionView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/motion/MotionView;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/motion/MotionView;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/motion/MotionView;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/MotionView$4;->this$0:Lcom/android/OriginalSettings/motion/MotionView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 231
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView$4;->this$0:Lcom/android/OriginalSettings/motion/MotionView;

    #calls: Lcom/android/OriginalSettings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/OriginalSettings/motion/MotionView;->access$700(Lcom/android/OriginalSettings/motion/MotionView;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView$4;->this$0:Lcom/android/OriginalSettings/motion/MotionView;

    #calls: Lcom/android/OriginalSettings/motion/MotionView;->showMotionDialog()V
    invoke-static {v1}, Lcom/android/OriginalSettings/motion/MotionView;->access$800(Lcom/android/OriginalSettings/motion/MotionView;)V

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView$4;->this$0:Lcom/android/OriginalSettings/motion/MotionView;

    #calls: Lcom/android/OriginalSettings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/OriginalSettings/motion/MotionView;->access$900(Lcom/android/OriginalSettings/motion/MotionView;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/motion/MotionView$4;->this$0:Lcom/android/OriginalSettings/motion/MotionView;

    #getter for: Lcom/android/OriginalSettings/motion/MotionView;->mCurrentDB:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/OriginalSettings/motion/MotionView;->access$200(Lcom/android/OriginalSettings/motion/MotionView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView$4;->this$0:Lcom/android/OriginalSettings/motion/MotionView;

    #getter for: Lcom/android/OriginalSettings/motion/MotionView;->mCurrentMotion:I
    invoke-static {v1}, Lcom/android/OriginalSettings/motion/MotionView;->access$1000(Lcom/android/OriginalSettings/motion/MotionView;)I

    move-result v1

    const/16 v2, 0x641

    if-ne v1, v2, :cond_2

    .line 236
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView$4;->this$0:Lcom/android/OriginalSettings/motion/MotionView;

    const-string v2, "audio"

    #calls: Lcom/android/OriginalSettings/motion/MotionView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/motion/MotionView;->access$1100(Lcom/android/OriginalSettings/motion/MotionView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 237
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView$4;->this$0:Lcom/android/OriginalSettings/motion/MotionView;

    #calls: Lcom/android/OriginalSettings/motion/MotionView;->showUseRingDialog()V
    invoke-static {v1}, Lcom/android/OriginalSettings/motion/MotionView;->access$1200(Lcom/android/OriginalSettings/motion/MotionView;)V

    .line 248
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_0
    return-void

    .line 240
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView$4;->this$0:Lcom/android/OriginalSettings/motion/MotionView;

    #calls: Lcom/android/OriginalSettings/motion/MotionView;->startTryActually(Z)V
    invoke-static {v1, v3}, Lcom/android/OriginalSettings/motion/MotionView;->access$1300(Lcom/android/OriginalSettings/motion/MotionView;Z)V

    goto :goto_0

    .line 243
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView$4;->this$0:Lcom/android/OriginalSettings/motion/MotionView;

    #calls: Lcom/android/OriginalSettings/motion/MotionView;->startTryActually()V
    invoke-static {v1}, Lcom/android/OriginalSettings/motion/MotionView;->access$500(Lcom/android/OriginalSettings/motion/MotionView;)V

    goto :goto_0

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionView$4;->this$0:Lcom/android/OriginalSettings/motion/MotionView;

    #calls: Lcom/android/OriginalSettings/motion/MotionView;->showMotionDialog()V
    invoke-static {v1}, Lcom/android/OriginalSettings/motion/MotionView;->access$800(Lcom/android/OriginalSettings/motion/MotionView;)V

    goto :goto_0
.end method
