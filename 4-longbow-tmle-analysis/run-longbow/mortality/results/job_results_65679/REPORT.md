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

**Intervention Variable:** pers_wasted06

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

studyid          country                        pers_wasted06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  --------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                             0      307     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                             1       11     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                             0       35     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                             1       17     370  pers_wasted624   
CMIN             BANGLADESH                     0                             0      223     252  pers_wasted624   
CMIN             BANGLADESH                     0                             1       19     252  pers_wasted624   
CMIN             BANGLADESH                     1                             0        4     252  pers_wasted624   
CMIN             BANGLADESH                     1                             1        6     252  pers_wasted624   
COHORTS          GUATEMALA                      0                             0      934    1017  pers_wasted624   
COHORTS          GUATEMALA                      0                             1       31    1017  pers_wasted624   
COHORTS          GUATEMALA                      1                             0       42    1017  pers_wasted624   
COHORTS          GUATEMALA                      1                             1       10    1017  pers_wasted624   
COHORTS          INDIA                          0                             0     5684    6892  pers_wasted624   
COHORTS          INDIA                          0                             1      277    6892  pers_wasted624   
COHORTS          INDIA                          1                             0      438    6892  pers_wasted624   
COHORTS          INDIA                          1                             1      493    6892  pers_wasted624   
COHORTS          PHILIPPINES                    0                             0     2467    2808  pers_wasted624   
COHORTS          PHILIPPINES                    0                             1      161    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                             0      115    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                             1       65    2808  pers_wasted624   
CONTENT          PERU                           0                             0      215     215  pers_wasted624   
CONTENT          PERU                           0                             1        0     215  pers_wasted624   
CONTENT          PERU                           1                             0        0     215  pers_wasted624   
CONTENT          PERU                           1                             1        0     215  pers_wasted624   
EE               PAKISTAN                       0                             0      313     374  pers_wasted624   
EE               PAKISTAN                       0                             1       35     374  pers_wasted624   
EE               PAKISTAN                       1                             0       12     374  pers_wasted624   
EE               PAKISTAN                       1                             1       14     374  pers_wasted624   
GMS-Nepal        NEPAL                          0                             0      452     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                             1       70     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                             0       29     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                             1       39     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                             0      264     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                             1        3     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                             0        6     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                             1        1     274  pers_wasted624   
IRC              INDIA                          0                             0      323     410  pers_wasted624   
IRC              INDIA                          0                             1       26     410  pers_wasted624   
IRC              INDIA                          1                             0       39     410  pers_wasted624   
IRC              INDIA                          1                             1       22     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                             0    13683   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     0                             1     2538   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     1                             0      332   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     1                             1      707   17260  pers_wasted624   
JiVitA-4         BANGLADESH                     0                             0     4506    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     0                             1      393    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     1                             0      171    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     1                             1      169    5239  pers_wasted624   
Keneba           GAMBIA                         0                             0     2056    2298  pers_wasted624   
Keneba           GAMBIA                         0                             1      161    2298  pers_wasted624   
Keneba           GAMBIA                         1                             0       39    2298  pers_wasted624   
Keneba           GAMBIA                         1                             1       42    2298  pers_wasted624   
LCNI-5           MALAWI                         0                             0      776     797  pers_wasted624   
LCNI-5           MALAWI                         0                             1        8     797  pers_wasted624   
LCNI-5           MALAWI                         1                             0        8     797  pers_wasted624   
LCNI-5           MALAWI                         1                             1        5     797  pers_wasted624   
MAL-ED           BANGLADESH                     0                             0      219     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                             1       13     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                             0        4     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                             1        4     240  pers_wasted624   
MAL-ED           BRAZIL                         0                             0      205     207  pers_wasted624   
MAL-ED           BRAZIL                         0                             1        1     207  pers_wasted624   
MAL-ED           BRAZIL                         1                             0        0     207  pers_wasted624   
MAL-ED           BRAZIL                         1                             1        1     207  pers_wasted624   
MAL-ED           INDIA                          0                             0      202     235  pers_wasted624   
MAL-ED           INDIA                          0                             1       18     235  pers_wasted624   
MAL-ED           INDIA                          1                             0        5     235  pers_wasted624   
MAL-ED           INDIA                          1                             1       10     235  pers_wasted624   
MAL-ED           NEPAL                          0                             0      231     235  pers_wasted624   
MAL-ED           NEPAL                          0                             1        1     235  pers_wasted624   
MAL-ED           NEPAL                          1                             0        2     235  pers_wasted624   
MAL-ED           NEPAL                          1                             1        1     235  pers_wasted624   
MAL-ED           PERU                           0                             0      267     270  pers_wasted624   
MAL-ED           PERU                           0                             1        3     270  pers_wasted624   
MAL-ED           PERU                           1                             0        0     270  pers_wasted624   
MAL-ED           PERU                           1                             1        0     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                             0      256     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                             1        0     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                             0        1     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                             1        2     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      245     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                             0      456     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                             1       36     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                             0       25     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                             1       25     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                             0      671     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                             1       39     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                             0       15     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                             1        5     730  pers_wasted624   
PROBIT           BELARUS                        0                             0    15915   16596  pers_wasted624   
PROBIT           BELARUS                        0                             1        9   16596  pers_wasted624   
PROBIT           BELARUS                        1                             0      663   16596  pers_wasted624   
PROBIT           BELARUS                        1                             1        9   16596  pers_wasted624   
PROVIDE          BANGLADESH                     0                             0      568     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                             1       33     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                             0        7     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                             1        7     615  pers_wasted624   
ResPak           PAKISTAN                       0                             0      178     234  pers_wasted624   
ResPak           PAKISTAN                       0                             1       32     234  pers_wasted624   
ResPak           PAKISTAN                       1                             0        9     234  pers_wasted624   
ResPak           PAKISTAN                       1                             1       15     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                             0     1095    1384  pers_wasted624   
SAS-CompFeed     INDIA                          0                             1      162    1384  pers_wasted624   
SAS-CompFeed     INDIA                          1                             0       61    1384  pers_wasted624   
SAS-CompFeed     INDIA                          1                             1       66    1384  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                             0      281     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                             1       25     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                             0       45     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                             1       51     402  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0     1894    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       72    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0       22    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1       30    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                             0     9865   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                             1      346   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                             0      409   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                             1      111   10731  pers_wasted624   


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

