.class Lcom/android/OriginalSettings/CallSettings$2;
.super Ljava/lang/Object;
.source "CallSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/CallSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/CallSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/CallSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/OriginalSettings/CallSettings$2;->this$0:Lcom/android/OriginalSettings/CallSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/OriginalSettings/CallSettings$2;->this$0:Lcom/android/OriginalSettings/CallSettings;

    #getter for: Lcom/android/OriginalSettings/CallSettings;->mProximitySensor:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/OriginalSettings/CallSettings;->access$100(Lcom/android/OriginalSettings/CallSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/CallSettings$2;->this$0:Lcom/android/OriginalSettings/CallSettings;

    #getter for: Lcom/android/OriginalSettings/CallSettings;->proximityChecked:Z
    invoke-static {v1}, Lcom/android/OriginalSettings/CallSettings;->access$000(Lcom/android/OriginalSettings/CallSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 347
    return-void
.end method
