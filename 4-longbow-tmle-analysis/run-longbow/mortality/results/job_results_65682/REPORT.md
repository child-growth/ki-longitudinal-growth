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

**Intervention Variable:** ever_underweight06

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

studyid          country                        ever_underweight06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  -------------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                                  0      186     373  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                                  1        4     373  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                                  0      159     373  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                                  1       24     373  pers_wasted624   
CMIN             BANGLADESH                     0                                  0      118     252  pers_wasted624   
CMIN             BANGLADESH                     0                                  1        1     252  pers_wasted624   
CMIN             BANGLADESH                     1                                  0      109     252  pers_wasted624   
CMIN             BANGLADESH                     1                                  1       24     252  pers_wasted624   
COHORTS          GUATEMALA                      0                                  0      731    1023  pers_wasted624   
COHORTS          GUATEMALA                      0                                  1        4    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                                  0      251    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                                  1       37    1023  pers_wasted624   
COHORTS          INDIA                          0                                  0     4367    6897  pers_wasted624   
COHORTS          INDIA                          0                                  1      112    6897  pers_wasted624   
COHORTS          INDIA                          1                                  0     1759    6897  pers_wasted624   
COHORTS          INDIA                          1                                  1      659    6897  pers_wasted624   
COHORTS          PHILIPPINES                    0                                  0     2080    2809  pers_wasted624   
COHORTS          PHILIPPINES                    0                                  1       73    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                                  0      503    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                                  1      153    2809  pers_wasted624   
CONTENT          PERU                           0                                  0      207     215  pers_wasted624   
CONTENT          PERU                           0                                  1        0     215  pers_wasted624   
CONTENT          PERU                           1                                  0        8     215  pers_wasted624   
CONTENT          PERU                           1                                  1        0     215  pers_wasted624   
EE               PAKISTAN                       0                                  0      101     374  pers_wasted624   
EE               PAKISTAN                       0                                  1        1     374  pers_wasted624   
EE               PAKISTAN                       1                                  0      224     374  pers_wasted624   
EE               PAKISTAN                       1                                  1       48     374  pers_wasted624   
GMS-Nepal        NEPAL                          0                                  0      302     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                                  1       17     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                                  0      179     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                                  1       92     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                                  0      216     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                                  1        0     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                                  0       54     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                                  1        4     274  pers_wasted624   
IRC              INDIA                          0                                  0      199     410  pers_wasted624   
IRC              INDIA                          0                                  1       12     410  pers_wasted624   
IRC              INDIA                          1                                  0      163     410  pers_wasted624   
IRC              INDIA                          1                                  1       36     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                                  0     8696   17274  pers_wasted624   
JiVitA-3         BANGLADESH                     0                                  1      842   17274  pers_wasted624   
JiVitA-3         BANGLADESH                     1                                  0     5332   17274  pers_wasted624   
JiVitA-3         BANGLADESH                     1                                  1     2404   17274  pers_wasted624   
JiVitA-4         BANGLADESH                     0                                  0     3354    5263  pers_wasted624   
JiVitA-4         BANGLADESH                     0                                  1      124    5263  pers_wasted624   
JiVitA-4         BANGLADESH                     1                                  0     1344    5263  pers_wasted624   
JiVitA-4         BANGLADESH                     1                                  1      441    5263  pers_wasted624   
Keneba           GAMBIA                         0                                  0     1854    2441  pers_wasted624   
Keneba           GAMBIA                         0                                  1       78    2441  pers_wasted624   
Keneba           GAMBIA                         1                                  0      370    2441  pers_wasted624   
Keneba           GAMBIA                         1                                  1      139    2441  pers_wasted624   
LCNI-5           MALAWI                         0                                  0      683     796  pers_wasted624   
LCNI-5           MALAWI                         0                                  1        2     796  pers_wasted624   
LCNI-5           MALAWI                         1                                  0      100     796  pers_wasted624   
LCNI-5           MALAWI                         1                                  1       11     796  pers_wasted624   
MAL-ED           BANGLADESH                     0                                  0      158     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                                  1        3     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                                  0       65     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                                  1       14     240  pers_wasted624   
MAL-ED           BRAZIL                         0                                  0      191     207  pers_wasted624   
MAL-ED           BRAZIL                         0                                  1        2     207  pers_wasted624   
MAL-ED           BRAZIL                         1                                  0       14     207  pers_wasted624   
MAL-ED           BRAZIL                         1                                  1        0     207  pers_wasted624   
MAL-ED           INDIA                          0                                  0      133     235  pers_wasted624   
MAL-ED           INDIA                          0                                  1        1     235  pers_wasted624   
MAL-ED           INDIA                          1                                  0       74     235  pers_wasted624   
MAL-ED           INDIA                          1                                  1       27     235  pers_wasted624   
MAL-ED           NEPAL                          0                                  0      195     235  pers_wasted624   
MAL-ED           NEPAL                          0                                  1        0     235  pers_wasted624   
MAL-ED           NEPAL                          1                                  0       38     235  pers_wasted624   
MAL-ED           NEPAL                          1                                  1        2     235  pers_wasted624   
MAL-ED           PERU                           0                                  0      222     270  pers_wasted624   
MAL-ED           PERU                           0                                  1        1     270  pers_wasted624   
MAL-ED           PERU                           1                                  0       45     270  pers_wasted624   
MAL-ED           PERU                           1                                  1        2     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                                  0      215     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                                  1        0     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                                  0       42     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                                  1        2     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                  0      203     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                  1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                  0       42     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                  1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                                  0      289     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                                  1        9     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                                  0      192     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                                  1       52     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                                  0      489     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                                  1       10     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                                  0      197     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                                  1       34     730  pers_wasted624   
PROBIT           BELARUS                        0                                  0    15787   16596  pers_wasted624   
PROBIT           BELARUS                        0                                  1       11   16596  pers_wasted624   
PROBIT           BELARUS                        1                                  0      791   16596  pers_wasted624   
PROBIT           BELARUS                        1                                  1        7   16596  pers_wasted624   
PROVIDE          BANGLADESH                     0                                  0      406     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                                  1        8     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                                  0      169     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                                  1       32     615  pers_wasted624   
ResPak           PAKISTAN                       0                                  0      125     234  pers_wasted624   
ResPak           PAKISTAN                       0                                  1       17     234  pers_wasted624   
ResPak           PAKISTAN                       1                                  0       62     234  pers_wasted624   
ResPak           PAKISTAN                       1                                  1       30     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                                  0      760    1389  pers_wasted624   
SAS-CompFeed     INDIA                          0                                  1       46    1389  pers_wasted624   
SAS-CompFeed     INDIA                          1                                  0      398    1389  pers_wasted624   
SAS-CompFeed     INDIA                          1                                  1      185    1389  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                                  0      180     400  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                                  1        8     400  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                                  0      144     400  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                                  1       68     400  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                  0     1740    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                  1       31    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                  0      176    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                  1       71    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                                  0     8705   10814  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                                  1      206   10814  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                                  0     1641   10814  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                                  1      262   10814  pers_wasted624   


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
* studyid: CMIN, country: BANGLADESH
* studyid: COHORTS, country: GUATEMALA
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
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
![](/tmp/f70b013f-c70a-4514-81c8-9e497cdf12e2/34d4725e-d1ed-4ed2-8180-23c59e7cd4d8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f70b013f-c70a-4514-81c8-9e497cdf12e2/34d4725e-d1ed-4ed2-8180-23c59e7cd4d8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f70b013f-c70a-4514-81c8-9e497cdf12e2/34d4725e-d1ed-4ed2-8180-23c59e7cd4d8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f70b013f-c70a-4514-81c8-9e497cdf12e2/34d4725e-d1ed-4ed2-8180-23c59e7cd4d8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          INDIA                          0                    NA                0.0259300   0.0211279   0.0307321
COHORTS          INDIA                          1                    NA                0.2619338   0.2440389   0.2798288
COHORTS          PHILIPPINES                    0                    NA                0.0355906   0.0275147   0.0436666
COHORTS          PHILIPPINES                    1                    NA                0.2206729   0.1868482   0.2544976
GMS-Nepal        NEPAL                          0                    NA                0.0533473   0.0284650   0.0782296
GMS-Nepal        NEPAL                          1                    NA                0.3402684   0.2833919   0.3971449
IRC              INDIA                          0                    NA                0.0550390   0.0236890   0.0863890
IRC              INDIA                          1                    NA                0.1834539   0.1281548   0.2387530
JiVitA-3         BANGLADESH                     0                    NA                0.0860424   0.0796337   0.0924512
JiVitA-3         BANGLADESH                     1                    NA                0.3122618   0.3008289   0.3236947
JiVitA-4         BANGLADESH                     0                    NA                0.0355746   0.0271322   0.0440170
JiVitA-4         BANGLADESH                     1                    NA                0.2438586   0.2211295   0.2665877
Keneba           GAMBIA                         0                    NA                0.0408732   0.0320399   0.0497065
Keneba           GAMBIA                         1                    NA                0.2522745   0.2142985   0.2902504
NIH-Birth        BANGLADESH                     0                    NA                0.0302013   0.0107524   0.0496502
NIH-Birth        BANGLADESH                     1                    NA                0.2131148   0.1616847   0.2645448
NIH-Crypto       BANGLADESH                     0                    NA                0.0205253   0.0081241   0.0329266
NIH-Crypto       BANGLADESH                     1                    NA                0.1411140   0.0947808   0.1874471
PROBIT           BELARUS                        0                    NA                0.0006963   0.0002033   0.0011893
PROBIT           BELARUS                        1                    NA                0.0087719   0.0017865   0.0157574
PROVIDE          BANGLADESH                     0                    NA                0.0193237   0.0060525   0.0325948
PROVIDE          BANGLADESH                     1                    NA                0.1592040   0.1085836   0.2098244
ResPak           PAKISTAN                       0                    NA                0.1127626   0.0611476   0.1643776
ResPak           PAKISTAN                       1                    NA                0.3222941   0.2231332   0.4214551
SAS-CompFeed     INDIA                          0                    NA                0.0613542   0.0459026   0.0768058
SAS-CompFeed     INDIA                          1                    NA                0.3005057   0.2758743   0.3251371
SAS-FoodSuppl    INDIA                          0                    NA                0.0425532   0.0136640   0.0714424
SAS-FoodSuppl    INDIA                          1                    NA                0.3207547   0.2578442   0.3836653
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0174878   0.0113884   0.0235871
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2879618   0.2304794   0.3454443
ZVITAMBO         ZIMBABWE                       0                    NA                0.0235025   0.0203408   0.0266643
ZVITAMBO         ZIMBABWE                       1                    NA                0.1274391   0.1118694   0.1430088


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          INDIA                          NA                   NA                0.1117877   0.1043506   0.1192249
COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1879125   0.1813641   0.1944608
JiVitA-4         BANGLADESH                     NA                   NA                0.1073532   0.0971813   0.1175251
Keneba           GAMBIA                         NA                   NA                0.0888980   0.0776057   0.1001903
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
PROBIT           BELARUS                        NA                   NA                0.0010846   0.0004977   0.0016715
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1663067   0.1478935   0.1847199
SAS-FoodSuppl    INDIA                          NA                   NA                0.1900000   0.1515071   0.2284929
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432772   0.0394419   0.0471125


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
COHORTS          INDIA                          1                    0                 10.101588    8.293059   12.304516
COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  6.200307    4.717442    8.149290
GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  6.378362    3.885937   10.469420
IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
IRC              INDIA                          1                    0                  3.333164    1.751202    6.344205
JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  3.629160    3.346691    3.935470
JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  6.854845    5.325994    8.822560
Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
Keneba           GAMBIA                         1                    0                  6.172123    4.743139    8.031622
NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  7.056466    3.547479   14.036366
NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  6.875108    3.455870   13.677343
PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
PROBIT           BELARUS                        1                    0                 12.598086    4.450502   35.661544
PROVIDE          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  8.238806    3.865305   17.560819
ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  2.858165    1.643110    4.971733
SAS-CompFeed     INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  4.897885    3.789244    6.330886
SAS-FoodSuppl    INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  7.537736    3.718280   15.280578
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.466476   11.017361   24.610687
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  5.422353    4.521987    6.501991


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          INDIA                          0                    NA                0.0858578   0.0787929   0.0929226
COHORTS          PHILIPPINES                    0                    NA                0.0448650   0.0364144   0.0533157
GMS-Nepal        NEPAL                          0                    NA                0.1313985   0.1007343   0.1620626
IRC              INDIA                          0                    NA                0.0620342   0.0311334   0.0929351
JiVitA-3         BANGLADESH                     0                    NA                0.1018700   0.0961418   0.1075982
JiVitA-4         BANGLADESH                     0                    NA                0.0717786   0.0629143   0.0806429
Keneba           GAMBIA                         0                    NA                0.0480248   0.0389516   0.0570980
NIH-Birth        BANGLADESH                     0                    NA                0.0823448   0.0564310   0.1082586
NIH-Crypto       BANGLADESH                     0                    NA                0.0397486   0.0241519   0.0553453
PROBIT           BELARUS                        0                    NA                0.0003883   0.0000456   0.0007310
PROVIDE          BANGLADESH                     0                    NA                0.0457170   0.0278436   0.0635904
ResPak           PAKISTAN                       0                    NA                0.0880921   0.0431228   0.1330614
SAS-CompFeed     INDIA                          0                    NA                0.1049525   0.0868769   0.1230281
SAS-FoodSuppl    INDIA                          0                    NA                0.1474468   0.1083088   0.1865848
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0330573   0.0251070   0.0410076
ZVITAMBO         ZIMBABWE                       0                    NA                0.0197747   0.0168733   0.0226761


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          INDIA                          0                    NA                0.7680428   0.7250556   0.8043090
COHORTS          PHILIPPINES                    0                    NA                0.5576367   0.4681487   0.6320677
GMS-Nepal        NEPAL                          0                    NA                0.7112394   0.5590318   0.8109100
IRC              INDIA                          0                    NA                0.5298756   0.2324793   0.7120378
JiVitA-3         BANGLADESH                     0                    NA                0.5421142   0.5138036   0.5687764
JiVitA-4         BANGLADESH                     0                    NA                0.6686208   0.5951352   0.7287682
Keneba           GAMBIA                         0                    NA                0.5402235   0.4549777   0.6121362
NIH-Birth        BANGLADESH                     0                    NA                0.7316536   0.5158152   0.8512763
NIH-Crypto       BANGLADESH                     0                    NA                0.6594659   0.4228966   0.7990594
PROBIT           BELARUS                        0                    NA                0.3580200   0.0283979   0.5758157
PROVIDE          BANGLADESH                     0                    NA                0.7028986   0.4528294   0.8386805
ResPak           PAKISTAN                       0                    NA                0.4385862   0.1949374   0.6084957
SAS-CompFeed     INDIA                          0                    NA                0.6310781   0.5375272   0.7057051
SAS-FoodSuppl    INDIA                          0                    NA                0.7760358   0.5768128   0.8814710
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6540166   0.5381455   0.7408177
ZVITAMBO         ZIMBABWE                       0                    NA                0.4569304   0.4000015   0.5084579
