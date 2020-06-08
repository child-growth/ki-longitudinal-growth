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

**Outcome Variable:** dead

## Predictor Variables

**Intervention Variable:** ever_wasted024

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* hhwealth_quart
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_parity
* impsan
* safeh20
* delta_vagbrth
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_wasted024    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                    0     5737    7166  dead             
Burkina Faso Zn   BURKINA FASO                   0                    1       23    7166  dead             
Burkina Faso Zn   BURKINA FASO                   1                    0     1390    7166  dead             
Burkina Faso Zn   BURKINA FASO                   1                    1       16    7166  dead             
EE                PAKISTAN                       0                    0      153     380  dead             
EE                PAKISTAN                       0                    1        1     380  dead             
EE                PAKISTAN                       1                    0      223     380  dead             
EE                PAKISTAN                       1                    1        3     380  dead             
GMS-Nepal         NEPAL                          0                    0      276     686  dead             
GMS-Nepal         NEPAL                          0                    1        5     686  dead             
GMS-Nepal         NEPAL                          1                    0      403     686  dead             
GMS-Nepal         NEPAL                          1                    1        2     686  dead             
iLiNS-DOSE        MALAWI                         0                    0     1660    1931  dead             
iLiNS-DOSE        MALAWI                         0                    1      113    1931  dead             
iLiNS-DOSE        MALAWI                         1                    0      143    1931  dead             
iLiNS-DOSE        MALAWI                         1                    1       15    1931  dead             
iLiNS-DYAD-M      MALAWI                         0                    0     1060    1201  dead             
iLiNS-DYAD-M      MALAWI                         0                    1       31    1201  dead             
iLiNS-DYAD-M      MALAWI                         1                    0      103    1201  dead             
iLiNS-DYAD-M      MALAWI                         1                    1        7    1201  dead             
JiVitA-3          BANGLADESH                     0                    0    19607   26956  dead             
JiVitA-3          BANGLADESH                     0                    1      394   26956  dead             
JiVitA-3          BANGLADESH                     1                    0     6786   26956  dead             
JiVitA-3          BANGLADESH                     1                    1      169   26956  dead             
JiVitA-4          BANGLADESH                     0                    0     3724    5443  dead             
JiVitA-4          BANGLADESH                     0                    1       30    5443  dead             
JiVitA-4          BANGLADESH                     1                    0     1670    5443  dead             
JiVitA-4          BANGLADESH                     1                    1       19    5443  dead             
Keneba            GAMBIA                         0                    0     1609    2920  dead             
Keneba            GAMBIA                         0                    1       33    2920  dead             
Keneba            GAMBIA                         1                    0     1249    2920  dead             
Keneba            GAMBIA                         1                    1       29    2920  dead             
MAL-ED            BANGLADESH                     0                    0      174     263  dead             
MAL-ED            BANGLADESH                     0                    1        2     263  dead             
MAL-ED            BANGLADESH                     1                    0       87     263  dead             
MAL-ED            BANGLADESH                     1                    1        0     263  dead             
MAL-ED            INDIA                          0                    0      130     251  dead             
MAL-ED            INDIA                          0                    1        1     251  dead             
MAL-ED            INDIA                          1                    0      119     251  dead             
MAL-ED            INDIA                          1                    1        1     251  dead             
MAL-ED            PERU                           0                    0      273     302  dead             
MAL-ED            PERU                           0                    1        2     302  dead             
MAL-ED            PERU                           1                    0       27     302  dead             
MAL-ED            PERU                           1                    1        0     302  dead             
MAL-ED            SOUTH AFRICA                   0                    0      248     312  dead             
MAL-ED            SOUTH AFRICA                   0                    1        0     312  dead             
MAL-ED            SOUTH AFRICA                   1                    0       64     312  dead             
MAL-ED            SOUTH AFRICA                   1                    1        0     312  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    0      222     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    1        3     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    0       36     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    1        0     261  dead             
PROVIDE           BANGLADESH                     0                    0      450     700  dead             
PROVIDE           BANGLADESH                     0                    1        4     700  dead             
PROVIDE           BANGLADESH                     1                    0      246     700  dead             
PROVIDE           BANGLADESH                     1                    1        0     700  dead             
SAS-CompFeed      INDIA                          0                    0      866    1513  dead             
SAS-CompFeed      INDIA                          0                    1       19    1513  dead             
SAS-CompFeed      INDIA                          1                    0      610    1513  dead             
SAS-CompFeed      INDIA                          1                    1       18    1513  dead             
SAS-FoodSuppl     INDIA                          0                    0      219     418  dead             
SAS-FoodSuppl     INDIA                          0                    1        2     418  dead             
SAS-FoodSuppl     INDIA                          1                    0      193     418  dead             
SAS-FoodSuppl     INDIA                          1                    1        4     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     1829    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0      566    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396  dead             
VITAMIN-A         INDIA                          0                    0     2556    3904  dead             
VITAMIN-A         INDIA                          0                    1       35    3904  dead             
VITAMIN-A         INDIA                          1                    0     1273    3904  dead             
VITAMIN-A         INDIA                          1                    1       40    3904  dead             
ZVITAMBO          ZIMBABWE                       0                    0     9963   13946  dead             
ZVITAMBO          ZIMBABWE                       0                    1      682   13946  dead             
ZVITAMBO          ZIMBABWE                       1                    0     2930   13946  dead             
ZVITAMBO          ZIMBABWE                       1                    1      371   13946  dead             


