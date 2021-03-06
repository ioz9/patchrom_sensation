.class public Lcom/android/phone/HtcCdmaGlobalRoamingPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcCdmaGlobalRoamingPreference.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaGlobalRoamingPreference"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object p1, p0, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 31
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 62
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onDialogClosed(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    const-string v0, "HtcCdmaGlobalRoamingPreference"

    const-string v1, "getValue is null!!Please check!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v0, "HtcCdmaGlobalRoamingPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->localSetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;I)V

    goto :goto_0

    .line 73
    :pswitch_1
    sget v0, Lcom/android/phone/HtcCdmaPhoneApp;->nHomeRoaming:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->getMobileDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->localGetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    if-nez v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->showAllowChargeDialog()V

    .line 78
    sput-boolean v3, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->hasShowAllowDialog:Z

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, v3}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->localSetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;I)V

    goto :goto_0

    .line 86
    :pswitch_2
    sget v0, Lcom/android/phone/HtcCdmaPhoneApp;->nHomeRoaming:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->getMobileDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->localGetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    if-nez v0, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->showAllowChargeDialog()V

    .line 91
    sput-boolean v3, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->hasShowAllowDialog:Z

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, v4}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->localSetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;I)V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected showAllowChargeDialog()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v0, roamingDialog:Landroid/content/Intent;
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "global_dialog"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    const-string v1, "HtcCdmaGlobalRoamingPreference"

    const-string v2, "show Allow charge dialog!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 7
    .parameter "state"

    .prologue
    const/16 v6, 0xf

    .line 39
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 41
    iget-object v3, p0, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->mDialog:Landroid/app/Dialog;

    const v4, 0x7f0e02d2

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 42
    iget-object v3, p0, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->localGetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    .line 43
    .local v0, currentOption:I
    const-string v3, "HtcCdmaGlobalRoamingPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentOption:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->setValue(Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x20200ab

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 46
    .local v1, mLL:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 48
    const-string v3, "HtcCdmaGlobalRoamingPreference"

    const-string v4, "mLL is exist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 50
    .local v2, tv:Landroid/widget/TextView;
    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v3, p0, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->mContext:Landroid/content/Context;

    const v4, 0x1010040

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 52
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v6, v6, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 53
    const v3, 0x7f0e01b0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 54
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 58
    .end local v2           #tv:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string v3, "HtcCdmaGlobalRoamingPreference"

    const-string v4, "mLL is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
