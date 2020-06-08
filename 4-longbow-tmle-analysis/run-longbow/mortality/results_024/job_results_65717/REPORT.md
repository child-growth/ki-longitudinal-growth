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

**Outcome Variable:** dead0plus

## Predictor Variables

**Intervention Variable:** ever_co024

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

studyid           country                        ever_co024    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  -----------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                     0     6311    7163  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                     1       39    7163  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                     0      804    7163  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                     1        9    7163  dead0plus        
EE                PAKISTAN                       0                     0      208     379  dead0plus        
EE                PAKISTAN                       0                     1        1     379  dead0plus        
EE                PAKISTAN                       1                     0      167     379  dead0plus        
EE                PAKISTAN                       1                     1        3     379  dead0plus        
GMS-Nepal         NEPAL                          0                     0      479     686  dead0plus        
GMS-Nepal         NEPAL                          0                     1        5     686  dead0plus        
GMS-Nepal         NEPAL                          1                     0      200     686  dead0plus        
GMS-Nepal         NEPAL                          1                     1        2     686  dead0plus        
iLiNS-DOSE        MALAWI                         0                     0     1709    1931  dead0plus        
iLiNS-DOSE        MALAWI                         0                     1      115    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                     0       94    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                     1       13    1931  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                     0     1111    1201  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                     1       35    1201  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                     0       48    1201  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                     1        7    1201  dead0plus        
JiVitA-3          BANGLADESH                     0                     0    24039   26923  dead0plus        
JiVitA-3          BANGLADESH                     0                     1      492   26923  dead0plus        
JiVitA-3          BANGLADESH                     1                     0     2290   26923  dead0plus        
JiVitA-3          BANGLADESH                     1                     1      102   26923  dead0plus        
JiVitA-4          BANGLADESH                     0                     0     4526    5442  dead0plus        
JiVitA-4          BANGLADESH                     0                     1       38    5442  dead0plus        
JiVitA-4          BANGLADESH                     1                     0      866    5442  dead0plus        
JiVitA-4          BANGLADESH                     1                     1       12    5442  dead0plus        
Keneba            GAMBIA                         0                     0     2413    2913  dead0plus        
Keneba            GAMBIA                         0                     1       68    2913  dead0plus        
Keneba            GAMBIA                         1                     0      403    2913  dead0plus        
Keneba            GAMBIA                         1                     1       29    2913  dead0plus        
MAL-ED            BANGLADESH                     0                     0      222     263  dead0plus        
MAL-ED            BANGLADESH                     0                     1        2     263  dead0plus        
MAL-ED            BANGLADESH                     1                     0       39     263  dead0plus        
MAL-ED            BANGLADESH                     1                     1        0     263  dead0plus        
MAL-ED            INDIA                          0                     0      195     251  dead0plus        
MAL-ED            INDIA                          0                     1        2     251  dead0plus        
MAL-ED            INDIA                          1                     0       54     251  dead0plus        
MAL-ED            INDIA                          1                     1        0     251  dead0plus        
MAL-ED            PERU                           0                     0      288     302  dead0plus        
MAL-ED            PERU                           0                     1        2     302  dead0plus        
MAL-ED            PERU                           1                     0       12     302  dead0plus        
MAL-ED            PERU                           1                     1        0     302  dead0plus        
MAL-ED            SOUTH AFRICA                   0                     0      289     312  dead0plus        
MAL-ED            SOUTH AFRICA                   0                     1        0     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                     0       23     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                     1        0     312  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     0      235     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     1        3     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     0       23     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     1        0     261  dead0plus        
PROVIDE           BANGLADESH                     0                     0      605     700  dead0plus        
PROVIDE           BANGLADESH                     0                     1        5     700  dead0plus        
PROVIDE           BANGLADESH                     1                     0       90     700  dead0plus        
PROVIDE           BANGLADESH                     1                     1        0     700  dead0plus        
SAS-CompFeed      INDIA                          0                     0     1140    1513  dead0plus        
SAS-CompFeed      INDIA                          0                     1       22    1513  dead0plus        
SAS-CompFeed      INDIA                          1                     0      336    1513  dead0plus        
SAS-CompFeed      INDIA                          1                     1       15    1513  dead0plus        
SAS-FoodSuppl     INDIA                          0                     0      260     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                     1        3     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                     0      152     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                     1        3     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     2276    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      119    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                     0     3145    3903  dead0plus        
VITAMIN-A         INDIA                          0                     1       48    3903  dead0plus        
VITAMIN-A         INDIA                          1                     0      683    3903  dead0plus        
VITAMIN-A         INDIA                          1                     1       27    3903  dead0plus        
ZVITAMBO          ZIMBABWE                       0                     0    12431   13942  dead0plus        
ZVITAMBO          ZIMBABWE                       0                     1      920   13942  dead0plus        
ZVITAMBO          ZIMBABWE                       1                     0      453   13942  dead0plus        
ZVITAMBO          ZIMBABWE                       1                     1      138   13942  dead0plus        


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
![](/tmp/93b2f6d3-f50b-490b-b7de-d3f9668c72b7/67be004d-4a72-45dd-8c6b-f27b977cc055/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/93b2f6d3-f50b-490b-b7de-d3f9668c72b7/67be004d-4a72-45dd-8c6b-f27b977cc055/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/93b2f6d3-f50b-490b-b7de-d3f9668c72b7/67be004d-4a72-45dd-8c6b-f27b977cc055/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/93b2f6d3-f50b-490b-b7de-d3f9668c72b7/67be004d-4a72-45dd-8c6b-f27b977cc055/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0061417   0.0042200   0.0080635
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0110701   0.0038774   0.0182628
iLiNS-DOSE        MALAWI         0                    NA                0.0630223   0.0518660   0.0741786
iLiNS-DOSE        MALAWI         1                    NA                0.1174051   0.0581117   0.1766985
iLiNS-DYAD-M      MALAWI         0                    NA                0.0305410   0.0205745   0.0405075
iLiNS-DYAD-M      MALAWI         1                    NA                0.1272727   0.0391568   0.2153887
JiVitA-3          BANGLADESH     0                    NA                0.0202013   0.0184184   0.0219843
JiVitA-3          BANGLADESH     1                    NA                0.0450086   0.0351006   0.0549167
JiVitA-4          BANGLADESH     0                    NA                0.0083583   0.0056044   0.0111122
JiVitA-4          BANGLADESH     1                    NA                0.0136779   0.0063534   0.0210024
Keneba            GAMBIA         0                    NA                0.0274719   0.0210240   0.0339198
Keneba            GAMBIA         1                    NA                0.0654517   0.0417046   0.0891987
SAS-CompFeed      INDIA          0                    NA                0.0191564   0.0093753   0.0289374
SAS-CompFeed      INDIA          1                    NA                0.0420218   0.0229165   0.0611272
VITAMIN-A         INDIA          0                    NA                0.0150069   0.0107834   0.0192304
VITAMIN-A         INDIA          1                    NA                0.0386539   0.0245072   0.0528005
ZVITAMBO          ZIMBABWE       0                    NA                0.0694083   0.0650907   0.0737258
ZVITAMBO          ZIMBABWE       1                    NA                0.2296901   0.1935851   0.2657952


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067011   0.0048116   0.0085906
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0349709   0.0245769   0.0453648
JiVitA-3          BANGLADESH     NA                   NA                0.0220629   0.0202902   0.0238357
JiVitA-4          BANGLADESH     NA                   NA                0.0091878   0.0066008   0.0117748
Keneba            GAMBIA         NA                   NA                0.0332990   0.0267825   0.0398155
SAS-CompFeed      INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
VITAMIN-A         INDIA          NA                   NA                0.0192160   0.0149085   0.0235235
ZVITAMBO          ZIMBABWE       NA                   NA                0.0758858   0.0714899   0.0802817


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 1.802441   0.8763260   3.707289
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.862913   1.0911770   3.180461
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 4.167273   1.9384110   8.958968
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 2.228002   1.7566199   2.825877
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.636450   0.8733815   3.066206
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 2.382496   1.5464925   3.670425
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 2.193623   1.6542538   2.908854
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 2.575741   1.6232792   4.087063
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 3.309262   2.7950676   3.918049


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0005594   -0.0002864   0.0014052
iLiNS-DOSE        MALAWI         0                    NA                0.0032646   -0.0002421   0.0067713
iLiNS-DYAD-M      MALAWI         0                    NA                0.0044298    0.0002107   0.0086489
JiVitA-3          BANGLADESH     0                    NA                0.0018616    0.0010849   0.0026383
JiVitA-4          BANGLADESH     0                    NA                0.0008295   -0.0004192   0.0020782
Keneba            GAMBIA         0                    NA                0.0058271    0.0021490   0.0095052
SAS-CompFeed      INDIA          0                    NA                0.0052984    0.0022659   0.0083308
VITAMIN-A         INDIA          0                    NA                0.0042091    0.0015214   0.0068968
ZVITAMBO          ZIMBABWE       0                    NA                0.0064775    0.0049251   0.0080300


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0834744   -0.0493385   0.1994774
iLiNS-DOSE        MALAWI         0                    NA                0.0492497   -0.0045940   0.1002074
iLiNS-DYAD-M      MALAWI         0                    NA                0.1266725    0.0037438   0.2344329
JiVitA-3          BANGLADESH     0                    NA                0.0843759    0.0492663   0.1181889
JiVitA-4          BANGLADESH     0                    NA                0.0902844   -0.0560125   0.2163138
Keneba            GAMBIA         0                    NA                0.1749937    0.0626238   0.2738930
SAS-CompFeed      INDIA          0                    NA                0.2166604    0.1002751   0.3179904
VITAMIN-A         INDIA          0                    NA                0.2190414    0.0759475   0.3399765
ZVITAMBO          ZIMBABWE       0                    NA                0.0853590    0.0652119   0.1050718
