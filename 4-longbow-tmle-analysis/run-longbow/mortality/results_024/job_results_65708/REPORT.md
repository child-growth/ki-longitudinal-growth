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

studyid           country                        ever_wasted024    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                         0     5730    7166  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                         1       30    7166  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                         0     1388    7166  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                         1       18    7166  dead0plus        
EE                PAKISTAN                       0                         0      153     380  dead0plus        
EE                PAKISTAN                       0                         1        1     380  dead0plus        
EE                PAKISTAN                       1                         0      223     380  dead0plus        
EE                PAKISTAN                       1                         1        3     380  dead0plus        
GMS-Nepal         NEPAL                          0                         0      276     686  dead0plus        
GMS-Nepal         NEPAL                          0                         1        5     686  dead0plus        
GMS-Nepal         NEPAL                          1                         0      403     686  dead0plus        
GMS-Nepal         NEPAL                          1                         1        2     686  dead0plus        
iLiNS-DOSE        MALAWI                         0                         0     1660    1931  dead0plus        
iLiNS-DOSE        MALAWI                         0                         1      113    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                         0      143    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                         1       15    1931  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                         0     1058    1201  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                         1       33    1201  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                         0      101    1201  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                         1        9    1201  dead0plus        
JiVitA-3          BANGLADESH                     0                         0    19587   26956  dead0plus        
JiVitA-3          BANGLADESH                     0                         1      414   26956  dead0plus        
JiVitA-3          BANGLADESH                     1                         0     6766   26956  dead0plus        
JiVitA-3          BANGLADESH                     1                         1      189   26956  dead0plus        
JiVitA-4          BANGLADESH                     0                         0     3723    5443  dead0plus        
JiVitA-4          BANGLADESH                     0                         1       31    5443  dead0plus        
JiVitA-4          BANGLADESH                     1                         0     1670    5443  dead0plus        
JiVitA-4          BANGLADESH                     1                         1       19    5443  dead0plus        
Keneba            GAMBIA                         0                         0     1591    2920  dead0plus        
Keneba            GAMBIA                         0                         1       51    2920  dead0plus        
Keneba            GAMBIA                         1                         0     1232    2920  dead0plus        
Keneba            GAMBIA                         1                         1       46    2920  dead0plus        
MAL-ED            BANGLADESH                     0                         0      174     263  dead0plus        
MAL-ED            BANGLADESH                     0                         1        2     263  dead0plus        
MAL-ED            BANGLADESH                     1                         0       87     263  dead0plus        
MAL-ED            BANGLADESH                     1                         1        0     263  dead0plus        
MAL-ED            INDIA                          0                         0      130     251  dead0plus        
MAL-ED            INDIA                          0                         1        1     251  dead0plus        
MAL-ED            INDIA                          1                         0      119     251  dead0plus        
MAL-ED            INDIA                          1                         1        1     251  dead0plus        
MAL-ED            PERU                           0                         0      273     302  dead0plus        
MAL-ED            PERU                           0                         1        2     302  dead0plus        
MAL-ED            PERU                           1                         0       27     302  dead0plus        
MAL-ED            PERU                           1                         1        0     302  dead0plus        
MAL-ED            SOUTH AFRICA                   0                         0      248     312  dead0plus        
MAL-ED            SOUTH AFRICA                   0                         1        0     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                         0       64     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                         1        0     312  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      222     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        3     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0       36     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        0     261  dead0plus        
PROVIDE           BANGLADESH                     0                         0      449     700  dead0plus        
PROVIDE           BANGLADESH                     0                         1        5     700  dead0plus        
PROVIDE           BANGLADESH                     1                         0      246     700  dead0plus        
PROVIDE           BANGLADESH                     1                         1        0     700  dead0plus        
SAS-CompFeed      INDIA                          0                         0      866    1513  dead0plus        
SAS-CompFeed      INDIA                          0                         1       19    1513  dead0plus        
SAS-CompFeed      INDIA                          1                         0      610    1513  dead0plus        
SAS-CompFeed      INDIA                          1                         1       18    1513  dead0plus        
SAS-FoodSuppl     INDIA                          0                         0      219     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                         1        2     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                         0      193     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                         1        4     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1829    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      566    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                         0     2556    3904  dead0plus        
VITAMIN-A         INDIA                          0                         1       35    3904  dead0plus        
VITAMIN-A         INDIA                          1                         0     1273    3904  dead0plus        
VITAMIN-A         INDIA                          1                         1       40    3904  dead0plus        
ZVITAMBO          ZIMBABWE                       0                         0     9957   13946  dead0plus        
ZVITAMBO          ZIMBABWE                       0                         1      688   13946  dead0plus        
ZVITAMBO          ZIMBABWE                       1                         0     2927   13946  dead0plus        
ZVITAMBO          ZIMBABWE                       1                         1      374   13946  dead0plus        


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
![](/tmp/de63988b-0a1f-47ee-bdaf-5918825d9fbf/e29f6990-06b8-44a5-99e7-e3a8b9e19c1a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/de63988b-0a1f-47ee-bdaf-5918825d9fbf/e29f6990-06b8-44a5-99e7-e3a8b9e19c1a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/de63988b-0a1f-47ee-bdaf-5918825d9fbf/e29f6990-06b8-44a5-99e7-e3a8b9e19c1a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/de63988b-0a1f-47ee-bdaf-5918825d9fbf/e29f6990-06b8-44a5-99e7-e3a8b9e19c1a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052352   0.0033677   0.0071027
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0125075   0.0067300   0.0182851
iLiNS-DOSE        MALAWI         0                    NA                0.0638276   0.0524527   0.0752026
iLiNS-DOSE        MALAWI         1                    NA                0.0816353   0.0359314   0.1273393
iLiNS-DYAD-M      MALAWI         0                    NA                0.0302475   0.0200805   0.0404145
iLiNS-DYAD-M      MALAWI         1                    NA                0.0818182   0.0305767   0.1330597
JiVitA-3          BANGLADESH     0                    NA                0.0207776   0.0188136   0.0227415
JiVitA-3          BANGLADESH     1                    NA                0.0271276   0.0233325   0.0309227
JiVitA-4          BANGLADESH     0                    NA                0.0082498   0.0053371   0.0111626
JiVitA-4          BANGLADESH     1                    NA                0.0110487   0.0057457   0.0163517
Keneba            GAMBIA         0                    NA                0.0324280   0.0236225   0.0412335
Keneba            GAMBIA         1                    NA                0.0361080   0.0257460   0.0464701
SAS-CompFeed      INDIA          0                    NA                0.0213401   0.0109557   0.0317245
SAS-CompFeed      INDIA          1                    NA                0.0286852   0.0134274   0.0439431
VITAMIN-A         INDIA          0                    NA                0.0138530   0.0092805   0.0184255
VITAMIN-A         INDIA          1                    NA                0.0304689   0.0210668   0.0398711
ZVITAMBO          ZIMBABWE       0                    NA                0.0651922   0.0605198   0.0698647
ZVITAMBO          ZIMBABWE       1                    NA                0.1104847   0.0997841   0.1211852


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0066983   0.0048096   0.0085870
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0349709   0.0245769   0.0453648
JiVitA-3          BANGLADESH     NA                   NA                0.0223698   0.0205726   0.0241670
JiVitA-4          BANGLADESH     NA                   NA                0.0091861   0.0065991   0.0117731
Keneba            GAMBIA         NA                   NA                0.0332192   0.0267180   0.0397203
SAS-CompFeed      INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
VITAMIN-A         INDIA          NA                   NA                0.0192111   0.0149047   0.0235174
ZVITAMBO          ZIMBABWE       NA                   NA                0.0761509   0.0717486   0.0805531


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.389121   1.3329764   4.282070
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.278997   0.7108851   2.301122
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 2.704959   1.3288351   5.506177
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.305619   1.1083515   1.537997
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.339262   0.7370341   2.433568
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.113482   0.7499316   1.653275
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 1.344195   0.8532316   2.117667
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 2.199454   1.3996078   3.456394
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 1.694752   1.5034668   1.910374


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014631    0.0002494   0.0026768
iLiNS-DOSE        MALAWI         0                    NA                0.0024593   -0.0013936   0.0063122
iLiNS-DYAD-M      MALAWI         0                    NA                0.0047234   -0.0001348   0.0095816
JiVitA-3          BANGLADESH     0                    NA                0.0015922    0.0005200   0.0026644
JiVitA-4          BANGLADESH     0                    NA                0.0009363   -0.0009419   0.0028144
Keneba            GAMBIA         0                    NA                0.0007912   -0.0053260   0.0069083
SAS-CompFeed      INDIA          0                    NA                0.0031146   -0.0020129   0.0082421
VITAMIN-A         INDIA          0                    NA                0.0053581    0.0018115   0.0089047
ZVITAMBO          ZIMBABWE       0                    NA                0.0109586    0.0081741   0.0137431


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2184278    0.0279137   0.3716041
iLiNS-DOSE        MALAWI         0                    NA                0.0371005   -0.0224988   0.0932258
iLiNS-DYAD-M      MALAWI         0                    NA                0.1350661   -0.0091398   0.2586651
JiVitA-3          BANGLADESH     0                    NA                0.0711771    0.0224466   0.1174784
JiVitA-4          BANGLADESH     0                    NA                0.1019224   -0.1237444   0.2822715
Keneba            GAMBIA         0                    NA                0.0238169   -0.1787622   0.1915813
SAS-CompFeed      INDIA          0                    NA                0.1273633   -0.0925175   0.3029907
VITAMIN-A         INDIA          0                    NA                0.2789073    0.0821373   0.4334940
ZVITAMBO          ZIMBABWE       0                    NA                0.1439067    0.1074494   0.1788750
