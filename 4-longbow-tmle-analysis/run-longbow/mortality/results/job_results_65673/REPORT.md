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

**Outcome Variable:** co_occurence

## Predictor Variables

**Intervention Variable:** ever_underweight06

**Adjustment Set:**

* sex
* arm
* brthmon
* single
* hhwealth_quart
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* delta_brthmon
* delta_single
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_underweight06    co_occurence   n_cell      n  outcome_variable 
---------------  -----------------------------  -------------------  -------------  -------  -----  -----------------
CMC-V-BCS-2002   INDIA                          0                                0      188    369  co_occurence     
CMC-V-BCS-2002   INDIA                          0                                1        1    369  co_occurence     
CMC-V-BCS-2002   INDIA                          1                                0      159    369  co_occurence     
CMC-V-BCS-2002   INDIA                          1                                1       21    369  co_occurence     
CMIN             BANGLADESH                     0                                0      109    237  co_occurence     
CMIN             BANGLADESH                     0                                1        2    237  co_occurence     
CMIN             BANGLADESH                     1                                0      102    237  co_occurence     
CMIN             BANGLADESH                     1                                1       24    237  co_occurence     
COHORTS          GUATEMALA                      0                                0      554    779  co_occurence     
COHORTS          GUATEMALA                      0                                1       11    779  co_occurence     
COHORTS          GUATEMALA                      1                                0      187    779  co_occurence     
COHORTS          GUATEMALA                      1                                1       27    779  co_occurence     
COHORTS          PHILIPPINES                    0                                0     1871   2487  co_occurence     
COHORTS          PHILIPPINES                    0                                1       77   2487  co_occurence     
COHORTS          PHILIPPINES                    1                                0      429   2487  co_occurence     
COHORTS          PHILIPPINES                    1                                1      110   2487  co_occurence     
CONTENT          PERU                           0                                0      192    200  co_occurence     
CONTENT          PERU                           0                                1        0    200  co_occurence     
CONTENT          PERU                           1                                0        8    200  co_occurence     
CONTENT          PERU                           1                                1        0    200  co_occurence     
EE               PAKISTAN                       0                                0       94    346  co_occurence     
EE               PAKISTAN                       0                                1        4    346  co_occurence     
EE               PAKISTAN                       1                                0      178    346  co_occurence     
EE               PAKISTAN                       1                                1       70    346  co_occurence     
GMS-Nepal        NEPAL                          0                                0      283    550  co_occurence     
GMS-Nepal        NEPAL                          0                                1       12    550  co_occurence     
GMS-Nepal        NEPAL                          1                                0      207    550  co_occurence     
GMS-Nepal        NEPAL                          1                                1       48    550  co_occurence     
IRC              INDIA                          0                                0      209    405  co_occurence     
IRC              INDIA                          0                                1        2    405  co_occurence     
IRC              INDIA                          1                                0      171    405  co_occurence     
IRC              INDIA                          1                                1       23    405  co_occurence     
JiVitA-4         BANGLADESH                     0                                0     2944   4547  co_occurence     
JiVitA-4         BANGLADESH                     0                                1       70   4547  co_occurence     
JiVitA-4         BANGLADESH                     1                                0     1166   4547  co_occurence     
JiVitA-4         BANGLADESH                     1                                1      367   4547  co_occurence     
Keneba           GAMBIA                         0                                0     1427   1863  co_occurence     
Keneba           GAMBIA                         0                                1       39   1863  co_occurence     
Keneba           GAMBIA                         1                                0      327   1863  co_occurence     
Keneba           GAMBIA                         1                                1       70   1863  co_occurence     
LCNI-5           MALAWI                         0                                0      606    692  co_occurence     
LCNI-5           MALAWI                         0                                1        5    692  co_occurence     
LCNI-5           MALAWI                         1                                0       68    692  co_occurence     
LCNI-5           MALAWI                         1                                1       13    692  co_occurence     
MAL-ED           BANGLADESH                     0                                0      147    221  co_occurence     
MAL-ED           BANGLADESH                     0                                1        3    221  co_occurence     
MAL-ED           BANGLADESH                     1                                0       60    221  co_occurence     
MAL-ED           BANGLADESH                     1                                1       11    221  co_occurence     
MAL-ED           BRAZIL                         0                                0      168    180  co_occurence     
MAL-ED           BRAZIL                         0                                1        0    180  co_occurence     
MAL-ED           BRAZIL                         1                                0       11    180  co_occurence     
MAL-ED           BRAZIL                         1                                1        1    180  co_occurence     
MAL-ED           INDIA                          0                                0      130    228  co_occurence     
MAL-ED           INDIA                          0                                1        0    228  co_occurence     
MAL-ED           INDIA                          1                                0       81    228  co_occurence     
MAL-ED           INDIA                          1                                1       17    228  co_occurence     
MAL-ED           NEPAL                          0                                0      190    229  co_occurence     
MAL-ED           NEPAL                          0                                1        0    229  co_occurence     
MAL-ED           NEPAL                          1                                0       35    229  co_occurence     
MAL-ED           NEPAL                          1                                1        4    229  co_occurence     
MAL-ED           PERU                           0                                0      180    222  co_occurence     
MAL-ED           PERU                           0                                1        1    222  co_occurence     
MAL-ED           PERU                           1                                0       36    222  co_occurence     
MAL-ED           PERU                           1                                1        5    222  co_occurence     
MAL-ED           SOUTH AFRICA                   0                                0      199    241  co_occurence     
MAL-ED           SOUTH AFRICA                   0                                1        2    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                                0       38    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                                1        2    241  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                0      187    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                1        0    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                0       37    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                1        1    225  co_occurence     
NIH-Birth        BANGLADESH                     0                                0      248    462  co_occurence     
NIH-Birth        BANGLADESH                     0                                1        6    462  co_occurence     
NIH-Birth        BANGLADESH                     1                                0      163    462  co_occurence     
NIH-Birth        BANGLADESH                     1                                1       45    462  co_occurence     
NIH-Crypto       BANGLADESH                     0                                0      419    634  co_occurence     
NIH-Crypto       BANGLADESH                     0                                1        5    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                                0      186    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                                1       24    634  co_occurence     
PROBIT           BELARUS                        0                                0     2061   2146  co_occurence     
PROBIT           BELARUS                        0                                1        1   2146  co_occurence     
PROBIT           BELARUS                        1                                0       84   2146  co_occurence     
PROBIT           BELARUS                        1                                1        0   2146  co_occurence     
PROVIDE          BANGLADESH                     0                                0      369    563  co_occurence     
PROVIDE          BANGLADESH                     0                                1       12    563  co_occurence     
PROVIDE          BANGLADESH                     1                                0      157    563  co_occurence     
PROVIDE          BANGLADESH                     1                                1       25    563  co_occurence     
ResPak           PAKISTAN                       0                                0        3      9  co_occurence     
ResPak           PAKISTAN                       0                                1        0      9  co_occurence     
ResPak           PAKISTAN                       1                                0        5      9  co_occurence     
ResPak           PAKISTAN                       1                                1        1      9  co_occurence     
SAS-CompFeed     INDIA                          0                                0      716   1260  co_occurence     
SAS-CompFeed     INDIA                          0                                1       18   1260  co_occurence     
SAS-CompFeed     INDIA                          1                                0      416   1260  co_occurence     
SAS-CompFeed     INDIA                          1                                1      110   1260  co_occurence     
SAS-FoodSuppl    INDIA                          0                                0      144    321  co_occurence     
SAS-FoodSuppl    INDIA                          0                                1       10    321  co_occurence     
SAS-FoodSuppl    INDIA                          1                                0      117    321  co_occurence     
SAS-FoodSuppl    INDIA                          1                                1       50    321  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                0      867    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                1        7    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                0       92    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                1       14    980  co_occurence     
ZVITAMBO         ZIMBABWE                       0                                0     1258   1692  co_occurence     
ZVITAMBO         ZIMBABWE                       0                                1       37   1692  co_occurence     
ZVITAMBO         ZIMBABWE                       1                                0      343   1692  co_occurence     
ZVITAMBO         ZIMBABWE                       1                                1       54   1692  co_occurence     


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CMIN, country: BANGLADESH
* studyid: COHORTS, country: GUATEMALA
* studyid: COHORTS, country: PHILIPPINES
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: IRC, country: INDIA
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: NIH-Birth, country: BANGLADESH
* studyid: NIH-Crypto, country: BANGLADESH
* studyid: PROBIT, country: BELARUS
* studyid: PROVIDE, country: BANGLADESH
* studyid: ResPak, country: PAKISTAN
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CMIN, country: BANGLADESH
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: IRC, country: INDIA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS
* studyid: ResPak, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
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
![](/tmp/cb76703b-4475-470e-81ea-0c839279cb81/8811082b-7719-47db-8f4e-69cb87cf868c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cb76703b-4475-470e-81ea-0c839279cb81/8811082b-7719-47db-8f4e-69cb87cf868c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cb76703b-4475-470e-81ea-0c839279cb81/8811082b-7719-47db-8f4e-69cb87cf868c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cb76703b-4475-470e-81ea-0c839279cb81/8811082b-7719-47db-8f4e-69cb87cf868c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          GUATEMALA                      0                    NA                0.0200149   0.0083712   0.0316586
COHORTS          GUATEMALA                      1                    NA                0.1313602   0.0839412   0.1787792
COHORTS          PHILIPPINES                    0                    NA                0.0416380   0.0325254   0.0507506
COHORTS          PHILIPPINES                    1                    NA                0.1812217   0.1482298   0.2142137
GMS-Nepal        NEPAL                          0                    NA                0.0418277   0.0186998   0.0649557
GMS-Nepal        NEPAL                          1                    NA                0.1828595   0.1345753   0.2311436
JiVitA-4         BANGLADESH                     0                    NA                0.0237647   0.0168916   0.0306379
JiVitA-4         BANGLADESH                     1                    NA                0.2330739   0.2083943   0.2577535
Keneba           GAMBIA                         0                    NA                0.0267636   0.0185260   0.0350013
Keneba           GAMBIA                         1                    NA                0.1736202   0.1365439   0.2106964
LCNI-5           MALAWI                         0                    NA                0.0081833   0.0010347   0.0153319
LCNI-5           MALAWI                         1                    NA                0.1604938   0.0804992   0.2404884
NIH-Birth        BANGLADESH                     0                    NA                0.0236220   0.0049252   0.0423189
NIH-Birth        BANGLADESH                     1                    NA                0.2163462   0.1603287   0.2723636
NIH-Crypto       BANGLADESH                     0                    NA                0.0117925   0.0015091   0.0220758
NIH-Crypto       BANGLADESH                     1                    NA                0.1142857   0.0712208   0.1573507
PROVIDE          BANGLADESH                     0                    NA                0.0306917   0.0130779   0.0483056
PROVIDE          BANGLADESH                     1                    NA                0.1319014   0.0802245   0.1835783
SAS-CompFeed     INDIA                          0                    NA                0.0245992   0.0163010   0.0328974
SAS-CompFeed     INDIA                          1                    NA                0.2088039   0.1777920   0.2398158
SAS-FoodSuppl    INDIA                          0                    NA                0.0706878   0.0314722   0.1099035
SAS-FoodSuppl    INDIA                          1                    NA                0.2809626   0.2118445   0.3500807
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0080092   0.0020968   0.0139215
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1320755   0.0675890   0.1965620
ZVITAMBO         ZIMBABWE                       0                    NA                0.0284741   0.0194037   0.0375445
ZVITAMBO         ZIMBABWE                       1                    NA                0.1379103   0.1039604   0.1718602


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          GUATEMALA                      NA                   NA                0.0487805   0.0336441   0.0639169
COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
GMS-Nepal        NEPAL                          NA                   NA                0.1090909   0.0830130   0.1351688
JiVitA-4         BANGLADESH                     NA                   NA                0.0961073   0.0860713   0.1061434
Keneba           GAMBIA                         NA                   NA                0.0585078   0.0478474   0.0691682
LCNI-5           MALAWI                         NA                   NA                0.0260116   0.0141438   0.0378793
NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
NIH-Crypto       BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
PROVIDE          BANGLADESH                     NA                   NA                0.0657194   0.0452330   0.0862057
SAS-CompFeed     INDIA                          NA                   NA                0.1015873   0.0902183   0.1129563
SAS-FoodSuppl    INDIA                          NA                   NA                0.1869159   0.1442025   0.2296293
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0537825   0.0430304   0.0645346


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
COHORTS          GUATEMALA                      0                    0                  1.000000   1.000000    1.000000
COHORTS          GUATEMALA                      1                    0                  6.563132   3.305872   13.029754
COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  4.352314   3.275824    5.782555
GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  4.371728   2.369099    8.067201
JiVitA-4         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  9.807548   7.206178   13.347989
Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
Keneba           GAMBIA                         1                    0                  6.487169   4.466705    9.421569
LCNI-5           MALAWI                         0                    0                  1.000000   1.000000    1.000000
LCNI-5           MALAWI                         1                    0                 19.612346   7.173595   53.619435
NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  9.158654   3.982549   21.062122
NIH-Crypto       BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  9.691429   3.748225   25.058208
PROVIDE          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  4.297620   2.142573    8.620258
SAS-CompFeed     INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  8.488243   5.436001   13.254278
SAS-FoodSuppl    INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  3.974694   2.181759    7.241035
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.490566   6.805473   39.958836
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  4.843361   3.237528    7.245697


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          GUATEMALA                      0                    NA                0.0287656   0.0156318   0.0418994
COHORTS          PHILIPPINES                    0                    NA                0.0335530   0.0253639   0.0417421
GMS-Nepal        NEPAL                          0                    NA                0.0672632   0.0416938   0.0928326
JiVitA-4         BANGLADESH                     0                    NA                0.0723426   0.0630362   0.0816490
Keneba           GAMBIA                         0                    NA                0.0317442   0.0231811   0.0403072
LCNI-5           MALAWI                         0                    NA                0.0178283   0.0077434   0.0279131
NIH-Birth        BANGLADESH                     0                    NA                0.0867676   0.0587762   0.1147589
NIH-Crypto       BANGLADESH                     0                    NA                0.0339489   0.0188096   0.0490881
PROVIDE          BANGLADESH                     0                    NA                0.0350276   0.0173301   0.0527252
SAS-CompFeed     INDIA                          0                    NA                0.0769881   0.0609135   0.0930627
SAS-FoodSuppl    INDIA                          0                    NA                0.1162280   0.0735373   0.1589188
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0134194   0.0060109   0.0208280
ZVITAMBO         ZIMBABWE                       0                    NA                0.0253084   0.0168293   0.0337875


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          GUATEMALA                      0                    NA                0.5896953   0.3317777   0.7480629
COHORTS          PHILIPPINES                    0                    NA                0.4462366   0.3463959   0.5308263
GMS-Nepal        NEPAL                          0                    NA                0.6165791   0.3742648   0.7650578
JiVitA-4         BANGLADESH                     0                    NA                0.7527270   0.6792500   0.8093720
Keneba           GAMBIA                         0                    NA                0.5425630   0.4169746   0.6410987
LCNI-5           MALAWI                         0                    NA                0.6853973   0.3407366   0.8498706
NIH-Birth        BANGLADESH                     0                    NA                0.7860120   0.5519125   0.8978082
NIH-Crypto       BANGLADESH                     0                    NA                0.7421926   0.4316899   0.8830486
PROVIDE          BANGLADESH                     0                    NA                0.5329880   0.2535624   0.7078118
SAS-CompFeed     INDIA                          0                    NA                0.7578517   0.6431133   0.8357019
SAS-FoodSuppl    INDIA                          0                    NA                0.6218200   0.3805826   0.7691055
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6262395   0.3184894   0.7950187
ZVITAMBO         ZIMBABWE                       0                    NA                0.4705697   0.3247665   0.5848896
