.class public final enum Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;
.super Ljava/lang/Enum;
.source "GoogleDocsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/gdocs/util/GoogleDocsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PARSE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ENTRY:Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;

.field private static final synthetic ENUM$VALUES:[Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;

.field public static final enum FEED:Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;

    const-string v1, "FEED"

    invoke-direct {v0, v1, v2}, Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;->FEED:Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;

    new-instance v0, Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;

    const-string v1, "ENTRY"

    invoke-direct {v0, v1, v3}, Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;->ENTRY:Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;

    sget-object v1, Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;->FEED:Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;->ENTRY:Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;->ENUM$VALUES:[Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;->ENUM$VALUES:[Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;

    array-length v1, v0

    new-array v2, v1, [Lcom/diotek/gdocs/util/GoogleDocsParser$PARSE_TYPE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method