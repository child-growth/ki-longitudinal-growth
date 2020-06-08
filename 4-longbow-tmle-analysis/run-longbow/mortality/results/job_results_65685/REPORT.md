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
![](/tmp/51a6f6ef-af91-4b63-83b6-89ea07643ca3/0eb9f2e1-4606-4056-b960-20235ed3f75f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/51a6f6ef-af91-4b63-83b6-89ea07643ca3/0eb9f2e1-4606-4056-b960-20235ed3f75f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/51a6f6ef-af91-4b63-83b6-89ea07643ca3/0eb9f2e1-4606-4056-b960-20235ed3f75f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/51a6f6ef-af91-4b63-83b6-89ea07643ca3/0eb9f2e1-4606-4056-b960-20235ed3f75f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0337863   0.0136847   0.0538879
CMC-V-BCS-2002   INDIA                          1                    NA                0.2720833   0.1411640   0.4030025
COHORTS          GUATEMALA                      0                    NA                0.0320224   0.0208864   0.0431583
COHORTS          GUATEMALA                      1                    NA                0.1795407   0.0587204   0.3003609
COHORTS          INDIA                          0                    NA                0.0470405   0.0416581   0.0524228
COHORTS          INDIA                          1                    NA                0.5090467   0.4770594   0.5410341
COHORTS          PHILIPPINES                    0                    NA                0.0614447   0.0522767   0.0706127
COHORTS          PHILIPPINES                    1                    NA                0.3489094   0.2804442   0.4173745
EE               PAKISTAN                       0                    NA                0.1003800   0.0687437   0.1320163
EE               PAKISTAN                       1                    NA                0.5593616   0.3426737   0.7760496
GMS-Nepal        NEPAL                          0                    NA                0.1349964   0.1057468   0.1642460
GMS-Nepal        NEPAL                          1                    NA                0.5750886   0.4528071   0.6973700
IRC              INDIA                          0                    NA                0.0740128   0.0464449   0.1015807
IRC              INDIA                          1                    NA                0.3597295   0.2367508   0.4827083
JiVitA-3         BANGLADESH                     0                    NA                0.1565775   0.1504064   0.1627486
JiVitA-3         BANGLADESH                     1                    NA                0.6801937   0.6482752   0.7121122
JiVitA-4         BANGLADESH                     0                    NA                0.0805107   0.0711607   0.0898607
JiVitA-4         BANGLADESH                     1                    NA                0.4902038   0.4248275   0.5555800
Keneba           GAMBIA                         0                    NA                0.0729133   0.0620728   0.0837537
Keneba           GAMBIA                         1                    NA                0.5123156   0.4040421   0.6205890
LCNI-5           MALAWI                         0                    NA                0.0102041   0.0031022   0.0173060
LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
MAL-ED           INDIA                          0                    NA                0.0818182   0.0455227   0.1181136
MAL-ED           INDIA                          1                    NA                0.6666667   0.4275982   0.9057351
NIH-Birth        BANGLADESH                     0                    NA                0.0732770   0.0502654   0.0962886
NIH-Birth        BANGLADESH                     1                    NA                0.5455621   0.4012976   0.6898267
NIH-Crypto       BANGLADESH                     0                    NA                0.0549296   0.0381589   0.0717003
NIH-Crypto       BANGLADESH                     1                    NA                0.2500000   0.0600972   0.4399028
PROBIT           BELARUS                        0                    NA                0.0005652   0.0000742   0.0010561
PROBIT           BELARUS                        1                    NA                0.0133929   0.0041540   0.0226317
PROVIDE          BANGLADESH                     0                    NA                0.0549085   0.0366394   0.0731775
PROVIDE          BANGLADESH                     1                    NA                0.5000000   0.2613176   0.7386824
ResPak           PAKISTAN                       0                    NA                0.1523810   0.1036692   0.2010927
ResPak           PAKISTAN                       1                    NA                0.6250000   0.4308989   0.8191011
SAS-CompFeed     INDIA                          0                    NA                0.1304679   0.1161726   0.1447631
SAS-CompFeed     INDIA                          1                    NA                0.5108451   0.4412522   0.5804379
SAS-FoodSuppl    INDIA                          0                    NA                0.0828827   0.0517156   0.1140498
SAS-FoodSuppl    INDIA                          1                    NA                0.5332764   0.4317077   0.6348450
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0366157   0.0282924   0.0449390
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6098994   0.4855694   0.7342294
ZVITAMBO         ZIMBABWE                       0                    NA                0.0341343   0.0306039   0.0376648
ZVITAMBO         ZIMBABWE                       1                    NA                0.2232980   0.1832831   0.2633129


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
CMC-V-BCS-2002   INDIA                          1                    0                  8.053064    3.741058   17.335160
COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
COHORTS          GUATEMALA                      1                    0                  5.606728    2.636483   11.923234
COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
COHORTS          INDIA                          1                    0                 10.821467    9.501625   12.324645
COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  5.678427    4.441201    7.260319
EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
EE               PAKISTAN                       1                    0                  5.572442    3.376165    9.197450
GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  4.260028    3.139102    5.781221
IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
IRC              INDIA                          1                    0                  4.860369    2.930657    8.060716
JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  4.344134    4.096171    4.607107
JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  6.088681    5.108850    7.256436
Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
Keneba           GAMBIA                         1                    0                  7.026369    5.427199    9.096747
LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
LCNI-5           MALAWI                         1                    0                 37.692308   16.465322   86.284983
MAL-ED           INDIA                          0                    0                  1.000000    1.000000    1.000000
MAL-ED           INDIA                          1                    0                  8.148148    4.606020   14.414249
NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  7.445205    4.926547   11.251506
NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  4.551282    2.007191   10.319981
PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
PROBIT           BELARUS                        1                    0                 23.696429    8.189156   68.568818
PROVIDE          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  9.106061    5.088919   16.294295
ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  4.101562    2.626572    6.404857
SAS-CompFeed     INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  3.915486    3.359307    4.563747
SAS-FoodSuppl    INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  6.434112    4.214720    9.822194
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.656766   12.271270   22.609546
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  6.541744    5.320044    8.043997


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0418894    0.0207486   0.0630302
COHORTS          GUATEMALA                      0                    NA                0.0082923    0.0024206   0.0141640
COHORTS          INDIA                          0                    NA                0.0646833    0.0588422   0.0705244
COHORTS          PHILIPPINES                    0                    NA                0.0190396    0.0138193   0.0242599
EE               PAKISTAN                       0                    NA                0.0306361    0.0128844   0.0483878
GMS-Nepal        NEPAL                          0                    NA                0.0497493    0.0316809   0.0678177
IRC              INDIA                          0                    NA                0.0430604    0.0222208   0.0639000
JiVitA-3         BANGLADESH                     0                    NA                0.0314294    0.0285950   0.0342639
JiVitA-4         BANGLADESH                     0                    NA                0.0267617    0.0209627   0.0325607
Keneba           GAMBIA                         0                    NA                0.0154244    0.0103586   0.0204902
LCNI-5           MALAWI                         0                    NA                0.0061071    0.0006741   0.0115401
MAL-ED           INDIA                          0                    NA                0.0373308    0.0133773   0.0612842
NIH-Birth        BANGLADESH                     0                    NA                0.0392691    0.0226315   0.0559067
NIH-Crypto       BANGLADESH                     0                    NA                0.0053444   -0.0003673   0.0110561
PROBIT           BELARUS                        0                    NA                0.0005194    0.0002130   0.0008258
PROVIDE          BANGLADESH                     0                    NA                0.0101322    0.0021706   0.0180938
ResPak           PAKISTAN                       0                    NA                0.0484737    0.0209011   0.0760464
SAS-CompFeed     INDIA                          0                    NA                0.0342720    0.0244046   0.0441394
SAS-FoodSuppl    INDIA                          0                    NA                0.1061721    0.0748333   0.1375109
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0139294    0.0088246   0.0190342
ZVITAMBO         ZIMBABWE                       0                    NA                0.0084526    0.0066005   0.0103047


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.5535382    0.2916259   0.7186117
COHORTS          GUATEMALA                      0                    NA                0.2056893    0.0602427   0.3286251
COHORTS          INDIA                          0                    NA                0.5789574    0.5396220   0.6149319
COHORTS          PHILIPPINES                    0                    NA                0.2365629    0.1754377   0.2931569
EE               PAKISTAN                       0                    NA                0.2338344    0.0988298   0.3486140
GMS-Nepal        NEPAL                          0                    NA                0.2692854    0.1736579   0.3538465
IRC              INDIA                          0                    NA                0.3678073    0.1924403   0.5050923
JiVitA-3         BANGLADESH                     0                    NA                0.1671717    0.1528830   0.1812194
JiVitA-4         BANGLADESH                     0                    NA                0.2494744    0.2001364   0.2957692
Keneba           GAMBIA                         0                    NA                0.1746074    0.1193940   0.2263589
LCNI-5           MALAWI                         0                    NA                0.3744113    0.0387300   0.5928707
MAL-ED           INDIA                          0                    NA                0.3133117    0.1136573   0.4679927
NIH-Birth        BANGLADESH                     0                    NA                0.3489160    0.2088439   0.4641886
NIH-Crypto       BANGLADESH                     0                    NA                0.0886684   -0.0078075   0.1759087
PROBIT           BELARUS                        0                    NA                0.4788998    0.1448179   0.6824706
PROVIDE          BANGLADESH                     0                    NA                0.1557820    0.0331417   0.2628662
ResPak           PAKISTAN                       0                    NA                0.2413374    0.1014563   0.3594424
SAS-CompFeed     INDIA                          0                    NA                0.2080372    0.1612392   0.2522241
SAS-FoodSuppl    INDIA                          0                    NA                0.5615943    0.4087555   0.6749238
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2755832    0.1821708   0.3583261
ZVITAMBO         ZIMBABWE                       0                    NA                0.1984784    0.1574686   0.2374920
