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

studyid           country                        ever_wasted024    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                         0     5728    7164  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                         1       30    7164  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                         0     1388    7164  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                         1       18    7164  dead6plus        
EE                PAKISTAN                       0                         0      149     375  dead6plus        
EE                PAKISTAN                       0                         1        1     375  dead6plus        
EE                PAKISTAN                       1                         0      222     375  dead6plus        
EE                PAKISTAN                       1                         1        3     375  dead6plus        
GMS-Nepal         NEPAL                          0                         0      208     592  dead6plus        
GMS-Nepal         NEPAL                          0                         1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                         0      382     592  dead6plus        
GMS-Nepal         NEPAL                          1                         1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                         0     1606    1874  dead6plus        
iLiNS-DOSE        MALAWI                         0                         1      112    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                         0      141    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                         1       15    1874  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                         0     1032    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                         1       21    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                         0      101    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                         1        7    1161  dead6plus        
JiVitA-3          BANGLADESH                     0                         0    15064   21023  dead6plus        
JiVitA-3          BANGLADESH                     0                         1      201   21023  dead6plus        
JiVitA-3          BANGLADESH                     1                         0     5654   21023  dead6plus        
JiVitA-3          BANGLADESH                     1                         1      104   21023  dead6plus        
JiVitA-4          BANGLADESH                     0                         0     3716    5433  dead6plus        
JiVitA-4          BANGLADESH                     0                         1       31    5433  dead6plus        
JiVitA-4          BANGLADESH                     1                         0     1667    5433  dead6plus        
JiVitA-4          BANGLADESH                     1                         1       19    5433  dead6plus        
Keneba            GAMBIA                         0                         0     1467    2752  dead6plus        
Keneba            GAMBIA                         0                         1       39    2752  dead6plus        
Keneba            GAMBIA                         1                         0     1206    2752  dead6plus        
Keneba            GAMBIA                         1                         1       40    2752  dead6plus        
MAL-ED            BANGLADESH                     0                         0      157     240  dead6plus        
MAL-ED            BANGLADESH                     0                         1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                         0       83     240  dead6plus        
MAL-ED            BANGLADESH                     1                         1        0     240  dead6plus        
MAL-ED            INDIA                          0                         0      121     235  dead6plus        
MAL-ED            INDIA                          0                         1        0     235  dead6plus        
MAL-ED            INDIA                          1                         0      114     235  dead6plus        
MAL-ED            INDIA                          1                         1        0     235  dead6plus        
MAL-ED            PERU                           0                         0      246     273  dead6plus        
MAL-ED            PERU                           0                         1        1     273  dead6plus        
MAL-ED            PERU                           1                         0       26     273  dead6plus        
MAL-ED            PERU                           1                         1        0     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                         0      204     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                         1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                         0       57     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                         1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      209     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0       36     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                         0      391     617  dead6plus        
PROVIDE           BANGLADESH                     0                         1        3     617  dead6plus        
PROVIDE           BANGLADESH                     1                         0      223     617  dead6plus        
PROVIDE           BANGLADESH                     1                         1        0     617  dead6plus        
SAS-CompFeed      INDIA                          0                         0      783    1389  dead6plus        
SAS-CompFeed      INDIA                          0                         1        2    1389  dead6plus        
SAS-CompFeed      INDIA                          1                         0      594    1389  dead6plus        
SAS-CompFeed      INDIA                          1                         1       10    1389  dead6plus        
SAS-FoodSuppl     INDIA                          0                         0      208     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                         1        1     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                         0      190     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                         1        3     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1560    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      536    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                         0     2357    3615  dead6plus        
VITAMIN-A         INDIA                          0                         1       12    3615  dead6plus        
VITAMIN-A         INDIA                          1                         0     1227    3615  dead6plus        
VITAMIN-A         INDIA                          1                         1       19    3615  dead6plus        
ZVITAMBO          ZIMBABWE                       0                         0     8634   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       0                         1      231   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       1                         0     2648   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       1                         1      181   11694  dead6plus        


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
* studyid: SAS-CompFeed, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/e8d45d21-78e3-454d-ae57-7d7779e904c7/491ffc54-1c07-49d8-b102-c77664a8f248/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e8d45d21-78e3-454d-ae57-7d7779e904c7/491ffc54-1c07-49d8-b102-c77664a8f248/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e8d45d21-78e3-454d-ae57-7d7779e904c7/491ffc54-1c07-49d8-b102-c77664a8f248/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e8d45d21-78e3-454d-ae57-7d7779e904c7/491ffc54-1c07-49d8-b102-c77664a8f248/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052382   0.0033697   0.0071067
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0126043   0.0067937   0.0184149
iLiNS-DOSE        MALAWI         0                    NA                0.0652130   0.0535363   0.0768898
iLiNS-DOSE        MALAWI         1                    NA                0.0877012   0.0435341   0.1318683
iLiNS-DYAD-M      MALAWI         0                    NA                0.0199430   0.0114952   0.0283908
iLiNS-DYAD-M      MALAWI         1                    NA                0.0648148   0.0183623   0.1112673
JiVitA-3          BANGLADESH     0                    NA                0.0133474   0.0114791   0.0152157
JiVitA-3          BANGLADESH     1                    NA                0.0176669   0.0142717   0.0210622
JiVitA-4          BANGLADESH     0                    NA                0.0082944   0.0053756   0.0112131
JiVitA-4          BANGLADESH     1                    NA                0.0111214   0.0058371   0.0164058
Keneba            GAMBIA         0                    NA                0.0269837   0.0186164   0.0353511
Keneba            GAMBIA         1                    NA                0.0324146   0.0223913   0.0424380
VITAMIN-A         INDIA          0                    NA                0.0050764   0.0022042   0.0079485
VITAMIN-A         INDIA          1                    NA                0.0156979   0.0087471   0.0226487
ZVITAMBO          ZIMBABWE       0                    NA                0.0264174   0.0230729   0.0297619
ZVITAMBO          ZIMBABWE       1                    NA                0.0605741   0.0517944   0.0693538


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067002   0.0048109   0.0085894
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0241171   0.0152888   0.0329455
JiVitA-3          BANGLADESH     NA                   NA                0.0145079   0.0128686   0.0161473
JiVitA-4          BANGLADESH     NA                   NA                0.0092030   0.0066160   0.0117900
Keneba            GAMBIA         NA                   NA                0.0287064   0.0224666   0.0349461
VITAMIN-A         INDIA          NA                   NA                0.0085754   0.0055692   0.0115815
ZVITAMBO          ZIMBABWE       NA                   NA                0.0352317   0.0318901   0.0385734


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.406220   1.3434374   4.309761
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.344842   0.7880443   2.295049
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 3.250000   1.4135962   7.472077
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.323627   1.0441149   1.677966
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.340845   0.7411812   2.425675
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.201266   0.7751830   1.861547
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 3.092349   1.5075549   6.343135
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 2.292959   1.8918443   2.779120


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014619    0.0002477   0.0026762
iLiNS-DOSE        MALAWI         0                    NA                0.0025564   -0.0014278   0.0065407
iLiNS-DYAD-M      MALAWI         0                    NA                0.0041741   -0.0002815   0.0086297
JiVitA-3          BANGLADESH     0                    NA                0.0011606    0.0000870   0.0022341
JiVitA-4          BANGLADESH     0                    NA                0.0009087   -0.0009715   0.0027888
Keneba            GAMBIA         0                    NA                0.0017227   -0.0042734   0.0077187
VITAMIN-A         INDIA          0                    NA                0.0034990    0.0009434   0.0060547
ZVITAMBO          ZIMBABWE       0                    NA                0.0088143    0.0064620   0.0111667


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2181948    0.0276293   0.3714131
iLiNS-DOSE        MALAWI         0                    NA                0.0377226   -0.0225880   0.0944763
iLiNS-DYAD-M      MALAWI         0                    NA                0.1730769   -0.0206061   0.3300042
JiVitA-3          BANGLADESH     0                    NA                0.0799946    0.0033141   0.1507757
JiVitA-4          BANGLADESH     0                    NA                0.0987358   -0.1267961   0.2791267
Keneba            GAMBIA         0                    NA                0.0600096   -0.1733389   0.2469508
VITAMIN-A         INDIA          0                    NA                0.4080318    0.0783935   0.6197657
ZVITAMBO          ZIMBABWE       0                    NA                0.2501811    0.1849735   0.3101716
