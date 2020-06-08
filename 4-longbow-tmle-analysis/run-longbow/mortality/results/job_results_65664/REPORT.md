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

**Outcome Variable:** dead6plus

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
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_sstunted06    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                          0      323     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                          1        2     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                          0       11     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                          1        0     336  dead6plus        
EE                PAKISTAN                       0                          0      209     374  dead6plus        
EE                PAKISTAN                       0                          1        3     374  dead6plus        
EE                PAKISTAN                       1                          0      161     374  dead6plus        
EE                PAKISTAN                       1                          1        1     374  dead6plus        
GMS-Nepal         NEPAL                          0                          0      543     592  dead6plus        
GMS-Nepal         NEPAL                          0                          1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                          0       47     592  dead6plus        
GMS-Nepal         NEPAL                          1                          1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                          0     1534    1756  dead6plus        
iLiNS-DOSE        MALAWI                         0                          1      101    1756  dead6plus        
iLiNS-DOSE        MALAWI                         1                          0      109    1756  dead6plus        
iLiNS-DOSE        MALAWI                         1                          1       12    1756  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                          0     1038    1148  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                          1       24    1148  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                          0       82    1148  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                          1        4    1148  dead6plus        
JiVitA-3          BANGLADESH                     0                          0    17773   21009  dead6plus        
JiVitA-3          BANGLADESH                     0                          1      209   21009  dead6plus        
JiVitA-3          BANGLADESH                     1                          0     2926   21009  dead6plus        
JiVitA-3          BANGLADESH                     1                          1      101   21009  dead6plus        
JiVitA-4          BANGLADESH                     0                          0     4630    5260  dead6plus        
JiVitA-4          BANGLADESH                     0                          1       31    5260  dead6plus        
JiVitA-4          BANGLADESH                     1                          0      582    5260  dead6plus        
JiVitA-4          BANGLADESH                     1                          1       17    5260  dead6plus        
Keneba            GAMBIA                         0                          0     1983    2312  dead6plus        
Keneba            GAMBIA                         0                          1       53    2312  dead6plus        
Keneba            GAMBIA                         1                          0      261    2312  dead6plus        
Keneba            GAMBIA                         1                          1       15    2312  dead6plus        
MAL-ED            BANGLADESH                     0                          0      222     240  dead6plus        
MAL-ED            BANGLADESH                     0                          1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                          0       18     240  dead6plus        
MAL-ED            BANGLADESH                     1                          1        0     240  dead6plus        
MAL-ED            INDIA                          0                          0      215     235  dead6plus        
MAL-ED            INDIA                          0                          1        0     235  dead6plus        
MAL-ED            INDIA                          1                          0       20     235  dead6plus        
MAL-ED            INDIA                          1                          1        0     235  dead6plus        
MAL-ED            PERU                           0                          0      236     273  dead6plus        
MAL-ED            PERU                           0                          1        1     273  dead6plus        
MAL-ED            PERU                           1                          0       36     273  dead6plus        
MAL-ED            PERU                           1                          1        0     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                          0      233     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                          1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                          0       28     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                          1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          0      208     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          0       37     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                          0      585     617  dead6plus        
PROVIDE           BANGLADESH                     0                          1        3     617  dead6plus        
PROVIDE           BANGLADESH                     1                          0       29     617  dead6plus        
PROVIDE           BANGLADESH                     1                          1        0     617  dead6plus        
SAS-CompFeed      INDIA                          0                          0     1176    1388  dead6plus        
SAS-CompFeed      INDIA                          0                          1        5    1388  dead6plus        
SAS-CompFeed      INDIA                          1                          0      200    1388  dead6plus        
SAS-CompFeed      INDIA                          1                          1        7    1388  dead6plus        
SAS-FoodSuppl     INDIA                          0                          0      337     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                          1        1     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                          0       61     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                          1        3     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     1995    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      101    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                          0     3059    3605  dead6plus        
VITAMIN-A         INDIA                          0                          1       20    3605  dead6plus        
VITAMIN-A         INDIA                          1                          0      515    3605  dead6plus        
VITAMIN-A         INDIA                          1                          1       11    3605  dead6plus        
ZVITAMBO          ZIMBABWE                       0                          0    10164   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       0                          1      309   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       1                          0     1115   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       1                          1      106   11694  dead6plus        


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
* studyid: iLiNS-DYAD-M, country: MALAWI
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
![](/tmp/b7767a99-b110-401f-a3cc-c864975d12bd/5ba95193-7c80-4dbf-859b-5ec9f5ca61b7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b7767a99-b110-401f-a3cc-c864975d12bd/5ba95193-7c80-4dbf-859b-5ec9f5ca61b7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b7767a99-b110-401f-a3cc-c864975d12bd/5ba95193-7c80-4dbf-859b-5ec9f5ca61b7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b7767a99-b110-401f-a3cc-c864975d12bd/5ba95193-7c80-4dbf-859b-5ec9f5ca61b7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0617707   0.0500981   0.0734434
iLiNS-DOSE     MALAWI       1                    NA                0.0956767   0.0411602   0.1501931
JiVitA-3       BANGLADESH   0                    NA                0.0117630   0.0101700   0.0133559
JiVitA-3       BANGLADESH   1                    NA                0.0356871   0.0267601   0.0446140
JiVitA-4       BANGLADESH   0                    NA                0.0066621   0.0040785   0.0092457
JiVitA-4       BANGLADESH   1                    NA                0.0274816   0.0145776   0.0403856
Keneba         GAMBIA       0                    NA                0.0260656   0.0191388   0.0329924
Keneba         GAMBIA       1                    NA                0.0544138   0.0272353   0.0815922
SAS-CompFeed   INDIA        0                    NA                0.0042337   0.0005807   0.0078867
SAS-CompFeed   INDIA        1                    NA                0.0338164   0.0119227   0.0557102
VITAMIN-A      INDIA        0                    NA                0.0064953   0.0036558   0.0093348
VITAMIN-A      INDIA        1                    NA                0.0204236   0.0082333   0.0326139
ZVITAMBO       ZIMBABWE     0                    NA                0.0297033   0.0264489   0.0329576
ZVITAMBO       ZIMBABWE     1                    NA                0.0820731   0.0665549   0.0975913


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0643508   0.0528708   0.0758308
JiVitA-3       BANGLADESH   NA                   NA                0.0147556   0.0131087   0.0164025
JiVitA-4       BANGLADESH   NA                   NA                0.0091255   0.0063790   0.0118719
Keneba         GAMBIA       NA                   NA                0.0294118   0.0225232   0.0363003
SAS-CompFeed   INDIA        NA                   NA                0.0086455   0.0042433   0.0130478
VITAMIN-A      INDIA        NA                   NA                0.0085992   0.0055847   0.0116136
ZVITAMBO       ZIMBABWE     NA                   NA                0.0354883   0.0321349   0.0388417


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000    1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.548899   0.8498194    2.823058
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 3.033845   2.2821574    4.033119
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 4.125066   2.2471462    7.572345
Keneba         GAMBIA       0                    0                 1.000000   1.0000000    1.000000
Keneba         GAMBIA       1                    0                 2.087573   1.1856900    3.675463
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed   INDIA        1                    0                 7.987440   2.8177744   22.641696
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A      INDIA        1                    0                 3.144357   1.5007762    6.587913
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.763098   2.2209248    3.437628


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0025801   -0.0011994   0.0063595
JiVitA-3       BANGLADESH   0                    NA                0.0029926    0.0020135   0.0039717
JiVitA-4       BANGLADESH   0                    NA                0.0024634    0.0009419   0.0039848
Keneba         GAMBIA       0                    NA                0.0033462    0.0000251   0.0066673
SAS-CompFeed   INDIA        0                    NA                0.0044118    0.0012088   0.0076148
VITAMIN-A      INDIA        0                    NA                0.0021039    0.0002650   0.0039427
ZVITAMBO       ZIMBABWE     0                    NA                0.0057850    0.0040727   0.0074973


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0400936   -0.0200739   0.0967123
JiVitA-3       BANGLADESH   0                    NA                0.2028114    0.1382002   0.2625786
JiVitA-4       BANGLADESH   0                    NA                0.2699452    0.0970380   0.4097426
Keneba         GAMBIA       0                    NA                0.1137703   -0.0032405   0.2171339
SAS-CompFeed   INDIA        0                    NA                0.5103020    0.0855804   0.7377526
VITAMIN-A      INDIA        0                    NA                0.2446580    0.0205824   0.4174685
ZVITAMBO       ZIMBABWE     0                    NA                0.1630119    0.1158958   0.2076171
