.class Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary$2;
.super Landroid/os/Handler;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 796
    iput-object p1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 800
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 812
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 813
    return-void

    .line 802
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;

    .line 803
    .local v0, bs:Lcom/android/OriginalSettings/fuelgauge/BatterySipper;
    iget-object v2, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;

    iget-object v3, v0, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/fuelgauge/PowerGaugePreference;

    .line 806
    .local v1, pgp:Lcom/android/OriginalSettings/fuelgauge/PowerGaugePreference;
    if-eqz v1, :cond_0

    .line 807
    iget-object v2, v0, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 808
    iget-object v2, v0, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 800
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
