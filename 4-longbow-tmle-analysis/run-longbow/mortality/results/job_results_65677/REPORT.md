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

**Intervention Variable:** ever_wasted06

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

studyid          country                        ever_wasted06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  --------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                             0      175     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                             1        3     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                             0      167     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                             1       25     370  pers_wasted624   
CMIN             BANGLADESH                     0                             0      196     252  pers_wasted624   
CMIN             BANGLADESH                     0                             1       11     252  pers_wasted624   
CMIN             BANGLADESH                     1                             0       31     252  pers_wasted624   
CMIN             BANGLADESH                     1                             1       14     252  pers_wasted624   
COHORTS          GUATEMALA                      0                             0      786    1017  pers_wasted624   
COHORTS          GUATEMALA                      0                             1       25    1017  pers_wasted624   
COHORTS          GUATEMALA                      1                             0      190    1017  pers_wasted624   
COHORTS          GUATEMALA                      1                             1       16    1017  pers_wasted624   
COHORTS          INDIA                          0                             0     4756    6892  pers_wasted624   
COHORTS          INDIA                          0                             1      113    6892  pers_wasted624   
COHORTS          INDIA                          1                             0     1366    6892  pers_wasted624   
COHORTS          INDIA                          1                             1      657    6892  pers_wasted624   
COHORTS          PHILIPPINES                    0                             0     2013    2808  pers_wasted624   
COHORTS          PHILIPPINES                    0                             1       98    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                             0      569    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                             1      128    2808  pers_wasted624   
CONTENT          PERU                           0                             0      211     215  pers_wasted624   
CONTENT          PERU                           0                             1        0     215  pers_wasted624   
CONTENT          PERU                           1                             0        4     215  pers_wasted624   
CONTENT          PERU                           1                             1        0     215  pers_wasted624   
EE               PAKISTAN                       0                             0      234     374  pers_wasted624   
EE               PAKISTAN                       0                             1       12     374  pers_wasted624   
EE               PAKISTAN                       1                             0       91     374  pers_wasted624   
EE               PAKISTAN                       1                             1       37     374  pers_wasted624   
GMS-Nepal        NEPAL                          0                             0      319     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                             1       34     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                             0      162     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                             1       75     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                             0      263     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                             1        3     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                             0        7     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                             1        1     274  pers_wasted624   
IRC              INDIA                          0                             0      179     410  pers_wasted624   
IRC              INDIA                          0                             1        6     410  pers_wasted624   
IRC              INDIA                          1                             0      183     410  pers_wasted624   
IRC              INDIA                          1                             1       42     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                             0    12238   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     0                             1     1503   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     1                             0     1777   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     1                             1     1742   17260  pers_wasted624   
JiVitA-4         BANGLADESH                     0                             0     4245    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     0                             1      304    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     1                             0      432    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     1                             1      258    5239  pers_wasted624   
Keneba           GAMBIA                         0                             0     1576    2298  pers_wasted624   
Keneba           GAMBIA                         0                             1       76    2298  pers_wasted624   
Keneba           GAMBIA                         1                             0      519    2298  pers_wasted624   
Keneba           GAMBIA                         1                             1      127    2298  pers_wasted624   
LCNI-5           MALAWI                         0                             0      776     797  pers_wasted624   
LCNI-5           MALAWI                         0                             1        8     797  pers_wasted624   
LCNI-5           MALAWI                         1                             0        8     797  pers_wasted624   
LCNI-5           MALAWI                         1                             1        5     797  pers_wasted624   
MAL-ED           BANGLADESH                     0                             0      180     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                             1        4     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                             0       43     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                             1       13     240  pers_wasted624   
MAL-ED           BRAZIL                         0                             0      191     207  pers_wasted624   
MAL-ED           BRAZIL                         0                             1        1     207  pers_wasted624   
MAL-ED           BRAZIL                         1                             0       14     207  pers_wasted624   
MAL-ED           BRAZIL                         1                             1        1     207  pers_wasted624   
MAL-ED           INDIA                          0                             0      151     235  pers_wasted624   
MAL-ED           INDIA                          0                             1        6     235  pers_wasted624   
MAL-ED           INDIA                          1                             0       56     235  pers_wasted624   
MAL-ED           INDIA                          1                             1       22     235  pers_wasted624   
MAL-ED           NEPAL                          0                             0      188     235  pers_wasted624   
MAL-ED           NEPAL                          0                             1        0     235  pers_wasted624   
MAL-ED           NEPAL                          1                             0       45     235  pers_wasted624   
MAL-ED           NEPAL                          1                             1        2     235  pers_wasted624   
MAL-ED           PERU                           0                             0      258     270  pers_wasted624   
MAL-ED           PERU                           0                             1        2     270  pers_wasted624   
MAL-ED           PERU                           1                             0        9     270  pers_wasted624   
MAL-ED           PERU                           1                             1        1     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                             0      230     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                             1        0     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                             0       27     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                             1        2     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      231     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0       14     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                             0      329     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                             1       14     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                             0      152     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                             1       47     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                             0      517     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                             1       17     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                             0      169     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                             1       27     730  pers_wasted624   
PROBIT           BELARUS                        0                             0    12381   16596  pers_wasted624   
PROBIT           BELARUS                        0                             1        3   16596  pers_wasted624   
PROBIT           BELARUS                        1                             0     4197   16596  pers_wasted624   
PROBIT           BELARUS                        1                             1       15   16596  pers_wasted624   
PROVIDE          BANGLADESH                     0                             0      438     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                             1       19     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                             0      137     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                             1       21     615  pers_wasted624   
ResPak           PAKISTAN                       0                             0      126     234  pers_wasted624   
ResPak           PAKISTAN                       0                             1       15     234  pers_wasted624   
ResPak           PAKISTAN                       1                             0       61     234  pers_wasted624   
ResPak           PAKISTAN                       1                             1       32     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                             0      957    1384  pers_wasted624   
SAS-CompFeed     INDIA                          0                             1      107    1384  pers_wasted624   
SAS-CompFeed     INDIA                          1                             0      199    1384  pers_wasted624   
SAS-CompFeed     INDIA                          1                             1      121    1384  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                             0      281     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                             1       25     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                             0       45     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                             1       51     402  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0     1669    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       30    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0      247    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1       72    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                             0     8482   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                             1      217   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                             0     1792   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                             1      240   10731  pers_wasted624   


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

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CONTENT, country: PERU
* studyid: Guatemala BSC, country: GUATEMALA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/bdeed5d9-e35a-4b50-9111-f5d759a1a27a/5b2ba7e3-62bd-49c7-9c6c-9f2db7ba9b3e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bdeed5d9-e35a-4b50-9111-f5d759a1a27a/5b2ba7e3-62bd-49c7-9c6c-9f2db7ba9b3e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bdeed5d9-e35a-4b50-9111-f5d759a1a27a/5b2ba7e3-62bd-49c7-9c6c-9f2db7ba9b3e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bdeed5d9-e35a-4b50-9111-f5d759a1a27a/5b2ba7e3-62bd-49c7-9c6c-9f2db7ba9b3e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     0                    NA                0.0513402   0.0211271   0.0815532
CMIN             BANGLADESH                     1                    NA                0.3089686   0.1658891   0.4520482
COHORTS          GUATEMALA                      0                    NA                0.0314258   0.0193372   0.0435144
COHORTS          GUATEMALA                      1                    NA                0.0833844   0.0433602   0.1234087
COHORTS          INDIA                          0                    NA                0.0234702   0.0192078   0.0277326
COHORTS          INDIA                          1                    NA                0.3173732   0.2972645   0.3374818
COHORTS          PHILIPPINES                    0                    NA                0.0459874   0.0370646   0.0549102
COHORTS          PHILIPPINES                    1                    NA                0.1885081   0.1600596   0.2169565
EE               PAKISTAN                       0                    NA                0.0486910   0.0217120   0.0756701
EE               PAKISTAN                       1                    NA                0.2876803   0.2082234   0.3671372
GMS-Nepal        NEPAL                          0                    NA                0.0967906   0.0660184   0.1275629
GMS-Nepal        NEPAL                          1                    NA                0.3127087   0.2536020   0.3718153
IRC              INDIA                          0                    NA                0.0324324   0.0068747   0.0579902
IRC              INDIA                          1                    NA                0.1866667   0.1356920   0.2376414
JiVitA-3         BANGLADESH                     0                    NA                0.1096212   0.1041406   0.1151019
JiVitA-3         BANGLADESH                     1                    NA                0.4934521   0.4752893   0.5116149
JiVitA-4         BANGLADESH                     0                    NA                0.0670410   0.0577934   0.0762885
JiVitA-4         BANGLADESH                     1                    NA                0.3677379   0.3233554   0.4121205
Keneba           GAMBIA                         0                    NA                0.0456790   0.0355863   0.0557717
Keneba           GAMBIA                         1                    NA                0.1988318   0.1678317   0.2298319
LCNI-5           MALAWI                         0                    NA                0.0102041   0.0031022   0.0173060
LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
MAL-ED           INDIA                          0                    NA                0.0382166   0.0081635   0.0682696
MAL-ED           INDIA                          1                    NA                0.2820513   0.1819735   0.3821290
NIH-Birth        BANGLADESH                     0                    NA                0.0404784   0.0195969   0.0613600
NIH-Birth        BANGLADESH                     1                    NA                0.2392348   0.1797991   0.2986704
NIH-Crypto       BANGLADESH                     0                    NA                0.0323677   0.0174253   0.0473102
NIH-Crypto       BANGLADESH                     1                    NA                0.1330303   0.0845218   0.1815389
PROVIDE          BANGLADESH                     0                    NA                0.0415878   0.0233273   0.0598482
PROVIDE          BANGLADESH                     1                    NA                0.1266928   0.0746795   0.1787062
ResPak           PAKISTAN                       0                    NA                0.1082772   0.0571714   0.1593829
ResPak           PAKISTAN                       1                    NA                0.3549672   0.2577333   0.4522012
SAS-CompFeed     INDIA                          0                    NA                0.1038895   0.0862202   0.1215587
SAS-CompFeed     INDIA                          1                    NA                0.3641030   0.3199438   0.4082621
SAS-FoodSuppl    INDIA                          0                    NA                0.0819768   0.0511700   0.1127837
SAS-FoodSuppl    INDIA                          1                    NA                0.5282242   0.4254729   0.6309756
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0176240   0.0113394   0.0239086
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2307900   0.1841276   0.2774523
ZVITAMBO         ZIMBABWE                       0                    NA                0.0251654   0.0218759   0.0284549
ZVITAMBO         ZIMBABWE                       1                    NA                0.1146808   0.1009066   0.1284550


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
COHORTS          GUATEMALA                      NA                   NA                0.0403147   0.0282199   0.0524094
COHORTS          INDIA                          NA                   NA                0.1117237   0.1042858   0.1191617
COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
EE               PAKISTAN                       NA                   NA                0.1310160   0.0967738   0.1652583
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1880070   0.1814627   0.1945512
JiVitA-4         BANGLADESH                     NA                   NA                0.1072724   0.0967392   0.1178055
Keneba           GAMBIA                         NA                   NA                0.0883377   0.0767324   0.0999430
LCNI-5           MALAWI                         NA                   NA                0.0163112   0.0075116   0.0251108
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1647399   0.1451050   0.1843747
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0425869   0.0387663   0.0464075


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
CMIN             BANGLADESH                     1                    0                  6.018070    2.838123   12.760960
COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
COHORTS          GUATEMALA                      1                    0                  2.653375    1.436086    4.902491
COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
COHORTS          INDIA                          1                    0                 13.522392   11.161839   16.382164
COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  4.099121    3.211010    5.232869
EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
EE               PAKISTAN                       1                    0                  5.908279    3.180561   10.975346
GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  3.230774    2.234570    4.671101
IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
IRC              INDIA                          1                    0                  5.755556    2.499673   13.252299
JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  4.501428    4.242103    4.776607
JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  5.485273    4.579271    6.570526
Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
Keneba           GAMBIA                         1                    0                  4.352803    3.323273    5.701274
LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
LCNI-5           MALAWI                         1                    0                 37.692308   16.465322   86.284983
MAL-ED           INDIA                          0                    0                  1.000000    1.000000    1.000000
MAL-ED           INDIA                          1                    0                  7.380342    3.114563   17.488630
NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  5.910177    3.333127   10.479707
NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  4.109966    2.282521    7.400509
PROVIDE          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  3.046396    1.669521    5.558798
ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  3.278320    1.897246    5.664729
SAS-CompFeed     INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  3.504715    2.871125    4.278123
SAS-FoodSuppl    INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  6.443581    4.219878    9.839085
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 13.095200    8.688614   19.736664
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  4.557076    3.817015    5.440624


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     0                    NA                0.0478662   0.0197537   0.0759786
COHORTS          GUATEMALA                      0                    NA                0.0088888   0.0009371   0.0168406
COHORTS          INDIA                          0                    NA                0.0882535   0.0813497   0.0951574
COHORTS          PHILIPPINES                    0                    NA                0.0344969   0.0268160   0.0421778
EE               PAKISTAN                       0                    NA                0.0823250   0.0515795   0.1130705
GMS-Nepal        NEPAL                          0                    NA                0.0879551   0.0599172   0.1159930
IRC              INDIA                          0                    NA                0.0846407   0.0524758   0.1168057
JiVitA-3         BANGLADESH                     0                    NA                0.0783857   0.0738634   0.0829080
JiVitA-4         BANGLADESH                     0                    NA                0.0402314   0.0334766   0.0469862
Keneba           GAMBIA                         0                    NA                0.0426586   0.0332053   0.0521120
LCNI-5           MALAWI                         0                    NA                0.0061071   0.0006741   0.0115401
MAL-ED           INDIA                          0                    NA                0.0809324   0.0432584   0.1186063
NIH-Birth        BANGLADESH                     0                    NA                0.0720677   0.0477475   0.0963878
NIH-Crypto       BANGLADESH                     0                    NA                0.0279062   0.0139289   0.0418835
PROVIDE          BANGLADESH                     0                    NA                0.0234529   0.0087184   0.0381874
ResPak           PAKISTAN                       0                    NA                0.0925775   0.0464945   0.1386606
SAS-CompFeed     INDIA                          0                    NA                0.0608504   0.0471292   0.0745716
SAS-FoodSuppl    INDIA                          0                    NA                0.1070779   0.0758260   0.1383299
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0329211   0.0248859   0.0409563
ZVITAMBO         ZIMBABWE                       0                    NA                0.0174215   0.0146189   0.0202240


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     0                    NA                0.4824913   0.1972830   0.6663640
COHORTS          GUATEMALA                      0                    NA                0.2204868   0.0101279   0.3861420
COHORTS          INDIA                          0                    NA                0.7899265   0.7519871   0.8220622
COHORTS          PHILIPPINES                    0                    NA                0.4286163   0.3410136   0.5045735
EE               PAKISTAN                       0                    NA                0.6283581   0.4024104   0.7688754
GMS-Nepal        NEPAL                          0                    NA                0.4760874   0.3227133   0.5947293
IRC              INDIA                          0                    NA                0.7229730   0.4236989   0.8668336
JiVitA-3         BANGLADESH                     0                    NA                0.4169300   0.3966576   0.4365212
JiVitA-4         BANGLADESH                     0                    NA                0.3750399   0.3177430   0.4275250
Keneba           GAMBIA                         0                    NA                0.4829043   0.3858230   0.5646403
LCNI-5           MALAWI                         0                    NA                0.3744113   0.0387300   0.5928707
MAL-ED           INDIA                          0                    NA                0.6792539   0.3611538   0.8389627
NIH-Birth        BANGLADESH                     0                    NA                0.6403391   0.4371615   0.7701721
NIH-Crypto       BANGLADESH                     0                    NA                0.4629896   0.2320238   0.6244934
PROVIDE          BANGLADESH                     0                    NA                0.3605880   0.1240638   0.5332449
ResPak           PAKISTAN                       0                    NA                0.4609179   0.2118716   0.6312664
SAS-CompFeed     INDIA                          0                    NA                0.3693727   0.2920877   0.4382202
SAS-FoodSuppl    INDIA                          0                    NA                0.5663858   0.4153331   0.6784130
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6513210   0.5305341   0.7410312
ZVITAMBO         ZIMBABWE                       0                    NA                0.4090803   0.3511495   0.4618390
