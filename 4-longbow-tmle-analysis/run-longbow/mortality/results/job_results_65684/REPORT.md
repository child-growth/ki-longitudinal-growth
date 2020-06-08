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

**Intervention Variable:** ever_co06

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

studyid          country                        ever_co06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  ----------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                         0      317     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                         1       22     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                         0       25     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                         1        6     370  pers_wasted624   
CMIN             BANGLADESH                     0                         0      222     252  pers_wasted624   
CMIN             BANGLADESH                     0                         1       17     252  pers_wasted624   
CMIN             BANGLADESH                     1                         0        5     252  pers_wasted624   
CMIN             BANGLADESH                     1                         1        8     252  pers_wasted624   
COHORTS          GUATEMALA                      0                         0      956    1016  pers_wasted624   
COHORTS          GUATEMALA                      0                         1       33    1016  pers_wasted624   
COHORTS          GUATEMALA                      1                         0       19    1016  pers_wasted624   
COHORTS          GUATEMALA                      1                         1        8    1016  pers_wasted624   
COHORTS          INDIA                          0                         0     6006    6888  pers_wasted624   
COHORTS          INDIA                          0                         1      550    6888  pers_wasted624   
COHORTS          INDIA                          1                         0      112    6888  pers_wasted624   
COHORTS          INDIA                          1                         1      220    6888  pers_wasted624   
COHORTS          PHILIPPINES                    0                         0     2537    2808  pers_wasted624   
COHORTS          PHILIPPINES                    0                         1      184    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                         0       45    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                         1       42    2808  pers_wasted624   
CONTENT          PERU                           0                         0      215     215  pers_wasted624   
CONTENT          PERU                           0                         1        0     215  pers_wasted624   
CONTENT          PERU                           1                         0        0     215  pers_wasted624   
CONTENT          PERU                           1                         1        0     215  pers_wasted624   
EE               PAKISTAN                       0                         0      288     373  pers_wasted624   
EE               PAKISTAN                       0                         1       24     373  pers_wasted624   
EE               PAKISTAN                       1                         0       36     373  pers_wasted624   
EE               PAKISTAN                       1                         1       25     373  pers_wasted624   
GMS-Nepal        NEPAL                          0                         0      463     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                         1       93     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                         0       18     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                         1       16     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                         0      265     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                         1        3     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                         0        5     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                         1        1     274  pers_wasted624   
IRC              INDIA                          0                         0      342     409  pers_wasted624   
IRC              INDIA                          0                         1       42     409  pers_wasted624   
IRC              INDIA                          1                         0       19     409  pers_wasted624   
IRC              INDIA                          1                         1        6     409  pers_wasted624   
JiVitA-3         BANGLADESH                     0                         0    13651   17247  pers_wasted624   
JiVitA-3         BANGLADESH                     0                         1     2747   17247  pers_wasted624   
JiVitA-3         BANGLADESH                     1                         0      357   17247  pers_wasted624   
JiVitA-3         BANGLADESH                     1                         1      492   17247  pers_wasted624   
JiVitA-4         BANGLADESH                     0                         0     4578    5234  pers_wasted624   
JiVitA-4         BANGLADESH                     0                         1      471    5234  pers_wasted624   
JiVitA-4         BANGLADESH                     1                         0       98    5234  pers_wasted624   
JiVitA-4         BANGLADESH                     1                         1       87    5234  pers_wasted624   
Keneba           GAMBIA                         0                         0     2062    2298  pers_wasted624   
Keneba           GAMBIA                         0                         1      174    2298  pers_wasted624   
Keneba           GAMBIA                         1                         0       33    2298  pers_wasted624   
Keneba           GAMBIA                         1                         1       29    2298  pers_wasted624   
LCNI-5           MALAWI                         0                         0      782     797  pers_wasted624   
LCNI-5           MALAWI                         0                         1       10     797  pers_wasted624   
LCNI-5           MALAWI                         1                         0        2     797  pers_wasted624   
LCNI-5           MALAWI                         1                         1        3     797  pers_wasted624   
MAL-ED           BANGLADESH                     0                         0      216     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                         1       15     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                         0        7     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                         1        2     240  pers_wasted624   
MAL-ED           BRAZIL                         0                         0      204     207  pers_wasted624   
MAL-ED           BRAZIL                         0                         1        2     207  pers_wasted624   
MAL-ED           BRAZIL                         1                         0        1     207  pers_wasted624   
MAL-ED           BRAZIL                         1                         1        0     207  pers_wasted624   
MAL-ED           INDIA                          0                         0      196     235  pers_wasted624   
MAL-ED           INDIA                          0                         1       21     235  pers_wasted624   
MAL-ED           INDIA                          1                         0       11     235  pers_wasted624   
MAL-ED           INDIA                          1                         1        7     235  pers_wasted624   
MAL-ED           NEPAL                          0                         0      226     235  pers_wasted624   
MAL-ED           NEPAL                          0                         1        1     235  pers_wasted624   
MAL-ED           NEPAL                          1                         0        7     235  pers_wasted624   
MAL-ED           NEPAL                          1                         1        1     235  pers_wasted624   
MAL-ED           PERU                           0                         0      267     270  pers_wasted624   
MAL-ED           PERU                           0                         1        2     270  pers_wasted624   
MAL-ED           PERU                           1                         0        0     270  pers_wasted624   
MAL-ED           PERU                           1                         1        1     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                         0      252     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                         1        2     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                         0        5     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                         1        0     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      241     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0        4     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                         0      453     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                         1       42     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                         0       28     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                         1       19     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                         0      673     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                         1       34     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                         0       13     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                         1       10     730  pers_wasted624   
PROBIT           BELARUS                        0                         0    16563   16595  pers_wasted624   
PROBIT           BELARUS                        0                         1       17   16595  pers_wasted624   
PROBIT           BELARUS                        1                         0       14   16595  pers_wasted624   
PROBIT           BELARUS                        1                         1        1   16595  pers_wasted624   
PROVIDE          BANGLADESH                     0                         0      557     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                         1       30     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                         0       18     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                         1       10     615  pers_wasted624   
ResPak           PAKISTAN                       0                         0      179     234  pers_wasted624   
ResPak           PAKISTAN                       0                         1       41     234  pers_wasted624   
ResPak           PAKISTAN                       1                         0        8     234  pers_wasted624   
ResPak           PAKISTAN                       1                         1        6     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                         0     1112    1383  pers_wasted624   
SAS-CompFeed     INDIA                          0                         1      172    1383  pers_wasted624   
SAS-CompFeed     INDIA                          1                         0       43    1383  pers_wasted624   
SAS-CompFeed     INDIA                          1                         1       56    1383  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                         0      298     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                         1       51     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                         0       28     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                         1       25     402  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                         0     1907    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                         1       91    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                         0        9    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                         1       11    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                         0    10182   10730  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                         1      399   10730  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                         0       91   10730  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                         1       58   10730  pers_wasted624   


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

