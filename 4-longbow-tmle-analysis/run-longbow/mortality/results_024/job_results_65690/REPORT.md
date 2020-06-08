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

**Intervention Variable:** pers_wasted024

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

studyid           country                        pers_wasted024    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                    0     6025    7166  dead             
Burkina Faso Zn   BURKINA FASO                   0                    1       25    7166  dead             
Burkina Faso Zn   BURKINA FASO                   1                    0     1102    7166  dead             
Burkina Faso Zn   BURKINA FASO                   1                    1       14    7166  dead             
EE                PAKISTAN                       0                    0      342     380  dead             
EE                PAKISTAN                       0                    1        4     380  dead             
EE                PAKISTAN                       1                    0       34     380  dead             
EE                PAKISTAN                       1                    1        0     380  dead             
GMS-Nepal         NEPAL                          0                    0      580     686  dead             
GMS-Nepal         NEPAL                          0                    1        5     686  dead             
GMS-Nepal         NEPAL                          1                    0       99     686  dead             
GMS-Nepal         NEPAL                          1                    1        2     686  dead             
iLiNS-DOSE        MALAWI                         0                    0     1744    1931  dead             
iLiNS-DOSE        MALAWI                         0                    1      120    1931  dead             
iLiNS-DOSE        MALAWI                         1                    0       59    1931  dead             
iLiNS-DOSE        MALAWI                         1                    1        8    1931  dead             
iLiNS-DYAD-M      MALAWI                         0                    0     1141    1201  dead             
iLiNS-DYAD-M      MALAWI                         0                    1       33    1201  dead             
iLiNS-DYAD-M      MALAWI                         1                    0       22    1201  dead             
iLiNS-DYAD-M      MALAWI                         1                    1        5    1201  dead             
JiVitA-3          BANGLADESH                     0                    0    24625   26956  dead             
JiVitA-3          BANGLADESH                     0                    1      444   26956  dead             
JiVitA-3          BANGLADESH                     1                    0     1768   26956  dead             
JiVitA-3          BANGLADESH                     1                    1      119   26956  dead             
JiVitA-4          BANGLADESH                     0                    0     4955    5443  dead             
JiVitA-4          BANGLADESH                     0                    1       39    5443  dead             
JiVitA-4          BANGLADESH                     1                    0      439    5443  dead             
JiVitA-4          BANGLADESH                     1                    1       10    5443  dead             
Keneba            GAMBIA                         0                    0     2662    2920  dead             
Keneba            GAMBIA                         0                    1       53    2920  dead             
Keneba            GAMBIA                         1                    0      196    2920  dead             
Keneba            GAMBIA                         1                    1        9    2920  dead             
MAL-ED            BANGLADESH                     0                    0      246     263  dead             
MAL-ED            BANGLADESH                     0                    1        2     263  dead             
MAL-ED            BANGLADESH                     1                    0       15     263  dead             
MAL-ED            BANGLADESH                     1                    1        0     263  dead             
MAL-ED            INDIA                          0                    0      226     251  dead             
MAL-ED            INDIA                          0                    1        2     251  dead             
MAL-ED            INDIA                          1                    0       23     251  dead             
MAL-ED            INDIA                          1                    1        0     251  dead             
MAL-ED            PERU                           0                    0      299     302  dead             
MAL-ED            PERU                           0                    1        2     302  dead             
MAL-ED            PERU                           1                    0        1     302  dead             
MAL-ED            PERU                           1                    1        0     302  dead             
MAL-ED            SOUTH AFRICA                   0                    0      306     312  dead             
MAL-ED            SOUTH AFRICA                   0                    1        0     312  dead             
MAL-ED            SOUTH AFRICA                   1                    0        6     312  dead             
MAL-ED            SOUTH AFRICA                   1                    1        0     312  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    0      258     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    1        3     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    0        0     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    1        0     261  dead             
PROVIDE           BANGLADESH                     0                    0      669     700  dead             
PROVIDE           BANGLADESH                     0                    1        4     700  dead             
PROVIDE           BANGLADESH                     1                    0       27     700  dead             
PROVIDE           BANGLADESH                     1                    1        0     700  dead             
SAS-CompFeed      INDIA                          0                    0     1355    1513  dead             
SAS-CompFeed      INDIA                          0                    1       22    1513  dead             
SAS-CompFeed      INDIA                          1                    0      121    1513  dead             
SAS-CompFeed      INDIA                          1                    1       15    1513  dead             
SAS-FoodSuppl     INDIA                          0                    0      338     418  dead             
SAS-FoodSuppl     INDIA                          0                    1        2     418  dead             
SAS-FoodSuppl     INDIA                          1                    0       74     418  dead             
SAS-FoodSuppl     INDIA                          1                    1        4     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     2324    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0       71    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396  dead             
VITAMIN-A         INDIA                          0                    0     3228    3904  dead             
VITAMIN-A         INDIA                          0                    1       36    3904  dead             
VITAMIN-A         INDIA                          1                    0      601    3904  dead             
VITAMIN-A         INDIA                          1                    1       39    3904  dead             
ZVITAMBO          ZIMBABWE                       0                    0    12358   13946  dead             
ZVITAMBO          ZIMBABWE                       0                    1      831   13946  dead             
ZVITAMBO          ZIMBABWE                       1                    0      535   13946  dead             
ZVITAMBO          ZIMBABWE                       1                    1      222   13946  dead             


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
![](/tmp/ad197432-67b6-4af4-a78d-437209e0c84e/ae0dd298-43f7-4ebc-b619-127808310fad/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ad197432-67b6-4af4-a78d-437209e0c84e/ae0dd298-43f7-4ebc-b619-127808310fad/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ad197432-67b6-4af4-a78d-437209e0c84e/ae0dd298-43f7-4ebc-b619-127808310fad/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ad197432-67b6-4af4-a78d-437209e0c84e/ae0dd298-43f7-4ebc-b619-127808310fad/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0041205   0.0025042   0.0057368
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0119830   0.0053848   0.0185811
iLiNS-DOSE        MALAWI         0                    NA                0.0643777   0.0532333   0.0755221
iLiNS-DOSE        MALAWI         1                    NA                0.1194030   0.0417391   0.1970669
iLiNS-DYAD-M      MALAWI         0                    NA                0.0281090   0.0186260   0.0375921
iLiNS-DYAD-M      MALAWI         1                    NA                0.1851852   0.0533715   0.3169988
JiVitA-3          BANGLADESH     0                    NA                0.0177679   0.0161560   0.0193798
JiVitA-3          BANGLADESH     1                    NA                0.0634699   0.0515702   0.0753696
JiVitA-4          BANGLADESH     0                    NA                0.0078204   0.0053059   0.0103348
JiVitA-4          BANGLADESH     1                    NA                0.0221822   0.0086824   0.0356820
Keneba            GAMBIA         0                    NA                0.0195212   0.0143163   0.0247260
Keneba            GAMBIA         1                    NA                0.0439024   0.0158519   0.0719530
SAS-CompFeed      INDIA          0                    NA                0.0160264   0.0089046   0.0231482
SAS-CompFeed      INDIA          1                    NA                0.1123693   0.0407896   0.1839491
VITAMIN-A         INDIA          0                    NA                0.0110637   0.0074676   0.0146597
VITAMIN-A         INDIA          1                    NA                0.0633933   0.0446160   0.0821705
ZVITAMBO          ZIMBABWE       0                    NA                0.0634020   0.0592474   0.0675566
ZVITAMBO          ZIMBABWE       1                    NA                0.3565216   0.3154698   0.3975734


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


studyid           country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.908128   1.4791945    5.717440
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.854726   0.9461633    3.635747
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 6.588103   2.9968710   14.482807
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-3          BANGLADESH     1                    0                 3.572169   2.9147604    4.377851
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-4          BANGLADESH     1                    0                 2.836462   1.4213285    5.660559
Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
Keneba            GAMBIA         1                    0                 2.248965   1.1254026    4.494251
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed      INDIA          1                    0                 7.011510   4.2663185   11.523112
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A         INDIA          1                    0                 5.729859   3.6916688    8.893345
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO          ZIMBABWE       1                    0                 5.623189   4.9269757    6.417782


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0013219    0.0002715   0.0023722
iLiNS-DOSE        MALAWI         0                    NA                0.0019092   -0.0008499   0.0046683
iLiNS-DYAD-M      MALAWI         0                    NA                0.0035313   -0.0000256   0.0070881
JiVitA-3          BANGLADESH     0                    NA                0.0031180    0.0023035   0.0039325
JiVitA-4          BANGLADESH     0                    NA                0.0011820    0.0000507   0.0023133
Keneba            GAMBIA         0                    NA                0.0017117   -0.0003039   0.0037273
SAS-CompFeed      INDIA          0                    NA                0.0084283    0.0017845   0.0150722
VITAMIN-A         INDIA          0                    NA                0.0081474    0.0049956   0.0112992
ZVITAMBO          ZIMBABWE       0                    NA                0.0121035    0.0101648   0.0140422


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2428838    0.0424875   0.4013395
iLiNS-DOSE        MALAWI         0                    NA                0.0288023   -0.0134746   0.0693156
iLiNS-DYAD-M      MALAWI         0                    NA                0.1116067   -0.0025722   0.2127823
JiVitA-3          BANGLADESH     0                    NA                0.1492873    0.1125283   0.1845237
JiVitA-4          BANGLADESH     0                    NA                0.1312995    0.0006346   0.2448802
Keneba            GAMBIA         0                    NA                0.0806155   -0.0171560   0.1689889
SAS-CompFeed      INDIA          0                    NA                0.3446496    0.1422343   0.4992991
VITAMIN-A         INDIA          0                    NA                0.4240992    0.2726042   0.5440423
ZVITAMBO          ZIMBABWE       0                    NA                0.1602995    0.1357623   0.1841400
