.class Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;
.super Landroid/widget/BaseAdapter;
.source "UsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/UsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsageStatsAdapter"
.end annotation


# instance fields
.field private mAppLabelComparator:Lcom/android/OriginalSettings/UsageStats$AppNameComparator;

.field private mAppLabelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayOrder:I

.field private mLaunchCountComparator:Lcom/android/OriginalSettings/UsageStats$LaunchCountComparator;

.field private mUsageStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/PkgUsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageTimeComparator:Lcom/android/OriginalSettings/UsageStats$UsageTimeComparator;

.field final synthetic this$0:Lcom/android/OriginalSettings/UsageStats;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/UsageStats;)V
    .locals 11
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 115
    iput-object p1, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->this$0:Lcom/android/OriginalSettings/UsageStats;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 108
    iput v8, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mDisplayOrder:I

    .line 116
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    .line 117
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mAppLabelMap:Ljava/util/HashMap;

    .line 120
    :try_start_0
    #getter for: Lcom/android/OriginalSettings/UsageStats;->mUsageStatsService:Lcom/android/internal/app/IUsageStats;
    invoke-static {p1}, Lcom/android/OriginalSettings/UsageStats;->access$000(Lcom/android/OriginalSettings/UsageStats;)Lcom/android/internal/app/IUsageStats;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/app/IUsageStats;->getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 125
    .local v7, stats:[Lcom/android/internal/os/PkgUsageStats;
    if-nez v7, :cond_0

    .line 145
    .end local v7           #stats:[Lcom/android/internal/os/PkgUsageStats;
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v2

    .line 122
    .local v2, e:Landroid/os/RemoteException;
    const-string v8, "UsageStatsActivity"

    const-string v9, "Failed initializing usage stats service"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v7       #stats:[Lcom/android/internal/os/PkgUsageStats;
    :cond_0
    move-object v1, v7

    .local v1, arr$:[Lcom/android/internal/os/PkgUsageStats;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v6, v1, v3

    .line 129
    .local v6, ps:Lcom/android/internal/os/PkgUsageStats;
    iget-object v8, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :try_start_1
    #getter for: Lcom/android/OriginalSettings/UsageStats;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/OriginalSettings/UsageStats;->access$100(Lcom/android/OriginalSettings/UsageStats;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, v6, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 134
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    #getter for: Lcom/android/OriginalSettings/UsageStats;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/OriginalSettings/UsageStats;->access$100(Lcom/android/OriginalSettings/UsageStats;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 138
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .local v4, label:Ljava/lang/CharSequence;
    :goto_2
    iget-object v8, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mAppLabelMap:Ljava/util/HashMap;

    iget-object v9, v6, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 135
    .end local v4           #label:Ljava/lang/CharSequence;
    :catch_1
    move-exception v2

    .line 136
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v4, v6, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    .restart local v4       #label:Ljava/lang/CharSequence;
    goto :goto_2

    .line 141
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4           #label:Ljava/lang/CharSequence;
    .end local v6           #ps:Lcom/android/internal/os/PkgUsageStats;
    :cond_1
    new-instance v8, Lcom/android/OriginalSettings/UsageStats$LaunchCountComparator;

    invoke-direct {v8}, Lcom/android/OriginalSettings/UsageStats$LaunchCountComparator;-><init>()V

    iput-object v8, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mLaunchCountComparator:Lcom/android/OriginalSettings/UsageStats$LaunchCountComparator;

    .line 142
    new-instance v8, Lcom/android/OriginalSettings/UsageStats$UsageTimeComparator;

    invoke-direct {v8}, Lcom/android/OriginalSettings/UsageStats$UsageTimeComparator;-><init>()V

    iput-object v8, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mUsageTimeComparator:Lcom/android/OriginalSettings/UsageStats$UsageTimeComparator;

    .line 143
    new-instance v8, Lcom/android/OriginalSettings/UsageStats$AppNameComparator;

    iget-object v9, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mAppLabelMap:Ljava/util/HashMap;

    invoke-direct {v8, v9}, Lcom/android/OriginalSettings/UsageStats$AppNameComparator;-><init>(Ljava/util/Map;)V

    iput-object v8, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mAppLabelComparator:Lcom/android/OriginalSettings/UsageStats$AppNameComparator;

    .line 144
    invoke-direct {p0}, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->sortList()V

    goto :goto_0
.end method

.method private sortList()V
    .locals 2

    .prologue
    .line 204
    iget v0, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mDisplayOrder:I

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    iget-object v1, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mUsageTimeComparator:Lcom/android/OriginalSettings/UsageStats$UsageTimeComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 214
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->notifyDataSetChanged()V

    .line 215
    return-void

    .line 207
    :cond_1
    iget v0, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mDisplayOrder:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    iget-object v1, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mLaunchCountComparator:Lcom/android/OriginalSettings/UsageStats$LaunchCountComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 210
    :cond_2
    iget v0, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mDisplayOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    iget-object v1, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mAppLabelComparator:Lcom/android/OriginalSettings/UsageStats$AppNameComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 155
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 166
    if-nez p2, :cond_0

    .line 167
    iget-object v3, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->this$0:Lcom/android/OriginalSettings/UsageStats;

    #getter for: Lcom/android/OriginalSettings/UsageStats;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/OriginalSettings/UsageStats;->access$200(Lcom/android/OriginalSettings/UsageStats;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400a4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 171
    new-instance v0, Lcom/android/OriginalSettings/UsageStats$AppViewHolder;

    invoke-direct {v0}, Lcom/android/OriginalSettings/UsageStats$AppViewHolder;-><init>()V

    .line 172
    .local v0, holder:Lcom/android/OriginalSettings/UsageStats$AppViewHolder;
    const v3, 0x7f08020f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/OriginalSettings/UsageStats$AppViewHolder;->pkgName:Landroid/widget/TextView;

    .line 173
    const v3, 0x7f080210

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/OriginalSettings/UsageStats$AppViewHolder;->launchCount:Landroid/widget/TextView;

    .line 174
    const v3, 0x7f080211

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/OriginalSettings/UsageStats$AppViewHolder;->usageTime:Landroid/widget/TextView;

    .line 175
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mUsageStats:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/PkgUsageStats;

    .line 184
    .local v2, pkgStats:Lcom/android/internal/os/PkgUsageStats;
    if-eqz v2, :cond_1

    .line 185
    iget-object v3, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mAppLabelMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 186
    .local v1, label:Ljava/lang/CharSequence;
    iget-object v3, v0, Lcom/android/OriginalSettings/UsageStats$AppViewHolder;->pkgName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v3, v0, Lcom/android/OriginalSettings/UsageStats$AppViewHolder;->launchCount:Landroid/widget/TextView;

    iget v4, v2, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v3, v0, Lcom/android/OriginalSettings/UsageStats$AppViewHolder;->usageTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v2, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .end local v1           #label:Ljava/lang/CharSequence;
    :goto_1
    return-object p2

    .line 179
    .end local v0           #holder:Lcom/android/OriginalSettings/UsageStats$AppViewHolder;
    .end local v2           #pkgStats:Lcom/android/internal/os/PkgUsageStats;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/UsageStats$AppViewHolder;

    .restart local v0       #holder:Lcom/android/OriginalSettings/UsageStats$AppViewHolder;
    goto :goto_0

    .line 190
    .restart local v2       #pkgStats:Lcom/android/internal/os/PkgUsageStats;
    :cond_1
    const-string v3, "UsageStatsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No usage stats info for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method sortList(I)V
    .locals 1
    .parameter "sortOrder"

    .prologue
    .line 196
    iget v0, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mDisplayOrder:I

    if-ne v0, p1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    iput p1, p0, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->mDisplayOrder:I

    .line 201
    invoke-direct {p0}, Lcom/android/OriginalSettings/UsageStats$UsageStatsAdapter;->sortList()V

    goto :goto_0
.end method
