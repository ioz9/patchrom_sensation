.class Lcom/android/phone/CallFeaturesSetting$4;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting;->onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2538
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iput-object p2, p0, Lcom/android/phone/CallFeaturesSetting$4;->val$sp:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 2541
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$4;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2542
    .local v0, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_cb_enable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2544
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2545
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$700(Lcom/android/phone/CallFeaturesSetting;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 2546
    return-void
.end method
