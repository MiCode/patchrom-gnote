.class public Lcom/android/OriginalSettings/PenHelpActivity;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "PenHelpActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/16 v1, 0x8

    .line 28
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f040061

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenHelpActivity;->setContentView(I)V

    .line 32
    const v0, 0x7f080121

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    const v0, 0x7f080124

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    return-void
.end method
