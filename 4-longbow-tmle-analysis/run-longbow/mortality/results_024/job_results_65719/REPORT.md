---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** dead6plus

## Predictor Variables

**Intervention Variable:** ever_swasted024

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* hhwealth_quart
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_parity
* impsan
* safeh20
* delta_vagbrth
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_swasted024    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                          0     6819    7164  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                          1       43    7164  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                          0      297    7164  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                          1        5    7164  dead6plus        
EE                PAKISTAN                       0                          0      293     375  dead6plus        
EE                PAKISTAN                       0                          1        2     375  dead6plus        
EE                PAKISTAN                       1                          0       78     375  dead6plus        
EE                PAKISTAN                       1                          1        2     375  dead6plus        
GMS-Nepal         NEPAL                          0                          0      419     592  dead6plus        
GMS-Nepal         NEPAL                          0                          1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                          0      171     592  dead6plus        
GMS-Nepal         NEPAL                          1                          1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                          0     1728    1874  dead6plus        
iLiNS-DOSE        MALAWI                         0                          1      123    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                          0       19    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                          1        4    1874  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                          0     1109    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                          1       24    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                          0       24    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                          1        4    1161  dead6plus        
JiVitA-3          BANGLADESH                     0                          0    19442   21023  dead6plus        
JiVitA-3          BANGLADESH                     0                          1      266   21023  dead6plus        
JiVitA-3          BANGLADESH                     1                          0     1276   21023  dead6plus        
JiVitA-3          BANGLADESH                     1                          1       39   21023  dead6plus        
JiVitA-4          BANGLADESH                     0                          0     5049    5433  dead6plus        
JiVitA-4          BANGLADESH                     0                          1       41    5433  dead6plus        
JiVitA-4          BANGLADESH                     1                          0      334    5433  dead6plus        
JiVitA-4          BANGLADESH                     1                          1        9    5433  dead6plus        
Keneba            GAMBIA                         0                          0     2185    2752  dead6plus        
Keneba            GAMBIA                         0                          1       55    2752  dead6plus        
Keneba            GAMBIA                         1                          0      488    2752  dead6plus        
Keneba            GAMBIA                         1                          1       24    2752  dead6plus        
MAL-ED            BANGLADESH                     0                          0      219     240  dead6plus        
MAL-ED            BANGLADESH                     0                          1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                          0       21     240  dead6plus        
MAL-ED            BANGLADESH                     1                          1        0     240  dead6plus        
MAL-ED            INDIA                          0                          0      211     235  dead6plus        
MAL-ED            INDIA                          0                          1        0     235  dead6plus        
MAL-ED            INDIA                          1                          0       24     235  dead6plus        
MAL-ED            INDIA                          1                          1        0     235  dead6plus        
MAL-ED            PERU                           0                          0      268     273  dead6plus        
MAL-ED            PERU                           0                          1        1     273  dead6plus        
MAL-ED            PERU                           1                          0        4     273  dead6plus        
MAL-ED            PERU                           1                          1        0     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                          0      246     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                          1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                          0       15     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                          1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          0      236     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          0        9     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                          0      576     617  dead6plus        
PROVIDE           BANGLADESH                     0                          1        3     617  dead6plus        
PROVIDE           BANGLADESH                     1                          0       38     617  dead6plus        
PROVIDE           BANGLADESH                     1                          1        0     617  dead6plus        
SAS-CompFeed      INDIA                          0                          0     1172    1389  dead6plus        
SAS-CompFeed      INDIA                          0                          1        5    1389  dead6plus        
SAS-CompFeed      INDIA                          1                          0      205    1389  dead6plus        
SAS-CompFeed      INDIA                          1                          1        7    1389  dead6plus        
SAS-FoodSuppl     INDIA                          0                          0      331     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                          1        2     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                          0       67     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                          1        2     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     1948    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      148    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                          0     3233    3615  dead6plus        
VITAMIN-A         INDIA                          0                          1       21    3615  dead6plus        
VITAMIN-A         INDIA                          1                          0      351    3615  dead6plus        
VITAMIN-A         INDIA                          1                          1       10    3615  dead6plus        
ZVITAMBO          ZIMBABWE                       0                          0    10288   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       0                          1      319   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       1                          0      994   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       1                          1       93   11694  dead6plus        


