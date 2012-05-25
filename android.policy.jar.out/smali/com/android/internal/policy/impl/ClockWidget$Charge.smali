.class Lcom/android/internal/policy/impl/ClockWidget$Charge;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Charge"
.end annotation


# instance fields
.field private mBatteryLevel:I

.field private mCharging:Ljava/lang/String;

.field private mChargingIcon:Landroid/widget/ImageView;

.field private mChargingText:Landroid/widget/TextView;

.field private mPluggedIn:Z

.field private mShowingBatteryInfo:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 855
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 849
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mShowingBatteryInfo:Z

    .line 850
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mPluggedIn:Z

    .line 851
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    .line 852
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    .line 856
    return-void
.end method

.method private updateChargingInfo()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 878
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mShowingBatteryInfo:Z

    if-nez v3, :cond_2

    .line 879
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_owner_info_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 881
    .local v1, ownerInfoEnabled:Z
    :goto_0
    const-string v3, "ClockWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateChargingInfo (ownerInfoEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    if-eqz v1, :cond_1

    .line 883
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_owner_info"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, ownerInfo:Ljava/lang/String;
    const-string v3, "ClockWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateChargingInfo (ownerInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->setVisibility(I)V

    .line 886
    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mChargingIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 887
    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mChargingText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 909
    .end local v0           #ownerInfo:Ljava/lang/String;
    .end local v1           #ownerInfoEnabled:Z
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 879
    goto :goto_0

    .line 890
    .restart local v1       #ownerInfoEnabled:Z
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->setVisibility(I)V

    goto :goto_1

    .line 895
    .end local v1           #ownerInfoEnabled:Z
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mPluggedIn:Z

    if-eqz v3, :cond_4

    .line 896
    iget v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    const/16 v4, 0x64

    if-lt v3, v4, :cond_3

    .line 897
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040393

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    .line 906
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->setVisibility(I)V

    .line 907
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mChargingIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 908
    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mChargingText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 899
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040392

    new-array v5, v1, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    goto :goto_2

    .line 904
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040395

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 860
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 861
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 865
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 866
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 870
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 871
    const v0, 0x1020394

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mChargingIcon:Landroid/widget/ImageView;

    .line 872
    const v0, 0x1020395

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mChargingText:Landroid/widget/TextView;

    .line 873
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mChargingText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 874
    return-void
.end method

.method public refreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 913
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mShowingBatteryInfo:Z

    .line 914
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mPluggedIn:Z

    .line 915
    iput p3, p0, Lcom/android/internal/policy/impl/ClockWidget$Charge;->mBatteryLevel:I

    .line 916
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->updateChargingInfo()V

    .line 917
    return-void
.end method
