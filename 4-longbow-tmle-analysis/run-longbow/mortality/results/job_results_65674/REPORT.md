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

**Intervention Variable:** ever_sunderweight06

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

studyid          country                        ever_sunderweight06    co_occurence   n_cell      n  outcome_variable 
---------------  -----------------------------  --------------------  -------------  -------  -----  -----------------
CMC-V-BCS-2002   INDIA                          0                                 0      286    369  co_occurence     
CMC-V-BCS-2002   INDIA                          0                                 1        8    369  co_occurence     
CMC-V-BCS-2002   INDIA                          1                                 0       61    369  co_occurence     
CMC-V-BCS-2002   INDIA                          1                                 1       14    369  co_occurence     
CMIN             BANGLADESH                     0                                 0      178    237  co_occurence     
CMIN             BANGLADESH                     0                                 1       15    237  co_occurence     
CMIN             BANGLADESH                     1                                 0       33    237  co_occurence     
CMIN             BANGLADESH                     1                                 1       11    237  co_occurence     
COHORTS          GUATEMALA                      0                                 0      693    779  co_occurence     
COHORTS          GUATEMALA                      0                                 1       27    779  co_occurence     
COHORTS          GUATEMALA                      1                                 0       48    779  co_occurence     
COHORTS          GUATEMALA                      1                                 1       11    779  co_occurence     
COHORTS          PHILIPPINES                    0                                 0     2203   2487  co_occurence     
COHORTS          PHILIPPINES                    0                                 1      146   2487  co_occurence     
COHORTS          PHILIPPINES                    1                                 0       97   2487  co_occurence     
COHORTS          PHILIPPINES                    1                                 1       41   2487  co_occurence     
CONTENT          PERU                           0                                 0      198    200  co_occurence     
CONTENT          PERU                           0                                 1        0    200  co_occurence     
CONTENT          PERU                           1                                 0        2    200  co_occurence     
CONTENT          PERU                           1                                 1        0    200  co_occurence     
EE               PAKISTAN                       0                                 0      180    346  co_occurence     
EE               PAKISTAN                       0                                 1       22    346  co_occurence     
EE               PAKISTAN                       1                                 0       92    346  co_occurence     
EE               PAKISTAN                       1                                 1       52    346  co_occurence     
GMS-Nepal        NEPAL                          0                                 0      438    550  co_occurence     
GMS-Nepal        NEPAL                          0                                 1       37    550  co_occurence     
GMS-Nepal        NEPAL                          1                                 0       52    550  co_occurence     
GMS-Nepal        NEPAL                          1                                 1       23    550  co_occurence     
IRC              INDIA                          0                                 0      327    405  co_occurence     
IRC              INDIA                          0                                 1       15    405  co_occurence     
IRC              INDIA                          1                                 0       53    405  co_occurence     
IRC              INDIA                          1                                 1       10    405  co_occurence     
JiVitA-4         BANGLADESH                     0                                 0     3809   4547  co_occurence     
JiVitA-4         BANGLADESH                     0                                 1      286   4547  co_occurence     
JiVitA-4         BANGLADESH                     1                                 0      301   4547  co_occurence     
JiVitA-4         BANGLADESH                     1                                 1      151   4547  co_occurence     
Keneba           GAMBIA                         0                                 0     1668   1863  co_occurence     
Keneba           GAMBIA                         0                                 1       75   1863  co_occurence     
Keneba           GAMBIA                         1                                 0       86   1863  co_occurence     
Keneba           GAMBIA                         1                                 1       34   1863  co_occurence     
LCNI-5           MALAWI                         0                                 0      669    692  co_occurence     
LCNI-5           MALAWI                         0                                 1       14    692  co_occurence     
LCNI-5           MALAWI                         1                                 0        5    692  co_occurence     
LCNI-5           MALAWI                         1                                 1        4    692  co_occurence     
MAL-ED           BANGLADESH                     0                                 0      196    221  co_occurence     
MAL-ED           BANGLADESH                     0                                 1       11    221  co_occurence     
MAL-ED           BANGLADESH                     1                                 0       11    221  co_occurence     
MAL-ED           BANGLADESH                     1                                 1        3    221  co_occurence     
MAL-ED           BRAZIL                         0                                 0      176    180  co_occurence     
MAL-ED           BRAZIL                         0                                 1        1    180  co_occurence     
MAL-ED           BRAZIL                         1                                 0        3    180  co_occurence     
MAL-ED           BRAZIL                         1                                 1        0    180  co_occurence     
MAL-ED           INDIA                          0                                 0      187    228  co_occurence     
MAL-ED           INDIA                          0                                 1       10    228  co_occurence     
MAL-ED           INDIA                          1                                 0       24    228  co_occurence     
MAL-ED           INDIA                          1                                 1        7    228  co_occurence     
MAL-ED           NEPAL                          0                                 0      215    229  co_occurence     
MAL-ED           NEPAL                          0                                 1        2    229  co_occurence     
MAL-ED           NEPAL                          1                                 0       10    229  co_occurence     
MAL-ED           NEPAL                          1                                 1        2    229  co_occurence     
MAL-ED           PERU                           0                                 0      210    222  co_occurence     
MAL-ED           PERU                           0                                 1        4    222  co_occurence     
MAL-ED           PERU                           1                                 0        6    222  co_occurence     
MAL-ED           PERU                           1                                 1        2    222  co_occurence     
MAL-ED           SOUTH AFRICA                   0                                 0      227    241  co_occurence     
MAL-ED           SOUTH AFRICA                   0                                 1        3    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                                 0       10    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                                 1        1    241  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                 0      217    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                 1        0    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                 0        7    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                 1        1    225  co_occurence     
NIH-Birth        BANGLADESH                     0                                 0      362    462  co_occurence     
NIH-Birth        BANGLADESH                     0                                 1       30    462  co_occurence     
NIH-Birth        BANGLADESH                     1                                 0       49    462  co_occurence     
NIH-Birth        BANGLADESH                     1                                 1       21    462  co_occurence     
NIH-Crypto       BANGLADESH                     0                                 0      565    634  co_occurence     
NIH-Crypto       BANGLADESH                     0                                 1       17    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                                 0       40    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                                 1       12    634  co_occurence     
PROBIT           BELARUS                        0                                 0     2138   2146  co_occurence     
PROBIT           BELARUS                        0                                 1        1   2146  co_occurence     
PROBIT           BELARUS                        1                                 0        7   2146  co_occurence     
PROBIT           BELARUS                        1                                 1        0   2146  co_occurence     
PROVIDE          BANGLADESH                     0                                 0      497    563  co_occurence     
PROVIDE          BANGLADESH                     0                                 1       26    563  co_occurence     
PROVIDE          BANGLADESH                     1                                 0       29    563  co_occurence     
PROVIDE          BANGLADESH                     1                                 1       11    563  co_occurence     
ResPak           PAKISTAN                       0                                 0        6      9  co_occurence     
ResPak           PAKISTAN                       0                                 1        0      9  co_occurence     
ResPak           PAKISTAN                       1                                 0        2      9  co_occurence     
ResPak           PAKISTAN                       1                                 1        1      9  co_occurence     
SAS-CompFeed     INDIA                          0                                 0      992   1260  co_occurence     
SAS-CompFeed     INDIA                          0                                 1       73   1260  co_occurence     
SAS-CompFeed     INDIA                          1                                 0      140   1260  co_occurence     
SAS-CompFeed     INDIA                          1                                 1       55   1260  co_occurence     
SAS-FoodSuppl    INDIA                          0                                 0      207    321  co_occurence     
SAS-FoodSuppl    INDIA                          0                                 1       32    321  co_occurence     
SAS-FoodSuppl    INDIA                          1                                 0       54    321  co_occurence     
SAS-FoodSuppl    INDIA                          1                                 1       28    321  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                 0      942    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                 1       17    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                 0       17    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                 1        4    980  co_occurence     
ZVITAMBO         ZIMBABWE                       0                                 0     1512   1692  co_occurence     
ZVITAMBO         ZIMBABWE                       0                                 1       70   1692  co_occurence     
ZVITAMBO         ZIMBABWE                       1                                 0       89   1692  co_occurence     
ZVITAMBO         ZIMBABWE                       1                                 1       21   1692  co_occurence     


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

