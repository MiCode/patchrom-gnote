.class public Lcom/android/OriginalSettings/SettingsLicenseActivity;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/SettingsLicenseActivity$LicenseFileLoader;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSpinnerDlg:Landroid/app/ProgressDialog;

.field private mTextDlg:Landroid/app/AlertDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 126
    iput-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    .line 127
    iput-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 128
    iput-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 129
    iput-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/SettingsLicenseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/SettingsLicenseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsLicenseActivity;->showErrorAndFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/SettingsLicenseActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/SettingsLicenseActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 233
    const v0, 0x7f0b0400

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 235
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsLicenseActivity;->finish()V

    .line 236
    return-void
.end method

.method private showPageOfText(Ljava/lang/String;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 204
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b03ff

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    .line 210
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/OriginalSettings/SettingsLicenseActivity$2;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/SettingsLicenseActivity$2;-><init>(Lcom/android/OriginalSettings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 218
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/android/OriginalSettings/SettingsLicenseActivity$3;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/SettingsLicenseActivity$3;-><init>(Lcom/android/OriginalSettings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 227
    iput-object v1, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 228
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 134
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const-string v5, "ro.config.license_path"

    const-string v6, "/system/etc/NOTICE.html.gz"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, fileName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    const-string v5, "SettingsLicenseActivity"

    const-string v6, "The system property for the license file is empty."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsLicenseActivity;->showErrorAndFinish()V

    .line 178
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/SettingsLicenseActivity;->setVisible(Z)V

    .line 147
    new-instance v5, Landroid/webkit/WebView;

    invoke-direct {v5, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 148
    iget-object v5, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    .line 149
    iget-object v5, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setDisableSelection(Z)Z

    .line 150
    iget-object v5, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v7}, Landroid/webkit/WebView;->setFindOptionEnabled(Z)V

    .line 153
    new-instance v5, Lcom/android/OriginalSettings/SettingsLicenseActivity$1;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/SettingsLicenseActivity$1;-><init>(Lcom/android/OriginalSettings/SettingsLicenseActivity;)V

    iput-object v5, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    .line 168
    const v5, 0x7f0b03ff

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/SettingsLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 169
    .local v4, title:Ljava/lang/CharSequence;
    const v5, 0x7f0b0401

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/SettingsLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 171
    .local v1, msg:Ljava/lang/CharSequence;
    invoke-static {p0, v4, v1, v8, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 172
    .local v2, pd:Landroid/app/ProgressDialog;
    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 173
    iput-object v2, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 176
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/OriginalSettings/SettingsLicenseActivity$LicenseFileLoader;

    iget-object v6, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v0, v6}, Lcom/android/OriginalSettings/SettingsLicenseActivity$LicenseFileLoader;-><init>(Lcom/android/OriginalSettings/SettingsLicenseActivity;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 177
    .local v3, thread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 199
    :cond_2
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onDestroy()V

    .line 200
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onPause()V

    .line 188
    return-void
.end method
