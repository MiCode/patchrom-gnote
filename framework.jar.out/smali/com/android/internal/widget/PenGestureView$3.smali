.class Lcom/android/internal/widget/PenGestureView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/PenGestureView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/PenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/PenGestureView;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 121
    invoke-static {}, Lcom/android/internal/widget/PenGestureView;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PenGesture"

    const-string v1, "Pen DoubleTap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v0, v0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v1, v1, Lcom/android/internal/widget/PenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/widget/PenGestureView;->mTheshold:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/PenGestureView;->access$202(Lcom/android/internal/widget/PenGestureView;Z)Z

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 117
    invoke-static {}, Lcom/android/internal/widget/PenGestureView;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PenGesture"

    const-string v1, "Pen LongPress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v0, v0, Lcom/android/internal/widget/PenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    iget-object v1, v1, Lcom/android/internal/widget/PenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x1

    .line 133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 134
    .local v2, diffX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v3, v4

    .line 135
    .local v3, diffY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 136
    .local v0, absDiffX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 138
    .local v1, absDiffY:I
    if-ge v1, v7, :cond_1

    if-le v0, v1, :cond_1

    .line 139
    if-gez v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mMovingSlop:I
    invoke-static {v4}, Lcom/android/internal/widget/PenGestureView;->access$300(Lcom/android/internal/widget/PenGestureView;)I

    move-result v4

    if-lt v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mTheshold:Z
    invoke-static {v4}, Lcom/android/internal/widget/PenGestureView;->access$200(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    const/4 v5, 0x4

    #calls: Lcom/android/internal/widget/PenGestureView;->injectionKeyEvent(I)V
    invoke-static {v4, v5}, Lcom/android/internal/widget/PenGestureView;->access$400(Lcom/android/internal/widget/PenGestureView;I)V

    .line 141
    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #setter for: Lcom/android/internal/widget/PenGestureView;->mTheshold:Z
    invoke-static {v4, v6}, Lcom/android/internal/widget/PenGestureView;->access$202(Lcom/android/internal/widget/PenGestureView;Z)Z

    .line 155
    :cond_0
    :goto_0
    return v6

    .line 144
    :cond_1
    if-ge v0, v7, :cond_0

    if-ge v0, v1, :cond_0

    .line 145
    if-gez v3, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mMovingSlop:I
    invoke-static {v4}, Lcom/android/internal/widget/PenGestureView;->access$300(Lcom/android/internal/widget/PenGestureView;)I

    move-result v4

    if-lt v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mTheshold:Z
    invoke-static {v4}, Lcom/android/internal/widget/PenGestureView;->access$200(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 146
    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #setter for: Lcom/android/internal/widget/PenGestureView;->mTheshold:Z
    invoke-static {v4, v6}, Lcom/android/internal/widget/PenGestureView;->access$202(Lcom/android/internal/widget/PenGestureView;Z)Z

    .line 147
    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    const/16 v5, 0x52

    #calls: Lcom/android/internal/widget/PenGestureView;->injectionKeyEvent(I)V
    invoke-static {v4, v5}, Lcom/android/internal/widget/PenGestureView;->access$400(Lcom/android/internal/widget/PenGestureView;I)V

    goto :goto_0

    .line 148
    :cond_2
    if-lez v3, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mMovingSlop:I
    invoke-static {v4}, Lcom/android/internal/widget/PenGestureView;->access$300(Lcom/android/internal/widget/PenGestureView;)I

    move-result v4

    if-lt v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/PenGestureView$3;->this$0:Lcom/android/internal/widget/PenGestureView;

    #getter for: Lcom/android/internal/widget/PenGestureView;->mTheshold:Z
    invoke-static {v4}, Lcom/android/internal/widget/PenGestureView;->access$200(Lcom/android/internal/widget/PenGestureView;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0
.end method
