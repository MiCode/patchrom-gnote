.class Lcom/android/OriginalSettings/flipfont/FontListPreference$1;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/flipfont/FontListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->SetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->SetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->SetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->access$002(Lcom/android/OriginalSettings/flipfont/FontListPreference;Lcom/android/OriginalSettings/flipfont/FontListAdapter;)Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    .line 179
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    const/4 v1, 0x1

    #setter for: Lcom/android/OriginalSettings/flipfont/FontListPreference;->mBuyButtonClicked:Z
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->access$102(Lcom/android/OriginalSettings/flipfont/FontListPreference;Z)Z

    .line 180
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->restartLater()V

    .line 181
    return-void
.end method
