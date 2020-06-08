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

**Intervention Variable:** ever_sstunted06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* impfloor
* hhwealth_quart
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* delta_vagbrth
* delta_impfloor
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_sstunted06    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                     0      325     338  dead             
Burkina Faso Zn   BURKINA FASO                   0                     1        2     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                     0       11     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                     1        0     338  dead             
EE                PAKISTAN                       0                     0      213     379  dead             
EE                PAKISTAN                       0                     1        3     379  dead             
EE                PAKISTAN                       1                     0      162     379  dead             
EE                PAKISTAN                       1                     1        1     379  dead             
GMS-Nepal         NEPAL                          0                     0      634     698  dead             
GMS-Nepal         NEPAL                          0                     1        4     698  dead             
GMS-Nepal         NEPAL                          1                     0       56     698  dead             
GMS-Nepal         NEPAL                          1                     1        4     698  dead             
iLiNS-DOSE        MALAWI                         0                     0     1588    1813  dead             
iLiNS-DOSE        MALAWI                         0                     1      101    1813  dead             
iLiNS-DOSE        MALAWI                         1                     0      111    1813  dead             
iLiNS-DOSE        MALAWI                         1                     1       13    1813  dead             
iLiNS-DYAD-M      MALAWI                         0                     0     1066    1191  dead             
iLiNS-DYAD-M      MALAWI                         0                     1       34    1191  dead             
iLiNS-DYAD-M      MALAWI                         1                     0       86    1191  dead             
iLiNS-DYAD-M      MALAWI                         1                     1        5    1191  dead             
JiVitA-3          BANGLADESH                     0                     0    22511   27197  dead             
JiVitA-3          BANGLADESH                     0                     1      435   27197  dead             
JiVitA-3          BANGLADESH                     1                     0     3885   27197  dead             
JiVitA-3          BANGLADESH                     1                     1      366   27197  dead             
JiVitA-4          BANGLADESH                     0                     0     4639    5270  dead             
JiVitA-4          BANGLADESH                     0                     1       31    5270  dead             
JiVitA-4          BANGLADESH                     1                     0      584    5270  dead             
JiVitA-4          BANGLADESH                     1                     1       16    5270  dead             
Keneba            GAMBIA                         0                     0     2142    2479  dead             
Keneba            GAMBIA                         0                     1       43    2479  dead             
Keneba            GAMBIA                         1                     0      278    2479  dead             
Keneba            GAMBIA                         1                     1       16    2479  dead             
MAL-ED            BANGLADESH                     0                     0      240     265  dead             
MAL-ED            BANGLADESH                     0                     1        2     265  dead             
MAL-ED            BANGLADESH                     1                     0       22     265  dead             
MAL-ED            BANGLADESH                     1                     1        1     265  dead             
MAL-ED            INDIA                          0                     0      228     251  dead             
MAL-ED            INDIA                          0                     1        2     251  dead             
MAL-ED            INDIA                          1                     0       21     251  dead             
MAL-ED            INDIA                          1                     1        0     251  dead             
MAL-ED            PERU                           0                     0      260     303  dead             
MAL-ED            PERU                           0                     1        2     303  dead             
MAL-ED            PERU                           1                     0       41     303  dead             
MAL-ED            PERU                           1                     1        0     303  dead             
MAL-ED            SOUTH AFRICA                   0                     0      283     314  dead             
MAL-ED            SOUTH AFRICA                   0                     1        0     314  dead             
MAL-ED            SOUTH AFRICA                   1                     0       30     314  dead             
MAL-ED            SOUTH AFRICA                   1                     1        1     314  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     0      219     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     1        2     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     0       40     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     1        1     262  dead             
PROVIDE           BANGLADESH                     0                     0      665     700  dead             
PROVIDE           BANGLADESH                     0                     1        4     700  dead             
PROVIDE           BANGLADESH                     1                     0       31     700  dead             
PROVIDE           BANGLADESH                     1                     1        0     700  dead             
SAS-CompFeed      INDIA                          0                     0     1266    1532  dead             
SAS-CompFeed      INDIA                          0                     1       29    1532  dead             
SAS-CompFeed      INDIA                          1                     0      216    1532  dead             
SAS-CompFeed      INDIA                          1                     1       21    1532  dead             
SAS-FoodSuppl     INDIA                          0                     0      351     418  dead             
SAS-FoodSuppl     INDIA                          0                     1        3     418  dead             
SAS-FoodSuppl     INDIA                          1                     0       61     418  dead             
SAS-FoodSuppl     INDIA                          1                     1        3     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     2284    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      111    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396  dead             
VITAMIN-A         INDIA                          0                     0     3274    3898  dead             
VITAMIN-A         INDIA                          0                     1       50    3898  dead             
VITAMIN-A         INDIA                          1                     0      547    3898  dead             
VITAMIN-A         INDIA                          1                     1       27    3898  dead             
ZVITAMBO          ZIMBABWE                       0                     0    11756   14060  dead             
ZVITAMBO          ZIMBABWE                       0                     1      871   14060  dead             
ZVITAMBO          ZIMBABWE                       1                     0     1199   14060  dead             
ZVITAMBO          ZIMBABWE                       1                     1      234   14060  dead             


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

