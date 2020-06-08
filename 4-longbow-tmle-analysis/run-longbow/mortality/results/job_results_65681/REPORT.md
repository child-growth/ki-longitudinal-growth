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

**Intervention Variable:** ever_sstunted06

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

studyid          country                        ever_sstunted06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  ----------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                               0      260     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                               1       16     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                               0       82     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                               1       12     370  pers_wasted624   
CMIN             BANGLADESH                     0                               0      181     252  pers_wasted624   
CMIN             BANGLADESH                     0                               1       12     252  pers_wasted624   
CMIN             BANGLADESH                     1                               0       46     252  pers_wasted624   
CMIN             BANGLADESH                     1                               1       13     252  pers_wasted624   
COHORTS          GUATEMALA                      0                               0      843    1023  pers_wasted624   
COHORTS          GUATEMALA                      0                               1       24    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                               0      139    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                               1       17    1023  pers_wasted624   
COHORTS          INDIA                          0                               0     5774    6893  pers_wasted624   
COHORTS          INDIA                          0                               1      648    6893  pers_wasted624   
COHORTS          INDIA                          1                               0      348    6893  pers_wasted624   
COHORTS          INDIA                          1                               1      123    6893  pers_wasted624   
COHORTS          PHILIPPINES                    0                               0     2411    2809  pers_wasted624   
COHORTS          PHILIPPINES                    0                               1      184    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                               0      172    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                               1       42    2809  pers_wasted624   
CONTENT          PERU                           0                               0      207     215  pers_wasted624   
CONTENT          PERU                           0                               1        0     215  pers_wasted624   
CONTENT          PERU                           1                               0        8     215  pers_wasted624   
CONTENT          PERU                           1                               1        0     215  pers_wasted624   
EE               PAKISTAN                       0                               0      188     373  pers_wasted624   
EE               PAKISTAN                       0                               1       24     373  pers_wasted624   
EE               PAKISTAN                       1                               0      136     373  pers_wasted624   
EE               PAKISTAN                       1                               1       25     373  pers_wasted624   
GMS-Nepal        NEPAL                          0                               0      454     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                               1       88     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                               0       27     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                               1       21     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                               0      246     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                               1        2     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                               0       24     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                               1        2     274  pers_wasted624   
IRC              INDIA                          0                               0      310     410  pers_wasted624   
IRC              INDIA                          0                               1       38     410  pers_wasted624   
IRC              INDIA                          1                               0       52     410  pers_wasted624   
IRC              INDIA                          1                               1       10     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                               0    12183   17265  pers_wasted624   
JiVitA-3         BANGLADESH                     0                               1     2582   17265  pers_wasted624   
JiVitA-3         BANGLADESH                     1                               0     1840   17265  pers_wasted624   
JiVitA-3         BANGLADESH                     1                               1      660   17265  pers_wasted624   
JiVitA-4         BANGLADESH                     0                               0     4209    5257  pers_wasted624   
JiVitA-4         BANGLADESH                     0                               1      449    5257  pers_wasted624   
JiVitA-4         BANGLADESH                     1                               0      484    5257  pers_wasted624   
JiVitA-4         BANGLADESH                     1                               1      115    5257  pers_wasted624   
Keneba           GAMBIA                         0                               0     1862    2299  pers_wasted624   
Keneba           GAMBIA                         0                               1      164    2299  pers_wasted624   
Keneba           GAMBIA                         1                               0      234    2299  pers_wasted624   
Keneba           GAMBIA                         1                               1       39    2299  pers_wasted624   
LCNI-5           MALAWI                         0                               0      720     797  pers_wasted624   
LCNI-5           MALAWI                         0                               1       10     797  pers_wasted624   
LCNI-5           MALAWI                         1                               0       64     797  pers_wasted624   
LCNI-5           MALAWI                         1                               1        3     797  pers_wasted624   
MAL-ED           BANGLADESH                     0                               0      207     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                               1       15     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                               0       16     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                               1        2     240  pers_wasted624   
MAL-ED           BRAZIL                         0                               0      188     207  pers_wasted624   
MAL-ED           BRAZIL                         0                               1        2     207  pers_wasted624   
MAL-ED           BRAZIL                         1                               0       17     207  pers_wasted624   
MAL-ED           BRAZIL                         1                               1        0     207  pers_wasted624   
MAL-ED           INDIA                          0                               0      193     235  pers_wasted624   
MAL-ED           INDIA                          0                               1       22     235  pers_wasted624   
MAL-ED           INDIA                          1                               0       14     235  pers_wasted624   
MAL-ED           INDIA                          1                               1        6     235  pers_wasted624   
MAL-ED           NEPAL                          0                               0      224     235  pers_wasted624   
MAL-ED           NEPAL                          0                               1        1     235  pers_wasted624   
MAL-ED           NEPAL                          1                               0        9     235  pers_wasted624   
MAL-ED           NEPAL                          1                               1        1     235  pers_wasted624   
MAL-ED           PERU                           0                               0      234     270  pers_wasted624   
MAL-ED           PERU                           0                               1        1     270  pers_wasted624   
MAL-ED           PERU                           1                               0       33     270  pers_wasted624   
MAL-ED           PERU                           1                               1        2     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                               0      230     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                               1        2     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                               0       27     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                               1        0     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                               0      208     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                               1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                               0       37     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                               1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                               0      427     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                               1       48     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                               0       54     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                               1       13     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                               0      641     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                               1       36     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                               0       45     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                               1        8     730  pers_wasted624   
PROBIT           BELARUS                        0                               0    16294   16595  pers_wasted624   
PROBIT           BELARUS                        0                               1       16   16595  pers_wasted624   
PROBIT           BELARUS                        1                               0      283   16595  pers_wasted624   
PROBIT           BELARUS                        1                               1        2   16595  pers_wasted624   
PROVIDE          BANGLADESH                     0                               0      549     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                               1       37     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                               0       26     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                               1        3     615  pers_wasted624   
ResPak           PAKISTAN                       0                               0      114     234  pers_wasted624   
ResPak           PAKISTAN                       0                               1       32     234  pers_wasted624   
ResPak           PAKISTAN                       1                               0       73     234  pers_wasted624   
ResPak           PAKISTAN                       1                               1       15     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                               0     1018    1388  pers_wasted624   
SAS-CompFeed     INDIA                          0                               1      163    1388  pers_wasted624   
SAS-CompFeed     INDIA                          1                               0      140    1388  pers_wasted624   
SAS-CompFeed     INDIA                          1                               1       67    1388  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                               0      283     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                               1       55     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                               0       43     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                               1       21     402  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                               0     1828    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                               1       90    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                               0       88    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                               1       12    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                               0     9267   10802  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                               1      375   10802  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                               0     1068   10802  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                               1       92   10802  pers_wasted624   


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
* studyid: PROVIDE, country: BANGLADESH

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
![](/tmp/a1da9cbf-3800-4cdb-a46d-f4954500b1e5/9a5adc75-b665-4d8c-b7c5-00f20122ebb8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a1da9cbf-3800-4cdb-a46d-f4954500b1e5/9a5adc75-b665-4d8c-b7c5-00f20122ebb8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a1da9cbf-3800-4cdb-a46d-f4954500b1e5/9a5adc75-b665-4d8c-b7c5-00f20122ebb8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a1da9cbf-3800-4cdb-a46d-f4954500b1e5/9a5adc75-b665-4d8c-b7c5-00f20122ebb8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0584459   0.0308255   0.0860663
CMC-V-BCS-2002   INDIA                          1                    NA                0.1238636   0.0577832   0.1899439
CMIN             BANGLADESH                     0                    NA                0.0594613   0.0258138   0.0931087
CMIN             BANGLADESH                     1                    NA                0.2828869   0.1635341   0.4022396
COHORTS          GUATEMALA                      0                    NA                0.0278712   0.0168705   0.0388720
COHORTS          GUATEMALA                      1                    NA                0.1229530   0.0693573   0.1765487
COHORTS          INDIA                          0                    NA                0.1021815   0.0947334   0.1096295
COHORTS          INDIA                          1                    NA                0.2331089   0.1920377   0.2741801
COHORTS          PHILIPPINES                    0                    NA                0.0728612   0.0627478   0.0829746
COHORTS          PHILIPPINES                    1                    NA                0.2093635   0.1433986   0.2753284
EE               PAKISTAN                       0                    NA                0.1166664   0.0726063   0.1607265
EE               PAKISTAN                       1                    NA                0.1527668   0.0960632   0.2094704
GMS-Nepal        NEPAL                          0                    NA                0.1619968   0.1309044   0.1930893
GMS-Nepal        NEPAL                          1                    NA                0.4188970   0.2756425   0.5621514
IRC              INDIA                          0                    NA                0.1075188   0.0751071   0.1399305
IRC              INDIA                          1                    NA                0.1636893   0.0692758   0.2581027
JiVitA-3         BANGLADESH                     0                    NA                0.1765111   0.1695383   0.1834839
JiVitA-3         BANGLADESH                     1                    NA                0.2617560   0.2396818   0.2838302
JiVitA-4         BANGLADESH                     0                    NA                0.0970613   0.0859809   0.1081416
JiVitA-4         BANGLADESH                     1                    NA                0.1810527   0.1434300   0.2186753
Keneba           GAMBIA                         0                    NA                0.0814812   0.0695615   0.0934010
Keneba           GAMBIA                         1                    NA                0.1389878   0.0983239   0.1796517
MAL-ED           INDIA                          0                    NA                0.1023256   0.0617274   0.1429237
MAL-ED           INDIA                          1                    NA                0.3000000   0.0987348   0.5012652
NIH-Birth        BANGLADESH                     0                    NA                0.1003697   0.0732302   0.1275093
NIH-Birth        BANGLADESH                     1                    NA                0.1611108   0.0658054   0.2564162
NIH-Crypto       BANGLADESH                     0                    NA                0.0531758   0.0362619   0.0700896
NIH-Crypto       BANGLADESH                     1                    NA                0.1509434   0.0544976   0.2473892
ResPak           PAKISTAN                       0                    NA                0.2232267   0.1536308   0.2928226
ResPak           PAKISTAN                       1                    NA                0.1619192   0.0834362   0.2404021
SAS-CompFeed     INDIA                          0                    NA                0.1429622   0.1196036   0.1663207
SAS-CompFeed     INDIA                          1                    NA                0.2980820   0.2086379   0.3875261
SAS-FoodSuppl    INDIA                          0                    NA                0.1625583   0.1227726   0.2023441
SAS-FoodSuppl    INDIA                          1                    NA                0.3382156   0.2087719   0.4676593
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0468966   0.0374300   0.0563631
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1144318   0.0496672   0.1791965
ZVITAMBO         ZIMBABWE                       0                    NA                0.0394974   0.0355995   0.0433953
ZVITAMBO         ZIMBABWE                       1                    NA                0.0745387   0.0591515   0.0899259


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
COHORTS          GUATEMALA                      NA                   NA                0.0400782   0.0280529   0.0521035
COHORTS          INDIA                          NA                   NA                0.1118526   0.1044114   0.1192938
COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
EE               PAKISTAN                       NA                   NA                0.1313673   0.0970401   0.1656945
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1877787   0.1812440   0.1943134
JiVitA-4         BANGLADESH                     NA                   NA                0.1072855   0.0967458   0.1178252
Keneba           GAMBIA                         NA                   NA                0.0882993   0.0766987   0.0998998
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1657061   0.1471754   0.1842367
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432327   0.0393972   0.0470683


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
CMC-V-BCS-2002   INDIA                          1                    0                 2.1192854   1.0386213   4.324358
CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
CMIN             BANGLADESH                     1                    0                 4.7574977   2.3504105   9.629715
COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
COHORTS          GUATEMALA                      1                    0                 4.4114659   2.4542167   7.929630
COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
COHORTS          INDIA                          1                    0                 2.2813232   1.8857481   2.759878
COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
COHORTS          PHILIPPINES                    1                    0                 2.8734556   2.0365602   4.054261
EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
EE               PAKISTAN                       1                    0                 1.3094325   0.7700713   2.226564
GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
GMS-Nepal        NEPAL                          1                    0                 2.5858340   1.7477135   3.825877
IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
IRC              INDIA                          1                    0                 1.5224244   0.7926399   2.924122
JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-3         BANGLADESH                     1                    0                 1.4829436   1.3520026   1.626566
JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-4         BANGLADESH                     1                    0                 1.8653445   1.4672960   2.371376
Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
Keneba           GAMBIA                         1                    0                 1.7057652   1.2304436   2.364704
MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.000000
MAL-ED           INDIA                          1                    0                 2.9318182   1.3447391   6.391989
NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
NIH-Birth        BANGLADESH                     1                    0                 1.6051735   0.8379134   3.074998
NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
NIH-Crypto       BANGLADESH                     1                    0                 2.8385744   1.3903512   5.795302
ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ResPak           PAKISTAN                       1                    0                 0.7253575   0.4070289   1.292644
SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
SAS-CompFeed     INDIA                          1                    0                 2.0850411   1.3785516   3.153597
SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
SAS-FoodSuppl    INDIA                          1                    0                 2.0805801   1.3203699   3.278485
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.4400909   1.3377602   4.450756
ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ZVITAMBO         ZIMBABWE                       1                    0                 1.8871809   1.5015602   2.371834


### Parameter: PAR


studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                 0.0172298   -0.0016371   0.0360966
CMIN             BANGLADESH                     0                    NA                 0.0397451    0.0126025   0.0668876
COHORTS          GUATEMALA                      0                    NA                 0.0122070    0.0043685   0.0200454
COHORTS          INDIA                          0                    NA                 0.0096712    0.0067716   0.0125707
COHORTS          PHILIPPINES                    0                    NA                 0.0075945    0.0032548   0.0119341
EE               PAKISTAN                       0                    NA                 0.0147009   -0.0168033   0.0462050
GMS-Nepal        NEPAL                          0                    NA                 0.0227489    0.0096191   0.0358787
IRC              INDIA                          0                    NA                 0.0095544   -0.0052449   0.0243536
JiVitA-3         BANGLADESH                     0                    NA                 0.0112677    0.0082453   0.0142900
JiVitA-4         BANGLADESH                     0                    NA                 0.0102243    0.0057674   0.0146812
Keneba           GAMBIA                         0                    NA                 0.0068181    0.0016331   0.0120030
MAL-ED           INDIA                          0                    NA                 0.0168234   -0.0020257   0.0356724
NIH-Birth        BANGLADESH                     0                    NA                 0.0121764   -0.0004243   0.0247771
NIH-Crypto       BANGLADESH                     0                    NA                 0.0070982   -0.0002455   0.0144419
ResPak           PAKISTAN                       0                    NA                -0.0223720   -0.0639909   0.0192468
SAS-CompFeed     INDIA                          0                    NA                 0.0227439    0.0039271   0.0415607
SAS-FoodSuppl    INDIA                          0                    NA                 0.0264964    0.0057970   0.0471958
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0036485    0.0003766   0.0069205
ZVITAMBO         ZIMBABWE                       0                    NA                 0.0037353    0.0019957   0.0054749


### Parameter: PAF


studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                 0.2276790   -0.0491526   0.4314652
CMIN             BANGLADESH                     0                    NA                 0.4006304    0.1055231   0.5983754
COHORTS          GUATEMALA                      0                    NA                 0.3045788    0.1061272   0.4589715
COHORTS          INDIA                          0                    NA                 0.0864634    0.0606559   0.1115618
COHORTS          PHILIPPINES                    0                    NA                 0.0943930    0.0400052   0.1456996
EE               PAKISTAN                       0                    NA                 0.1119065   -0.1616787   0.3210601
GMS-Nepal        NEPAL                          0                    NA                 0.1231363    0.0509723   0.1898130
IRC              INDIA                          0                    NA                 0.0816101   -0.0522805   0.1984646
JiVitA-3         BANGLADESH                     0                    NA                 0.0600049    0.0438065   0.0759290
JiVitA-4         BANGLADESH                     0                    NA                 0.0952996    0.0525376   0.1361316
Keneba           GAMBIA                         0                    NA                 0.0772153    0.0173987   0.1333905
MAL-ED           INDIA                          0                    NA                 0.1411960   -0.0253403   0.2806834
NIH-Birth        BANGLADESH                     0                    NA                 0.1081904   -0.0087163   0.2115481
NIH-Crypto       BANGLADESH                     0                    NA                 0.1177655   -0.0080550   0.2278818
ResPak           PAKISTAN                       0                    NA                -0.1113841   -0.3377971   0.0767101
SAS-CompFeed     INDIA                          0                    NA                 0.1372544    0.0185395   0.2416098
SAS-FoodSuppl    INDIA                          0                    NA                 0.1401521    0.0256090   0.2412303
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0721839    0.0065306   0.1334986
ZVITAMBO         ZIMBABWE                       0                    NA                 0.0864007    0.0460344   0.1250590
