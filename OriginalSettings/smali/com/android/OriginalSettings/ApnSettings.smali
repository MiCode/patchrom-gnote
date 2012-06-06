.class public Lcom/android/OriginalSettings/ApnSettings;
.super Lmiui/preference/BasePreferenceActivity;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/ApnSettings$2;,
        Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;

.field private mSelectedKey:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 86
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 99
    new-instance v0, Lcom/android/OriginalSettings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/ApnSettings$1;-><init>(Lcom/android/OriginalSettings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 390
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-static {p0}, Lcom/android/OriginalSettings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    sput-boolean p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/ApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/OriginalSettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private addNewApn()V
    .locals 3

    .prologue
    .line 309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 310
    return-void
.end method

.method private fillList()V
    .locals 19

    .prologue
    .line 172
    const/4 v4, 0x0

    .line 174
    .local v4, where:Ljava/lang/String;
    const-string v1, "XEC"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    const-string v1, "ApnSettings"

    const-string v2, "Telefonica operator implementation request"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v4, "numeric=\"21407\""

    .line 194
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "apn"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "type"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const-string v6, "name ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 199
    .local v9, cursor:Landroid/database/Cursor;
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 200
    .local v16, salesCode:Ljava/lang/String;
    const-string v1, "DCM"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "apn"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "type"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const-string v6, "_id asc"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 206
    :cond_0
    const-string v1, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 207
    .local v8, apnList:Landroid/preference/PreferenceGroup;
    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 209
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v12, mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/OriginalSettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 212
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 213
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_9

    .line 214
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 215
    .local v13, name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, apn:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 225
    .local v11, key:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 227
    .local v18, type:Ljava/lang/String;
    const-string v1, "ATT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "broadband"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "TMB"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "pcweb.tmobile.com"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 230
    :cond_2
    const-string v1, "ApnSettings"

    const-string v2, "tethering apn is not added"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 189
    .end local v7           #apn:Ljava/lang/String;
    .end local v8           #apnList:Landroid/preference/PreferenceGroup;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #key:Ljava/lang/String;
    .end local v12           #mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v13           #name:Ljava/lang/String;
    .end local v16           #salesCode:Ljava/lang/String;
    .end local v18           #type:Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 243
    .restart local v7       #apn:Ljava/lang/String;
    .restart local v8       #apnList:Landroid/preference/PreferenceGroup;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v11       #key:Ljava/lang/String;
    .restart local v12       #mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .restart local v13       #name:Ljava/lang/String;
    .restart local v16       #salesCode:Ljava/lang/String;
    .restart local v18       #type:Ljava/lang/String;
    :cond_4
    new-instance v14, Lcom/android/OriginalSettings/ApnPreference;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/OriginalSettings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 245
    .local v14, pref:Lcom/android/OriginalSettings/ApnPreference;
    invoke-virtual {v14, v11}, Lcom/android/OriginalSettings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v14, v13}, Lcom/android/OriginalSettings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 247
    invoke-virtual {v14, v7}, Lcom/android/OriginalSettings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 248
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lcom/android/OriginalSettings/ApnPreference;->setPersistent(Z)V

    .line 249
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/OriginalSettings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 251
    if-eqz v18, :cond_5

    const-string v1, "mms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "dun"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_5
    const/16 v17, 0x1

    .line 253
    .local v17, selectable:Z
    :goto_2
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/OriginalSettings/ApnPreference;->setSelectable(Z)V

    .line 254
    if-eqz v17, :cond_8

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 256
    invoke-virtual {v14}, Lcom/android/OriginalSettings/ApnPreference;->setChecked()V

    .line 258
    :cond_6
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 262
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 251
    .end local v17           #selectable:Z
    :cond_7
    const/16 v17, 0x0

    goto :goto_2

    .line 260
    .restart local v17       #selectable:Z
    :cond_8
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 264
    .end local v7           #apn:Ljava/lang/String;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #pref:Lcom/android/OriginalSettings/ApnPreference;
    .end local v17           #selectable:Z
    .end local v18           #type:Ljava/lang/String;
    :cond_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 266
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/preference/Preference;

    .line 267
    .local v15, preference:Landroid/preference/Preference;
    invoke-virtual {v8, v15}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 269
    .end local v15           #preference:Landroid/preference/Preference;
    :cond_a
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 2
    .parameter

    .prologue
    .line 128
    const-string v0, "state"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    const-class v1, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone$DataState;

    .line 132
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 338
    const/4 v7, 0x0

    .line 340
    .local v7, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/OriginalSettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 342
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 343
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 344
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 346
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 347
    return-object v7
.end method

.method private isTetheringEnabled(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    .line 434
    const/4 v12, 0x0

    .line 435
    .local v12, usbTethered:Z
    const-string v13, "connectivity"

    invoke-virtual {p1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 436
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v11

    .line 437
    .local v11, tethered:[Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v7

    .line 438
    .local v7, mUsbRegexs:[Ljava/lang/String;
    move-object v0, v11

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v8, v0, v4

    .local v8, o:Ljava/lang/String;
    move-object v10, v8

    .line 439
    check-cast v10, Ljava/lang/String;

    .line 440
    .local v10, s:Ljava/lang/String;
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v9, v1, v3

    .line 441
    .local v9, regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x1

    .line 440
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 438
    .end local v9           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_0

    .line 444
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #o:Ljava/lang/String;
    .end local v10           #s:Ljava/lang/String;
    :cond_2
    return v12
.end method

.method private restoreDefaultApn()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 351
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnSettings;->showDialog(I)V

    .line 352
    sput-boolean v4, Lcom/android/OriginalSettings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 354
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;

    if-nez v1, :cond_0

    .line 355
    new-instance v1, Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/OriginalSettings/ApnSettings;Lcom/android/OriginalSettings/ApnSettings$1;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;

    if-nez v1, :cond_1

    .line 359
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, restoreDefaultApnThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 362
    new-instance v1, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/OriginalSettings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;

    .line 366
    .end local v0           #restoreDefaultApnThread:Landroid/os/HandlerThread;
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v1, v4}, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 368
    return v4
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 329
    iput-object p1, p0, Lcom/android/OriginalSettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 330
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 332
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 333
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/OriginalSettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    sget-object v2, Lcom/android/OriginalSettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 335
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 138
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ApnSettings;->addPreferencesFromResource(I)V

    .line 141
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 148
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 417
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 418
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 419
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 420
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 423
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 275
    .local v0, context:Landroid/content/Context;
    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/OriginalSettings/ApnSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 276
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, salesCode:Ljava/lang/String;
    const-string v2, "DCM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/OriginalSettings/ApnSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/ApnSettings;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 291
    :goto_0
    return v2

    .line 284
    :cond_1
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 285
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b039d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v4, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v5, 0x1080033

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 288
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b03a6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v2, v3, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x1080055

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v2, v4

    .line 291
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 296
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 305
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 298
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 302
    :pswitch_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onPause()V

    .line 168
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ApnSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 321
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 322
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 325
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 314
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 315
    .local v0, pos:I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 316
    .local v1, url:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 317
    const/4 v2, 0x1

    return v2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 428
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 431
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/ApnSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    sget-boolean v0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnSettings;->fillList()V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ApnSettings;->showDialog(I)V

    goto :goto_0
.end method
