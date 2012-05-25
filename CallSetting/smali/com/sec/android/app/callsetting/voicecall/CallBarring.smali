.class public Lcom/sec/android/app/callsetting/voicecall/CallBarring;
.super Landroid/preference/PreferenceActivity;
.source "CallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/callsetting/voicecall/CallBarring$13;,
        Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;
    }
.end annotation


# instance fields
.field private callbarring_password:Ljava/lang/String;

.field doActivate:Ljava/lang/Runnable;

.field doCheckStatus:Ljava/lang/Runnable;

.field doConfirm:Ljava/lang/Runnable;

.field doDeactivate:Ljava/lang/Runnable;

.field editText:Landroid/widget/EditText;

.field factory:Landroid/view/LayoutInflater;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mAppState:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

.field private mCBVisible:Z

.field private mCB_Checked:Z

.field private mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

.field private mCheckAllCB:Z

.field private mConfirmPassword:Landroid/widget/EditText;

.field private mInputPassword:Landroid/widget/EditText;

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mNewPassword:Landroid/widget/EditText;

.field private mOldPassword:Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevBusyDialog:I

.field private mPwdChangeSubmit:Z

.field private mSelectedIndex:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSkipCallBarringReq:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field responseCBHandler:Landroid/os/Handler;

.field textEntryView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    .line 163
    iput v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    .line 164
    iput-boolean v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCB_Checked:Z

    .line 177
    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mInputPassword:Landroid/widget/EditText;

    .line 178
    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mOldPassword:Landroid/widget/EditText;

    .line 179
    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mNewPassword:Landroid/widget/EditText;

    .line 180
    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    .line 181
    iput-boolean v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPwdChangeSubmit:Z

    .line 189
    iput-boolean v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSkipCallBarringReq:Z

    .line 190
    iput-boolean v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCheckAllCB:Z

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCBVisible:Z

    .line 767
    new-instance v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring$10;-><init>(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->responseCBHandler:Landroid/os/Handler;

    .line 1136
    new-instance v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring$11;-><init>(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    .line 1281
    new-instance v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring$12;-><init>(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->callbarring_password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->callbarring_password:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/callsetting/voicecall/CallBarring;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->changePasswordCallBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCB_Checked:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Landroid/os/AsyncResult;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->handleSetCBMessage(Landroid/os/AsyncResult;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Landroid/os/AsyncResult;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->handleQueryCBMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCheckAllCB:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCheckAllCB:Z

    return p1
.end method

.method static synthetic access$1900(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-static {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSkipCallBarringReq:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->dismissCallWaiting()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/callsetting/voicecall/CallBarring;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$308(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/callsetting/voicecall/CallBarring;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setCallBarring(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getCallBarring()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mOldPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mNewPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private changePasswordCallBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1309
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_2

    .line 1315
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;)V

    .line 1317
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changePasswordCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    if-nez v0, :cond_0

    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_IN_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->requestCBChangePassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    :goto_0
    return-void

    .line 1326
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_POWER_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const-string v0, "onCreate: radio not ready, waiting for signal."

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 1329
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 1332
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_EXCEPTION"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;I)V

    goto :goto_0

    .line 1336
    :cond_2
    const-string v0, "setDisplayMode: radio is off!"

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 1337
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;I)V

    goto :goto_0
.end method

.method private checkPassword(Landroid/app/Dialog;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    .line 1350
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mOldPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1351
    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1352
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1354
    const-class v3, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[##### View l_oldPasswordStr #####] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    const-class v3, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[##### View l_newPasswordStr #####] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    const-class v3, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[##### View l_confirmPasswordStr #####] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_1

    .line 1362
    :cond_0
    const v0, 0x7f0700a6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1382
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->showError(Landroid/app/Dialog;Ljava/lang/String;)V

    .line 1383
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1363
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_3

    .line 1365
    :cond_2
    const v0, 0x7f0700a7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1366
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_5

    .line 1368
    :cond_4
    const v0, 0x7f0700a8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1370
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1372
    const v0, 0x7f0700aa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1375
    :cond_6
    const v0, 0x7f0700ad

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getString(I)Ljava/lang/String;

    .line 1376
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->doConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1377
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private deleteBusyDialog()V
    .locals 3

    .prologue
    .line 1272
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCheckAllCB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCheckAllCB:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSelectedIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPrevBusyDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPrevBusyDialog:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCheckAllCB:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1279
    :goto_0
    return-void

    .line 1277
    :cond_0
    iget v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPrevBusyDialog:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->removeDialog(I)V

    goto :goto_0
.end method

.method private dismissCallWaiting()V
    .locals 1

    .prologue
    .line 1266
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;)V

    .line 1268
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->finish()V

    .line 1269
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1478
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1479
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1480
    return-void
.end method

.method private getCallBarring()V
    .locals 4

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_2

    .line 620
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->INITIAL_QUERY:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;)V

    .line 622
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    if-nez v0, :cond_0

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_IN_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->requestCBQueryCommand()V

    .line 643
    :goto_0
    return-void

    .line 630
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_POWER_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const-string v0, "onCreate: radio not ready, waiting for signal."

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 636
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_EXCEPTION"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;I)V

    goto :goto_0

    .line 640
    :cond_2
    const-string v0, "setDisplayMode: radio is off!"

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 641
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;I)V

    goto :goto_0
.end method

.method private handleQueryCBMessage(Landroid/os/AsyncResult;)I
    .locals 10
    .parameter "ar"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/16 v4, 0xc8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 846
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 847
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleQueryCBMessage() ar:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 849
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1

    .line 850
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 851
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v3, :cond_0

    .line 852
    const-string v3, "## CallBarring ##"

    const-string v4, "CommandExceptionError = FDN"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/16 v3, 0x384

    .line 924
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    return v3

    .line 856
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    const-string v3, "## CallBarring ##"

    const-string v5, "CommandExceptionError = EXCEPTION"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    move v3, v4

    .line 858
    goto :goto_0

    .line 860
    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    .line 862
    .local v2, ints:[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleQueryCBMessage() ints.length:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedItem = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 868
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 869
    const-string v3, "ints["

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "]:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aget v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 868
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 873
    :cond_3
    array-length v3, v2

    if-eqz v3, :cond_d

    .line 874
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleQueryCBMessage() ints[0]:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v5, v2, v7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 875
    aget v3, v2, v7

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_8

    .line 877
    iget-boolean v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCheckAllCB:Z

    if-nez v3, :cond_4

    const v3, 0x7f07009a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->displayToast(Ljava/lang/String;)V

    .line 879
    :cond_4
    iget v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    if-nez v3, :cond_5

    .line 880
    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 881
    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 884
    :cond_5
    iget v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    if-ne v3, v9, :cond_6

    .line 885
    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 888
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 890
    iput-boolean v6, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSkipCallBarringReq:Z

    .line 891
    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 924
    :cond_7
    :goto_2
    const/16 v3, 0x64

    goto/16 :goto_0

    .line 895
    :cond_8
    aget v3, v2, v7

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c

    .line 898
    iget-boolean v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCheckAllCB:Z

    if-nez v3, :cond_9

    const v3, 0x7f070099

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->displayToast(Ljava/lang/String;)V

    .line 900
    :cond_9
    iget v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    if-nez v3, :cond_a

    .line 901
    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 902
    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 905
    :cond_a
    iget v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    if-ne v3, v9, :cond_b

    .line 906
    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 909
    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_7

    .line 911
    iput-boolean v6, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSkipCallBarringReq:Z

    .line 912
    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_c
    move v3, v4

    .line 917
    goto/16 :goto_0

    :cond_d
    move v3, v4

    .line 920
    goto/16 :goto_0
.end method

.method private handleSetCBMessage(Landroid/os/AsyncResult;I)I
    .locals 4
    .parameter "ar"
    .parameter "arg1"

    .prologue
    const/16 v2, 0xc8

    const/16 v1, 0x64

    .line 928
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCBMessage() ar:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 931
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_2

    .line 932
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 933
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    .line 935
    const/16 v1, 0x190

    .line 977
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    return v1

    .line 936
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_1

    .line 937
    const-string v1, "SIM_PUK2"

    invoke-direct {p0, v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->displayToast(Ljava/lang/String;)V

    move v1, v2

    .line 938
    goto :goto_0

    .line 940
    :cond_1
    iget v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 953
    goto :goto_0

    .line 947
    :pswitch_0
    const/16 v1, 0x258

    goto :goto_0

    .line 950
    :pswitch_1
    const/16 v1, 0x1f4

    goto :goto_0

    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    move v1, v2

    .line 958
    goto :goto_0

    .line 960
    :cond_3
    if-nez p2, :cond_5

    .line 962
    const-string v2, "handleSetCBMessage() has been processed ACTIVATE"

    invoke-static {v2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 974
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->requestCBQueryCommand()V

    goto :goto_0

    .line 963
    :cond_5
    const/4 v2, 0x1

    if-ne p2, v2, :cond_6

    .line 964
    const-string v2, "handleSetCBMessage() has been processed DEACTIVATE"

    invoke-static {v2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 965
    :cond_6
    const/4 v2, 0x2

    if-ne p2, v2, :cond_7

    .line 966
    const-string v2, "handleSetCBMessage() has been processed CANCELALL"

    invoke-static {v2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 968
    :cond_7
    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    .line 969
    const-string v2, "handleSetCBMessage() has been processed CONFIRM"

    invoke-static {v2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 970
    const v2, 0x7f0700a9

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->displayToast(Ljava/lang/String;)V

    goto :goto_0

    .line 940
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1475
    const-string v0, "## CallBarring ##"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    return-void
.end method

.method private requestCBChangePassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "process"
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "confirmPassword"

    .prologue
    .line 1304
    const-string v1, "AB"

    .line 1305
    .local v1, facility:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    .line 1306
    return-void
.end method

.method private requestCBQueryCommand()V
    .locals 5

    .prologue
    .line 735
    const-string v0, "AO"

    .line 737
    .local v0, facility:Ljava/lang/String;
    iget v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    packed-switch v1, :pswitch_data_0

    .line 763
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    .line 764
    return-void

    .line 739
    :pswitch_0
    const-string v0, "AO"

    .line 740
    goto :goto_0

    .line 743
    :pswitch_1
    const-string v0, "OI"

    .line 744
    goto :goto_0

    .line 747
    :pswitch_2
    const-string v0, "OX"

    .line 748
    goto :goto_0

    .line 751
    :pswitch_3
    const-string v0, "AI"

    .line 752
    goto :goto_0

    .line 755
    :pswitch_4
    const-string v0, "IR"

    .line 756
    goto :goto_0

    .line 759
    :pswitch_5
    const-string v0, "AB"

    goto :goto_0

    .line 737
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private requestCBSetCommand(I)V
    .locals 8
    .parameter "process"

    .prologue
    .line 681
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->callbarring_password:Ljava/lang/String;

    .line 682
    .local v2, password:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 684
    const-string v2, ""

    .line 687
    :cond_0
    const-string v1, "AO"

    .line 688
    .local v1, facility:Ljava/lang/String;
    const/4 v0, 0x0

    .line 690
    .local v0, bActivate:Z
    packed-switch p1, :pswitch_data_0

    .line 702
    const-string v3, "requestCBSetCommand (process) Exception!"

    invoke-static {v3}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 706
    :goto_0
    iget v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    packed-switch v3, :pswitch_data_1

    .line 731
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, p1, v6, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v0, v1, v2, v4}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    .line 732
    return-void

    .line 692
    :pswitch_0
    const/4 v0, 0x1

    .line 693
    goto :goto_0

    .line 695
    :pswitch_1
    const/4 v0, 0x0

    .line 696
    goto :goto_0

    .line 698
    :pswitch_2
    const/4 v0, 0x0

    .line 699
    goto :goto_0

    .line 708
    :pswitch_3
    const-string v1, "AO"

    .line 709
    goto :goto_1

    .line 712
    :pswitch_4
    const-string v1, "OI"

    .line 713
    goto :goto_1

    .line 716
    :pswitch_5
    const-string v1, "OX"

    .line 717
    goto :goto_1

    .line 720
    :pswitch_6
    const-string v1, "AI"

    .line 721
    goto :goto_1

    .line 724
    :pswitch_7
    const-string v1, "IR"

    .line 725
    goto :goto_1

    .line 727
    :pswitch_8
    const-string v1, "AB"

    goto :goto_1

    .line 690
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 706
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;)V
    .locals 2
    .parameter "requestedState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 982
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    if-ne p1, v0, :cond_0

    .line 983
    const-string v0, "setAppState: illegal error state without reason."

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 984
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 986
    :cond_0
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;I)V

    .line 987
    return-void
.end method

.method private setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;I)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1f4

    const/16 v6, 0x12c

    const/16 v5, 0xc8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAppState() mAppState:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mAppState:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ,requestedState:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",msgStatus:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mAppState:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    if-ne p1, v0, :cond_0

    .line 998
    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 1123
    :goto_0
    return-void

    .line 1004
    :cond_0
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    if-ne p1, v0, :cond_6

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCBVisible : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCBVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 1007
    iget-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCBVisible:Z

    if-eqz v0, :cond_4

    .line 1008
    sparse-switch p2, :sswitch_data_0

    .line 1058
    :goto_1
    iget v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 1059
    iget-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCheckAllCB:Z

    if-nez v0, :cond_1

    .line 1060
    iput-boolean v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSkipCallBarringReq:Z

    .line 1061
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1064
    :cond_1
    if-eq p2, v5, :cond_2

    const/16 v0, 0x320

    if-eq p2, v0, :cond_2

    if-eq p2, v6, :cond_2

    if-eq p2, v7, :cond_2

    const/16 v0, 0x384

    if-ne p2, v0, :cond_3

    .line 1068
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1072
    :cond_3
    iput-object p1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mAppState:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    goto/16 :goto_0

    .line 1010
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->deleteBusyDialog()V

    .line 1012
    invoke-virtual {p0, v5}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->showDialog(I)V

    goto :goto_1

    .line 1016
    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->showDialog(I)V

    goto :goto_1

    .line 1020
    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->deleteBusyDialog()V

    .line 1022
    invoke-virtual {p0, v6}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->showDialog(I)V

    goto :goto_1

    .line 1026
    :sswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->deleteBusyDialog()V

    .line 1028
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->showDialog(I)V

    goto :goto_1

    .line 1032
    :sswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->deleteBusyDialog()V

    .line 1034
    invoke-virtual {p0, v7}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->showDialog(I)V

    goto :goto_1

    .line 1038
    :sswitch_5
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->deleteBusyDialog()V

    .line 1040
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->showDialog(I)V

    goto :goto_1

    .line 1044
    :sswitch_6
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->deleteBusyDialog()V

    .line 1046
    const/16 v0, 0x2bc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->showDialog(I)V

    goto/16 :goto_1

    .line 1054
    :cond_4
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCBVisible : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCBVisible:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " so, skip displaying dialog"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->deleteBusyDialog()V

    goto/16 :goto_1

    :cond_5
    move v1, v3

    .line 1061
    goto :goto_2

    .line 1076
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mAppState:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 1078
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$13;->$SwitchMap$com$sec$android$app$callsetting$voicecall$CallBarring$AppState:[I

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mAppState:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    invoke-virtual {v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1122
    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mAppState:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    goto/16 :goto_0

    .line 1082
    :pswitch_0
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    if-eq p1, v0, :cond_7

    .line 1083
    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 1084
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1089
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 1091
    iget-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCBVisible:Z

    if-eqz v0, :cond_9

    .line 1092
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->INITIAL_QUERY:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    if-ne p1, v0, :cond_8

    .line 1093
    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->showDialog(I)V

    goto :goto_3

    .line 1094
    :cond_8
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    if-ne p1, v0, :cond_7

    .line 1095
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->showDialog(I)V

    goto :goto_3

    .line 1099
    :cond_9
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCBVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCBVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so, skip displaying dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1104
    :pswitch_2
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    if-eq p1, v0, :cond_a

    .line 1105
    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 1106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1110
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->deleteBusyDialog()V

    goto :goto_3

    .line 1113
    :pswitch_3
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    if-eq p1, v0, :cond_b

    .line 1114
    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 1115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1119
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->deleteBusyDialog()V

    goto/16 :goto_3

    .line 1008
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
        0x320 -> :sswitch_1
        0x384 -> :sswitch_6
    .end sparse-switch

    .line 1078
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setCallBarring(I)V
    .locals 4
    .parameter

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_2

    .line 653
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;)V

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    if-nez v0, :cond_0

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_IN_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->requestCBSetCommand(I)V

    .line 676
    :goto_0
    return-void

    .line 663
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_POWER_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const-string v0, "onCreate: radio not ready, waiting for signal."

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 669
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_EXCEPTION"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;I)V

    goto :goto_0

    .line 673
    :cond_2
    const-string v0, "setDisplayMode: radio is off!"

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V

    .line 674
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;I)V

    goto :goto_0
.end method

.method private showError(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1342
    const v0, 0x7f080020

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1343
    if-eqz v0, :cond_0

    .line 1344
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1345
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1347
    :cond_0
    return-void
.end method

.method private showPasswordDialog()V
    .locals 3

    .prologue
    .line 1401
    const v0, 0x7f030008

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1411
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0700c8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1418
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1432
    const v0, 0x7f080022

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mOldPassword:Landroid/widget/EditText;

    .line 1433
    const v0, 0x7f080023

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mNewPassword:Landroid/widget/EditText;

    .line 1434
    const v0, 0x7f080024

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    .line 1436
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    .line 1437
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->setAppState(Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;)V

    .line 1439
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1440
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 1387
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPwdChangeSubmit:Z

    .line 1388
    return-void

    .line 1387
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f040004

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 214
    const-string v2, "callbarring_baoc_pref"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

    .line 215
    const-string v2, "callbarring_baoic_pref"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

    .line 216
    const-string v2, "callbarring_baoicxh_pref"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

    .line 217
    const-string v2, "callbarring_baic_pref"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

    .line 218
    const-string v2, "callbarring_baicr_pref"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

    .line 220
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->factory:Landroid/view/LayoutInflater;

    .line 227
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->factory:Landroid/view/LayoutInflater;

    const/high16 v3, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->textEntryView:Landroid/view/View;

    .line 228
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->textEntryView:Landroid/view/View;

    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->editText:Landroid/widget/EditText;

    .line 230
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 233
    new-instance v2, Lcom/sec/android/app/callsetting/voicecall/CallBarring$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring$1;-><init>(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V

    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->doActivate:Ljava/lang/Runnable;

    .line 251
    new-instance v2, Lcom/sec/android/app/callsetting/voicecall/CallBarring$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring$2;-><init>(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V

    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->doDeactivate:Ljava/lang/Runnable;

    .line 268
    new-instance v2, Lcom/sec/android/app/callsetting/voicecall/CallBarring$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring$3;-><init>(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V

    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->doCheckStatus:Ljava/lang/Runnable;

    .line 274
    new-instance v2, Lcom/sec/android/app/callsetting/voicecall/CallBarring$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring$4;-><init>(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V

    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->doConfirm:Ljava/lang/Runnable;

    .line 285
    sget-object v2, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mAppState:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    .line 286
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 288
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 290
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 293
    :cond_1
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->showDialog(I)V

    .line 294
    const-string v2, "CallBarring"

    const-string v3, "skip set or get CallBarring"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 297
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    .end local v1           #i:I
    :cond_2
    iput-boolean v5, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCheckAllCB:Z

    .line 302
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getCallBarring()V

    .line 304
    :cond_3
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const v7, 0x7f0700ad

    const/4 v8, 0x1

    .line 409
    sparse-switch p1, :sswitch_data_0

    .line 544
    const v4, 0x7f0700a3

    .line 545
    .local v4, msgId:I
    const v5, 0x7f070087

    .line 546
    .local v5, titleId:I
    packed-switch p1, :pswitch_data_0

    .line 551
    :goto_0
    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->displayToast(Ljava/lang/String;)V

    .line 555
    .end local v4           #msgId:I
    .end local v5           #titleId:I
    :goto_1
    const/4 v1, 0x0

    :goto_2
    return-object v1

    .line 413
    :sswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 414
    .local v0, BADialog:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0700c6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 415
    iget-object v6, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->textEntryView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 417
    new-instance v6, Lcom/sec/android/app/callsetting/voicecall/CallBarring$6;

    invoke-direct {v6, p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring$6;-><init>(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 430
    const v6, 0x7f0700ae

    new-instance v7, Lcom/sec/android/app/callsetting/voicecall/CallBarring$7;

    invoke-direct {v7, p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring$7;-><init>(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 439
    new-instance v6, Lcom/sec/android/app/callsetting/voicecall/CallBarring$8;

    invoke-direct {v6, p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring$8;-><init>(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 447
    iget-object v6, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 449
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_2

    .line 454
    .end local v0           #BADialog:Landroid/app/AlertDialog$Builder;
    :sswitch_1
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 455
    .local v1, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 457
    iput p1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPrevBusyDialog:I

    .line 459
    sparse-switch p1, :sswitch_data_1

    goto :goto_1

    .line 461
    :sswitch_2
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 462
    const v6, 0x7f0700bb

    invoke-virtual {p0, v6}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 466
    :sswitch_3
    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 467
    const v6, 0x7f0700ba

    invoke-virtual {p0, v6}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v6, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v7, 0x258

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    goto :goto_2

    .line 484
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :sswitch_4
    const v5, 0x7f0700b9

    .line 485
    .restart local v5       #titleId:I
    const/4 v3, 0x0

    .line 486
    .local v3, isFDN:Z
    sparse-switch p1, :sswitch_data_2

    .line 514
    const v4, 0x7f0700bd

    .line 518
    .restart local v4       #msgId:I
    :goto_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 519
    .local v2, err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 520
    invoke-virtual {p0, v5}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 522
    if-eqz v3, :cond_0

    .line 523
    const v6, 0x108009b

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 528
    :goto_4
    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 529
    invoke-virtual {p0, v7}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/callsetting/voicecall/CallBarring$9;

    invoke-direct {v7, p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring$9;-><init>(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 537
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 539
    .local v1, dialog:Landroid/app/AlertDialog;
    goto/16 :goto_2

    .line 488
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #err_builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #msgId:I
    :sswitch_5
    const v4, 0x7f0700bc

    .line 489
    .restart local v4       #msgId:I
    goto :goto_3

    .line 492
    .end local v4           #msgId:I
    :sswitch_6
    const v4, 0x7f0700be

    .line 493
    .restart local v4       #msgId:I
    goto :goto_3

    .line 496
    .end local v4           #msgId:I
    :sswitch_7
    const v4, 0x7f0700a3

    .line 497
    .restart local v4       #msgId:I
    goto :goto_3

    .line 500
    .end local v4           #msgId:I
    :sswitch_8
    const v4, 0x7f0700a4

    .line 501
    .restart local v4       #msgId:I
    goto :goto_3

    .line 504
    .end local v4           #msgId:I
    :sswitch_9
    const v4, 0x7f0700a5

    .line 505
    .restart local v4       #msgId:I
    goto :goto_3

    .line 508
    .end local v4           #msgId:I
    :sswitch_a
    const/4 v3, 0x1

    .line 509
    const v5, 0x7f0700e0

    .line 510
    const v4, 0x7f070096

    .line 511
    .restart local v4       #msgId:I
    goto :goto_3

    .line 525
    .restart local v2       #err_builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    const v6, 0x1080027

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 548
    .end local v2           #err_builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #isFDN:Z
    :pswitch_0
    const v4, 0x7f0700a3

    goto/16 :goto_0

    .line 409
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_4
        0x12c -> :sswitch_4
        0x190 -> :sswitch_4
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_4
        0x320 -> :sswitch_4
        0x384 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch

    .line 546
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch

    .line 459
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_2
        0x384 -> :sswitch_3
    .end sparse-switch

    .line 486
    :sswitch_data_2
    .sparse-switch
        0x12c -> :sswitch_5
        0x190 -> :sswitch_7
        0x1f4 -> :sswitch_8
        0x258 -> :sswitch_9
        0x2bc -> :sswitch_a
        0x320 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1287
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1288
    const v0, 0x7f0700c8

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1299
    return v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1391
    iget-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPwdChangeSubmit:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPwdChangeSubmit:Z

    move-object v0, p1

    .line 1393
    check-cast v0, Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->checkPassword(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1394
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1398
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1444
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1446
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1471
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1449
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1450
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallTypeSelect"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1451
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1452
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1453
    const-string v2, "SS_Type"

    const-string v3, "barring"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1454
    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->startActivity(Landroid/content/Intent;)V

    .line 1455
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->finish()V

    goto :goto_0

    .line 1468
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->showPasswordDialog()V

    goto :goto_0

    .line 1446
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 326
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 330
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCBVisible:Z

    .line 318
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 347
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========== onSharedPreferenceChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    const-string v1, "callbarring_baoc_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 352
    .local v0, isChecked:Z
    iput v4, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    .line 353
    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCB_Checked:Z

    .line 356
    .end local v0           #isChecked:Z
    :cond_0
    const-string v1, "callbarring_baoic_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 359
    .restart local v0       #isChecked:Z
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    .line 360
    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCB_Checked:Z

    .line 363
    .end local v0           #isChecked:Z
    :cond_1
    const-string v1, "callbarring_baoicxh_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 365
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 366
    .restart local v0       #isChecked:Z
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    .line 367
    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCB_Checked:Z

    .line 370
    .end local v0           #isChecked:Z
    :cond_2
    const-string v1, "callbarring_baic_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 372
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 373
    .restart local v0       #isChecked:Z
    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    .line 374
    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCB_Checked:Z

    .line 377
    .end local v0           #isChecked:Z
    :cond_3
    const-string v1, "callbarring_baicr_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 379
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 380
    .restart local v0       #isChecked:Z
    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSelectedIndex:I

    .line 381
    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCB_Checked:Z

    .line 384
    .end local v0           #isChecked:Z
    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSkipCallBarringReq:Z

    if-eqz v1, :cond_5

    .line 386
    iput-boolean v4, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mSkipCallBarringReq:Z

    .line 403
    :goto_0
    return-void

    .line 390
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->editText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->editText:Landroid/widget/EditText;

    const v2, 0x7f0700c7

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 393
    sget-object v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mAppState:Lcom/sec/android/app/callsetting/voicecall/CallBarring$AppState;

    .line 394
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->showDialog(I)V

    .line 396
    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/callsetting/voicecall/CallBarring$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring$5;-><init>(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 333
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mCBVisible:Z

    .line 336
    return-void
.end method