* studyid: CONTENT, country: PERU
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS
* studyid: ResPak, country: PAKISTAN
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/1bfb98e1-553e-4a5b-922e-e042cf351d69/c504b458-d46e-44f6-ba60-5ed32b1de134/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1bfb98e1-553e-4a5b-922e-e042cf351d69/c504b458-d46e-44f6-ba60-5ed32b1de134/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1bfb98e1-553e-4a5b-922e-e042cf351d69/c504b458-d46e-44f6-ba60-5ed32b1de134/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1bfb98e1-553e-4a5b-922e-e042cf351d69/c504b458-d46e-44f6-ba60-5ed32b1de134/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0272109   0.0085881   0.0458337
CMC-V-BCS-2002   INDIA         1                    NA                0.1866667   0.0983639   0.2749695
CMIN             BANGLADESH    0                    NA                0.0765310   0.0385538   0.1145082
CMIN             BANGLADESH    1                    NA                0.2436970   0.1133414   0.3740525
COHORTS          GUATEMALA     0                    NA                0.0378612   0.0238349   0.0518875
COHORTS          GUATEMALA     1                    NA                0.1954804   0.0798506   0.3111102
COHORTS          PHILIPPINES   0                    NA                0.0626624   0.0528804   0.0724444
COHORTS          PHILIPPINES   1                    NA                0.2702737   0.1924610   0.3480863
EE               PAKISTAN      0                    NA                0.1087098   0.0655012   0.1519184
EE               PAKISTAN      1                    NA                0.3614274   0.2826861   0.4401686
GMS-Nepal        NEPAL         0                    NA                0.0785606   0.0544002   0.1027210
GMS-Nepal        NEPAL         1                    NA                0.3009353   0.1974892   0.4043815
IRC              INDIA         0                    NA                0.0429158   0.0216023   0.0642294
IRC              INDIA         1                    NA                0.1646030   0.0713528   0.2578531
JiVitA-4         BANGLADESH    0                    NA                0.0703938   0.0618814   0.0789063
JiVitA-4         BANGLADESH    1                    NA                0.3211708   0.2643894   0.3779523
Keneba           GAMBIA        0                    NA                0.0432600   0.0337112   0.0528088
Keneba           GAMBIA        1                    NA                0.2751799   0.1987899   0.3515699
MAL-ED           INDIA         0                    NA                0.0507614   0.0200412   0.0814816
MAL-ED           INDIA         1                    NA                0.2258065   0.0782988   0.3733141
NIH-Birth        BANGLADESH    0                    NA                0.0767546   0.0502619   0.1032472
NIH-Birth        BANGLADESH    1                    NA                0.2933481   0.1839043   0.4027918
NIH-Crypto       BANGLADESH    0                    NA                0.0294508   0.0157567   0.0431448
NIH-Crypto       BANGLADESH    1                    NA                0.2081964   0.0889899   0.3274029
PROVIDE          BANGLADESH    0                    NA                0.0497347   0.0310684   0.0684009
PROVIDE          BANGLADESH    1                    NA                0.2673079   0.1222748   0.4123410
SAS-CompFeed     INDIA         0                    NA                0.0690344   0.0582930   0.0797757
SAS-CompFeed     INDIA         1                    NA                0.2769349   0.2097116   0.3441581
SAS-FoodSuppl    INDIA         0                    NA                0.1336005   0.0903437   0.1768574
SAS-FoodSuppl    INDIA         1                    NA                0.3536267   0.2497438   0.4575096
ZVITAMBO         ZIMBABWE      0                    NA                0.0442757   0.0341365   0.0544149
ZVITAMBO         ZIMBABWE      1                    NA                0.1927231   0.1177805   0.2676656


