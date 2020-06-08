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

**Outcome Variable:** pers_wasted624

## Predictor Variables

**Intervention Variable:** ever_swasted06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* single
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_parity
* delta_brthmon
* delta_vagbrth
* delta_single
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_swasted06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  ---------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                              0      287     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                              1       14     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                              0       55     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                              1       14     370  pers_wasted624   
CMIN             BANGLADESH                     0                              0      221     252  pers_wasted624   
CMIN             BANGLADESH                     0                              1       20     252  pers_wasted624   
CMIN             BANGLADESH                     1                              0        6     252  pers_wasted624   
CMIN             BANGLADESH                     1                              1        5     252  pers_wasted624   
COHORTS          GUATEMALA                      0                              0      914    1017  pers_wasted624   
COHORTS          GUATEMALA                      0                              1       37    1017  pers_wasted624   
COHORTS          GUATEMALA                      1                              0       62    1017  pers_wasted624   
COHORTS          GUATEMALA                      1                              1        4    1017  pers_wasted624   
COHORTS          INDIA                          0                              0     5796    6892  pers_wasted624   
COHORTS          INDIA                          0                              1      488    6892  pers_wasted624   
COHORTS          INDIA                          1                              0      326    6892  pers_wasted624   
COHORTS          INDIA                          1                              1      282    6892  pers_wasted624   
COHORTS          PHILIPPINES                    0                              0     2431    2808  pers_wasted624   
COHORTS          PHILIPPINES                    0                              1      175    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                              0      151    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                              1       51    2808  pers_wasted624   
CONTENT          PERU                           0                              0      214     215  pers_wasted624   
CONTENT          PERU                           0                              1        0     215  pers_wasted624   
CONTENT          PERU                           1                              0        1     215  pers_wasted624   
CONTENT          PERU                           1                              1        0     215  pers_wasted624   
EE               PAKISTAN                       0                              0      298     374  pers_wasted624   
EE               PAKISTAN                       0                              1       37     374  pers_wasted624   
EE               PAKISTAN                       1                              0       27     374  pers_wasted624   
EE               PAKISTAN                       1                              1       12     374  pers_wasted624   
GMS-Nepal        NEPAL                          0                              0      433     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                              1       83     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                              0       48     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                              1       26     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                              0      270     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                              1        3     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                              0        0     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                              1        1     274  pers_wasted624   
IRC              INDIA                          0                              0      265     410  pers_wasted624   
IRC              INDIA                          0                              1       19     410  pers_wasted624   
IRC              INDIA                          1                              0       97     410  pers_wasted624   
IRC              INDIA                          1                              1       29     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                              0    13643   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     0                              1     2864   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     1                              0      372   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     1                              1      381   17260  pers_wasted624   
JiVitA-4         BANGLADESH                     0                              0     4586    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     0                              1      519    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     1                              0       91    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     1                              1       43    5239  pers_wasted624   
Keneba           GAMBIA                         0                              0     1935    2298  pers_wasted624   
Keneba           GAMBIA                         0                              1      144    2298  pers_wasted624   
Keneba           GAMBIA                         1                              0      160    2298  pers_wasted624   
Keneba           GAMBIA                         1                              1       59    2298  pers_wasted624   
LCNI-5           MALAWI                         0                              0      784     797  pers_wasted624   
LCNI-5           MALAWI                         0                              1       13     797  pers_wasted624   
LCNI-5           MALAWI                         1                              0        0     797  pers_wasted624   
LCNI-5           MALAWI                         1                              1        0     797  pers_wasted624   
MAL-ED           BANGLADESH                     0                              0      211     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                              1       13     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                              0       12     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                              1        4     240  pers_wasted624   
MAL-ED           BRAZIL                         0                              0      203     207  pers_wasted624   
MAL-ED           BRAZIL                         0                              1        1     207  pers_wasted624   
MAL-ED           BRAZIL                         1                              0        2     207  pers_wasted624   
MAL-ED           BRAZIL                         1                              1        1     207  pers_wasted624   
MAL-ED           INDIA                          0                              0      198     235  pers_wasted624   
MAL-ED           INDIA                          0                              1       16     235  pers_wasted624   
MAL-ED           INDIA                          1                              0        9     235  pers_wasted624   
MAL-ED           INDIA                          1                              1       12     235  pers_wasted624   
MAL-ED           NEPAL                          0                              0      227     235  pers_wasted624   
MAL-ED           NEPAL                          0                              1        1     235  pers_wasted624   
MAL-ED           NEPAL                          1                              0        6     235  pers_wasted624   
MAL-ED           NEPAL                          1                              1        1     235  pers_wasted624   
MAL-ED           PERU                           0                              0      266     270  pers_wasted624   
MAL-ED           PERU                           0                              1        3     270  pers_wasted624   
MAL-ED           PERU                           1                              0        1     270  pers_wasted624   
MAL-ED           PERU                           1                              1        0     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                              0      251     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                              1        1     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                              0        6     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                              1        1     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              0      240     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              0        5     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                              0      445     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                              1       45     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                              0       36     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                              1       16     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                              0      645     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                              1       37     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                              0       41     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                              1        7     730  pers_wasted624   
PROBIT           BELARUS                        0                              0    15281   16596  pers_wasted624   
PROBIT           BELARUS                        0                              1       13   16596  pers_wasted624   
PROBIT           BELARUS                        1                              0     1297   16596  pers_wasted624   
PROBIT           BELARUS                        1                              1        5   16596  pers_wasted624   
PROVIDE          BANGLADESH                     0                              0      557     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                              1       33     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                              0       18     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                              1        7     615  pers_wasted624   
ResPak           PAKISTAN                       0                              0      168     234  pers_wasted624   
ResPak           PAKISTAN                       0                              1       28     234  pers_wasted624   
ResPak           PAKISTAN                       1                              0       19     234  pers_wasted624   
ResPak           PAKISTAN                       1                              1       19     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                              0     1109    1384  pers_wasted624   
SAS-CompFeed     INDIA                          0                              1      182    1384  pers_wasted624   
SAS-CompFeed     INDIA                          1                              0       47    1384  pers_wasted624   
SAS-CompFeed     INDIA                          1                              1       46    1384  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                              0      315     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                              1       59     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                              0       11     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                              1       17     402  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              0     1871    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              1       72    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              0       45    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              1       30    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                              0     9623   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                              1      359   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                              0      651   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                              1       98   10731  pers_wasted624   


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CMIN, country: BANGLADESH
* studyid: COHORTS, country: GUATEMALA
* studyid: COHORTS, country: INDIA
* studyid: COHORTS, country: PHILIPPINES
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: IRC, country: INDIA
* studyid: JiVitA-3, country: BANGLADESH
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

