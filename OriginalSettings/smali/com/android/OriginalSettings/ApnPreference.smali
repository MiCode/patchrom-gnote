.class public Lcom/android/OriginalSettings/ApnPreference;
.super Landroid/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    sput-object v0, Lcom/android/OriginalSettings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 75
    sput-object v0, Lcom/android/OriginalSettings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/ApnPreference;->mSelectable:Z

    .line 71
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnPreference;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/ApnPreference;->mSelectable:Z

    .line 63
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnPreference;->init()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/ApnPreference;->mSelectable:Z

    .line 54
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnPreference;->init()V

    .line 55
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 127
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ApnPreference;->setLayoutResource(I)V

    .line 128
    return-void
.end method

.method private isTetheringEnabled(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    .line 197
    const/4 v12, 0x0

    .line 198
    .local v12, usbTethered:Z
    const-string v13, "connectivity"

    invoke-virtual {p1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 199
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v11

    .line 200
    .local v11, tethered:[Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v7

    .line 201
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

    .line 202
    check-cast v10, Ljava/lang/String;

    .line 203
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

    .line 204
    .local v9, regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x1

    .line 203
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 201
    .end local v9           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_0

    .line 207
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #o:Ljava/lang/String;
    .end local v10           #s:Ljava/lang/String;
    :cond_2
    return v12
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 83
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 85
    .local v5, view:Landroid/view/View;
    const v7, 0x1010001

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 86
    .local v6, widget:Landroid/view/View;
    if-eqz v6, :cond_2

    instance-of v7, v6, Landroid/widget/RadioButton;

    if-eqz v7, :cond_2

    move-object v2, v6

    .line 87
    check-cast v2, Landroid/widget/RadioButton;

    .line 88
    .local v2, rb:Landroid/widget/RadioButton;
    iget-boolean v7, p0, Lcom/android/OriginalSettings/ApnPreference;->mSelectable:Z

    if-eqz v7, :cond_4

    .line 89
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/OriginalSettings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 92
    .local v1, isChecked:Z
    if-eqz v1, :cond_0

    .line 93
    sput-object v2, Lcom/android/OriginalSettings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 94
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/OriginalSettings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 97
    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/OriginalSettings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 98
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 99
    iput-boolean v9, p0, Lcom/android/OriginalSettings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 102
    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, salesCode:Ljava/lang/String;
    const-string v7, "DCM"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    .local v0, context:Landroid/content/Context;
    const-string v7, "wifi"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/OriginalSettings/ApnPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 106
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/ApnPreference;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 109
    :cond_1
    invoke-virtual {v2, v9}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 118
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #isChecked:Z
    .end local v2           #rb:Landroid/widget/RadioButton;
    .end local v3           #salesCode:Ljava/lang/String;
    :cond_2
    :goto_0
    const/high16 v7, 0x101

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 119
    .local v4, textLayout:Landroid/view/View;
    if-eqz v4, :cond_3

    instance-of v7, v4, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_3

    .line 120
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_3
    return-object v5

    .line 114
    .end local v4           #textLayout:Landroid/view/View;
    .restart local v2       #rb:Landroid/widget/RadioButton;
    :cond_4
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 139
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v0, p0, Lcom/android/OriginalSettings/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 144
    :cond_0
    if-eqz p2, :cond_2

    .line 145
    sget-object v0, Lcom/android/OriginalSettings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 146
    sget-object v0, Lcom/android/OriginalSettings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 148
    :cond_1
    sput-object p1, Lcom/android/OriginalSettings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 149
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 150
    sget-object v0, Lcom/android/OriginalSettings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_2
    sput-object v3, Lcom/android/OriginalSettings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 153
    sput-object v3, Lcom/android/OriginalSettings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 158
    if-eqz p1, :cond_0

    const/high16 v4, 0x101

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 160
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 162
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, salesCode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 164
    .local v1, pos:I
    packed-switch v1, :pswitch_data_0

    .line 168
    const-string v4, "DCM"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 169
    const-string v4, "wifi"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/OriginalSettings/ApnPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 170
    iget-object v4, p0, Lcom/android/OriginalSettings/ApnPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #pos:I
    .end local v2           #salesCode:Ljava/lang/String;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 174
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #pos:I
    .restart local v2       #salesCode:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/ApnPreference;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 180
    :cond_2
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v1

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 181
    .local v3, url:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x425
        :pswitch_0
    .end packed-switch
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selectable"

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/OriginalSettings/ApnPreference;->mSelectable:Z

    .line 190
    return-void
.end method
