.class Lcom/android/camera/effect/EffectControlUI$13;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectControlUI;->initializeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectControlUI;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI$13;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "mv"

    .prologue
    .line 366
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$13;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$800(Lcom/android/camera/effect/EffectControlUI;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 367
    .local v0, containerWidth:I
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$13;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$800(Lcom/android/camera/effect/EffectControlUI;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    sub-int v2, v0, v2

    div-int/lit8 v1, v2, 0x2

    .line 368
    .local v1, marginLeft:I
    neg-int v2, v1

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 369
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$13;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$800(Lcom/android/camera/effect/EffectControlUI;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method