* studyid: CMIN, country: BANGLADESH
* studyid: CONTENT, country: PERU
* studyid: Guatemala BSC, country: GUATEMALA
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




# Results Detail

## Results Plots
![](/tmp/fedb52f6-659c-4716-bac3-f368ea00c2f4/a1bb1e8f-7a2a-4a48-8ec0-d2ebe70613bc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fedb52f6-659c-4716-bac3-f368ea00c2f4/a1bb1e8f-7a2a-4a48-8ec0-d2ebe70613bc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fedb52f6-659c-4716-bac3-f368ea00c2f4/a1bb1e8f-7a2a-4a48-8ec0-d2ebe70613bc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fedb52f6-659c-4716-bac3-f368ea00c2f4/a1bb1e8f-7a2a-4a48-8ec0-d2ebe70613bc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0346241   0.0144550   0.0547933
CMC-V-BCS-2002   INDIA                          1                    NA                0.3392350   0.2074332   0.4710368
COHORTS          GUATEMALA                      0                    NA                0.0320793   0.0209283   0.0432304
COHORTS          GUATEMALA                      1                    NA                0.1853801   0.0674336   0.3033265
COHORTS          INDIA                          0                    NA                0.0470416   0.0416601   0.0524231
COHORTS          INDIA                          1                    NA                0.5103865   0.4782801   0.5424929
COHORTS          PHILIPPINES                    0                    NA                0.0614295   0.0522623   0.0705966
COHORTS          PHILIPPINES                    1                    NA                0.3408406   0.2734430   0.4082382
EE               PAKISTAN                       0                    NA                0.1005047   0.0688043   0.1322051
EE               PAKISTAN                       1                    NA                0.3754862   0.1815764   0.5693959
GMS-Nepal        NEPAL                          0                    NA                0.1346065   0.1053750   0.1638380
GMS-Nepal        NEPAL                          1                    NA                0.5686419   0.4453040   0.6919798
IRC              INDIA                          0                    NA                0.0742714   0.0466131   0.1019297
IRC              INDIA                          1                    NA                0.3803129   0.2564268   0.5041991
JiVitA-3         BANGLADESH                     0                    NA                0.1565297   0.1503617   0.1626976
JiVitA-3         BANGLADESH                     1                    NA                0.6799751   0.6485334   0.7114167
JiVitA-4         BANGLADESH                     0                    NA                0.0804544   0.0711120   0.0897969
JiVitA-4         BANGLADESH                     1                    NA                0.4883681   0.4249269   0.5518094
Keneba           GAMBIA                         0                    NA                0.0729720   0.0621277   0.0838163
Keneba           GAMBIA                         1                    NA                0.5059490   0.3949194   0.6169786
LCNI-5           MALAWI                         0                    NA                0.0102041   0.0031022   0.0173060
LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
MAL-ED           INDIA                          0                    NA                0.0818182   0.0455227   0.1181136
MAL-ED           INDIA                          1                    NA                0.6666667   0.4275982   0.9057351
NIH-Birth        BANGLADESH                     0                    NA                0.0730933   0.0500585   0.0961281
NIH-Birth        BANGLADESH                     1                    NA                0.4819851   0.3370858   0.6268843
NIH-Crypto       BANGLADESH                     0                    NA                0.0549296   0.0381589   0.0717003
NIH-Crypto       BANGLADESH                     1                    NA                0.2500000   0.0600972   0.4399028
PROBIT           BELARUS                        0                    NA                0.0005652   0.0000742   0.0010561
PROBIT           BELARUS                        1                    NA                0.0133929   0.0041540   0.0226317
PROVIDE          BANGLADESH                     0                    NA                0.0549085   0.0366394   0.0731775
PROVIDE          BANGLADESH                     1                    NA                0.5000000   0.2613176   0.7386824
ResPak           PAKISTAN                       0                    NA                0.1523810   0.1036692   0.2010927
ResPak           PAKISTAN                       1                    NA                0.6250000   0.4308989   0.8191011
SAS-CompFeed     INDIA                          0                    NA                0.1303553   0.1160533   0.1446573
SAS-CompFeed     INDIA                          1                    NA                0.5054757   0.4337819   0.5771695
SAS-FoodSuppl    INDIA                          0                    NA                0.0815206   0.0506242   0.1124170
SAS-FoodSuppl    INDIA                          1                    NA                0.5381102   0.4349046   0.6413157
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0366193   0.0283049   0.0449337
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5920577   0.4566596   0.7274558
ZVITAMBO         ZIMBABWE                       0                    NA                0.0341483   0.0306169   0.0376798
ZVITAMBO         ZIMBABWE                       1                    NA                0.2252910   0.1858333   0.2647487


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
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
PROBIT           BELARUS                        NA                   NA                0.0010846   0.0004977   0.0016715
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1647399   0.1451050   0.1843747
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0425869   0.0387663   0.0464075


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
CMC-V-BCS-2002   INDIA                          1                    0                  9.797646    4.857500   19.761992
COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
COHORTS          GUATEMALA                      1                    0                  5.778801    2.806266   11.899991
COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
COHORTS          INDIA                          1                    0                 10.849685    9.526208   12.357033
COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  5.548489    4.334686    7.102181
EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
EE               PAKISTAN                       1                    0                  3.736006    2.029468    6.877536
GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  4.224476    3.104514    5.748468
IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
IRC              INDIA                          1                    0                  5.120586    3.117536    8.410617
JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  4.344066    4.097865    4.605058
JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  6.070120    5.110712    7.209632
Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
Keneba           GAMBIA                         1                    0                  6.933468    5.319606    9.036945
LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
LCNI-5           MALAWI                         1                    0                 37.692308   16.465322   86.284983
MAL-ED           INDIA                          0                    0                  1.000000    1.000000    1.000000
MAL-ED           INDIA                          1                    0                  8.148148    4.606020   14.414249
NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  6.594107    4.265835   10.193136
NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  4.551282    2.007191   10.319981
PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
PROBIT           BELARUS                        1                    0                 23.696429    8.189156   68.568818
PROVIDE          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  9.106061    5.088919   16.294295
ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  4.101562    2.626572    6.404857
SAS-CompFeed     INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  3.877678    3.337832    4.504836
SAS-FoodSuppl    INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  6.600910    4.314859   10.098131
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.167904   11.711707   22.319642
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  6.597427    5.384264    8.083936


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0410515    0.0200864   0.0620167
COHORTS          GUATEMALA                      0                    NA                0.0082353    0.0023540   0.0141166
COHORTS          INDIA                          0                    NA                0.0646821    0.0588423   0.0705220
COHORTS          PHILIPPINES                    0                    NA                0.0190549    0.0138377   0.0242721
EE               PAKISTAN                       0                    NA                0.0305113    0.0125958   0.0484268
GMS-Nepal        NEPAL                          0                    NA                0.0501393    0.0320824   0.0681962
IRC              INDIA                          0                    NA                0.0428018    0.0217979   0.0638057
JiVitA-3         BANGLADESH                     0                    NA                0.0314773    0.0286361   0.0343185
JiVitA-4         BANGLADESH                     0                    NA                0.0268179    0.0210148   0.0326211
Keneba           GAMBIA                         0                    NA                0.0153657    0.0102905   0.0204409
LCNI-5           MALAWI                         0                    NA                0.0061071    0.0006741   0.0115401
MAL-ED           INDIA                          0                    NA                0.0373308    0.0133773   0.0612842
NIH-Birth        BANGLADESH                     0                    NA                0.0394528    0.0228049   0.0561007
NIH-Crypto       BANGLADESH                     0                    NA                0.0053444   -0.0003673   0.0110561
PROBIT           BELARUS                        0                    NA                0.0005194    0.0002130   0.0008258
PROVIDE          BANGLADESH                     0                    NA                0.0101322    0.0021706   0.0180938
ResPak           PAKISTAN                       0                    NA                0.0484737    0.0209011   0.0760464
SAS-CompFeed     INDIA                          0                    NA                0.0343846    0.0246226   0.0441466
SAS-FoodSuppl    INDIA                          0                    NA                0.1075341    0.0761999   0.1388683
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0139258    0.0088227   0.0190289
ZVITAMBO         ZIMBABWE                       0                    NA                0.0084386    0.0065874   0.0102898


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.5424668    0.2835932   0.7077964
COHORTS          GUATEMALA                      0                    NA                0.2042761    0.0584321   0.3275296
COHORTS          INDIA                          0                    NA                0.5789471    0.5396248   0.6149108
COHORTS          PHILIPPINES                    0                    NA                0.2367527    0.1756666   0.2933120
EE               PAKISTAN                       0                    NA                0.2328824    0.0964186   0.3487367
GMS-Nepal        NEPAL                          0                    NA                0.2713960    0.1758297   0.3558810
IRC              INDIA                          0                    NA                0.3655987    0.1884993   0.5040485
JiVitA-3         BANGLADESH                     0                    NA                0.1674262    0.1531114   0.1814991
JiVitA-4         BANGLADESH                     0                    NA                0.2499985    0.2006592   0.2962924
Keneba           GAMBIA                         0                    NA                0.1739426    0.1186154   0.2257968
LCNI-5           MALAWI                         0                    NA                0.3744113    0.0387300   0.5928707
MAL-ED           INDIA                          0                    NA                0.3133117    0.1136573   0.4679927
NIH-Birth        BANGLADESH                     0                    NA                0.3505480    0.2101904   0.4659625
NIH-Crypto       BANGLADESH                     0                    NA                0.0886684   -0.0078075   0.1759087
PROBIT           BELARUS                        0                    NA                0.4788998    0.1448179   0.6824706
PROVIDE          BANGLADESH                     0                    NA                0.1557820    0.0331417   0.2628662
ResPak           PAKISTAN                       0                    NA                0.2413374    0.1014563   0.3594424
SAS-CompFeed     INDIA                          0                    NA                0.2087207    0.1626467   0.2522597
SAS-FoodSuppl    INDIA                          0                    NA                0.5687989    0.4167732   0.6811971
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2755118    0.1822349   0.3581493
ZVITAMBO         ZIMBABWE                       0                    NA                0.1981497    0.1571507   0.2371544