### Parameter: E(Y)


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         NA                   NA                0.0596206   0.0354285   0.0838127
CMIN             BANGLADESH    NA                   NA                0.1097046   0.0698323   0.1495770
COHORTS          GUATEMALA     NA                   NA                0.0487805   0.0336441   0.0639169
COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
EE               PAKISTAN      NA                   NA                0.2138728   0.1706052   0.2571404
GMS-Nepal        NEPAL         NA                   NA                0.1090909   0.0830130   0.1351688
IRC              INDIA         NA                   NA                0.0617284   0.0382610   0.0851958
JiVitA-4         BANGLADESH    NA                   NA                0.0961073   0.0860713   0.1061434
Keneba           GAMBIA        NA                   NA                0.0585078   0.0478474   0.0691682
MAL-ED           INDIA         NA                   NA                0.0745614   0.0403897   0.1087331
NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
NIH-Crypto       BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
PROVIDE          BANGLADESH    NA                   NA                0.0657194   0.0452330   0.0862057
SAS-CompFeed     INDIA         NA                   NA                0.1015873   0.0902183   0.1129563
SAS-FoodSuppl    INDIA         NA                   NA                0.1869159   0.1442025   0.2296293
ZVITAMBO         ZIMBABWE      NA                   NA                0.0537825   0.0430304   0.0645346


### Parameter: RR


