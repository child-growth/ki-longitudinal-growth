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

**Intervention Variable:** ever_stunted06

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

studyid          country                        ever_stunted06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  ---------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                              0      167     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                              1       11     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                              0      175     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                              1       17     370  pers_wasted624   
CMIN             BANGLADESH                     0                              0      107     252  pers_wasted624   
CMIN             BANGLADESH                     0                              1        3     252  pers_wasted624   
CMIN             BANGLADESH                     1                              0      120     252  pers_wasted624   
CMIN             BANGLADESH                     1                              1       22     252  pers_wasted624   
COHORTS          GUATEMALA                      0                              0      555    1023  pers_wasted624   
COHORTS          GUATEMALA                      0                              1       12    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                              0      427    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                              1       29    1023  pers_wasted624   
COHORTS          INDIA                          0                              0     4740    6893  pers_wasted624   
COHORTS          INDIA                          0                              1      420    6893  pers_wasted624   
COHORTS          INDIA                          1                              0     1382    6893  pers_wasted624   
COHORTS          INDIA                          1                              1      351    6893  pers_wasted624   
COHORTS          PHILIPPINES                    0                              0     1889    2809  pers_wasted624   
COHORTS          PHILIPPINES                    0                              1      108    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                              0      694    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                              1      118    2809  pers_wasted624   
CONTENT          PERU                           0                              0      186     215  pers_wasted624   
CONTENT          PERU                           0                              1        0     215  pers_wasted624   
CONTENT          PERU                           1                              0       29     215  pers_wasted624   
CONTENT          PERU                           1                              1        0     215  pers_wasted624   
EE               PAKISTAN                       0                              0       83     373  pers_wasted624   
EE               PAKISTAN                       0                              1        8     373  pers_wasted624   
EE               PAKISTAN                       1                              0      241     373  pers_wasted624   
EE               PAKISTAN                       1                              1       41     373  pers_wasted624   
GMS-Nepal        NEPAL                          0                              0      339     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                              1       58     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                              0      142     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                              1       51     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                              0      180     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                              1        1     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                              0       90     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                              1        3     274  pers_wasted624   
IRC              INDIA                          0                              0      204     410  pers_wasted624   
IRC              INDIA                          0                              1       28     410  pers_wasted624   
IRC              INDIA                          1                              0      158     410  pers_wasted624   
IRC              INDIA                          1                              1       20     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                              0     8305   17265  pers_wasted624   
JiVitA-3         BANGLADESH                     0                              1     1519   17265  pers_wasted624   
JiVitA-3         BANGLADESH                     1                              0     5718   17265  pers_wasted624   
JiVitA-3         BANGLADESH                     1                              1     1723   17265  pers_wasted624   
JiVitA-4         BANGLADESH                     0                              0     2985    5257  pers_wasted624   
JiVitA-4         BANGLADESH                     0                              1      243    5257  pers_wasted624   
JiVitA-4         BANGLADESH                     1                              0     1708    5257  pers_wasted624   
JiVitA-4         BANGLADESH                     1                              1      321    5257  pers_wasted624   
Keneba           GAMBIA                         0                              0     1469    2299  pers_wasted624   
Keneba           GAMBIA                         0                              1       97    2299  pers_wasted624   
Keneba           GAMBIA                         1                              0      627    2299  pers_wasted624   
Keneba           GAMBIA                         1                              1      106    2299  pers_wasted624   
LCNI-5           MALAWI                         0                              0      498     797  pers_wasted624   
LCNI-5           MALAWI                         0                              1        4     797  pers_wasted624   
LCNI-5           MALAWI                         1                              0      286     797  pers_wasted624   
LCNI-5           MALAWI                         1                              1        9     797  pers_wasted624   
MAL-ED           BANGLADESH                     0                              0      145     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                              1       10     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                              0       78     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                              1        7     240  pers_wasted624   
MAL-ED           BRAZIL                         0                              0      160     207  pers_wasted624   
MAL-ED           BRAZIL                         0                              1        2     207  pers_wasted624   
MAL-ED           BRAZIL                         1                              0       45     207  pers_wasted624   
MAL-ED           BRAZIL                         1                              1        0     207  pers_wasted624   
MAL-ED           INDIA                          0                              0      135     235  pers_wasted624   
MAL-ED           INDIA                          0                              1       14     235  pers_wasted624   
MAL-ED           INDIA                          1                              0       72     235  pers_wasted624   
MAL-ED           INDIA                          1                              1       14     235  pers_wasted624   
MAL-ED           NEPAL                          0                              0      191     235  pers_wasted624   
MAL-ED           NEPAL                          0                              1        1     235  pers_wasted624   
MAL-ED           NEPAL                          1                              0       42     235  pers_wasted624   
MAL-ED           NEPAL                          1                              1        1     235  pers_wasted624   
MAL-ED           PERU                           0                              0      147     270  pers_wasted624   
MAL-ED           PERU                           0                              1        0     270  pers_wasted624   
MAL-ED           PERU                           1                              0      120     270  pers_wasted624   
MAL-ED           PERU                           1                              1        3     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                              0      152     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                              1        2     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                              0      105     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                              1        0     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              0      140     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              0      105     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                              0      295     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                              1       23     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                              0      186     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                              1       38     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                              0      460     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                              1       19     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                              0      226     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                              1       25     730  pers_wasted624   
PROBIT           BELARUS                        0                              0    15191   16595  pers_wasted624   
PROBIT           BELARUS                        0                              1       14   16595  pers_wasted624   
PROBIT           BELARUS                        1                              0     1386   16595  pers_wasted624   
PROBIT           BELARUS                        1                              1        4   16595  pers_wasted624   
PROVIDE          BANGLADESH                     0                              0      435     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                              1       20     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                              0      140     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                              1       20     615  pers_wasted624   
ResPak           PAKISTAN                       0                              0       79     234  pers_wasted624   
ResPak           PAKISTAN                       0                              1       16     234  pers_wasted624   
ResPak           PAKISTAN                       1                              0      108     234  pers_wasted624   
ResPak           PAKISTAN                       1                              1       31     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                              0      698    1388  pers_wasted624   
SAS-CompFeed     INDIA                          0                              1      100    1388  pers_wasted624   
SAS-CompFeed     INDIA                          1                              0      460    1388  pers_wasted624   
SAS-CompFeed     INDIA                          1                              1      130    1388  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                              0      179     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                              1       36     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                              0      147     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                              1       40     402  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              0     1514    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              1       66    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              0      402    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              1       36    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                              0     7237   10802  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                              1      241   10802  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                              0     3098   10802  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                              1      226   10802  pers_wasted624   


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
* studyid: LCNI-5, country: MALAWI
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/4ce0b008-935b-4aaa-8e68-bc88f632a37e/e11d4f4f-2bc0-4a29-88e3-410eb08c1ac6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4ce0b008-935b-4aaa-8e68-bc88f632a37e/e11d4f4f-2bc0-4a29-88e3-410eb08c1ac6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4ce0b008-935b-4aaa-8e68-bc88f632a37e/e11d4f4f-2bc0-4a29-88e3-410eb08c1ac6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4ce0b008-935b-4aaa-8e68-bc88f632a37e/e11d4f4f-2bc0-4a29-88e3-410eb08c1ac6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0588395   0.0231388   0.0945402
CMC-V-BCS-2002   INDIA                          1                    NA                0.0863158   0.0457865   0.1268451
COHORTS          GUATEMALA                      0                    NA                0.0242741   0.0089557   0.0395924
COHORTS          GUATEMALA                      1                    NA                0.0689486   0.0429782   0.0949191
COHORTS          INDIA                          0                    NA                0.0844485   0.0767035   0.0921934
COHORTS          INDIA                          1                    NA                0.1864733   0.1678897   0.2050568
COHORTS          PHILIPPINES                    0                    NA                0.0587740   0.0478288   0.0697193
COHORTS          PHILIPPINES                    1                    NA                0.1368711   0.1113267   0.1624154
EE               PAKISTAN                       0                    NA                0.0879121   0.0296544   0.1461697
EE               PAKISTAN                       1                    NA                0.1453901   0.1041938   0.1865863
GMS-Nepal        NEPAL                          0                    NA                0.1478468   0.1131390   0.1825547
GMS-Nepal        NEPAL                          1                    NA                0.2609588   0.1990277   0.3228899
IRC              INDIA                          0                    NA                0.1200981   0.0780825   0.1621138
IRC              INDIA                          1                    NA                0.1134779   0.0657334   0.1612224
JiVitA-3         BANGLADESH                     0                    NA                0.1565887   0.1485510   0.1646264
JiVitA-3         BANGLADESH                     1                    NA                0.2271227   0.2159417   0.2383037
JiVitA-4         BANGLADESH                     0                    NA                0.0760702   0.0646482   0.0874921
JiVitA-4         BANGLADESH                     1                    NA                0.1544780   0.1359254   0.1730306
Keneba           GAMBIA                         0                    NA                0.0651478   0.0525709   0.0777247
Keneba           GAMBIA                         1                    NA                0.1372349   0.1121596   0.1623103
MAL-ED           BANGLADESH                     0                    NA                0.0645161   0.0257599   0.1032723
MAL-ED           BANGLADESH                     1                    NA                0.0823529   0.0237900   0.1409159
MAL-ED           INDIA                          0                    NA                0.0913789   0.0453028   0.1374549
MAL-ED           INDIA                          1                    NA                0.1603152   0.0811502   0.2394801
NIH-Birth        BANGLADESH                     0                    NA                0.0757955   0.0447579   0.1068331
NIH-Birth        BANGLADESH                     1                    NA                0.1838286   0.1294939   0.2381634
NIH-Crypto       BANGLADESH                     0                    NA                0.0408026   0.0232739   0.0583313
NIH-Crypto       BANGLADESH                     1                    NA                0.0958708   0.0589107   0.1328310
PROVIDE          BANGLADESH                     0                    NA                0.0432183   0.0243175   0.0621191
PROVIDE          BANGLADESH                     1                    NA                0.1389200   0.0857982   0.1920417
ResPak           PAKISTAN                       0                    NA                0.1584489   0.0854634   0.2314343
ResPak           PAKISTAN                       1                    NA                0.2161405   0.1475465   0.2847345
SAS-CompFeed     INDIA                          0                    NA                0.1355898   0.1127200   0.1584597
SAS-CompFeed     INDIA                          1                    NA                0.1993120   0.1676289   0.2309952
SAS-FoodSuppl    INDIA                          0                    NA                0.1656793   0.1153642   0.2159943
SAS-FoodSuppl    INDIA                          1                    NA                0.2191198   0.1565179   0.2817217
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0417835   0.0318166   0.0517504
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0844775   0.0571325   0.1118225
ZVITAMBO         ZIMBABWE                       0                    NA                0.0338190   0.0296000   0.0380380
ZVITAMBO         ZIMBABWE                       1                    NA                0.0653705   0.0566820   0.0740589


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
COHORTS          GUATEMALA                      NA                   NA                0.0400782   0.0280529   0.0521035
COHORTS          INDIA                          NA                   NA                0.1118526   0.1044114   0.1192938
COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
EE               PAKISTAN                       NA                   NA                0.1313673   0.0970401   0.1656945
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1877787   0.1812440   0.1943134
JiVitA-4         BANGLADESH                     NA                   NA                0.1072855   0.0967458   0.1178252
Keneba           GAMBIA                         NA                   NA                0.0882993   0.0766987   0.0998998
MAL-ED           BANGLADESH                     NA                   NA                0.0708333   0.0383085   0.1033581
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1657061   0.1471754   0.1842367
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432327   0.0393972   0.0470683


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
CMC-V-BCS-2002   INDIA                          1                    0                 1.4669711   0.6801733   3.163906
COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
COHORTS          GUATEMALA                      1                    0                 2.8404233   1.3656259   5.907917
COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
COHORTS          INDIA                          1                    0                 2.2081310   1.9292708   2.527298
COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
COHORTS          PHILIPPINES                    1                    0                 2.3287675   1.7899124   3.029845
EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
EE               PAKISTAN                       1                    0                 1.6538121   0.8044198   3.400084
GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
GMS-Nepal        NEPAL                          1                    0                 1.7650616   1.2651209   2.462565
IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
IRC              INDIA                          1                    0                 0.9448762   0.5465736   1.633433
JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-3         BANGLADESH                     1                    0                 1.4504415   1.3547808   1.552857
JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-4         BANGLADESH                     1                    0                 2.0307305   1.6900594   2.440072
Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
Keneba           GAMBIA                         1                    0                 2.1065172   1.6156943   2.746444
MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
MAL-ED           BANGLADESH                     1                    0                 1.2764706   0.5031874   3.238112
MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.000000
MAL-ED           INDIA                          1                    0                 1.7544009   0.8629707   3.566659
NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
NIH-Birth        BANGLADESH                     1                    0                 2.4253242   1.4621479   4.022984
NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
NIH-Crypto       BANGLADESH                     1                    0                 2.3496264   1.3188379   4.186067
PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
PROVIDE          BANGLADESH                     1                    0                 3.2143775   1.7997099   5.741049
ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ResPak           PAKISTAN                       1                    0                 1.3641026   0.7760196   2.397846
SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
SAS-CompFeed     INDIA                          1                    0                 1.4699629   1.1394879   1.896282
SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
SAS-FoodSuppl    INDIA                          1                    0                 1.3225542   0.8709629   2.008294
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.0217918   1.3520764   3.023233
ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ZVITAMBO         ZIMBABWE                       1                    0                 1.9329518   1.6112315   2.318911


