.class Lcom/android/OriginalSettings/wifi/WifiApDialog$2;
.super Ljava/lang/Object;
.source "WifiApDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WifiApDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiApDialog;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiApDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiApDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->access$300(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiApDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->access$300(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 226
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->access$100(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 227
    return-void
.end method