studyid          country       intervention_level   baseline_level    estimate   ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ---------  ---------  ----------
CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.000000    1.000000
CMC-V-BCS-2002   INDIA         1                    0                 6.860000   2.985432   15.763079
CMIN             BANGLADESH    0                    0                 1.000000   1.000000    1.000000
CMIN             BANGLADESH    1                    0                 3.184293   1.536087    6.601007
COHORTS          GUATEMALA     0                    0                 1.000000   1.000000    1.000000
COHORTS          GUATEMALA     1                    0                 5.163078   2.569580   10.374212
COHORTS          PHILIPPINES   0                    0                 1.000000   1.000000    1.000000
COHORTS          PHILIPPINES   1                    0                 4.313170   3.108703    5.984306
EE               PAKISTAN      0                    0                 1.000000   1.000000    1.000000
EE               PAKISTAN      1                    0                 3.324699   2.113853    5.229135
GMS-Nepal        NEPAL         0                    0                 1.000000   1.000000    1.000000
GMS-Nepal        NEPAL         1                    0                 3.830615   2.414313    6.077760
IRC              INDIA         0                    0                 1.000000   1.000000    1.000000
IRC              INDIA         1                    0                 3.835484   1.804517    8.152286
JiVitA-4         BANGLADESH    0                    0                 1.000000   1.000000    1.000000
JiVitA-4         BANGLADESH    1                    0                 4.562485   3.686405    5.646766
Keneba           GAMBIA        0                    0                 1.000000   1.000000    1.000000
Keneba           GAMBIA        1                    0                 6.361068   4.468850    9.054497
MAL-ED           INDIA         0                    0                 1.000000   1.000000    1.000000
MAL-ED           INDIA         1                    0                 4.448387   1.825847   10.837790
NIH-Birth        BANGLADESH    0                    0                 1.000000   1.000000    1.000000
NIH-Birth        BANGLADESH    1                    0                 3.821897   2.300749    6.348756
NIH-Crypto       BANGLADESH    0                    0                 1.000000   1.000000    1.000000
NIH-Crypto       BANGLADESH    1                    0                 7.069303   3.381075   14.780814
PROVIDE          BANGLADESH    0                    0                 1.000000   1.000000    1.000000
PROVIDE          BANGLADESH    1                    0                 5.374680   2.780441   10.389427
SAS-CompFeed     INDIA         0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed     INDIA         1                    0                 4.011551   2.882938    5.581994
SAS-FoodSuppl    INDIA         0                    0                 1.000000   1.000000    1.000000
SAS-FoodSuppl    INDIA         1                    0                 2.646896   1.715339    4.084357
ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.000000    1.000000
ZVITAMBO         ZIMBABWE      1                    0                 4.352794   2.771832    6.835483


### Parameter: PAR


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0324097   0.0129308   0.0518887
CMIN             BANGLADESH    0                    NA                0.0331737   0.0069252   0.0594222
COHORTS          GUATEMALA     0                    NA                0.0109193   0.0028052   0.0190333
COHORTS          PHILIPPINES   0                    NA                0.0125286   0.0078009   0.0172563
EE               PAKISTAN      0                    NA                0.1051630   0.0658080   0.1445180
GMS-Nepal        NEPAL         0                    NA                0.0305303   0.0144819   0.0465788
IRC              INDIA         0                    NA                0.0188126   0.0038427   0.0337825
JiVitA-4         BANGLADESH    0                    NA                0.0257135   0.0194196   0.0320073
Keneba           GAMBIA        0                    NA                0.0152478   0.0094749   0.0210206
MAL-ED           INDIA         0                    NA                0.0238000   0.0018774   0.0457226
NIH-Birth        BANGLADESH    0                    NA                0.0336350   0.0152920   0.0519781
NIH-Crypto       BANGLADESH    0                    NA                0.0162906   0.0059230   0.0266581
PROVIDE          BANGLADESH    0                    NA                0.0159847   0.0050244   0.0269450
SAS-CompFeed     INDIA         0                    NA                0.0325529   0.0212172   0.0438887
SAS-FoodSuppl    INDIA         0                    NA                0.0533153   0.0233192   0.0833115
ZVITAMBO         ZIMBABWE      0                    NA                0.0095068   0.0043836   0.0146300


### Parameter: PAF


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.5435993   0.2162412   0.7342274
CMIN             BANGLADESH    0                    NA                0.3023909   0.0440323   0.4909259
COHORTS          GUATEMALA     0                    NA                0.2238451   0.0553416   0.3622917
COHORTS          PHILIPPINES   0                    NA                0.1666233   0.1055336   0.2235408
EE               PAKISTAN      0                    NA                0.4917082   0.2975072   0.6322232
GMS-Nepal        NEPAL         0                    NA                0.2798614   0.1333080   0.4016333
IRC              INDIA         0                    NA                0.3047637   0.0516298   0.4903325
JiVitA-4         BANGLADESH    0                    NA                0.2675496   0.2096702   0.3211902
Keneba           GAMBIA        0                    NA                0.2606109   0.1671682   0.3435694
MAL-ED           INDIA         0                    NA                0.3191998   0.0031572   0.5350431
NIH-Birth        BANGLADESH    0                    NA                0.3046939   0.1371989   0.4396732
NIH-Crypto       BANGLADESH    0                    NA                0.3561452   0.1356090   0.5204149
PROVIDE          BANGLADESH    0                    NA                0.2432267   0.0761767   0.3800700
SAS-CompFeed     INDIA         0                    NA                0.3204430   0.2167290   0.4104242
SAS-FoodSuppl    INDIA         0                    NA                0.2852371   0.1161350   0.4219863
ZVITAMBO         ZIMBABWE      0                    NA                0.1767635   0.0826775   0.2611996