### Parameter: PAR


studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                 0.0168362   -0.0113256   0.0449980
COHORTS          GUATEMALA                      0                    NA                 0.0158041    0.0016607   0.0299475
COHORTS          INDIA                          0                    NA                 0.0274041    0.0220292   0.0327791
COHORTS          PHILIPPINES                    0                    NA                 0.0216816    0.0133709   0.0299923
EE               PAKISTAN                       0                    NA                 0.0434552   -0.0105474   0.0974578
GMS-Nepal        NEPAL                          0                    NA                 0.0368989    0.0131876   0.0606102
IRC              INDIA                          0                    NA                -0.0030250   -0.0303688   0.0243189
JiVitA-3         BANGLADESH                     0                    NA                 0.0311901    0.0253800   0.0370001
JiVitA-4         BANGLADESH                     0                    NA                 0.0312154    0.0227381   0.0396927
Keneba           GAMBIA                         0                    NA                 0.0231515    0.0137432   0.0325597
MAL-ED           BANGLADESH                     0                    NA                 0.0063172   -0.0185779   0.0312123
MAL-ED           INDIA                          0                    NA                 0.0277701   -0.0058603   0.0614004
NIH-Birth        BANGLADESH                     0                    NA                 0.0367506    0.0107103   0.0627909
NIH-Crypto       BANGLADESH                     0                    NA                 0.0194714    0.0052234   0.0337194
PROVIDE          BANGLADESH                     0                    NA                 0.0218223    0.0074011   0.0362436
ResPak           PAKISTAN                       0                    NA                 0.0424058   -0.0186133   0.1034250
SAS-CompFeed     INDIA                          0                    NA                 0.0301162    0.0096859   0.0505465
SAS-FoodSuppl    INDIA                          0                    NA                 0.0233755   -0.0134132   0.0601641
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0087616    0.0026541   0.0148690
ZVITAMBO         ZIMBABWE                       0                    NA                 0.0094138    0.0063537   0.0124738