The following strata were considered:

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-3, country: BANGLADESH
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: VITAMIN-A, country: INDIA
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```




# Results Detail

## Results Plots
![](/tmp/572cd7ff-b023-40e9-ab31-9ad2aa122eaf/901c0c9b-f71e-4513-8b65-eb399e86606e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/572cd7ff-b023-40e9-ab31-9ad2aa122eaf/901c0c9b-f71e-4513-8b65-eb399e86606e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/572cd7ff-b023-40e9-ab31-9ad2aa122eaf/901c0c9b-f71e-4513-8b65-eb399e86606e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/572cd7ff-b023-40e9-ab31-9ad2aa122eaf/901c0c9b-f71e-4513-8b65-eb399e86606e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0040106   0.0023743   0.0056470
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0111084   0.0056480   0.0165688
iLiNS-DOSE        MALAWI         0                    NA                0.0636986   0.0523239   0.0750732
iLiNS-DOSE        MALAWI         1                    NA                0.0876968   0.0436556   0.1317379
iLiNS-DYAD-M      MALAWI         0                    NA                0.0284143   0.0185509   0.0382777
iLiNS-DYAD-M      MALAWI         1                    NA                0.0636364   0.0180004   0.1092724
JiVitA-3          BANGLADESH     0                    NA                0.0197750   0.0178739   0.0216761
JiVitA-3          BANGLADESH     1                    NA                0.0241848   0.0205174   0.0278521
JiVitA-4          BANGLADESH     0                    NA                0.0080026   0.0051647   0.0108405
JiVitA-4          BANGLADESH     1                    NA                0.0112265   0.0059382   0.0165148
Keneba            GAMBIA         0                    NA                0.0205930   0.0136440   0.0275420
Keneba            GAMBIA         1                    NA                0.0225885   0.0143999   0.0307771
SAS-CompFeed      INDIA          0                    NA                0.0213401   0.0109557   0.0317245
SAS-CompFeed      INDIA          1                    NA                0.0286852   0.0134274   0.0439431
VITAMIN-A         INDIA          0                    NA                0.0137563   0.0092002   0.0183124
VITAMIN-A         INDIA          1                    NA                0.0307536   0.0212869   0.0402204
ZVITAMBO          ZIMBABWE       0                    NA                0.0649057   0.0602425   0.0695688
ZVITAMBO          ZIMBABWE       1                    NA                0.1092602   0.0986145   0.1199058


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054424   0.0037388   0.0071459
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0316403   0.0217366   0.0415440
JiVitA-3          BANGLADESH     NA                   NA                0.0208859   0.0191395   0.0226323
JiVitA-4          BANGLADESH     NA                   NA                0.0090024   0.0064532   0.0115515
Keneba            GAMBIA         NA                   NA                0.0212329   0.0160032   0.0264626
SAS-CompFeed      INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
VITAMIN-A         INDIA          NA                   NA                0.0192111   0.0149047   0.0235174
ZVITAMBO          ZIMBABWE       NA                   NA                0.0755055   0.0711204   0.0798906


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.769742   1.4622065   5.246503
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.376746   0.8080951   2.345553
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 2.239589   1.0096057   4.968039
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.222995   1.0281506   1.454764
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.402857   0.7772685   2.531953
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.096902   0.6682963   1.800391
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 1.344195   0.8532316   2.117667
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 2.235603   1.4225139   3.513444
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 1.683369   1.4925331   1.898605


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014317    0.0002936   0.0025698
iLiNS-DOSE        MALAWI         0                    NA                0.0025883   -0.0012692   0.0064459
iLiNS-DYAD-M      MALAWI         0                    NA                0.0032260   -0.0010888   0.0075408
JiVitA-3          BANGLADESH     0                    NA                0.0011109    0.0000780   0.0021437
JiVitA-4          BANGLADESH     0                    NA                0.0009998   -0.0008656   0.0028652
Keneba            GAMBIA         0                    NA                0.0006399   -0.0041234   0.0054031
SAS-CompFeed      INDIA          0                    NA                0.0031146   -0.0020129   0.0082421
VITAMIN-A         INDIA          0                    NA                0.0054548    0.0019191   0.0089905
ZVITAMBO          ZIMBABWE       0                    NA                0.0105999    0.0078190   0.0133808


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2630717    0.0432267   0.4324012
iLiNS-DOSE        MALAWI         0                    NA                0.0390474   -0.0206302   0.0952355
iLiNS-DYAD-M      MALAWI         0                    NA                0.1019586   -0.0411726   0.2254134
JiVitA-3          BANGLADESH     0                    NA                0.0531871    0.0028650   0.1009696
JiVitA-4          BANGLADESH     0                    NA                0.1110593   -0.1172355   0.2927046
Keneba            GAMBIA         0                    NA                0.0301353   -0.2220908   0.2303047
SAS-CompFeed      INDIA          0                    NA                0.1273633   -0.0925175   0.3029907
VITAMIN-A         INDIA          0                    NA                0.2839384    0.0879577   0.4378065
ZVITAMBO          ZIMBABWE       0                    NA                0.1403852    0.1036429   0.1756215
