.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$1;,
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FocusSelector;,
        Landroid/widget/ListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 137
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 103
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 117
    iput-boolean v9, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 119
    iput-boolean v8, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 122
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 127
    new-instance v6, Landroid/widget/ListView$ArrowScrollFocusResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$1;)V

    iput-object v6, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 143
    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 148
    .local v3, entries:[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 149
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 154
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 161
    .local v5, osHeader:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 162
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_2
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 167
    .local v4, osFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 168
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :cond_3
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 174
    .local v2, dividerHeight:I
    if-eqz v2, :cond_4

    .line 175
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 178
    :cond_4
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 179
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 181
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 3009
    add-int/lit8 v2, p2, -0x1

    .line 3010
    .local v2, abovePosition:I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3011
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3012
    .local v3, edgeOfNewChild:I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3014
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 3018
    add-int/lit8 v2, p2, 0x1

    .line 3019
    .local v2, belowPosition:I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3020
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3021
    .local v3, edgeOfNewChild:I
    const/4 v4, 0x1

    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3023
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 200
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 203
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 206
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 208
    .local v2, delta:I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 211
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 213
    :cond_0
    if-gez v2, :cond_1

    .line 215
    const/4 v2, 0x0

    .line 233
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 234
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 237
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 219
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 220
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 222
    .restart local v2       #delta:I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 225
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 228
    :cond_4
    if-lez v2, :cond_1

    .line 229
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .parameter "direction"
    .parameter "nextSelectedPosition"

    .prologue
    .line 2624
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2625
    .local v4, listBottom:I
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2627
    .local v5, listTop:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 2629
    .local v7, numChildren:I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_5

    .line 2630
    add-int/lit8 v3, v7, -0x1

    .line 2631
    .local v3, indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 2632
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2635
    :cond_0
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2636
    .local v8, positionToMakeVisible:I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2638
    .local v9, viewToMakeVisible:Landroid/view/View;
    move v1, v4

    .line 2639
    .local v1, goalBottom:I
    iget v10, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_1

    .line 2640
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2643
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_2

    .line 2645
    const/4 v10, 0x0

    .line 2691
    .end local v1           #goalBottom:I
    :goto_0
    return v10

    .line 2648
    .restart local v1       #goalBottom:I
    :cond_2
    const/4 v10, -0x1

    if-eq p2, v10, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_3

    .line 2651
    const/4 v10, 0x0

    goto :goto_0

    .line 2654
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2656
    .local v0, amountToScroll:I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/ListView;->mItemCount:I

    if-ne v10, v11, :cond_4

    .line 2658
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2659
    .local v6, max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2662
    .end local v6           #max:I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_0

    .line 2664
    .end local v0           #amountToScroll:I
    .end local v1           #goalBottom:I
    .end local v3           #indexToMakeVisible:I
    .end local v8           #positionToMakeVisible:I
    .end local v9           #viewToMakeVisible:Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    .line 2665
    .restart local v3       #indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_6

    .line 2666
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2668
    :cond_6
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2669
    .restart local v8       #positionToMakeVisible:I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2670
    .restart local v9       #viewToMakeVisible:Landroid/view/View;
    move v2, v5

    .line 2671
    .local v2, goalTop:I
    if-lez v8, :cond_7

    .line 2672
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2674
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_8

    .line 2676
    const/4 v10, 0x0

    goto :goto_0

    .line 2679
    :cond_8
    const/4 v10, -0x1

    if-eq p2, v10, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_9

    .line 2682
    const/4 v10, 0x0

    goto :goto_0

    .line 2685
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2686
    .restart local v0       #amountToScroll:I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v10, :cond_a

    .line 2688
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2689
    .restart local v6       #max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2691
    .end local v6           #max:I
    :cond_a
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_0
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .parameter "direction"
    .parameter "newFocus"
    .parameter "positionOfNewFocus"

    .prologue
    .line 2883
    const/4 v0, 0x0

    .line 2884
    .local v0, amountToScroll:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2885
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2886
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    .line 2887
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 2888
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 2889
    if-lez p3, :cond_0

    .line 2890
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 2902
    :cond_0
    :goto_0
    return v0

    .line 2894
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2895
    .local v1, listBottom:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 2896
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 2897
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 2898
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .locals 17
    .parameter "direction"

    .prologue
    .line 2781
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v11

    .line 2783
    .local v11, selectedView:Landroid/view/View;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2784
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 2785
    .local v8, oldFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2810
    .end local v8           #oldFocus:Landroid/view/View;
    .local v7, newFocus:Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    .line 2811
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 2815
    .local v9, positionOfNewFocus:I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    .line 2816
    invoke-direct/range {p0 .. p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v10

    .line 2817
    .local v10, selectablePosition:I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_a

    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    if-lt v10, v9, :cond_1

    :cond_0
    const/16 v14, 0x21

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-le v10, v9, :cond_a

    .line 2820
    :cond_1
    const/4 v14, 0x0

    .line 2842
    .end local v9           #positionOfNewFocus:I
    .end local v10           #selectablePosition:I
    :goto_1
    return-object v14

    .line 2787
    .end local v7           #newFocus:Landroid/view/View;
    :cond_2
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 2788
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v14, :cond_3

    const/4 v12, 0x1

    .line 2789
    .local v12, topFadingEdgeShowing:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    if-eqz v12, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_3
    add-int v5, v15, v14

    .line 2791
    .local v5, listTop:I
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    if-le v14, v5, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    .line 2795
    .local v13, ySearchPoint:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2807
    .end local v5           #listTop:I
    .end local v12           #topFadingEdgeShowing:Z
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7       #newFocus:Landroid/view/View;
    goto :goto_0

    .line 2788
    .end local v7           #newFocus:Landroid/view/View;
    .end local v13           #ySearchPoint:I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 2789
    .restart local v12       #topFadingEdgeShowing:Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .restart local v5       #listTop:I
    :cond_5
    move v13, v5

    .line 2791
    goto :goto_4

    .line 2797
    .end local v5           #listTop:I
    .end local v12           #topFadingEdgeShowing:Z
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ListView;->mItemCount:I

    if-ge v14, v15, :cond_7

    const/4 v2, 0x1

    .line 2799
    .local v2, bottomFadingEdgeShowing:Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v14, v15

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_7
    sub-int v4, v15, v14

    .line 2801
    .local v4, listBottom:I
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v14, v4, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 2805
    .restart local v13       #ySearchPoint:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 2797
    .end local v2           #bottomFadingEdgeShowing:Z
    .end local v4           #listBottom:I
    .end local v13           #ySearchPoint:I
    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    .line 2799
    .restart local v2       #bottomFadingEdgeShowing:Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    .restart local v4       #listBottom:I
    :cond_9
    move v13, v4

    .line 2801
    goto :goto_8

    .line 2824
    .end local v2           #bottomFadingEdgeShowing:Z
    .end local v4           #listBottom:I
    .restart local v7       #newFocus:Landroid/view/View;
    .restart local v9       #positionOfNewFocus:I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v3

    .line 2826
    .local v3, focusScroll:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v6

    .line 2827
    .local v6, maxScrollAmount:I
    if-ge v3, v6, :cond_b

    .line 2829
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 2830
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 2831
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 2832
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    .line 2837
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 2838
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 2839
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 2842
    .end local v3           #focusScroll:I
    .end local v6           #maxScrollAmount:I
    .end local v9           #positionOfNewFocus:I
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2408
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 2482
    :cond_0
    :goto_0
    return v9

    .line 2412
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2413
    .local v6, selectedView:Landroid/view/View;
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2415
    .local v5, selectedPos:I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 2416
    .local v4, nextSelectedPosition:I
    invoke-direct {p0, p1, v4}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v0

    .line 2419
    .local v0, amountToScroll:I
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_b

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 2420
    .local v1, focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_2

    .line 2421
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2422
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2425
    :cond_2
    if-eqz v1, :cond_c

    move v3, v8

    .line 2426
    .local v3, needToRedraw:Z
    :goto_2
    if-eq v4, v10, :cond_4

    .line 2427
    if-eqz v1, :cond_d

    move v7, v8

    :goto_3
    invoke-direct {p0, v6, p1, v4, v7}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2428
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 2429
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2430
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2431
    move v5, v4

    .line 2432
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    .line 2435
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2436
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2437
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2440
    .end local v2           #focused:Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    .line 2441
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2444
    :cond_4
    if-lez v0, :cond_5

    .line 2445
    const/16 v7, 0x21

    if-ne p1, v7, :cond_e

    .end local v0           #amountToScroll:I
    :goto_4
    invoke-direct {p0, v0}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 2446
    const/4 v3, 0x1

    .line 2451
    :cond_5
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_7

    if-nez v1, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2453
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2454
    .restart local v2       #focused:Landroid/view/View;
    invoke-direct {p0, v2, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_7

    .line 2455
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2460
    .end local v2           #focused:Landroid/view/View;
    :cond_7
    if-ne v4, v10, :cond_8

    if-eqz v6, :cond_8

    invoke-direct {p0, v6, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2462
    const/4 v6, 0x0

    .line 2463
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    .line 2467
    iput v10, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    .line 2470
    :cond_8
    if-eqz v3, :cond_0

    .line 2471
    if-eqz v6, :cond_9

    .line 2472
    invoke-virtual {p0, v5, v6}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 2473
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 2475
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2476
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2478
    :cond_a
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    move v9, v8

    .line 2479
    goto/16 :goto_0

    .line 2419
    .end local v1           #focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    .end local v3           #needToRedraw:Z
    .restart local v0       #amountToScroll:I
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1       #focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    :cond_c
    move v3, v9

    .line 2425
    goto/16 :goto_2

    .restart local v3       #needToRedraw:Z
    :cond_d
    move v7, v9

    .line 2427
    goto :goto_3

    .line 2445
    :cond_e
    neg-int v0, v0

    goto :goto_4
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 509
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 511
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 512
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView$FixedViewInfo;

    iget-object v0, v4, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 513
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 514
    .local v3, p:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 515
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 511
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 519
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x82

    const/16 v6, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2100
    iget-object v5, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/ListView;->mIsAttached:Z

    if-nez v5, :cond_2

    :cond_0
    move v4, v3

    .line 2247
    :cond_1
    :goto_0
    return v4

    .line 2104
    :cond_2
    iget-boolean v5, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-eqz v5, :cond_3

    .line 2105
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2108
    :cond_3
    const/4 v2, 0x0

    .line 2109
    .local v2, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2111
    .local v0, action:I
    if-eq v0, v4, :cond_4

    .line 2112
    sparse-switch p1, :sswitch_data_0

    .line 2228
    :cond_4
    :goto_1
    if-nez v2, :cond_1

    .line 2232
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2236
    packed-switch v0, :pswitch_data_0

    move v4, v3

    .line 2247
    goto :goto_0

    .line 2114
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2115
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2116
    if-nez v2, :cond_4

    move v1, p2

    .line 2117
    .end local p2
    .local v1, count:I
    :goto_2
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_4

    .line 2118
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2119
    const/4 v2, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #count:I
    goto :goto_2

    .line 2125
    .end local v1           #count:I
    .restart local p2
    :cond_5
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2126
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v2, v4

    :goto_3
    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_3

    .line 2131
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2132
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2133
    if-nez v2, :cond_4

    move v1, p2

    .line 2134
    .end local p2
    .restart local v1       #count:I
    :goto_4
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_4

    .line 2135
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2136
    const/4 v2, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #count:I
    goto :goto_4

    .line 2142
    .end local v1           #count:I
    .restart local p2
    :cond_8
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2143
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    move v2, v4

    :goto_5
    goto :goto_1

    :cond_a
    move v2, v3

    goto :goto_5

    .line 2148
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2149
    const/16 v5, 0x11

    invoke-direct {p0, v5}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto :goto_1

    .line 2154
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2155
    const/16 v5, 0x42

    invoke-direct {p0, v5}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    .line 2161
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2162
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2163
    if-nez v2, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 2165
    invoke-virtual {p0}, Landroid/widget/ListView;->keyPressed()V

    .line 2166
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2172
    :sswitch_5
    iget-object v5, p0, Landroid/widget/ListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/ListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2173
    :cond_b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2174
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_c
    move v2, v4

    .line 2178
    :cond_d
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_e
    move v2, v3

    .line 2174
    goto :goto_6

    .line 2175
    :cond_f
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2176
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_10
    move v2, v4

    :goto_7
    goto :goto_6

    :cond_11
    move v2, v3

    goto :goto_7

    .line 2183
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2184
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    move v2, v4

    :goto_8
    goto/16 :goto_1

    :cond_13
    move v2, v3

    goto :goto_8

    .line 2185
    :cond_14
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2186
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_15
    move v2, v4

    :goto_9
    goto/16 :goto_1

    :cond_16
    move v2, v3

    goto :goto_9

    .line 2191
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2192
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    move v2, v4

    :goto_a
    goto/16 :goto_1

    :cond_18
    move v2, v3

    goto :goto_a

    .line 2193
    :cond_19
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2194
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    move v2, v4

    :goto_b
    goto/16 :goto_1

    :cond_1b
    move v2, v3

    goto :goto_b

    .line 2199
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2200
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1c
    move v2, v4

    :goto_c
    goto/16 :goto_1

    :cond_1d
    move v2, v3

    goto :goto_c

    .line 2205
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2206
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1e
    move v2, v4

    :goto_d
    goto/16 :goto_1

    :cond_1f
    move v2, v3

    goto :goto_d

    .line 2238
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2241
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2244
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2112
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 2236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .parameter "childCount"

    .prologue
    .line 1413
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v6, v7, -0x1

    .line 1414
    .local v6, lastPosition:I
    iget v7, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    .line 1417
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1420
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1423
    .local v4, lastBottom:I
    iget v7, p0, Landroid/widget/ListView;->mBottom:I

    iget v8, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1427
    .local v1, end:I
    sub-int v0, v1, v4

    .line 1428
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1429
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1433
    .local v3, firstTop:I
    if-lez v0, :cond_2

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    .line 1434
    :cond_0
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1436
    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1439
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1440
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1443
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1445
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1450
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .parameter "childCount"

    .prologue
    .line 1462
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1465
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1468
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1471
    .local v2, firstTop:I
    iget-object v8, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1474
    .local v6, start:I
    iget v8, p0, Landroid/widget/ListView;->mBottom:I

    iget v9, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1478
    .local v0, end:I
    sub-int v7, v2, v6

    .line 1479
    .local v7, topOffset:I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1480
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1481
    .local v3, lastBottom:I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1485
    .local v5, lastPosition:I
    if-lez v7, :cond_2

    .line 1486
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 1487
    :cond_0
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 1489
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1492
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1493
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_2

    .line 1496
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1498
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1505
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_2
    :goto_0
    return-void

    .line 1500
    .restart local v0       #end:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #firstTop:I
    .restart local v3       #lastBottom:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #lastPosition:I
    .restart local v6       #start:I
    .restart local v7       #topOffset:I
    :cond_3
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    .line 1501
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .parameter "descendant"

    .prologue
    .line 2913
    const/4 v0, 0x0

    .line 2914
    .local v0, distance:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2915
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2916
    iget v2, p0, Landroid/widget/ListView;->mBottom:I

    iget v3, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2917
    .local v1, listBottom:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 2918
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 2922
    :cond_0
    :goto_0
    return v0

    .line 2919
    :cond_1
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    .line 2920
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3
    .parameter "sel"
    .parameter "position"

    .prologue
    .line 779
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 780
    .local v0, dividerHeight:I
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 781
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 782
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 783
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 789
    :goto_0
    return-void

    .line 785
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 786
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 787
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v3, 0x1

    .line 662
    const/4 v8, 0x0

    .line 664
    .local v8, selectedView:Landroid/view/View;
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int v7, v0, v1

    .line 665
    .local v7, end:I
    iget v0, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 666
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v0

    .line 669
    :cond_0
    :goto_0
    if-ge p2, v7, :cond_3

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge p1, v0, :cond_3

    .line 671
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    move v5, v3

    .line 672
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 674
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 675
    if-eqz v5, :cond_1

    .line 676
    move-object v8, v6

    .line 678
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 679
    goto :goto_0

    .line 671
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 681
    :cond_3
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    const/4 v3, 0x1

    .line 747
    sub-int v6, p2, p1

    .line 749
    .local v6, height:I
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    .line 751
    .local v1, position:I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 753
    .local v7, sel:Landroid/view/View;
    iput v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 755
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 756
    .local v8, selHeight:I
    if-gt v8, v6, :cond_0

    .line 757
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 760
    :cond_0
    invoke-direct {p0, v7, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 762
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 763
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 768
    :goto_0
    return-object v7

    .line 765
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 803
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 804
    .local v8, fadingEdgeLength:I
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 808
    .local v2, selectedPosition:I
    move/from16 v0, p2

    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v13

    .line 810
    .local v13, topSelectionPixel:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v7

    .line 813
    .local v7, bottomSelectionPixel:I
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 817
    .local v10, sel:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v7, :cond_1

    .line 820
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v1, v13

    .line 824
    .local v11, spaceAbove:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v1, v7

    .line 825
    .local v12, spaceBelow:I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 828
    .local v9, offset:I
    neg-int v1, v9

    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 844
    .end local v9           #offset:I
    .end local v11           #spaceAbove:I
    .end local v12           #spaceBelow:I
    :cond_0
    :goto_0
    invoke-direct {p0, v10, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 846
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 847
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 852
    :goto_1
    return-object v10

    .line 829
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v13, :cond_0

    .line 832
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v13, v1

    .line 836
    .restart local v11       #spaceAbove:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v7, v1

    .line 837
    .restart local v12       #spaceBelow:I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 840
    .restart local v9       #offset:I
    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 849
    .end local v9           #offset:I
    .end local v11           #spaceAbove:I
    .end local v12           #spaceBelow:I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2
    .parameter "nextTop"

    .prologue
    .line 727
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 728
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 729
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 730
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 732
    :cond_0
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    .line 1365
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1366
    .local v5, tempIsSelected:Z
    :goto_0
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1368
    .local v10, temp:Landroid/view/View;
    iput p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1373
    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1374
    .local v9, dividerHeight:I
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1375
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1377
    .local v6, above:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1378
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1379
    .local v7, below:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1380
    .local v8, childCount:I
    if-lez v8, :cond_0

    .line 1381
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1394
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1399
    .end local v10           #temp:Landroid/view/View;
    :goto_2
    return-object v10

    .line 1365
    .end local v5           #tempIsSelected:Z
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    .end local v9           #dividerHeight:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1384
    .restart local v5       #tempIsSelected:Z
    .restart local v9       #dividerHeight:I
    .restart local v10       #temp:Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1386
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1387
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1388
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1389
    .restart local v8       #childCount:I
    if-lez v8, :cond_0

    .line 1390
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 1396
    :cond_3
    if-eqz v6, :cond_4

    move-object v10, v6

    .line 1397
    goto :goto_2

    :cond_4
    move-object v10, v7

    .line 1399
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v3, 0x0

    .line 695
    const/4 v8, 0x0

    .line 697
    .local v8, selectedView:Landroid/view/View;
    const/4 v7, 0x0

    .line 698
    .local v7, end:I
    iget v0, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 699
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 702
    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    if-ltz p1, :cond_3

    .line 704
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 705
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 706
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 707
    if-eqz v5, :cond_1

    .line 708
    move-object v8, v6

    .line 710
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 711
    goto :goto_0

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_2
    move v5, v3

    .line 704
    goto :goto_1

    .line 713
    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 715
    return-object v8
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2608
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 2
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 865
    move v0, p1

    .line 866
    .local v0, bottomSelectionPixel:I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 867
    sub-int/2addr v0, p2

    .line 869
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 882
    move v0, p1

    .line 883
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 884
    add-int/2addr v0, p2

    .line 886
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 2343
    const/16 v5, 0x11

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    .line 2344
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2348
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2349
    .local v3, numChildren:I
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2350
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2351
    .local v4, selectedView:Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 2354
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2355
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2357
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2359
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2360
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2361
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2362
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2363
    const/4 v5, 0x1

    .line 2377
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_0
    return v5

    .line 2370
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2372
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2373
    invoke-direct {p0, v1, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 2377
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v1           #globalNextFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10
    .parameter "selectedView"
    .parameter "direction"
    .parameter "newSelectedPosition"
    .parameter "newFocusAssigned"

    .prologue
    .line 2500
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2501
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2511
    :cond_0
    const/4 v5, 0x0

    .line 2512
    .local v5, topSelected:Z
    iget v8, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2513
    .local v4, selectedIndex:I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2514
    .local v2, nextSelectedIndex:I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_3

    .line 2515
    move v7, v2

    .line 2516
    .local v7, topViewIndex:I
    move v1, v4

    .line 2517
    .local v1, bottomViewIndex:I
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2518
    .local v6, topView:Landroid/view/View;
    move-object v0, p1

    .line 2519
    .local v0, bottomView:Landroid/view/View;
    const/4 v5, 0x1

    .line 2527
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2530
    .local v3, numChildren:I
    if-eqz v6, :cond_1

    .line 2531
    if-nez p4, :cond_4

    if-eqz v5, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2532
    invoke-direct {p0, v6, v7, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2536
    :cond_1
    if-eqz v0, :cond_2

    .line 2537
    if-nez p4, :cond_5

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2538
    invoke-direct {p0, v0, v1, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2540
    :cond_2
    return-void

    .line 2521
    .end local v0           #bottomView:Landroid/view/View;
    .end local v1           #bottomViewIndex:I
    .end local v3           #numChildren:I
    .end local v6           #topView:Landroid/view/View;
    .end local v7           #topViewIndex:I
    :cond_3
    move v7, v4

    .line 2522
    .restart local v7       #topViewIndex:I
    move v1, v2

    .line 2523
    .restart local v1       #bottomViewIndex:I
    move-object v6, p1

    .line 2524
    .restart local v6       #topView:Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #bottomView:Landroid/view/View;
    goto :goto_0

    .line 2531
    .restart local v3       #numChildren:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 2537
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x1

    .line 1767
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1768
    .local v1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1769
    .local v4, numHeaders:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1770
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 1781
    :goto_1
    return v5

    .line 1769
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1774
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1775
    .local v0, footers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1776
    .local v3, numFooters:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 1777
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 1778
    goto :goto_1

    .line 1776
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1781
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 2865
    if-ne p1, p2, :cond_1

    .line 2870
    :cond_0
    :goto_0
    return v1

    .line 2869
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2870
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v6, -0x1

    .line 2728
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 2729
    .local v1, firstPosition:I
    const/16 v7, 0x82

    if-ne p1, v7, :cond_5

    .line 2730
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_1

    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 2733
    .local v5, startPos:I
    :goto_0
    iget-object v7, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_2

    move v4, v6

    .line 2768
    :cond_0
    :goto_1
    return v4

    .end local v5           #startPos:I
    :cond_1
    move v5, v1

    .line 2730
    goto :goto_0

    .line 2736
    .restart local v5       #startPos:I
    :cond_2
    if-ge v5, v1, :cond_3

    .line 2737
    move v5, v1

    .line 2740
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 2741
    .local v3, lastVisiblePos:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2742
    .local v0, adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, pos:I
    :goto_2
    if-gt v4, v3, :cond_b

    .line 2743
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2742
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2749
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #lastVisiblePos:I
    .end local v4           #pos:I
    .end local v5           #startPos:I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 2750
    .local v2, last:I
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 2753
    .restart local v5       #startPos:I
    :goto_3
    if-ltz v5, :cond_6

    iget-object v7, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_8

    :cond_6
    move v4, v6

    .line 2754
    goto :goto_1

    .line 2750
    .end local v5           #startPos:I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    .line 2756
    .restart local v5       #startPos:I
    :cond_8
    if-le v5, v2, :cond_9

    .line 2757
    move v5, v2

    .line 2760
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2761
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4       #pos:I
    :goto_4
    if-lt v4, v1, :cond_b

    .line 2762
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2761
    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2           #last:I
    :cond_b
    move v4, v6

    .line 2768
    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"

    .prologue
    .line 1802
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1804
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1805
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1813
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1825
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_0
    return-object v8

    .line 1820
    .end local v8           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1823
    .restart local v1       #child:Landroid/view/View;
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1825
    .end local v1           #child:Landroid/view/View;
    .restart local v8       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .parameter "child"
    .parameter "childIndex"
    .parameter "numChildren"

    .prologue
    .line 2550
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2551
    .local v2, oldHeight:I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 2552
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2554
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2557
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2558
    .local v0, heightDelta:I
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2559
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2558
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2562
    .end local v0           #heightDelta:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .parameter "child"

    .prologue
    const/4 v7, 0x0

    .line 2570
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2571
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 2572
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2577
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2579
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2581
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 2582
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2586
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2587
    return-void

    .line 2584
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 1163
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1164
    .local v3, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1165
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    .end local v3           #p:Landroid/widget/AbsListView$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 1167
    .restart local v3       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1169
    :cond_0
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1170
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1172
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1174
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1176
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 1177
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1181
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1182
    return-void

    .line 1179
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 19
    .parameter "oldSel"
    .parameter "newSel"
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 928
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v10

    .line 929
    .local v10, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 933
    .local v15, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v18

    .line 935
    .local v18, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v8

    .line 938
    .local v8, bottomSelectionPixel:I
    if-lez p3, :cond_2

    .line 960
    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 963
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 966
    .local v9, dividerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int v4, v2, v9

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 970
    .local v14, sel:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_0

    .line 973
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v2, v18

    .line 976
    .local v16, spaceAbove:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v2, v8

    .line 979
    .local v17, spaceBelow:I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 980
    .local v11, halfVerticalSpace:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 981
    .local v13, offset:I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 984
    neg-int v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 986
    neg-int v2, v13

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 990
    .end local v11           #halfVerticalSpace:I
    .end local v13           #offset:I
    .end local v16           #spaceAbove:I
    .end local v17           #spaceBelow:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 991
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 992
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 993
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1074
    .end local v9           #dividerHeight:I
    :goto_0
    return-object v14

    .line 995
    .restart local v9       #dividerHeight:I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 996
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 997
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 999
    .end local v9           #dividerHeight:I
    .end local v14           #sel:Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1020
    if-eqz p2, :cond_4

    .line 1022
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1032
    .restart local v14       #sel:Landroid/view/View;
    :goto_1
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_3

    .line 1034
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v18, v2

    .line 1037
    .restart local v16       #spaceAbove:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v8, v2

    .line 1040
    .restart local v17       #spaceBelow:I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1041
    .restart local v11       #halfVerticalSpace:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1042
    .restart local v13       #offset:I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1045
    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1049
    .end local v11           #halfVerticalSpace:I
    .end local v13           #offset:I
    .end local v16           #spaceAbove:I
    .end local v17           #spaceBelow:I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1027
    .end local v14           #sel:Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .restart local v14       #sel:Landroid/view/View;
    goto :goto_1

    .line 1052
    .end local v14           #sel:Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1057
    .local v4, oldTop:I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1060
    .restart local v14       #sel:Landroid/view/View;
    move/from16 v0, p4

    if-ge v4, v0, :cond_6

    .line 1063
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1064
    .local v12, newBottom:I
    add-int/lit8 v2, p4, 0x14

    if-ge v12, v2, :cond_6

    .line 1066
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1071
    .end local v12           #newBottom:I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .parameter "newFocus"

    .prologue
    .line 2850
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 2851
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2852
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2853
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2854
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 2851
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2857
    .end local v0           #child:Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    .line 2595
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2596
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2597
    .local v4, h:I
    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2598
    .local v1, childLeft:I
    add-int v2, v1, v5

    .line 2599
    .local v2, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2600
    .local v3, childTop:I
    add-int v0, v3, v4

    .line 2601
    .local v0, childBottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2602
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 316
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 317
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 318
    .local v1, info:Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 319
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 323
    .end local v1           #info:Landroid/widget/ListView$FixedViewInfo;
    :cond_0
    return-void

    .line 316
    .restart local v1       #info:Landroid/widget/ListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .parameter "amount"

    .prologue
    const/4 v11, 0x0

    .line 2933
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 2935
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 2936
    .local v5, listBottom:I
    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 2937
    .local v6, listTop:I
    iget-object v8, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 2939
    .local v8, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    if-gez p1, :cond_3

    .line 2943
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 2944
    .local v7, numChildren:I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2945
    .local v1, last:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_0

    .line 2946
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 2947
    .local v3, lastVisiblePosition:I
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_0

    .line 2948
    invoke-direct {p0, v1, v3}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2949
    add-int/lit8 v7, v7, 0x1

    .line 2953
    goto :goto_0

    .line 2958
    .end local v3           #lastVisiblePosition:I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_1

    .line 2959
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 2963
    :cond_1
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2964
    .local v0, first:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_7

    .line 2965
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 2966
    .local v4, layoutParams:Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2967
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 2968
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2972
    :goto_2
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2973
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_1

    .line 2970
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_2

    .line 2977
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    .end local v7           #numChildren:I
    :cond_3
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2980
    .restart local v0       #first:Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_4

    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 2981
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2982
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_3

    .line 2987
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_5

    .line 2988
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 2991
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 2992
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2995
    .restart local v1       #last:Landroid/view/View;
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_7

    .line 2996
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 2997
    .restart local v4       #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2998
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 2999
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3003
    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3004
    goto :goto_4

    .line 3001
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_5

    .line 3006
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    :cond_7
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 22
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 1844
    if-eqz p6, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_9

    const/4 v11, 0x1

    .line 1845
    .local v11, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_a

    const/16 v17, 0x1

    .line 1846
    .local v17, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mTouchMode:I

    .line 1847
    .local v13, mode:I
    if-lez v13, :cond_b

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    .line 1849
    .local v10, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_c

    const/16 v16, 0x1

    .line 1850
    .local v16, updateChildPressed:Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v19

    if-eqz v19, :cond_d

    :cond_0
    const/4 v14, 0x1

    .line 1854
    .local v14, needToMeasure:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 1855
    .local v15, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v15, :cond_1

    .line 1856
    new-instance v15, Landroid/widget/AbsListView$LayoutParams;

    .end local v15           #p:Landroid/widget/AbsListView$LayoutParams;
    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v15, v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 1859
    .restart local v15       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1861
    if-eqz p7, :cond_2

    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    :cond_2
    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 1863
    :cond_3
    if-eqz p4, :cond_e

    const/16 v19, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1872
    :goto_6
    if-eqz v17, :cond_4

    .line 1873
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 1876
    :cond_4
    if-eqz v16, :cond_5

    .line 1877
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 1880
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1881
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v19, p1

    .line 1882
    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1889
    :cond_6
    :goto_7
    if-eqz v14, :cond_14

    .line 1890
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 1892
    .local v8, childWidthSpec:I
    iget v12, v15, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1894
    .local v12, lpHeight:I
    if-lez v12, :cond_13

    .line 1895
    const/high16 v19, 0x4000

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1899
    .local v5, childHeightSpec:I
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 1904
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v12           #lpHeight:I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 1905
    .local v18, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1906
    .local v9, h:I
    if-eqz p4, :cond_15

    move/from16 v7, p3

    .line 1908
    .local v7, childTop:I
    :goto_a
    if-eqz v14, :cond_16

    .line 1909
    add-int v6, p5, v18

    .line 1910
    .local v6, childRight:I
    add-int v4, v7, v9

    .line 1911
    .local v4, childBottom:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    .line 1917
    .end local v4           #childBottom:I
    .end local v6           #childRight:I
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-nez v19, :cond_7

    .line 1918
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1921
    :cond_7
    if-eqz p7, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_8

    .line 1923
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1925
    :cond_8
    return-void

    .line 1844
    .end local v7           #childTop:I
    .end local v9           #h:I
    .end local v10           #isPressed:Z
    .end local v11           #isSelected:Z
    .end local v13           #mode:I
    .end local v14           #needToMeasure:Z
    .end local v15           #p:Landroid/widget/AbsListView$LayoutParams;
    .end local v16           #updateChildPressed:Z
    .end local v17           #updateChildSelected:Z
    .end local v18           #w:I
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1845
    .restart local v11       #isSelected:Z
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1847
    .restart local v13       #mode:I
    .restart local v17       #updateChildSelected:Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1849
    .restart local v10       #isPressed:Z
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1850
    .restart local v16       #updateChildPressed:Z
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1863
    .restart local v14       #needToMeasure:Z
    .restart local v15       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 1865
    :cond_f
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1866
    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 1867
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1869
    :cond_10
    if-eqz p4, :cond_11

    const/16 v19, -0x1

    :goto_c
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_11
    const/16 v19, 0x0

    goto :goto_c

    .line 1883
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 1885
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_7

    .line 1897
    .restart local v8       #childWidthSpec:I
    .restart local v12       #lpHeight:I
    :cond_13
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .restart local v5       #childHeightSpec:I
    goto/16 :goto_8

    .line 1901
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v12           #lpHeight:I
    :cond_14
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_9

    .line 1906
    .restart local v9       #h:I
    .restart local v18       #w:I
    :cond_15
    sub-int v7, p3, v9

    goto/16 :goto_a

    .line 1913
    .restart local v7       #childTop:I
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1914
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, v7, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b
.end method

.method private showingBottomFadingEdge()Z
    .locals 6

    .prologue
    .line 533
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 534
    .local v1, childCount:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 535
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 537
    .local v2, lastVisiblePosition:I
    iget v4, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 539
    .local v3, listBottom:I
    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 525
    iget v2, p0, Landroid/widget/ListView;->mScrollY:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    .line 526
    .local v0, listTop:I
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 369
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 370
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 345
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 346
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 347
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 348
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 349
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 356
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 284
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 285
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 254
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 255
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_0
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 260
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 261
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 262
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 263
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 270
    :cond_1
    return-void
.end method

.method arrowScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 2389
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2390
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2391
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 2392
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2396
    :cond_0
    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2394
    return v0

    .line 2396
    .end local v0           #handled:Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 1929
    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .parameter "canvas"

    .prologue
    .line 3117
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mCachingStarted:Z

    move/from16 v32, v0

    if-eqz v32, :cond_0

    .line 3118
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mCachingActive:Z

    .line 3122
    :cond_0
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3123
    .local v10, dividerHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    .line 3124
    .local v27, overscrollHeader:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    .line 3125
    .local v26, overscrollFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v27, :cond_a

    const/4 v13, 0x1

    .line 3126
    .local v13, drawOverscrollHeader:Z
    :goto_0
    if-eqz v26, :cond_b

    const/4 v12, 0x1

    .line 3127
    .local v12, drawOverscrollFooter:Z
    :goto_1
    if-lez v10, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    if-eqz v32, :cond_c

    const/4 v11, 0x1

    .line 3129
    .local v11, drawDividers:Z
    :goto_2
    if-nez v11, :cond_1

    if-nez v13, :cond_1

    if-eqz v12, :cond_11

    .line 3131
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3132
    .local v7, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 3133
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mRight:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 3135
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v9

    .line 3136
    .local v9, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 3137
    .local v20, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v23, v0

    .line 3138
    .local v23, itemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    sub-int v32, v23, v32

    add-int/lit8 v19, v32, -0x1

    .line 3139
    .local v19, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    move/from16 v21, v0

    .line 3140
    .local v21, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    move/from16 v18, v0

    .line 3141
    .local v18, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v17, v0

    .line 3142
    .local v17, first:I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 3143
    .local v5, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3148
    .local v4, adapter:Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v32

    if-eqz v32, :cond_d

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v32

    if-nez v32, :cond_d

    const/16 v16, 0x1

    .line 3150
    .local v16, fillForMissingDividers:Z
    :goto_3
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    if-nez v32, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2

    .line 3151
    new-instance v32, Landroid/graphics/Paint;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3152
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/graphics/Paint;->setColor(I)V

    .line 3154
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    .line 3156
    .local v28, paint:Landroid/graphics/Paint;
    const/4 v15, 0x0

    .line 3157
    .local v15, effectivePaddingTop:I
    const/4 v14, 0x0

    .line 3158
    .local v14, effectivePaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    .line 3159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v15, v0, Landroid/graphics/Rect;->top:I

    .line 3160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    .line 3163
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTop:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    sub-int v32, v32, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v33, v0

    add-int v24, v32, v33

    .line 3164
    .local v24, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v32, v0

    if-nez v32, :cond_12

    .line 3165
    const/4 v6, 0x0

    .line 3168
    .local v6, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v29, v0

    .line 3169
    .local v29, scrollY:I
    if-lez v9, :cond_4

    if-gez v29, :cond_4

    .line 3170
    if-eqz v13, :cond_e

    .line 3171
    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3172
    move/from16 v0, v29

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3173
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3181
    :cond_4
    :goto_4
    const/16 v22, 0x0

    .local v22, i:I
    :goto_5
    move/from16 v0, v22

    if-ge v0, v9, :cond_10

    .line 3182
    if-nez v21, :cond_5

    add-int v32, v17, v22

    move/from16 v0, v32

    move/from16 v1, v20

    if-lt v0, v1, :cond_9

    :cond_5
    if-nez v18, :cond_6

    add-int v32, v17, v22

    move/from16 v0, v32

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 3184
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3185
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 3188
    if-eqz v11, :cond_9

    move/from16 v0, v24

    if-ge v6, v0, :cond_9

    if-eqz v12, :cond_7

    add-int/lit8 v32, v9, -0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-eq v0, v1, :cond_9

    .line 3190
    :cond_7
    if-nez v5, :cond_8

    add-int v32, v17, v22

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_f

    add-int/lit8 v32, v9, -0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-eq v0, v1, :cond_8

    add-int v32, v17, v22

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_f

    .line 3193
    :cond_8
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3194
    add-int v32, v6, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3195
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3181
    .end local v8           #child:Landroid/view/View;
    :cond_9
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 3125
    .end local v4           #adapter:Landroid/widget/ListAdapter;
    .end local v5           #areAllItemsSelectable:Z
    .end local v6           #bottom:I
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v9           #count:I
    .end local v11           #drawDividers:Z
    .end local v12           #drawOverscrollFooter:Z
    .end local v13           #drawOverscrollHeader:Z
    .end local v14           #effectivePaddingBottom:I
    .end local v15           #effectivePaddingTop:I
    .end local v16           #fillForMissingDividers:Z
    .end local v17           #first:I
    .end local v18           #footerDividers:Z
    .end local v19           #footerLimit:I
    .end local v20           #headerCount:I
    .end local v21           #headerDividers:Z
    .end local v22           #i:I
    .end local v23           #itemCount:I
    .end local v24           #listBottom:I
    .end local v28           #paint:Landroid/graphics/Paint;
    .end local v29           #scrollY:I
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3126
    .restart local v13       #drawOverscrollHeader:Z
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 3127
    .restart local v12       #drawOverscrollFooter:Z
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 3148
    .restart local v4       #adapter:Landroid/widget/ListAdapter;
    .restart local v5       #areAllItemsSelectable:Z
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v9       #count:I
    .restart local v11       #drawDividers:Z
    .restart local v17       #first:I
    .restart local v18       #footerDividers:Z
    .restart local v19       #footerLimit:I
    .restart local v20       #headerCount:I
    .restart local v21       #headerDividers:Z
    .restart local v23       #itemCount:I
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 3174
    .restart local v6       #bottom:I
    .restart local v14       #effectivePaddingBottom:I
    .restart local v15       #effectivePaddingTop:I
    .restart local v16       #fillForMissingDividers:Z
    .restart local v24       #listBottom:I
    .restart local v28       #paint:Landroid/graphics/Paint;
    .restart local v29       #scrollY:I
    :cond_e
    if-eqz v11, :cond_4

    .line 3175
    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3176
    neg-int v0, v10

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3177
    const/16 v32, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_4

    .line 3196
    .restart local v8       #child:Landroid/view/View;
    .restart local v22       #i:I
    :cond_f
    if-eqz v16, :cond_9

    .line 3197
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3198
    add-int v32, v6, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3199
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 3205
    .end local v8           #child:Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v33, v0

    add-int v25, v32, v33

    .line 3206
    .local v25, overFooterBottom:I
    if-eqz v12, :cond_11

    add-int v32, v17, v9

    move/from16 v0, v32

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    move/from16 v0, v25

    if-le v0, v6, :cond_11

    .line 3208
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3209
    move/from16 v0, v25

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3210
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3266
    .end local v4           #adapter:Landroid/widget/ListAdapter;
    .end local v5           #areAllItemsSelectable:Z
    .end local v6           #bottom:I
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v9           #count:I
    .end local v14           #effectivePaddingBottom:I
    .end local v15           #effectivePaddingTop:I
    .end local v16           #fillForMissingDividers:Z
    .end local v17           #first:I
    .end local v18           #footerDividers:Z
    .end local v19           #footerLimit:I
    .end local v20           #headerCount:I
    .end local v21           #headerDividers:Z
    .end local v22           #i:I
    .end local v23           #itemCount:I
    .end local v24           #listBottom:I
    .end local v25           #overFooterBottom:I
    .end local v28           #paint:Landroid/graphics/Paint;
    .end local v29           #scrollY:I
    :cond_11
    :goto_7
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3267
    return-void

    .line 3215
    .restart local v4       #adapter:Landroid/widget/ListAdapter;
    .restart local v5       #areAllItemsSelectable:Z
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v9       #count:I
    .restart local v14       #effectivePaddingBottom:I
    .restart local v15       #effectivePaddingTop:I
    .restart local v16       #fillForMissingDividers:Z
    .restart local v17       #first:I
    .restart local v18       #footerDividers:Z
    .restart local v19       #footerLimit:I
    .restart local v20       #headerCount:I
    .restart local v21       #headerDividers:Z
    .restart local v23       #itemCount:I
    .restart local v24       #listBottom:I
    .restart local v28       #paint:Landroid/graphics/Paint;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v29, v0

    .line 3217
    .restart local v29       #scrollY:I
    if-lez v9, :cond_13

    if-eqz v13, :cond_13

    .line 3218
    move/from16 v0, v29

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3219
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getTop()I

    move-result v32

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3220
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3223
    :cond_13
    if-eqz v13, :cond_18

    const/16 v30, 0x1

    .line 3224
    .local v30, start:I
    :goto_8
    move/from16 v22, v30

    .restart local v22       #i:I
    :goto_9
    move/from16 v0, v22

    if-ge v0, v9, :cond_1a

    .line 3225
    if-nez v21, :cond_14

    add-int v32, v17, v22

    move/from16 v0, v32

    move/from16 v1, v20

    if-lt v0, v1, :cond_17

    :cond_14
    if-nez v18, :cond_15

    add-int v32, v17, v22

    move/from16 v0, v32

    move/from16 v1, v19

    if-ge v0, v1, :cond_17

    .line 3227
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3228
    .restart local v8       #child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v31

    .line 3230
    .local v31, top:I
    move/from16 v0, v31

    if-le v0, v15, :cond_17

    .line 3231
    if-nez v5, :cond_16

    add-int v32, v17, v22

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_19

    add-int/lit8 v32, v9, -0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-eq v0, v1, :cond_16

    add-int v32, v17, v22

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_19

    .line 3234
    :cond_16
    sub-int v32, v31, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3235
    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3240
    add-int/lit8 v32, v22, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3224
    .end local v8           #child:Landroid/view/View;
    .end local v31           #top:I
    :cond_17
    :goto_a
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 3223
    .end local v22           #i:I
    .end local v30           #start:I
    :cond_18
    const/16 v30, 0x0

    goto :goto_8

    .line 3241
    .restart local v8       #child:Landroid/view/View;
    .restart local v22       #i:I
    .restart local v30       #start:I
    .restart local v31       #top:I
    :cond_19
    if-eqz v16, :cond_17

    .line 3242
    sub-int v32, v31, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3243
    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3244
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 3250
    .end local v8           #child:Landroid/view/View;
    .end local v31           #top:I
    :cond_1a
    if-lez v9, :cond_11

    if-lez v29, :cond_11

    .line 3251
    if-eqz v12, :cond_1b

    .line 3252
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ListView;->mBottom:I

    .line 3253
    .local v3, absListBottom:I
    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 3254
    add-int v32, v3, v29

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3255
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 3256
    .end local v3           #absListBottom:I
    :cond_1b
    if-eqz v11, :cond_11

    .line 3257
    move/from16 v0, v24

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3258
    add-int v32, v24, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3259
    const/16 v32, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_7
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 2071
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2072
    .local v1, handled:Z
    if-nez v1, :cond_0

    .line 2074
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2075
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2078
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2081
    .end local v0           #focused:Landroid/view/View;
    :cond_0
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 3271
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3272
    .local v0, more:Z
    iget-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_0

    .line 3273
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    .line 3275
    :cond_0
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 3289
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3291
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3292
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3293
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3099
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3101
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3102
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3104
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3105
    .local v1, span:I
    if-ge v1, v0, :cond_0

    .line 3106
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3109
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3110
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3113
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3082
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3084
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3085
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3087
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3088
    .local v1, span:I
    if-ge v1, v0, :cond_0

    .line 3089
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3092
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3093
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3095
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3096
    return-void
.end method

.method fillGap(Z)V
    .locals 6
    .parameter "down"

    .prologue
    const/16 v5, 0x22

    .line 628
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 629
    .local v0, count:I
    if-eqz p1, :cond_2

    .line 630
    const/4 v2, 0x0

    .line 631
    .local v2, paddingTop:I
    iget v4, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_0

    .line 632
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v2

    .line 634
    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 636
    .local v3, startOffset:I
    :goto_0
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 637
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 648
    .end local v2           #paddingTop:I
    :goto_1
    return-void

    .end local v3           #startOffset:I
    .restart local v2       #paddingTop:I
    :cond_1
    move v3, v2

    .line 634
    goto :goto_0

    .line 639
    .end local v2           #paddingTop:I
    :cond_2
    const/4 v1, 0x0

    .line 640
    .local v1, paddingBottom:I
    iget v4, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_3

    .line 641
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v1

    .line 643
    :cond_3
    if-lez v0, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 645
    .restart local v3       #startOffset:I
    :goto_2
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 646
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 643
    .end local v3           #startOffset:I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    sub-int v3, v4, v1

    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 1332
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1333
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 1334
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1335
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1336
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1337
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1338
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1350
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 1335
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1342
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 1343
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1344
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1345
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1342
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1350
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3597
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_1

    .line 3598
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3601
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3602
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3604
    .local v2, v:Landroid/view/View;
    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3605
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3607
    if-eqz v2, :cond_0

    .line 3613
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3601
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3613
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3575
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3576
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3577
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3578
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3587
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3582
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3583
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3584
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3587
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3502
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3503
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3506
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3507
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3509
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3510
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3512
    if-eqz v2, :cond_0

    .line 3518
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3506
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3518
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .parameter "id"

    .prologue
    .line 3483
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3484
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3485
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3486
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3494
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3489
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3490
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3491
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3494
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3548
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3549
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3552
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3553
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3555
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3556
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3558
    if-eqz v2, :cond_0

    .line 3564
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3552
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3564
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    .line 3528
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3529
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3530
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3531
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3540
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3535
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3536
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3537
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3540
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    .line 2304
    const/4 v0, 0x0

    .line 2305
    .local v0, moved:Z
    const/16 v2, 0x21

    if-ne p1, v2, :cond_3

    .line 2306
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 2307
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2308
    .local v1, position:I
    if-ltz v1, :cond_0

    .line 2309
    iput v4, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2310
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2311
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2313
    :cond_0
    const/4 v0, 0x1

    .line 2327
    .end local v1           #position:I
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2328
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2329
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2332
    :cond_2
    return v0

    .line 2315
    :cond_3
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 2316
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 2317
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2318
    .restart local v1       #position:I
    if-ltz v1, :cond_4

    .line 2319
    const/4 v2, 0x3

    iput v2, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2320
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2321
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2323
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3628
    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3629
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 3658
    :cond_0
    :goto_0
    return-object v5

    .line 3634
    :cond_1
    iget v8, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 3635
    iget-object v7, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3636
    .local v7, states:Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 3637
    .local v3, count:I
    new-array v5, v3, [J

    .line 3638
    .local v5, ids:[J
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3640
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 3641
    .local v1, checkedCount:I
    const/4 v4, 0x0

    .local v4, i:I
    move v2, v1

    .end local v1           #checkedCount:I
    .local v2, checkedCount:I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 3642
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3643
    add-int/lit8 v1, v2, 0x1

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 3641
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #checkedCount:I
    .restart local v2       #checkedCount:I
    goto :goto_1

    .line 3649
    :cond_2
    if-eq v2, v3, :cond_0

    .line 3652
    new-array v6, v2, [J

    .line 3653
    .local v6, result:[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    .line 3655
    goto :goto_0

    .line 3658
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #checkedCount:I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #ids:[J
    .end local v6           #result:[J
    .end local v7           #states:Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v5, v10, [J

    goto :goto_0

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #checkedCount:I
    .restart local v3       #count:I
    .restart local v4       #i:I
    .restart local v5       #ids:[J
    .restart local v7       #states:Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    goto :goto_2
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3301
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3326
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 3044
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 189
    const v0, 0x3ea8f5c3

    iget v1, p0, Landroid/widget/ListView;->mBottom:I

    iget v2, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3403
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3384
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 3049
    iget-boolean v5, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    const/4 v4, 0x1

    .line 3051
    .local v4, retValue:Z
    :goto_0
    if-eqz v4, :cond_3

    .line 3053
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 3054
    .local v3, listTop:I
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3055
    .local v0, first:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_6

    :cond_2
    move v4, v6

    .line 3065
    .end local v0           #first:Landroid/view/View;
    .end local v3           #listTop:I
    .end local v4           #retValue:Z
    :cond_3
    :goto_2
    return v4

    :cond_4
    move v4, v6

    .line 3049
    goto :goto_0

    .line 3053
    .restart local v4       #retValue:Z
    :cond_5
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    goto :goto_1

    .line 3058
    .restart local v0       #first:Landroid/view/View;
    .restart local v3       #listTop:I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    :goto_3
    sub-int v2, v7, v5

    .line 3060
    .local v2, listBottom:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3061
    .local v1, last:Landroid/view/View;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v2, :cond_3

    :cond_7
    move v4, v6

    .line 3062
    goto :goto_2

    .line 3058
    .end local v1           #last:Landroid/view/View;
    .end local v2           #listBottom:I
    :cond_8
    iget v5, p0, Landroid/widget/ListView;->mPaddingBottom:I

    goto :goto_3
.end method

.method protected layoutChildren()V
    .locals 26

    .prologue
    .line 1509
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1510
    .local v8, blockLayoutRequests:Z
    if-nez v8, :cond_0

    .line 1511
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1517
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1519
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 1521
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 1522
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1523
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1755
    if-nez v8, :cond_0

    .line 1756
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1759
    :cond_0
    return-void

    .line 1527
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 1528
    .local v6, childrenTop:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTop:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v7, v2, v24

    .line 1530
    .local v7, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    .line 1531
    .local v10, childCount:I
    const/16 v19, 0x0

    .line 1532
    .local v19, index:I
    const/4 v5, 0x0

    .line 1535
    .local v5, delta:I
    const/4 v3, 0x0

    .line 1536
    .local v3, oldSel:Landroid/view/View;
    const/16 v20, 0x0

    .line 1537
    .local v20, oldFirst:Landroid/view/View;
    const/4 v4, 0x0

    .line 1539
    .local v4, newSel:Landroid/view/View;
    const/4 v14, 0x0

    .line 1542
    .local v14, focusLayoutRestoreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    .line 1557
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v19, v2, v24

    .line 1558
    if-ltz v19, :cond_2

    move/from16 v0, v19

    if-ge v0, v10, :cond_2

    .line 1559
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1563
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1565
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    if-ltz v2, :cond_3

    .line 1566
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move/from16 v24, v0

    sub-int v5, v2, v24

    .line 1570
    :cond_3
    add-int v2, v19, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1574
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/ListView;->mDataChanged:Z

    .line 1575
    .local v11, dataChanged:Z
    if-eqz v11, :cond_5

    .line 1576
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->handleDataChanged()V

    .line 1581
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mItemCount:I

    if-nez v2, :cond_6

    .line 1582
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1583
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 1755
    if-nez v8, :cond_0

    goto/16 :goto_0

    .line 1544
    .end local v11           #dataChanged:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v19, v2, v24

    .line 1545
    if-ltz v19, :cond_4

    move/from16 v0, v19

    if-ge v0, v10, :cond_4

    .line 1546
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1585
    .restart local v11       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Landroid/widget/ListAdapter;->getCount()I

    move-result v24

    move/from16 v0, v24

    if-eq v2, v0, :cond_8

    .line 1586
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") with Adapter("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1755
    .end local v3           #oldSel:Landroid/view/View;
    .end local v4           #newSel:Landroid/view/View;
    .end local v5           #delta:I
    .end local v6           #childrenTop:I
    .end local v7           #childrenBottom:I
    .end local v10           #childCount:I
    .end local v11           #dataChanged:Z
    .end local v14           #focusLayoutRestoreView:Landroid/view/View;
    .end local v19           #index:I
    .end local v20           #oldFirst:Landroid/view/View;
    :catchall_0
    move-exception v2

    if-nez v8, :cond_7

    .line 1756
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1755
    :cond_7
    throw v2

    .line 1593
    .restart local v3       #oldSel:Landroid/view/View;
    .restart local v4       #newSel:Landroid/view/View;
    .restart local v5       #delta:I
    .restart local v6       #childrenTop:I
    .restart local v7       #childrenBottom:I
    .restart local v10       #childCount:I
    .restart local v11       #dataChanged:Z
    .restart local v14       #focusLayoutRestoreView:Landroid/view/View;
    .restart local v19       #index:I
    .restart local v20       #oldFirst:Landroid/view/View;
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1597
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1598
    .local v12, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v22, v0

    .line 1601
    .local v22, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    const/4 v13, 0x0

    .line 1605
    .local v13, focusLayoutRestoreDirectChild:Landroid/view/View;
    if-eqz v11, :cond_9

    .line 1606
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v10, :cond_a

    .line 1607
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v24, v12, v18

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1606
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1614
    .end local v18           #i:I
    :cond_9
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v12}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1621
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v17

    .line 1622
    .local v17, focusedChild:Landroid/view/View;
    if-eqz v17, :cond_d

    .line 1627
    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1628
    :cond_b
    move-object/from16 v13, v17

    .line 1630
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v14

    .line 1631
    if-eqz v14, :cond_c

    .line 1633
    invoke-virtual {v14}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1636
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->requestFocus()Z

    .line 1640
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    .line 1642
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    .line 1669
    if-nez v10, :cond_16

    .line 1670
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v2, :cond_15

    .line 1671
    const/4 v2, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1672
    .local v21, position:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1673
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v23

    .line 1694
    .end local v6           #childrenTop:I
    .end local v21           #position:I
    .local v23, sel:Landroid/view/View;
    :goto_3
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1696
    if-eqz v23, :cond_1e

    .line 1699
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v2, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1700
    move-object/from16 v0, v23

    if-ne v0, v13, :cond_e

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_f
    const/4 v15, 0x1

    .line 1702
    .local v15, focusWasTaken:Z
    :goto_4
    if-nez v15, :cond_1c

    .line 1706
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v16

    .line 1707
    .local v16, focused:Landroid/view/View;
    if-eqz v16, :cond_10

    .line 1708
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->clearFocus()V

    .line 1710
    :cond_10
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1718
    .end local v15           #focusWasTaken:Z
    .end local v16           #focused:Landroid/view/View;
    :goto_5
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ListView;->mSelectedTop:I

    .line 1737
    :cond_11
    :goto_6
    if-eqz v14, :cond_12

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1739
    invoke-virtual {v14}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1742
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ListView;->mLayoutMode:I

    .line 1743
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ListView;->mDataChanged:Z

    .line 1744
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ListView;->mNeedSync:Z

    .line 1745
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1747
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->updateScrollIndicators()V

    .line 1749
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mItemCount:I

    if-lez v2, :cond_13

    .line 1750
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 1753
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 1755
    if-nez v8, :cond_0

    goto/16 :goto_0

    .line 1644
    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :pswitch_2
    if-eqz v4, :cond_14

    .line 1645
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1647
    .end local v23           #sel:Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v23

    .line 1649
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1651
    .end local v23           #sel:Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSpecificTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .line 1652
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1654
    .end local v23           #sel:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v23

    .line 1655
    .restart local v23       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1658
    .end local v23           #sel:Landroid/view/View;
    :pswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1659
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v23

    .line 1660
    .restart local v23       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1663
    .end local v23           #sel:Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSpecificTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .line 1664
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v23           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v2, p0

    .line 1666
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v23

    .line 1667
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1675
    .end local v23           #sel:Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1676
    .restart local v21       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1677
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v23

    .line 1678
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1680
    .end local v21           #position:I
    .end local v23           #sel:Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ltz v2, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v2, v0, :cond_18

    .line 1681
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    if-nez v3, :cond_17

    .end local v6           #childrenTop:I
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :cond_17
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_7

    .line 1683
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v2, v0, :cond_1a

    .line 1684
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v20, :cond_19

    .end local v6           #childrenTop:I
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :cond_19
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_8

    .line 1687
    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1700
    .end local v6           #childrenTop:I
    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 1712
    .restart local v15       #focusWasTaken:Z
    :cond_1c
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 1716
    .end local v15           #focusWasTaken:Z
    :cond_1d
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 1720
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mTouchMode:I

    if-lez v2, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mTouchMode:I

    const/16 v24, 0x3

    move/from16 v0, v24

    if-ge v2, v0, :cond_20

    .line 1721
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1722
    .local v9, child:Landroid/view/View;
    if-eqz v9, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1730
    .end local v9           #child:Landroid/view/View;
    :cond_1f
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v14, :cond_11

    .line 1731
    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_6

    .line 1724
    :cond_20
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ListView;->mSelectedTop:I

    .line 1725
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    .line 1542
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1642
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v2, -0x1

    .line 2017
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2018
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2044
    :cond_0
    :goto_0
    return v2

    .line 2022
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2023
    .local v1, count:I
    iget-boolean v3, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_4

    .line 2024
    if-eqz p2, :cond_2

    .line 2025
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2026
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2027
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2030
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2031
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2032
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2036
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2039
    goto :goto_0

    .line 2041
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2044
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1271
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1272
    .local v1, adapter:Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 1273
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v6, v10, v11

    .line 1327
    :cond_0
    :goto_0
    return v6

    .line 1277
    :cond_1
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 1278
    .local v9, returnedHeight:I
    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    if-lez v10, :cond_6

    iget-object v10, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1281
    .local v3, dividerHeight:I
    :goto_1
    const/4 v6, 0x0

    .line 1286
    .local v6, prevHeightWithoutPartialChild:I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1287
    :cond_2
    iget-object v7, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1288
    .local v7, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v8

    .line 1289
    .local v8, recyle:Z
    iget-object v5, p0, Landroid/widget/ListView;->mIsScrap:[Z

    .line 1291
    .local v5, isScrap:[Z
    move v4, p2

    .local v4, i:I
    :goto_2
    if-gt v4, p3, :cond_9

    .line 1292
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1294
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1296
    if-lez v4, :cond_3

    .line 1298
    add-int/2addr v9, v3

    .line 1302
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    iget v10, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1304
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1307
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 1309
    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    .line 1312
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v4, v0, :cond_5

    if-lez v6, :cond_5

    move/from16 v0, p4

    if-ne v9, v0, :cond_0

    :cond_5
    move/from16 v6, p4

    goto :goto_0

    .line 1278
    .end local v2           #child:Landroid/view/View;
    .end local v3           #dividerHeight:I
    .end local v4           #i:I
    .end local v5           #isScrap:[Z
    .end local v6           #prevHeightWithoutPartialChild:I
    .end local v7           #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .end local v8           #recyle:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1320
    .restart local v2       #child:Landroid/view/View;
    .restart local v3       #dividerHeight:I
    .restart local v4       #i:I
    .restart local v5       #isScrap:[Z
    .restart local v6       #prevHeightWithoutPartialChild:I
    .restart local v7       #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .restart local v8       #recyle:Z
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    .line 1321
    move v6, v9

    .line 1291
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v6, v9

    .line 1327
    goto :goto_0
.end method

.method final measureTotalHeightOfChildrenWithBound(IIII)I
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "bound"

    .prologue
    .line 1198
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1200
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 1201
    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int v8, v9, v10

    .line 1238
    :cond_0
    return v8

    .line 1205
    :cond_1
    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int v8, v9, v10

    .line 1206
    .local v8, returnedHeight:I
    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    if-lez v9, :cond_5

    iget-object v9, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_5

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1211
    .local v3, dividerHeight:I
    :goto_0
    const/4 v9, -0x1

    if-ne p3, v9, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 p3, v9, -0x1

    .line 1212
    :cond_2
    iget-object v6, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1213
    .local v6, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v7

    .line 1214
    .local v7, recyle:Z
    iget-object v5, p0, Landroid/widget/ListView;->mIsScrap:[Z

    .line 1216
    .local v5, isScrap:[Z
    const/4 v1, 0x1

    .line 1218
    .local v1, bInBound:Z
    move v4, p2

    .local v4, i:I
    :goto_1
    if-gt v4, p3, :cond_0

    if-eqz v1, :cond_0

    .line 1220
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1222
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1224
    if-lez v4, :cond_3

    .line 1226
    add-int/2addr v8, v3

    .line 1230
    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/AbsListView$LayoutParams;

    iget v9, v9, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v6, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1232
    invoke-virtual {v6, v2, v4}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1234
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 1235
    if-gt v8, p4, :cond_6

    const/4 v1, 0x1

    .line 1218
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1206
    .end local v1           #bInBound:Z
    .end local v2           #child:Landroid/view/View;
    .end local v3           #dividerHeight:I
    .end local v4           #i:I
    .end local v5           #isScrap:[Z
    .end local v6           #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .end local v7           #recyle:Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 1235
    .restart local v1       #bInBound:Z
    .restart local v2       #child:Landroid/view/View;
    .restart local v3       #dividerHeight:I
    .restart local v4       #i:I
    .restart local v5       #isScrap:[Z
    .restart local v6       #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .restart local v7       #recyle:Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3465
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    .line 3467
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3468
    .local v0, count:I
    if-lez v0, :cond_1

    .line 3469
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3470
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3469
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3472
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    .line 3474
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 15
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 3408
    invoke-super/range {p0 .. p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3410
    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3411
    .local v2, adapter:Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    .line 3412
    .local v5, closetChildIndex:I
    const/4 v4, 0x0

    .line 3413
    .local v4, closestChildTop:I
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 3414
    iget v12, p0, Landroid/widget/ListView;->mScrollX:I

    iget v13, p0, Landroid/widget/ListView;->mScrollY:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 3418
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v13

    iget v14, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_0

    .line 3419
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 3420
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 3425
    :cond_0
    iget-object v11, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3426
    .local v11, otherRect:Landroid/graphics/Rect;
    const v9, 0x7fffffff

    .line 3427
    .local v9, minDistance:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 3428
    .local v3, childCount:I
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3430
    .local v7, firstPosition:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 3432
    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 3430
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3436
    :cond_2
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3437
    .local v10, other:Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3438
    invoke-virtual {p0, v10, v11}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3439
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 3441
    .local v6, distance:I
    if-ge v6, v9, :cond_1

    .line 3442
    move v9, v6

    .line 3443
    move v5, v8

    .line 3444
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_1

    .line 3449
    .end local v3           #childCount:I
    .end local v6           #distance:I
    .end local v7           #firstPosition:I
    .end local v8           #i:I
    .end local v9           #minDistance:I
    .end local v10           #other:Landroid/view/View;
    .end local v11           #otherRect:Landroid/graphics/Rect;
    :cond_3
    if-ltz v5, :cond_4

    .line 3450
    iget v12, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 3454
    :goto_2
    return-void

    .line 3452
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2086
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 2091
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2096
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1113
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1115
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1116
    .local v11, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1117
    .local v10, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1118
    .local v12, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1120
    .local v4, heightSize:I
    const/4 v9, 0x0

    .line 1121
    .local v9, childWidth:I
    const/4 v7, 0x0

    .line 1122
    .local v7, childHeight:I
    const/4 v8, 0x0

    .line 1124
    .local v8, childState:I
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    iput v0, p0, Landroid/widget/ListView;->mItemCount:I

    .line 1125
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v11, :cond_0

    if-nez v10, :cond_1

    .line 1127
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1129
    .local v6, child:Landroid/view/View;
    invoke-direct {p0, v6, v2, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1131
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1132
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1133
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Landroid/widget/ListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1135
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1137
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1141
    .end local v6           #child:Landroid/view/View;
    :cond_1
    if-nez v11, :cond_5

    .line 1142
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v12, v0, v1

    .line 1148
    :goto_1
    if-nez v10, :cond_2

    .line 1149
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1153
    :cond_2
    const/high16 v0, -0x8000

    if-ne v10, v0, :cond_3

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1155
    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1158
    :cond_3
    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 1159
    iput p1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    .line 1160
    return-void

    .line 1124
    :cond_4
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 1145
    :cond_5
    const/high16 v0, -0x100

    and-int/2addr v0, v8

    or-int/2addr v12, v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1094
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1095
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1096
    .local v2, focusedChild:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1097
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1098
    .local v1, childPosition:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1099
    .local v0, childBottom:I
    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/ListView;->mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1100
    .local v3, offset:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1101
    .local v4, top:I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1102
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V

    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1104
    :cond_0
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setup(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1107
    .end local v0           #childBottom:I
    .end local v1           #childPosition:I
    .end local v2           #focusedChild:Landroid/view/View;
    .end local v3           #offset:I
    .end local v4           #top:I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1108
    return-void
.end method

.method pageScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2258
    const/4 v1, -0x1

    .line 2259
    .local v1, nextPage:I
    const/4 v0, 0x0

    .line 2261
    .local v0, down:Z
    const/16 v5, 0x21

    if-ne p1, v5, :cond_4

    .line 2262
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2268
    :cond_0
    :goto_0
    if-ltz v1, :cond_5

    .line 2269
    invoke-virtual {p0, v1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2270
    .local v2, position:I
    if-ltz v2, :cond_5

    .line 2271
    const/4 v4, 0x4

    iput v4, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2272
    iget v4, p0, Landroid/widget/ListView;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/ListView;->mSpecificTop:I

    .line 2274
    if-eqz v0, :cond_1

    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_1

    .line 2275
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2278
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 2279
    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2282
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2283
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2284
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2285
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2292
    .end local v2           #position:I
    :cond_3
    :goto_1
    return v3

    .line 2263
    :cond_4
    const/16 v5, 0x82

    if-ne p1, v5, :cond_0

    .line 2264
    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2265
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v3, v4

    .line 2292
    goto :goto_1
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1191
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 385
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 391
    :cond_0
    const/4 v0, 0x1

    .line 393
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 396
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 300
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 306
    :cond_0
    const/4 v0, 0x1

    .line 308
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 311
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 547
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 550
    .local v9, rectTopWithinChild:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 551
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 553
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v6

    .line 554
    .local v6, height:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v8

    .line 555
    .local v8, listUnfadedTop:I
    add-int v7, v8, v6

    .line 556
    .local v7, listUnfadedBottom:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 558
    .local v5, fadingEdge:I
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 560
    iget v13, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v9, v5, :cond_1

    .line 561
    :cond_0
    add-int/2addr v8, v5

    .line 565
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 566
    .local v2, childCount:I
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 568
    .local v1, bottomOfBottomChild:I
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 570
    iget v13, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v14, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v5

    if-ge v13, v14, :cond_3

    .line 572
    :cond_2
    sub-int/2addr v7, v5

    .line 576
    :cond_3
    const/4 v11, 0x0

    .line 578
    .local v11, scrollYDelta:I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v8, :cond_7

    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_6

    .line 585
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int/2addr v11, v13

    .line 592
    :goto_0
    sub-int v4, v1, v7

    .line 593
    .local v4, distanceToBottom:I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 613
    .end local v4           #distanceToBottom:I
    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    .line 614
    .local v10, scroll:Z
    :goto_2
    if-eqz v10, :cond_5

    .line 615
    neg-int v13, v11

    invoke-direct {p0, v13}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 616
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 617
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 618
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 620
    :cond_5
    return v10

    .line 588
    .end local v10           #scroll:Z
    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_0

    .line 594
    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v8, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v7, :cond_4

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_8

    .line 601
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 608
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 609
    .local v12, top:I
    sub-int v3, v12, v8

    .line 610
    .local v3, deltaToTop:I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .line 604
    .end local v3           #deltaToTop:I
    .end local v12           #top:I
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v11, v13

    goto :goto_3

    .line 613
    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 500
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 502
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 504
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 505
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter "adapter"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 438
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 442
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 443
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 445
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 446
    :cond_1
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 451
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ListView;->mOldSelectedPosition:I

    .line 452
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid/widget/ListView;->mOldSelectedRowId:J

    .line 455
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 457
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    .line 458
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 459
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    iput v1, p0, Landroid/widget/ListView;->mOldItemCount:I

    .line 460
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mItemCount:I

    .line 461
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 463
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 464
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 466
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 469
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-eqz v1, :cond_4

    .line 470
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 474
    .local v0, position:I
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 475
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 477
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    if-nez v1, :cond_2

    .line 479
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 488
    .end local v0           #position:I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 489
    return-void

    .line 448
    :cond_3
    iput-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 472
    :cond_4
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_1

    .line 482
    .end local v0           #position:I
    :cond_5
    iput-boolean v5, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 483
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 485
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 3070
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 3071
    .local v0, opaque:Z
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 3072
    if-eqz v0, :cond_1

    .line 3073
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 3074
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3076
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3078
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3079
    return-void

    .line 3070
    .end local v0           #opaque:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "divider"

    .prologue
    const/4 v0, 0x0

    .line 3311
    if-eqz p1, :cond_2

    .line 3312
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3316
    :goto_0
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3317
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3318
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3319
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3320
    return-void

    .line 3314
    :cond_2
    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 3336
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3337
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3338
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3339
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .parameter "footerDividersEnabled"

    .prologue
    .line 3363
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3364
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3365
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .parameter "headerDividersEnabled"

    .prologue
    .line 3350
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3351
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3352
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .parameter "itemsCanFocus"

    .prologue
    .line 3033
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 3034
    if-nez p1, :cond_0

    .line 3035
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 3037
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 3395
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3396
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3397
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 3374
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3375
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    if-gez v0, :cond_0

    .line 3376
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3378
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 420
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 421
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1941
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1942
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 2053
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2054
    .local v0, count:I
    if-lez v0, :cond_0

    .line 2055
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2066
    :goto_0
    return-void

    .line 2059
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2060
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 2062
    :cond_1
    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2063
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .parameter "position"
    .parameter "y"

    .prologue
    .line 1954
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 1978
    :cond_0
    :goto_0
    return-void

    .line 1958
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1959
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 1960
    if-ltz p1, :cond_2

    .line 1961
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1967
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 1968
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 1969
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/ListView;->mSpecificTop:I

    .line 1971
    iget-boolean v0, p0, Landroid/widget/ListView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 1972
    iput p1, p0, Landroid/widget/ListView;->mSyncPosition:I

    .line 1973
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/ListView;->mSyncRowId:J

    .line 1976
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_0

    .line 1964
    :cond_4
    iput p1, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1987
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1988
    const/4 v0, 0x0

    .line 1990
    .local v0, awakeScrollbars:Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1992
    .local v1, selectedPosition:I
    if-ltz v1, :cond_0

    .line 1993
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_2

    .line 1994
    const/4 v0, 0x1

    .line 2000
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2002
    if-eqz v0, :cond_1

    .line 2003
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2005
    :cond_1
    return-void

    .line 1995
    :cond_2
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 1996
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .parameter "offset"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 906
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 907
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .parameter "position"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 896
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 897
    return-void
.end method