* studyid: Burkina Faso Zn, country: BURKINA FASO
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/e0987ff5-fe05-4456-bd5d-99f5a459f6ae/ce6f8785-bb20-48ad-964a-61b88ce68d38/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e0987ff5-fe05-4456-bd5d-99f5a459f6ae/ce6f8785-bb20-48ad-964a-61b88ce68d38/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e0987ff5-fe05-4456-bd5d-99f5a459f6ae/ce6f8785-bb20-48ad-964a-61b88ce68d38/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e0987ff5-fe05-4456-bd5d-99f5a459f6ae/ce6f8785-bb20-48ad-964a-61b88ce68d38/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0597173   0.0484082   0.0710263
iLiNS-DOSE     MALAWI       1                    NA                0.1056725   0.0507463   0.1605986
iLiNS-DYAD-M   MALAWI       0                    NA                0.0309091   0.0206771   0.0411411
iLiNS-DYAD-M   MALAWI       1                    NA                0.0549451   0.0081066   0.1017835
JiVitA-3       BANGLADESH   0                    NA                0.0192782   0.0174543   0.0211020
JiVitA-3       BANGLADESH   1                    NA                0.0876847   0.0764644   0.0989049
JiVitA-4       BANGLADESH   0                    NA                0.0066442   0.0040617   0.0092268
JiVitA-4       BANGLADESH   1                    NA                0.0261682   0.0137254   0.0386110
Keneba         GAMBIA       0                    NA                0.0196917   0.0138622   0.0255212
Keneba         GAMBIA       1                    NA                0.0543649   0.0284139   0.0803159
SAS-CompFeed   INDIA        0                    NA                0.0228750   0.0106146   0.0351354
SAS-CompFeed   INDIA        1                    NA                0.0847069   0.0570281   0.1123856
VITAMIN-A      INDIA        0                    NA                0.0149622   0.0108323   0.0190921
VITAMIN-A      INDIA        1                    NA                0.0491906   0.0309113   0.0674699
ZVITAMBO       ZIMBABWE     0                    NA                0.0691803   0.0647461   0.0736145
ZVITAMBO       ZIMBABWE     1                    NA                0.1550909   0.1352669   0.1749149


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0628792   0.0517023   0.0740561
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0327456   0.0226340   0.0428572
JiVitA-3       BANGLADESH   NA                   NA                0.0294518   0.0273600   0.0315436
JiVitA-4       BANGLADESH   NA                   NA                0.0089184   0.0062077   0.0116291
Keneba         GAMBIA       NA                   NA                0.0237999   0.0177985   0.0298013
SAS-CompFeed   INDIA        NA                   NA                0.0326371   0.0205116   0.0447625
VITAMIN-A      INDIA        NA                   NA                0.0197537   0.0153848   0.0241226
ZVITAMBO       ZIMBABWE     NA                   NA                0.0785917   0.0741435   0.0830400


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.769546   1.017671   3.076922
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 1.777634   0.712343   4.436041
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 4.548393   3.875405   5.338250
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 3.938476   2.136813   7.259219
Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba         GAMBIA       1                    0                 2.760796   1.574203   4.841812
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed   INDIA        1                    0                 3.703031   2.270391   6.039681
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000   1.000000
VITAMIN-A      INDIA        1                    0                 3.287667   2.069753   5.222242
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.241836   1.944239   2.584986


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0031619   -0.0006486   0.0069724
iLiNS-DYAD-M   MALAWI       0                    NA                0.0018365   -0.0018446   0.0055176
JiVitA-3       BANGLADESH   0                    NA                0.0101736    0.0086738   0.0116734
JiVitA-4       BANGLADESH   0                    NA                0.0022742    0.0008251   0.0037232
Keneba         GAMBIA       0                    NA                0.0041082    0.0009219   0.0072945
SAS-CompFeed   INDIA        0                    NA                0.0097621    0.0053737   0.0141505
VITAMIN-A      INDIA        0                    NA                0.0047916    0.0021466   0.0074365
ZVITAMBO       ZIMBABWE     0                    NA                0.0094115    0.0073578   0.0114651


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0502858   -0.0116983   0.1084723
iLiNS-DYAD-M   MALAWI       0                    NA                0.0560839   -0.0618845   0.1609468
JiVitA-3       BANGLADESH   0                    NA                0.3454328    0.3005873   0.3874029
JiVitA-4       BANGLADESH   0                    NA                0.2549960    0.0847878   0.3935494
Keneba         GAMBIA       0                    NA                0.1726133    0.0354597   0.2902642
SAS-CompFeed   INDIA        0                    NA                0.2991098    0.1180246   0.4430151
VITAMIN-A      INDIA        0                    NA                0.2425646    0.1086994   0.3563245
ZVITAMBO       ZIMBABWE     0                    NA                0.1197511    0.0939927   0.1447772