* studyid: CONTENT, country: PERU
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS

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
![](/tmp/278492fb-b26f-43a6-8ebd-42662c2212da/e6706a1c-d154-4f98-b30f-9e49cb23a2b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/278492fb-b26f-43a6-8ebd-42662c2212da/e6706a1c-d154-4f98-b30f-9e49cb23a2b3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/278492fb-b26f-43a6-8ebd-42662c2212da/e6706a1c-d154-4f98-b30f-9e49cb23a2b3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/278492fb-b26f-43a6-8ebd-42662c2212da/e6706a1c-d154-4f98-b30f-9e49cb23a2b3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0648968   0.0386378   0.0911557
CMC-V-BCS-2002   INDIA                          1                    NA                0.1935484   0.0542844   0.3328124
CMIN             BANGLADESH                     0                    NA                0.0711297   0.0384773   0.1037821
CMIN             BANGLADESH                     1                    NA                0.6153846   0.3503965   0.8803728
COHORTS          GUATEMALA                      0                    NA                0.0333670   0.0221687   0.0445654
COHORTS          GUATEMALA                      1                    NA                0.2962963   0.1239753   0.4686172
COHORTS          INDIA                          0                    NA                0.0845985   0.0778394   0.0913576
COHORTS          INDIA                          1                    NA                0.6223890   0.5686723   0.6761056
COHORTS          PHILIPPINES                    0                    NA                0.0680460   0.0585743   0.0775176
COHORTS          PHILIPPINES                    1                    NA                0.4621610   0.3601259   0.5641961
EE               PAKISTAN                       0                    NA                0.0768810   0.0468893   0.1068726
EE               PAKISTAN                       1                    NA                0.4047404   0.2618346   0.5476461
GMS-Nepal        NEPAL                          0                    NA                0.1676347   0.1365120   0.1987574
GMS-Nepal        NEPAL                          1                    NA                0.4549235   0.2767154   0.6331315
IRC              INDIA                          0                    NA                0.1093750   0.0781199   0.1406301
IRC              INDIA                          1                    NA                0.2400000   0.0723815   0.4076185
JiVitA-3         BANGLADESH                     0                    NA                0.1677716   0.1614289   0.1741144
JiVitA-3         BANGLADESH                     1                    NA                0.5631549   0.5262244   0.6000853
JiVitA-4         BANGLADESH                     0                    NA                0.0934426   0.0832242   0.1036611
JiVitA-4         BANGLADESH                     1                    NA                0.4578113   0.3645798   0.5510427
Keneba           GAMBIA                         0                    NA                0.0785261   0.0672347   0.0898174
Keneba           GAMBIA                         1                    NA                0.3932781   0.2930126   0.4935436
MAL-ED           INDIA                          0                    NA                0.0967742   0.0573537   0.1361947
MAL-ED           INDIA                          1                    NA                0.3888889   0.1631997   0.6145780
NIH-Birth        BANGLADESH                     0                    NA                0.0847320   0.0601531   0.1093109
NIH-Birth        BANGLADESH                     1                    NA                0.4040466   0.2605119   0.5475812
NIH-Crypto       BANGLADESH                     0                    NA                0.0483815   0.0325699   0.0641930
NIH-Crypto       BANGLADESH                     1                    NA                0.3962178   0.1877009   0.6047347
PROVIDE          BANGLADESH                     0                    NA                0.0509981   0.0331695   0.0688268
PROVIDE          BANGLADESH                     1                    NA                0.3610079   0.1705297   0.5514862
ResPak           PAKISTAN                       0                    NA                0.1863636   0.1347978   0.2379295
ResPak           PAKISTAN                       1                    NA                0.4285714   0.1687909   0.6883520
SAS-CompFeed     INDIA                          0                    NA                0.1352791   0.1172722   0.1532861
SAS-CompFeed     INDIA                          1                    NA                0.5472852   0.4921124   0.6024579
SAS-FoodSuppl    INDIA                          0                    NA                0.1466358   0.1094198   0.1838517
SAS-FoodSuppl    INDIA                          1                    NA                0.4840741   0.3464238   0.6217244
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0455455   0.0362596   0.0548315
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5500000   0.4635436   0.6364564
ZVITAMBO         ZIMBABWE                       0                    NA                0.0377836   0.0341106   0.0414566
ZVITAMBO         ZIMBABWE                       1                    NA                0.3498487   0.3067349   0.3929625


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
COHORTS          GUATEMALA                      NA                   NA                0.0403543   0.0282479   0.0524607
COHORTS          INDIA                          NA                   NA                0.1117886   0.1043466   0.1192306
COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
EE               PAKISTAN                       NA                   NA                0.1313673   0.0970401   0.1656945
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1173594   0.0861296   0.1485892
JiVitA-3         BANGLADESH                     NA                   NA                0.1878008   0.1812627   0.1943389
JiVitA-4         BANGLADESH                     NA                   NA                0.1066106   0.0960765   0.1171447
Keneba           GAMBIA                         NA                   NA                0.0883377   0.0767324   0.0999430
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1648590   0.1452632   0.1844548
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0425909   0.0387699   0.0464119


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.000000    1.000000
CMC-V-BCS-2002   INDIA                          1                    0                  2.982405   1.306343    6.808882
CMIN             BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
CMIN             BANGLADESH                     1                    0                  8.651584   4.610498   16.234669
COHORTS          GUATEMALA                      0                    0                  1.000000   1.000000    1.000000
COHORTS          GUATEMALA                      1                    0                  8.879910   4.537246   17.379001
COHORTS          INDIA                          0                    0                  1.000000   1.000000    1.000000
COHORTS          INDIA                          1                    0                  7.356978   6.542406    8.272970
COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  6.791893   5.234009    8.813475
EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
EE               PAKISTAN                       1                    0                  5.264508   3.110294    8.910747
GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  2.713779   1.759949    4.184551
IRC              INDIA                          0                    0                  1.000000   1.000000    1.000000
IRC              INDIA                          1                    0                  2.194286   1.031740    4.666768
JiVitA-3         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  3.356675   3.115349    3.616695
JiVitA-4         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  4.899382   3.886887    6.175622
Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
Keneba           GAMBIA                         1                    0                  5.008249   3.739785    6.706952
MAL-ED           INDIA                          0                    0                  1.000000   1.000000    1.000000
MAL-ED           INDIA                          1                    0                  4.018518   1.977591    8.165737
NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  4.768523   3.014620    7.542847
NIH-Crypto       BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  8.189454   4.413038   15.197503
PROVIDE          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  7.078844   3.763536   13.314615
ResPak           PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  2.299652   1.181089    4.477561
SAS-CompFeed     INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  4.045600   3.335966    4.906188
SAS-FoodSuppl    INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  3.301201   2.253706    4.835559
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 12.075824   9.334897   15.621547
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  9.259275   7.915119   10.831696


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0107789   -0.0016393   0.0231971
CMIN             BANGLADESH                     0                    NA                0.0280766    0.0077909   0.0483623
COHORTS          GUATEMALA                      0                    NA                0.0069873    0.0017121   0.0122625
COHORTS          INDIA                          0                    NA                0.0271902    0.0234119   0.0309684
COHORTS          PHILIPPINES                    0                    NA                0.0124384    0.0082899   0.0165868
EE               PAKISTAN                       0                    NA                0.0544863    0.0298019   0.0791708
GMS-Nepal        NEPAL                          0                    NA                0.0171111    0.0057773   0.0284449
IRC              INDIA                          0                    NA                0.0079844   -0.0028711   0.0188399
JiVitA-3         BANGLADESH                     0                    NA                0.0200291    0.0177834   0.0222749
JiVitA-4         BANGLADESH                     0                    NA                0.0131680    0.0091077   0.0172283
Keneba           GAMBIA                         0                    NA                0.0098116    0.0055812   0.0140420
MAL-ED           INDIA                          0                    NA                0.0223747    0.0021997   0.0425498
NIH-Birth        BANGLADESH                     0                    NA                0.0278141    0.0132944   0.0423338
NIH-Crypto       BANGLADESH                     0                    NA                0.0118925    0.0039218   0.0198632
PROVIDE          BANGLADESH                     0                    NA                0.0140425    0.0045243   0.0235607
ResPak           PAKISTAN                       0                    NA                0.0144911   -0.0029872   0.0319693
SAS-CompFeed     INDIA                          0                    NA                0.0295799    0.0219140   0.0372457
SAS-FoodSuppl    INDIA                          0                    NA                0.0424190    0.0210457   0.0637923
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0049995    0.0019204   0.0080787
ZVITAMBO         ZIMBABWE                       0                    NA                0.0048073    0.0034762   0.0061383


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.1424357   -0.0300892   0.2860653
CMIN             BANGLADESH                     0                    NA                0.2830126    0.0782623   0.4422806
COHORTS          GUATEMALA                      0                    NA                0.1731485    0.0431505   0.2854850
COHORTS          INDIA                          0                    NA                0.2432283    0.2119751   0.2732420
COHORTS          PHILIPPINES                    0                    NA                0.1545438    0.1047200   0.2015948
EE               PAKISTAN                       0                    NA                0.4147634    0.2303122   0.5550119
GMS-Nepal        NEPAL                          0                    NA                0.0926195    0.0303713   0.1508715
IRC              INDIA                          0                    NA                0.0680339   -0.0277289   0.1548735
JiVitA-3         BANGLADESH                     0                    NA                0.1066510    0.0950031   0.1181491
JiVitA-4         BANGLADESH                     0                    NA                0.1235147    0.0860041   0.1594858
Keneba           GAMBIA                         0                    NA                0.1110694    0.0634797   0.1562408
MAL-ED           INDIA                          0                    NA                0.1877880    0.0119633   0.3323241
NIH-Birth        BANGLADESH                     0                    NA                0.2471353    0.1195047   0.3562654
NIH-Crypto       BANGLADESH                     0                    NA                0.1973075    0.0668916   0.3094958
PROVIDE          BANGLADESH                     0                    NA                0.2159035    0.0705098   0.3385542
ResPak           PAKISTAN                       0                    NA                0.0721470   -0.0179275   0.1542510
SAS-CompFeed     INDIA                          0                    NA                0.1794253    0.1354548   0.2211595
SAS-FoodSuppl    INDIA                          0                    NA                0.2243740    0.1096000   0.3243534
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0989126    0.0378212   0.1561252
ZVITAMBO         ZIMBABWE                       0                    NA                0.1128708    0.0823585   0.1423685