The following strata were considered:

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-3, country: BANGLADESH
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: VITAMIN-A, country: INDIA
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/73efeaec-8219-488b-8552-c96c0bac5577/c40aced4-fa8e-40b7-a9c4-dd3b92f6b642/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/73efeaec-8219-488b-8552-c96c0bac5577/c40aced4-fa8e-40b7-a9c4-dd3b92f6b642/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/73efeaec-8219-488b-8552-c96c0bac5577/c40aced4-fa8e-40b7-a9c4-dd3b92f6b642/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/73efeaec-8219-488b-8552-c96c0bac5577/c40aced4-fa8e-40b7-a9c4-dd3b92f6b642/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0062664    0.0043992   0.0081336
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0165563    0.0021640   0.0309486
JiVitA-3          BANGLADESH     0                    NA                0.0135088    0.0118848   0.0151328
JiVitA-3          BANGLADESH     1                    NA                0.0293120    0.0194289   0.0391950
JiVitA-4          BANGLADESH     0                    NA                0.0080550    0.0055951   0.0105150
JiVitA-4          BANGLADESH     1                    NA                0.0262391    0.0077658   0.0447123
Keneba            GAMBIA         0                    NA                0.0245165    0.0181270   0.0309060
Keneba            GAMBIA         1                    NA                0.0442840    0.0268810   0.0616870
SAS-CompFeed      INDIA          0                    NA                0.0042481   -0.0009729   0.0094691
SAS-CompFeed      INDIA          1                    NA                0.0330189    0.0133675   0.0526703
VITAMIN-A         INDIA          0                    NA                0.0064691    0.0037054   0.0092329
VITAMIN-A         INDIA          1                    NA                0.0297607    0.0103467   0.0491746
ZVITAMBO          ZIMBABWE       0                    NA                0.0302012    0.0269471   0.0334554
ZVITAMBO          ZIMBABWE       1                    NA                0.0821899    0.0658049   0.0985749


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067002   0.0048109   0.0085894
JiVitA-3          BANGLADESH     NA                   NA                0.0145079   0.0128686   0.0161473
JiVitA-4          BANGLADESH     NA                   NA                0.0092030   0.0066160   0.0117900
Keneba            GAMBIA         NA                   NA                0.0287064   0.0224666   0.0349461
SAS-CompFeed      INDIA          NA                   NA                0.0086393   0.0042356   0.0130430
VITAMIN-A         INDIA          NA                   NA                0.0085754   0.0055692   0.0115815
ZVITAMBO          ZIMBABWE       NA                   NA                0.0352317   0.0318901   0.0385734


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate   ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ---------  ---------  ----------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.000000    1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.642076   1.054026    6.622767
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.000000    1.000000
JiVitA-3          BANGLADESH     1                    0                 2.169841   1.518481    3.100606
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.000000    1.000000
JiVitA-4          BANGLADESH     1                    0                 3.257484   1.512352    7.016357
Keneba            GAMBIA         0                    0                 1.000000   1.000000    1.000000
Keneba            GAMBIA         1                    0                 1.806293   1.126979    2.895078
SAS-CompFeed      INDIA          0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed      INDIA          1                    0                 7.772641   1.672599   36.119813
VITAMIN-A         INDIA          0                    0                 1.000000   1.000000    1.000000
VITAMIN-A         INDIA          1                    0                 4.600421   2.109299   10.033608
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.000000    1.000000
ZVITAMBO          ZIMBABWE       1                    0                 2.721411   2.169877    3.413133


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0004338   -0.0001799   0.0010474
JiVitA-3          BANGLADESH     0                    NA                0.0009991    0.0003805   0.0016177
JiVitA-4          BANGLADESH     0                    NA                0.0011480   -0.0000335   0.0023295
Keneba            GAMBIA         0                    NA                0.0041899    0.0005673   0.0078125
SAS-CompFeed      INDIA          0                    NA                0.0043912    0.0008961   0.0078864
VITAMIN-A         INDIA          0                    NA                0.0021063    0.0003769   0.0038356
ZVITAMBO          ZIMBABWE       0                    NA                0.0050305    0.0034343   0.0066268


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0647406   -0.0294852   0.1503422
JiVitA-3          BANGLADESH     0                    NA                0.0688669    0.0262415   0.1096264
JiVitA-4          BANGLADESH     0                    NA                0.1247426   -0.0053483   0.2379999
Keneba            GAMBIA         0                    NA                0.1459567    0.0145382   0.2598496
SAS-CompFeed      INDIA          0                    NA                0.5082838   -0.2242311   0.8025007
VITAMIN-A         INDIA          0                    NA                0.2456173    0.0387486   0.4079663
ZVITAMBO          ZIMBABWE       0                    NA                0.1427843    0.0983513   0.1850276
