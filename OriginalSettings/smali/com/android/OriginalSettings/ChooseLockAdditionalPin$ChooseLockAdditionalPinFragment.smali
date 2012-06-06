.class public Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;
.super Landroid/app/Fragment;
.source "ChooseLockAdditionalPin.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ChooseLockAdditionalPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockAdditionalPinFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstLockQuality:I

.field private mFirstLockString:Ljava/lang/String;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockText:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mRequestedQuality:I

.field private mUiStage:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x2

    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 86
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    .line 87
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    .line 88
    iput v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLetters:I

    .line 89
    iput v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinUpperCase:I

    .line 90
    iput v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLowerCase:I

    .line 91
    iput v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinSymbols:I

    .line 92
    iput v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinNumeric:I

    .line 93
    iput v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinNonLetter:I

    .line 95
    iput v2, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    .line 96
    iput v2, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    .line 102
    sget-object v0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iput-object v0, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    .line 120
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$1;-><init>(Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    .line 158
    return-void
.end method

.method private handleNext()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 323
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, pin:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const/4 v0, 0x0

    .line 328
    .local v0, errorMsg:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v7, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v6, v7, :cond_3

    .line 329
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    if-nez v0, :cond_2

    .line 331
    iput-object v2, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    .line 332
    sget-object v4, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    .line 333
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 359
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->showError(Ljava/lang/String;Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    goto :goto_0

    .line 335
    :cond_3
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v7, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v6, v7, :cond_2

    .line 336
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 337
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v6

    if-nez v6, :cond_5

    move v1, v4

    .line 338
    .local v1, lockVirgin:Z
    :goto_2
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 339
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveLockSpare(Ljava/lang/String;I)V

    .line 341
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockString:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    .line 342
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v6, v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    .line 343
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 345
    if-eqz v1, :cond_4

    .line 346
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 347
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    .line 349
    :cond_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .end local v1           #lockVirgin:Z
    :cond_5
    move v1, v5

    .line 337
    goto :goto_2

    .line 351
    :cond_6
    sget-object v4, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->ConfirmWrong:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    .line 352
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 353
    .local v3, tmp:Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    move-object v4, v3

    .line 354
    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method

.method private showError(Ljava/lang/String;Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V
    .locals 4
    .parameter "msg"
    .parameter "next"

    .prologue
    const/4 v2, 0x1

    .line 377
    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 379
    .local v0, mesg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 380
    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 381
    return-void
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 398
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, password:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 401
    .local v1, length:I
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v7, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v6, v7, :cond_2

    if-lez v1, :cond_2

    .line 403
    iget v6, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    if-ge v1, v6, :cond_0

    .line 404
    const v6, 0x7f0b0166

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {p0, v6, v4}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 421
    .end local v2           #msg:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iget v5, v5, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 422
    return-void

    .line 408
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 410
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v4, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 413
    :cond_1
    iget-object v5, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f0b0167

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 414
    iget-object v5, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 418
    .end local v0           #error:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iget v7, v7, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->numericHint:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 419
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_3

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "password"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    if-ge v6, v7, :cond_0

    .line 282
    const v6, 0x7f0b0166

    new-array v7, v8, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 319
    :goto_0
    return-object v6

    .line 284
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    if-le v6, v7, :cond_1

    .line 285
    const v6, 0x7f0b016a

    new-array v7, v8, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 287
    :cond_1
    const/4 v2, 0x0

    .line 288
    .local v2, letters:I
    const/4 v4, 0x0

    .line 289
    .local v4, numbers:I
    const/4 v5, 0x0

    .line 290
    .local v5, symbols:I
    const/4 v3, 0x0

    .line 291
    .local v3, nonletter:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_7

    .line 292
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 294
    .local v0, c:C
    const/16 v6, 0x20

    if-le v0, v6, :cond_2

    const/16 v6, 0x7f

    if-le v0, v6, :cond_3

    .line 295
    :cond_2
    const v6, 0x7f0b016d

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 297
    :cond_3
    const/16 v6, 0x30

    if-lt v0, v6, :cond_4

    const/16 v6, 0x39

    if-gt v0, v6, :cond_4

    .line 298
    add-int/lit8 v4, v4, 0x1

    .line 299
    add-int/lit8 v3, v3, 0x1

    .line 291
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 300
    :cond_4
    const/16 v6, 0x41

    if-lt v0, v6, :cond_5

    const/16 v6, 0x5a

    if-gt v0, v6, :cond_5

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 302
    :cond_5
    const/16 v6, 0x61

    if-lt v0, v6, :cond_6

    const/16 v6, 0x7a

    if-gt v0, v6, :cond_6

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 305
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 309
    .end local v0           #c:C
    :cond_7
    const/high16 v6, 0x2

    iget v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    if-ne v6, v7, :cond_9

    if-gtz v2, :cond_8

    if-lez v5, :cond_9

    .line 313
    :cond_8
    const v6, 0x7f0b016b

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 316
    :cond_9
    iget-object v6, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 317
    const v6, 0x7f0b016c

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 319
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->ConfirmWrong:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 427
    sget-object v0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iput-object v0, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    .line 429
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateUi()V

    .line 430
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 434
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 258
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 259
    packed-switch p1, :pswitch_data_0

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 261
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 263
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 374
    :goto_0
    return-void

    .line 366
    :sswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->handleNext()V

    goto :goto_0

    .line 370
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 364
    :sswitch_data_0
    .sparse-switch
        0x7f080009 -> :sswitch_0
        0x7f080019 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 163
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 164
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 166
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    .line 167
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    .line 168
    const-string v1, "firstlock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockString:Ljava/lang/String;

    .line 169
    const-string v1, "lockscreen.password_min"

    iget v2, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    .line 170
    const-string v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    .line 172
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    .line 174
    new-instance v1, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    .line 175
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 181
    const v7, 0x7f040018

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 183
    .local v6, view:Landroid/view/View;
    const v7, 0x7f080019

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mCancelButton:Landroid/widget/Button;

    .line 184
    iget-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v7, 0x7f080009

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    .line 187
    iget-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v7, 0x7f080038

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 191
    const v7, 0x7f080036

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 192
    iget-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 193
    iget-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 196
    .local v0, activity:Landroid/app/Activity;
    new-instance v7, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v8, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v9, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v7, v0, v8, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 198
    iget-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 200
    const v7, 0x7f080034

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    .line 201
    const v7, 0x7f080037

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    .line 202
    iget-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v7}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 204
    iget-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v8, 0x12

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 205
    iget-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setCursorColor(I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 209
    .local v2, intent:Landroid/content/Intent;
    if-nez p3, :cond_2

    .line 210
    sget-object v7, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    .line 221
    :cond_0
    :goto_0
    instance-of v7, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v7, :cond_1

    move-object v3, v0

    .line 222
    check-cast v3, Lmiui/preference/BasePreferenceActivity;

    .line 223
    .local v3, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    const v1, 0x7f0b094b

    .line 224
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 225
    .local v5, title:Ljava/lang/CharSequence;
    invoke-virtual {v3, v5, v5}, Lmiui/preference/BasePreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 228
    .end local v1           #id:I
    .end local v3           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_1
    return-object v6

    .line 213
    :cond_2
    const-string v7, "first_pin"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    .line 214
    const-string v7, "ui_stage"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, state:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 216
    invoke-static {v4}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    .line 217
    iget-object v7, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 385
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 388
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->handleNext()V

    .line 389
    const/4 v0, 0x1

    .line 391
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 246
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 235
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    .line 236
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 238
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v1, 0x7f0b08f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 239
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 251
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 438
    return-void
.end method

.method protected updateStage(Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V
    .locals 0
    .parameter "stage"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    .line 271
    invoke-direct {p0}, Lcom/android/OriginalSettings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateUi()V

    .line 272
    return-void
.end method