* studyid: COHORTS, country: GUATEMALA
* studyid: CONTENT, country: PERU
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in gam.fit3(x = X, y = y, sp = L %*% lsp1 + lsp0, Eb = Eb, UrS = UrS, : inner loop 3; can't correct step size
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_gam_NULL_NULL_GCV.Cp
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




# Results Detail

## Results Plots
![](/tmp/f8b81fdf-26b2-4e8a-82c2-4f56fae31ed1/657dfcc5-db19-4da7-b48d-cdef52cdbdd6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f8b81fdf-26b2-4e8a-82c2-4f56fae31ed1/657dfcc5-db19-4da7-b48d-cdef52cdbdd6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f8b81fdf-26b2-4e8a-82c2-4f56fae31ed1/657dfcc5-db19-4da7-b48d-cdef52cdbdd6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f8b81fdf-26b2-4e8a-82c2-4f56fae31ed1/657dfcc5-db19-4da7-b48d-cdef52cdbdd6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0464957   0.0226319   0.0703595
CMC-V-BCS-2002   INDIA                          1                    NA                0.1979569   0.0995978   0.2963159
CMIN             BANGLADESH                     0                    NA                0.0829876   0.0480898   0.1178853
CMIN             BANGLADESH                     1                    NA                0.4545455   0.1597077   0.7493832
COHORTS          INDIA                          0                    NA                0.0780632   0.0714204   0.0847060
COHORTS          INDIA                          1                    NA                0.4605649   0.4204173   0.5007125
COHORTS          PHILIPPINES                    0                    NA                0.0668756   0.0572800   0.0764711
COHORTS          PHILIPPINES                    1                    NA                0.2628716   0.2029329   0.3228102
EE               PAKISTAN                       0                    NA                0.1113863   0.0775177   0.1452549
EE               PAKISTAN                       1                    NA                0.2986530   0.1422539   0.4550522
GMS-Nepal        NEPAL                          0                    NA                0.1609954   0.1292878   0.1927031
GMS-Nepal        NEPAL                          1                    NA                0.3641854   0.2512200   0.4771507
IRC              INDIA                          0                    NA                0.0666393   0.0373855   0.0958931
IRC              INDIA                          1                    NA                0.2321504   0.1578553   0.3064454
JiVitA-3         BANGLADESH                     0                    NA                0.1736321   0.1673499   0.1799144
JiVitA-3         BANGLADESH                     1                    NA                0.5048453   0.4639830   0.5457077
JiVitA-4         BANGLADESH                     0                    NA                0.1017214   0.0913559   0.1120868
JiVitA-4         BANGLADESH                     1                    NA                0.3151844   0.2182198   0.4121489
Keneba           GAMBIA                         0                    NA                0.0696515   0.0587100   0.0805930
Keneba           GAMBIA                         1                    NA                0.2575486   0.1995831   0.3155141
MAL-ED           INDIA                          0                    NA                0.0747664   0.0394524   0.1100803
MAL-ED           INDIA                          1                    NA                0.5714286   0.3593206   0.7835366
NIH-Birth        BANGLADESH                     0                    NA                0.0919010   0.0663158   0.1174861
NIH-Birth        BANGLADESH                     1                    NA                0.3530632   0.2256321   0.4804943
NIH-Crypto       BANGLADESH                     0                    NA                0.0542522   0.0372404   0.0712640
NIH-Crypto       BANGLADESH                     1                    NA                0.1458333   0.0459197   0.2457470
PROBIT           BELARUS                        0                    NA                0.0008500   0.0002192   0.0014809
PROBIT           BELARUS                        1                    NA                0.0038402   0.0006414   0.0070391
PROVIDE          BANGLADESH                     0                    NA                0.0559322   0.0373752   0.0744892
PROVIDE          BANGLADESH                     1                    NA                0.2800000   0.1038524   0.4561476
ResPak           PAKISTAN                       0                    NA                0.1417417   0.0925546   0.1909288
ResPak           PAKISTAN                       1                    NA                0.5177198   0.3596050   0.6758346
SAS-CompFeed     INDIA                          0                    NA                0.1420534   0.1233964   0.1607105
SAS-CompFeed     INDIA                          1                    NA                0.4675790   0.4163751   0.5187830
SAS-FoodSuppl    INDIA                          0                    NA                0.1585566   0.1214290   0.1956843
SAS-FoodSuppl    INDIA                          1                    NA                0.6034299   0.3989064   0.8079535
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0370925   0.0286831   0.0455019
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3916424   0.2803490   0.5029358
ZVITAMBO         ZIMBABWE                       0                    NA                0.0360330   0.0323796   0.0396863
ZVITAMBO         ZIMBABWE                       1                    NA                0.1277601   0.1038889   0.1516313


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
COHORTS          INDIA                          NA                   NA                0.1117237   0.1042858   0.1191617
COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
EE               PAKISTAN                       NA                   NA                0.1310160   0.0967738   0.1652583
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1880070   0.1814627   0.1945512
JiVitA-4         BANGLADESH                     NA                   NA                0.1072724   0.0967392   0.1178055
Keneba           GAMBIA                         NA                   NA                0.0883377   0.0767324   0.0999430
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
PROBIT           BELARUS                        NA                   NA                0.0010846   0.0004977   0.0016715
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1647399   0.1451050   0.1843747
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0425869   0.0387663   0.0464075


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.000000    1.000000
CMC-V-BCS-2002   INDIA                          1                    0                  4.257532   2.081275    8.709363
CMIN             BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
CMIN             BANGLADESH                     1                    0                  5.477273   2.528380   11.865507
COHORTS          INDIA                          0                    0                  1.000000   1.000000    1.000000
COHORTS          INDIA                          1                    0                  5.899901   5.225117    6.661827
COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  3.930756   3.005249    5.141287
EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
EE               PAKISTAN                       1                    0                  2.681237   1.462191    4.916617
GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  2.262085   1.566554    3.266424
IRC              INDIA                          0                    0                  1.000000   1.000000    1.000000
IRC              INDIA                          1                    0                  3.483687   2.021231    6.004297
JiVitA-3         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  2.907557   2.664572    3.172701
JiVitA-4         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  3.098507   2.245351    4.275832
Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
Keneba           GAMBIA                         1                    0                  3.697676   2.811996    4.862313
MAL-ED           INDIA                          0                    0                  1.000000   1.000000    1.000000
MAL-ED           INDIA                          1                    0                  7.642857   4.191447   13.936300
NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  3.841778   2.432164    6.068363
NIH-Crypto       BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  2.688063   1.265352    5.710413
PROBIT           BELARUS                        0                    0                  1.000000   1.000000    1.000000
PROBIT           BELARUS                        1                    0                  4.517901   1.371594   14.881545
PROVIDE          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  5.006061   2.458188   10.194764
ResPak           PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  3.652558   2.300891    5.798267
SAS-CompFeed     INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  3.291571   2.830117    3.828266
SAS-FoodSuppl    INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  3.805769   2.517558    5.753146
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 10.558533   7.341776   15.184695
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  3.545646   2.867494    4.384177


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0291800    0.0098032   0.0485567
CMIN             BANGLADESH                     0                    NA                0.0162188    0.0002139   0.0322237
COHORTS          INDIA                          0                    NA                0.0336606    0.0293057   0.0380154
COHORTS          PHILIPPINES                    0                    NA                0.0136088    0.0089516   0.0182659
EE               PAKISTAN                       0                    NA                0.0196298    0.0028606   0.0363989
GMS-Nepal        NEPAL                          0                    NA                0.0237503    0.0086814   0.0388193
IRC              INDIA                          0                    NA                0.0504339    0.0248678   0.0760000
JiVitA-3         BANGLADESH                     0                    NA                0.0143748    0.0121863   0.0165634
JiVitA-4         BANGLADESH                     0                    NA                0.0055510    0.0027163   0.0083857
Keneba           GAMBIA                         0                    NA                0.0186862    0.0125597   0.0248127
MAL-ED           INDIA                          0                    NA                0.0443826    0.0179485   0.0708166
NIH-Birth        BANGLADESH                     0                    NA                0.0206451    0.0071943   0.0340960
NIH-Crypto       BANGLADESH                     0                    NA                0.0060218   -0.0008431   0.0128867
PROBIT           BELARUS                        0                    NA                0.0002346    0.0000115   0.0004577
PROVIDE          BANGLADESH                     0                    NA                0.0091084    0.0011028   0.0171141
ResPak           PAKISTAN                       0                    NA                0.0591130    0.0269152   0.0913108
SAS-CompFeed     INDIA                          0                    NA                0.0226864    0.0157236   0.0296493
SAS-FoodSuppl    INDIA                          0                    NA                0.0304981    0.0133889   0.0476072
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0134526    0.0083514   0.0185538
ZVITAMBO         ZIMBABWE                       0                    NA                0.0065539    0.0048005   0.0083073


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.3855926    0.1207242   0.5706735
CMIN             BANGLADESH                     0                    NA                0.1634855   -0.0027793   0.3021829
COHORTS          INDIA                          0                    NA                0.3012840    0.2658663   0.3349930
COHORTS          PHILIPPINES                    0                    NA                0.1690859    0.1125766   0.2219967
EE               PAKISTAN                       0                    NA                0.1498272    0.0169684   0.2647298
GMS-Nepal        NEPAL                          0                    NA                0.1285568    0.0450425   0.2047675
IRC              INDIA                          0                    NA                0.4307895    0.2031345   0.5934061
JiVitA-3         BANGLADESH                     0                    NA                0.0764591    0.0652127   0.0875702
JiVitA-4         BANGLADESH                     0                    NA                0.0517468    0.0254621   0.0773226
Keneba           GAMBIA                         0                    NA                0.2115315    0.1443306   0.2734547
MAL-ED           INDIA                          0                    NA                0.3724967    0.1536730   0.5347420
NIH-Birth        BANGLADESH                     0                    NA                0.1834371    0.0623079   0.2889191
NIH-Crypto       BANGLADESH                     0                    NA                0.0999067   -0.0178485   0.2040388
PROBIT           BELARUS                        0                    NA                0.2162940   -0.0619533   0.4216364
PROVIDE          BANGLADESH                     0                    NA                0.1400424    0.0151570   0.2490913
ResPak           PAKISTAN                       0                    NA                0.2943072    0.1285778   0.4285177
SAS-CompFeed     INDIA                          0                    NA                0.1377107    0.0965102   0.1770323
SAS-FoodSuppl    INDIA                          0                    NA                0.1613189    0.0698896   0.2437607
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2661503    0.1719516   0.3496329
ZVITAMBO         ZIMBABWE                       0                    NA                0.1538955    0.1140123   0.1919833
