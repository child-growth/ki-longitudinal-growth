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

studyid           country                        ever_co024    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  -----------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                0     6318    7163  dead             
Burkina Faso Zn   BURKINA FASO                   0                1       32    7163  dead             
Burkina Faso Zn   BURKINA FASO                   1                0      806    7163  dead             
Burkina Faso Zn   BURKINA FASO                   1                1        7    7163  dead             
EE                PAKISTAN                       0                0      208     379  dead             
EE                PAKISTAN                       0                1        1     379  dead             
EE                PAKISTAN                       1                0      167     379  dead             
EE                PAKISTAN                       1                1        3     379  dead             
GMS-Nepal         NEPAL                          0                0      479     686  dead             
GMS-Nepal         NEPAL                          0                1        5     686  dead             
GMS-Nepal         NEPAL                          1                0      200     686  dead             
GMS-Nepal         NEPAL                          1                1        2     686  dead             
iLiNS-DOSE        MALAWI                         0                0     1709    1931  dead             
iLiNS-DOSE        MALAWI                         0                1      115    1931  dead             
iLiNS-DOSE        MALAWI                         1                0       94    1931  dead             
iLiNS-DOSE        MALAWI                         1                1       13    1931  dead             
iLiNS-DYAD-M      MALAWI                         0                0     1113    1201  dead             
iLiNS-DYAD-M      MALAWI                         0                1       33    1201  dead             
iLiNS-DYAD-M      MALAWI                         1                0       50    1201  dead             
iLiNS-DYAD-M      MALAWI                         1                1        5    1201  dead             
JiVitA-3          BANGLADESH                     0                0    24068   26923  dead             
JiVitA-3          BANGLADESH                     0                1      463   26923  dead             
JiVitA-3          BANGLADESH                     1                0     2301   26923  dead             
JiVitA-3          BANGLADESH                     1                1       91   26923  dead             
JiVitA-4          BANGLADESH                     0                0     4527    5442  dead             
JiVitA-4          BANGLADESH                     0                1       37    5442  dead             
JiVitA-4          BANGLADESH                     1                0      866    5442  dead             
JiVitA-4          BANGLADESH                     1                1       12    5442  dead             
Keneba            GAMBIA                         0                0     2435    2913  dead             
Keneba            GAMBIA                         0                1       46    2913  dead             
Keneba            GAMBIA                         1                0      416    2913  dead             
Keneba            GAMBIA                         1                1       16    2913  dead             
MAL-ED            BANGLADESH                     0                0      222     263  dead             
MAL-ED            BANGLADESH                     0                1        2     263  dead             
MAL-ED            BANGLADESH                     1                0       39     263  dead             
MAL-ED            BANGLADESH                     1                1        0     263  dead             
MAL-ED            INDIA                          0                0      195     251  dead             
MAL-ED            INDIA                          0                1        2     251  dead             
MAL-ED            INDIA                          1                0       54     251  dead             
MAL-ED            INDIA                          1                1        0     251  dead             
MAL-ED            PERU                           0                0      288     302  dead             
MAL-ED            PERU                           0                1        2     302  dead             
MAL-ED            PERU                           1                0       12     302  dead             
MAL-ED            PERU                           1                1        0     302  dead             
MAL-ED            SOUTH AFRICA                   0                0      289     312  dead             
MAL-ED            SOUTH AFRICA                   0                1        0     312  dead             
MAL-ED            SOUTH AFRICA                   1                0       23     312  dead             
MAL-ED            SOUTH AFRICA                   1                1        0     312  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                0      235     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                1        3     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                0       23     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                1        0     261  dead             
PROVIDE           BANGLADESH                     0                0      606     700  dead             
PROVIDE           BANGLADESH                     0                1        4     700  dead             
PROVIDE           BANGLADESH                     1                0       90     700  dead             
PROVIDE           BANGLADESH                     1                1        0     700  dead             
SAS-CompFeed      INDIA                          0                0     1140    1513  dead             
SAS-CompFeed      INDIA                          0                1       22    1513  dead             
SAS-CompFeed      INDIA                          1                0      336    1513  dead             
SAS-CompFeed      INDIA                          1                1       15    1513  dead             
SAS-FoodSuppl     INDIA                          0                0      260     418  dead             
SAS-FoodSuppl     INDIA                          0                1        3     418  dead             
SAS-FoodSuppl     INDIA                          1                0      152     418  dead             
SAS-FoodSuppl     INDIA                          1                1        3     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                0     2276    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                0      119    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                1        0    2396  dead             
VITAMIN-A         INDIA                          0                0     3145    3903  dead             
VITAMIN-A         INDIA                          0                1       48    3903  dead             
VITAMIN-A         INDIA                          1                0      683    3903  dead             
VITAMIN-A         INDIA                          1                1       27    3903  dead             
ZVITAMBO          ZIMBABWE                       0                0    12438   13942  dead             
ZVITAMBO          ZIMBABWE                       0                1      913   13942  dead             
ZVITAMBO          ZIMBABWE                       1                0      455   13942  dead             
ZVITAMBO          ZIMBABWE                       1                1      136   13942  dead             


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
![](/tmp/02cad185-bf74-4ebb-b646-fb25ccf51b12/3d548a76-a19b-42b2-80cd-70fe5cad5c27/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/02cad185-bf74-4ebb-b646-fb25ccf51b12/3d548a76-a19b-42b2-80cd-70fe5cad5c27/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/02cad185-bf74-4ebb-b646-fb25ccf51b12/3d548a76-a19b-42b2-80cd-70fe5cad5c27/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/02cad185-bf74-4ebb-b646-fb25ccf51b12/3d548a76-a19b-42b2-80cd-70fe5cad5c27/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0050394   0.0032976   0.0067811
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0086101   0.0022588   0.0149613
iLiNS-DOSE        MALAWI         0                    NA                0.0630317   0.0518739   0.0741895
iLiNS-DOSE        MALAWI         1                    NA                0.1234757   0.0618472   0.1851042
iLiNS-DYAD-M      MALAWI         0                    NA                0.0287958   0.0191095   0.0384821
iLiNS-DYAD-M      MALAWI         1                    NA                0.0909091   0.0149019   0.1669163
JiVitA-3          BANGLADESH     0                    NA                0.0190212   0.0172837   0.0207587
JiVitA-3          BANGLADESH     1                    NA                0.0417824   0.0319637   0.0516012
JiVitA-4          BANGLADESH     0                    NA                0.0081335   0.0054312   0.0108358
JiVitA-4          BANGLADESH     1                    NA                0.0140667   0.0067700   0.0213634
Keneba            GAMBIA         0                    NA                0.0185391   0.0132284   0.0238498
Keneba            GAMBIA         1                    NA                0.0369753   0.0188221   0.0551285
SAS-CompFeed      INDIA          0                    NA                0.0191395   0.0093609   0.0289181
SAS-CompFeed      INDIA          1                    NA                0.0417495   0.0227137   0.0607852
VITAMIN-A         INDIA          0                    NA                0.0149983   0.0107786   0.0192180
VITAMIN-A         INDIA          1                    NA                0.0383619   0.0242174   0.0525065
ZVITAMBO          ZIMBABWE       0                    NA                0.0688190   0.0645282   0.0731098
ZVITAMBO          ZIMBABWE       1                    NA                0.2254916   0.1903610   0.2606222


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054446   0.0037404   0.0071489
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0316403   0.0217366   0.0415440
JiVitA-3          BANGLADESH     NA                   NA                0.0205772   0.0188498   0.0223046
JiVitA-4          BANGLADESH     NA                   NA                0.0090040   0.0064549   0.0115532
Keneba            GAMBIA         NA                   NA                0.0212839   0.0160418   0.0265260
SAS-CompFeed      INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
VITAMIN-A         INDIA          NA                   NA                0.0192160   0.0149085   0.0235235
ZVITAMBO          ZIMBABWE       NA                   NA                0.0752403   0.0708616   0.0796189


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 1.708564   0.7565733   3.858438
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.958946   1.1541054   3.325060
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 3.157025   1.2819986   7.774428
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 2.196623   1.7074279   2.825978
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.729467   0.9347970   3.199685
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.994452   1.1296925   3.521169
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 2.181322   1.6455788   2.891485
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 2.557746   1.6085708   4.067004
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 3.276591   2.7710404   3.874375


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0004053   -0.0003427   0.0011532
iLiNS-DOSE        MALAWI         0                    NA                0.0032552   -0.0002450   0.0067555
iLiNS-DYAD-M      MALAWI         0                    NA                0.0028445   -0.0007405   0.0064295
JiVitA-3          BANGLADESH     0                    NA                0.0015560    0.0008124   0.0022996
JiVitA-4          BANGLADESH     0                    NA                0.0008705   -0.0003752   0.0021162
Keneba            GAMBIA         0                    NA                0.0027448   -0.0000233   0.0055129
SAS-CompFeed      INDIA          0                    NA                0.0053152    0.0022756   0.0083548
VITAMIN-A         INDIA          0                    NA                0.0042177    0.0015315   0.0069039
ZVITAMBO          ZIMBABWE       0                    NA                0.0064213    0.0048858   0.0079568


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0744357   -0.0713715   0.2003994
iLiNS-DOSE        MALAWI         0                    NA                0.0491081   -0.0046394   0.0999801
iLiNS-DYAD-M      MALAWI         0                    NA                0.0899008   -0.0269881   0.1934857
JiVitA-3          BANGLADESH     0                    NA                0.0756174    0.0395252   0.1103534
JiVitA-4          BANGLADESH     0                    NA                0.0966789   -0.0522247   0.2245106
Keneba            GAMBIA         0                    NA                0.1289622   -0.0069385   0.2465212
SAS-CompFeed      INDIA          0                    NA                0.2173482    0.1006446   0.3189079
VITAMIN-A         INDIA          0                    NA                0.2194872    0.0765503   0.3402995
ZVITAMBO          ZIMBABWE       0                    NA                0.0853441    0.0652749   0.1049824
