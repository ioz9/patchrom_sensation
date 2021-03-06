.class final Lcom/android/server/HtcPowerSaver$Animations;
.super Lcom/android/server/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Animations"
.end annotation


# instance fields
.field private final KEY_N_ANIMATION0:Ljava/lang/String;

.field private final KEY_N_ANIMATION1:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "ctx"

    .prologue
    .line 821
    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$Animations;->this$0:Lcom/android/server/HtcPowerSaver;

    .line 822
    const-string v2, "Animations"

    const-string v3, "powersaver_onscreen_animation"

    const/4 v4, 0x1

    const-string v5, "sys.psaver.anim"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HtcPowerSaver$Feature;-><init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 816
    const-string v0, "psaver_normal_animation_0"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$Animations;->KEY_N_ANIMATION0:Ljava/lang/String;

    .line 817
    const-string v0, "psaver_normal_animation_1"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$Animations;->KEY_N_ANIMATION1:Ljava/lang/String;

    .line 823
    iput-object p2, p0, Lcom/android/server/HtcPowerSaver$Animations;->mContext:Landroid/content/Context;

    .line 824
    return-void
.end method

.method private getSysSettings()[F
    .locals 5

    .prologue
    .line 828
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 829
    .local v2, mWindowManager:Landroid/view/IWindowManager;
    if-nez v2, :cond_0

    .line 831
    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$Animations;->TAG:Ljava/lang/String;

    const-string v4, "error at IWindowManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_0
    const/4 v0, 0x0

    .line 837
    .local v0, AnimationScales:[F
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->getAnimationScales()[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 841
    :goto_0
    return-object v0

    .line 838
    :catch_0
    move-exception v1

    .line 839
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setSysSettings([F)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 846
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 847
    .local v1, mWindowManager:Landroid/view/IWindowManager;
    if-nez v1, :cond_0

    .line 849
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Animations;->TAG:Ljava/lang/String;

    const-string v3, "Get Window Manager Servcie fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :goto_0
    return-void

    .line 854
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setAnimationScales([F)V

    .line 855
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Animations;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSysSettings: animation[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", animation[1]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 3

    .prologue
    .line 878
    const/4 v1, 0x2

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 879
    .local v0, mAnimationScales:[F
    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver$Animations;->setSysSettings([F)V

    .line 880
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$Animations;->TAG:Ljava/lang/String;

    const-string v2, "applyPowerSaverSettings."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v1, 0x0

    return v1

    .line 878
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected restoreSystemSettings()I
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 886
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Animations;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/server/HtcPowerSaver$Animations;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 887
    .local v1, sp:Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 889
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Animations;->TAG:Ljava/lang/String;

    const-string v3, "Get SharedPreferences fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :goto_0
    return v4

    .line 892
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    .line 893
    .local v0, normalAnimation:[F
    const-string v2, "psaver_normal_animation_0"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    aput v2, v0, v4

    .line 894
    const/4 v2, 0x1

    const-string v3, "psaver_normal_animation_1"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    aput v3, v0, v2

    .line 895
    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver$Animations;->setSysSettings([F)V

    goto :goto_0

    .line 892
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected saveSystemSettings()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 863
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Animations;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/server/HtcPowerSaver$Animations;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 864
    .local v1, sp:Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 866
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Animations;->TAG:Ljava/lang/String;

    const-string v3, "Get SharedPreferences fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :goto_0
    return v5

    .line 869
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Animations;->getSysSettings()[F

    move-result-object v0

    .line 870
    .local v0, animation:[F
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "psaver_normal_animation_0"

    aget v4, v0, v5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 871
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "psaver_normal_animation_1"

    aget v4, v0, v6

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 872
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Animations;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveSystemSettings: animation[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", animation[1]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
