.class final Lcom/android/phone/PhoneUtils$9;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 2417
    const-string v5, "query complete, updating connection.userdata"

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    move-object v2, p2

    .line 2418
    check-cast v2, Lcom/android/internal/telephony/Connection;

    .local v2, conn:Lcom/android/internal/telephony/Connection;
    move-object v0, p2

    .line 2425
    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2426
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v4

    .line 2427
    .local v4, o:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 2428
    .local v1, ciOld:Lcom/android/internal/telephony/CallerInfo;
    instance-of v5, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v5, :cond_3

    .line 2429
    check-cast v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v4           #o:Ljava/lang/Object;
    iget-object v1, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2436
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- onQueryComplete: CallerInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 2437
    iget-boolean v5, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v5, :cond_1

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2454
    :cond_1
    iget v5, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-nez v5, :cond_2

    .line 2455
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    iput v5, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2479
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> Stashing CallerInfo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " into the connection..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 2480
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 2483
    invoke-static {v1, p3}, Lcom/android/phone/EcidClient;->updateCallerInfoMapping(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2485
    return-void

    .line 2430
    .restart local v4       #o:Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v5, :cond_0

    move-object v1, v4

    .line 2431
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0

    .line 2462
    .end local v4           #o:Ljava/lang/Object;
    :cond_4
    const/4 v5, 0x0

    invoke-static {v5, v2}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 2466
    .local v3, newCi:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v3, :cond_2

    .line 2467
    iget-object v5, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2468
    iget-object v5, p3, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 2470
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v5, :cond_5

    .line 2472
    iget-object v5, p3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2473
    iget v5, p3, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iput v5, v3, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 2476
    :cond_5
    move-object p3, v3

    goto :goto_1
.end method