### Parameter: PAF


studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                 0.2224785   -0.2476406   0.5154536
COHORTS          GUATEMALA                      0                    NA                 0.3943322   -0.0512427   0.6510478
COHORTS          INDIA                          0                    NA                 0.2450023    0.1977638   0.2894593
COHORTS          PHILIPPINES                    0                    NA                 0.2694854    0.1640264   0.3616407
EE               PAKISTAN                       0                    NA                 0.3307917   -0.2234703   0.6339594
GMS-Nepal        NEPAL                          0                    NA                 0.1997281    0.0644060   0.3154775
IRC              INDIA                          0                    NA                -0.0258383   -0.2880175   0.1829737
JiVitA-3         BANGLADESH                     0                    NA                 0.1661001    0.1349565   0.1961225
JiVitA-4         BANGLADESH                     0                    NA                 0.2909561    0.2110431   0.3627747
Keneba           GAMBIA                         0                    NA                 0.2621933    0.1530732   0.3572541
MAL-ED           BANGLADESH                     0                    NA                 0.0891841   -0.3366919   0.3793741
MAL-ED           INDIA                          0                    NA                 0.2330702   -0.0941331   0.4624225
NIH-Birth        BANGLADESH                     0                    NA                 0.3265384    0.0658012   0.5145033
NIH-Crypto       BANGLADESH                     0                    NA                 0.3230481    0.0669370   0.5088607
PROVIDE          BANGLADESH                     0                    NA                 0.3355185    0.0989606   0.5099707
ResPak           PAKISTAN                       0                    NA                 0.2111270   -0.1533042   0.4604020
SAS-CompFeed     INDIA                          0                    NA                 0.1817447    0.0542431   0.2920573
SAS-FoodSuppl    INDIA                          0                    NA                 0.1236440   -0.0930341   0.2973688
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1733422    0.0476865   0.2824178
ZVITAMBO         ZIMBABWE                       0                    NA                 0.2177459    0.1464774   0.2830636
