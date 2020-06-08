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

**Intervention Variable:** ever_wasted06

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

studyid          country                        ever_wasted06    co_occurence   n_cell      n  outcome_variable 
---------------  -----------------------------  --------------  -------------  -------  -----  -----------------
CMC-V-BCS-2002   INDIA                          0                           0      171    366  co_occurence     
CMC-V-BCS-2002   INDIA                          0                           1        4    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                           0      173    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                           1       18    366  co_occurence     
CMIN             BANGLADESH                     0                           0      179    237  co_occurence     
CMIN             BANGLADESH                     0                           1       17    237  co_occurence     
CMIN             BANGLADESH                     1                           0       32    237  co_occurence     
CMIN             BANGLADESH                     1                           1        9    237  co_occurence     
COHORTS          GUATEMALA                      0                           0      594    774  co_occurence     
COHORTS          GUATEMALA                      0                           1       26    774  co_occurence     
COHORTS          GUATEMALA                      1                           0      142    774  co_occurence     
COHORTS          GUATEMALA                      1                           1       12    774  co_occurence     
COHORTS          PHILIPPINES                    0                           0     1777   2487  co_occurence     
COHORTS          PHILIPPINES                    0                           1      112   2487  co_occurence     
COHORTS          PHILIPPINES                    1                           0      523   2487  co_occurence     
COHORTS          PHILIPPINES                    1                           1       75   2487  co_occurence     
CONTENT          PERU                           0                           0      197    200  co_occurence     
CONTENT          PERU                           0                           1        0    200  co_occurence     
CONTENT          PERU                           1                           0        3    200  co_occurence     
CONTENT          PERU                           1                           1        0    200  co_occurence     
EE               PAKISTAN                       0                           0      190    346  co_occurence     
EE               PAKISTAN                       0                           1       35    346  co_occurence     
EE               PAKISTAN                       1                           0       82    346  co_occurence     
EE               PAKISTAN                       1                           1       39    346  co_occurence     
GMS-Nepal        NEPAL                          0                           0      302    550  co_occurence     
GMS-Nepal        NEPAL                          0                           1       28    550  co_occurence     
GMS-Nepal        NEPAL                          1                           0      188    550  co_occurence     
GMS-Nepal        NEPAL                          1                           1       32    550  co_occurence     
IRC              INDIA                          0                           0      175    405  co_occurence     
IRC              INDIA                          0                           1       10    405  co_occurence     
IRC              INDIA                          1                           0      205    405  co_occurence     
IRC              INDIA                          1                           1       15    405  co_occurence     
JiVitA-4         BANGLADESH                     0                           0     3657   4527  co_occurence     
JiVitA-4         BANGLADESH                     0                           1      288   4527  co_occurence     
JiVitA-4         BANGLADESH                     1                           0      437   4527  co_occurence     
JiVitA-4         BANGLADESH                     1                           1      145   4527  co_occurence     
Keneba           GAMBIA                         0                           0     1218   1775  co_occurence     
Keneba           GAMBIA                         0                           1       45   1775  co_occurence     
Keneba           GAMBIA                         1                           0      457   1775  co_occurence     
Keneba           GAMBIA                         1                           1       55   1775  co_occurence     
LCNI-5           MALAWI                         0                           0      666    693  co_occurence     
LCNI-5           MALAWI                         0                           1       17    693  co_occurence     
LCNI-5           MALAWI                         1                           0        9    693  co_occurence     
LCNI-5           MALAWI                         1                           1        1    693  co_occurence     
MAL-ED           BANGLADESH                     0                           0      165    221  co_occurence     
MAL-ED           BANGLADESH                     0                           1        4    221  co_occurence     
MAL-ED           BANGLADESH                     1                           0       42    221  co_occurence     
MAL-ED           BANGLADESH                     1                           1       10    221  co_occurence     
MAL-ED           BRAZIL                         0                           0      166    180  co_occurence     
MAL-ED           BRAZIL                         0                           1        1    180  co_occurence     
MAL-ED           BRAZIL                         1                           0       13    180  co_occurence     
MAL-ED           BRAZIL                         1                           1        0    180  co_occurence     
MAL-ED           INDIA                          0                           0      147    228  co_occurence     
MAL-ED           INDIA                          0                           1        4    228  co_occurence     
MAL-ED           INDIA                          1                           0       64    228  co_occurence     
MAL-ED           INDIA                          1                           1       13    228  co_occurence     
MAL-ED           NEPAL                          0                           0      181    229  co_occurence     
MAL-ED           NEPAL                          0                           1        2    229  co_occurence     
MAL-ED           NEPAL                          1                           0       44    229  co_occurence     
MAL-ED           NEPAL                          1                           1        2    229  co_occurence     
MAL-ED           PERU                           0                           0      208    222  co_occurence     
MAL-ED           PERU                           0                           1        5    222  co_occurence     
MAL-ED           PERU                           1                           0        8    222  co_occurence     
MAL-ED           PERU                           1                           1        1    222  co_occurence     
MAL-ED           SOUTH AFRICA                   0                           0      212    241  co_occurence     
MAL-ED           SOUTH AFRICA                   0                           1        2    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                           0       25    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                           1        2    241  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           0      211    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           1        1    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           0       13    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           1        0    225  co_occurence     
NIH-Birth        BANGLADESH                     0                           0      281    462  co_occurence     
NIH-Birth        BANGLADESH                     0                           1       14    462  co_occurence     
NIH-Birth        BANGLADESH                     1                           0      130    462  co_occurence     
NIH-Birth        BANGLADESH                     1                           1       37    462  co_occurence     
NIH-Crypto       BANGLADESH                     0                           0      440    634  co_occurence     
NIH-Crypto       BANGLADESH                     0                           1       14    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                           0      165    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                           1       15    634  co_occurence     
PROBIT           BELARUS                        0                           0     1618   2146  co_occurence     
PROBIT           BELARUS                        0                           1        1   2146  co_occurence     
PROBIT           BELARUS                        1                           0      527   2146  co_occurence     
PROBIT           BELARUS                        1                           1        0   2146  co_occurence     
PROVIDE          BANGLADESH                     0                           0      398    563  co_occurence     
PROVIDE          BANGLADESH                     0                           1       23    563  co_occurence     
PROVIDE          BANGLADESH                     1                           0      128    563  co_occurence     
PROVIDE          BANGLADESH                     1                           1       14    563  co_occurence     
ResPak           PAKISTAN                       0                           0        4      9  co_occurence     
ResPak           PAKISTAN                       0                           1        0      9  co_occurence     
ResPak           PAKISTAN                       1                           0        4      9  co_occurence     
ResPak           PAKISTAN                       1                           1        1      9  co_occurence     
SAS-CompFeed     INDIA                          0                           0      899   1256  co_occurence     
SAS-CompFeed     INDIA                          0                           1       72   1256  co_occurence     
SAS-CompFeed     INDIA                          1                           0      229   1256  co_occurence     
SAS-CompFeed     INDIA                          1                           1       56   1256  co_occurence     
SAS-FoodSuppl    INDIA                          0                           0      218    323  co_occurence     
SAS-FoodSuppl    INDIA                          0                           1       35    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                           0       45    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                           1       25    323  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           0      829    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           1       14    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      130    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1        7    980  co_occurence     
ZVITAMBO         ZIMBABWE                       0                           0     1305   1680  co_occurence     
ZVITAMBO         ZIMBABWE                       0                           1       56   1680  co_occurence     
ZVITAMBO         ZIMBABWE                       1                           0      287   1680  co_occurence     
ZVITAMBO         ZIMBABWE                       1                           1       32   1680  co_occurence     


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

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CONTENT, country: PERU
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS
* studyid: ResPak, country: PAKISTAN

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
![](/tmp/18eea7b5-0254-427a-a95f-b587514c519c/ef842f22-af1e-4002-b966-6d56f6ab1449/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/18eea7b5-0254-427a-a95f-b587514c519c/ef842f22-af1e-4002-b966-6d56f6ab1449/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/18eea7b5-0254-427a-a95f-b587514c519c/ef842f22-af1e-4002-b966-6d56f6ab1449/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/18eea7b5-0254-427a-a95f-b587514c519c/ef842f22-af1e-4002-b966-6d56f6ab1449/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     0                    NA                0.0867347   0.0472496   0.1262198
CMIN             BANGLADESH                     1                    NA                0.2195122   0.0925464   0.3464780
COHORTS          GUATEMALA                      0                    NA                0.0422477   0.0263917   0.0581038
COHORTS          GUATEMALA                      1                    NA                0.0735221   0.0308801   0.1161641
COHORTS          PHILIPPINES                    0                    NA                0.0587982   0.0482410   0.0693554
COHORTS          PHILIPPINES                    1                    NA                0.1238676   0.0977268   0.1500083
EE               PAKISTAN                       0                    NA                0.1526989   0.1060025   0.1993952
EE               PAKISTAN                       1                    NA                0.3212029   0.2353455   0.4070603
GMS-Nepal        NEPAL                          0                    NA                0.0849732   0.0547294   0.1152170
GMS-Nepal        NEPAL                          1                    NA                0.1454270   0.0993625   0.1914916
IRC              INDIA                          0                    NA                0.0541103   0.0213724   0.0868481
IRC              INDIA                          1                    NA                0.0681323   0.0346693   0.1015953
JiVitA-4         BANGLADESH                     0                    NA                0.0729983   0.0639392   0.0820574
JiVitA-4         BANGLADESH                     1                    NA                0.2461145   0.2002710   0.2919580
Keneba           GAMBIA                         0                    NA                0.0360014   0.0257638   0.0462390
Keneba           GAMBIA                         1                    NA                0.1034418   0.0770520   0.1298315
NIH-Birth        BANGLADESH                     0                    NA                0.0475001   0.0230337   0.0719666
NIH-Birth        BANGLADESH                     1                    NA                0.2230795   0.1596845   0.2864745
NIH-Crypto       BANGLADESH                     0                    NA                0.0320541   0.0160593   0.0480489
NIH-Crypto       BANGLADESH                     1                    NA                0.0853874   0.0457146   0.1250603
PROVIDE          BANGLADESH                     0                    NA                0.0532919   0.0319443   0.0746396
PROVIDE          BANGLADESH                     1                    NA                0.1023516   0.0501640   0.1545392
SAS-CompFeed     INDIA                          0                    NA                0.0743423   0.0625060   0.0861786
SAS-CompFeed     INDIA                          1                    NA                0.1864799   0.1381927   0.2347671
SAS-FoodSuppl    INDIA                          0                    NA                0.1426836   0.0997028   0.1856645
SAS-FoodSuppl    INDIA                          1                    NA                0.3376050   0.2235685   0.4516416
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0166074   0.0079762   0.0252385
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0510949   0.0142048   0.0879850
ZVITAMBO         ZIMBABWE                       0                    NA                0.0409865   0.0304213   0.0515518
ZVITAMBO         ZIMBABWE                       1                    NA                0.1035727   0.0703010   0.1368445


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     NA                   NA                0.1097046   0.0698323   0.1495770
COHORTS          GUATEMALA                      NA                   NA                0.0490956   0.0338639   0.0643273
COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
EE               PAKISTAN                       NA                   NA                0.2138728   0.1706052   0.2571404
GMS-Nepal        NEPAL                          NA                   NA                0.1090909   0.0830130   0.1351688
IRC              INDIA                          NA                   NA                0.0617284   0.0382610   0.0851958
JiVitA-4         BANGLADESH                     NA                   NA                0.0956483   0.0855904   0.1057063
Keneba           GAMBIA                         NA                   NA                0.0563380   0.0456085   0.0670675
NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
NIH-Crypto       BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
PROVIDE          BANGLADESH                     NA                   NA                0.0657194   0.0452330   0.0862057
SAS-CompFeed     INDIA                          NA                   NA                0.1019108   0.0902026   0.1136190
SAS-FoodSuppl    INDIA                          NA                   NA                0.1857585   0.1432798   0.2282372
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0523810   0.0417242   0.0630377


### Parameter: RR


studyid          country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
---------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
CMIN             BANGLADESH                     1                    0                 2.530846   1.2122647   5.283651
COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000   1.000000
COHORTS          GUATEMALA                      1                    0                 1.740260   0.8720837   3.472724
COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000   1.000000
COHORTS          PHILIPPINES                    1                    0                 2.106655   1.5991215   2.775272
EE               PAKISTAN                       0                    0                 1.000000   1.0000000   1.000000
EE               PAKISTAN                       1                    0                 2.103506   1.4040341   3.151445
GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000   1.000000
GMS-Nepal        NEPAL                          1                    0                 1.711446   1.0624515   2.756875
IRC              INDIA                          0                    0                 1.000000   1.0000000   1.000000
IRC              INDIA                          1                    0                 1.259138   0.5770679   2.747387
JiVitA-4         BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4         BANGLADESH                     1                    0                 3.371509   2.7014541   4.207760
Keneba           GAMBIA                         0                    0                 1.000000   1.0000000   1.000000
Keneba           GAMBIA                         1                    0                 2.873273   1.9642523   4.202973
NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
NIH-Birth        BANGLADESH                     1                    0                 4.696397   2.6051822   8.466257
NIH-Crypto       BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
NIH-Crypto       BANGLADESH                     1                    0                 2.663856   1.3483460   5.262838
PROVIDE          BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
PROVIDE          BANGLADESH                     1                    0                 1.920583   1.0039554   3.674108
SAS-CompFeed     INDIA                          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed     INDIA                          1                    0                 2.508396   1.7940374   3.507200
SAS-FoodSuppl    INDIA                          0                    0                 1.000000   1.0000000   1.000000
SAS-FoodSuppl    INDIA                          1                    0                 2.366109   1.5087765   3.710604
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000   1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 3.076642   1.2639518   7.488995
ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO         ZIMBABWE                       1                    0                 2.526994   1.6731448   3.816585


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMIN             BANGLADESH                     0                    NA                0.0229699   -0.0009080   0.0468479
COHORTS          GUATEMALA                      0                    NA                0.0068479   -0.0022674   0.0159632
COHORTS          PHILIPPINES                    0                    NA                0.0163928    0.0095376   0.0232479
EE               PAKISTAN                       0                    NA                0.0611740    0.0268397   0.0955083
GMS-Nepal        NEPAL                          0                    NA                0.0241177    0.0015773   0.0466581
IRC              INDIA                          0                    NA                0.0076181   -0.0178625   0.0330988
JiVitA-4         BANGLADESH                     0                    NA                0.0226500    0.0165889   0.0287112
Keneba           GAMBIA                         0                    NA                0.0203367    0.0119773   0.0286960
NIH-Birth        BANGLADESH                     0                    NA                0.0628895    0.0372137   0.0885652
NIH-Crypto       BANGLADESH                     0                    NA                0.0136872    0.0011823   0.0261922
PROVIDE          BANGLADESH                     0                    NA                0.0124274   -0.0010886   0.0259435
SAS-CompFeed     INDIA                          0                    NA                0.0275685    0.0138692   0.0412679
SAS-FoodSuppl    INDIA                          0                    NA                0.0430749    0.0159022   0.0702475
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0048212   -0.0005279   0.0101703
ZVITAMBO         ZIMBABWE                       0                    NA                0.0113944    0.0047099   0.0180789


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMIN             BANGLADESH                     0                    NA                0.2093799   -0.0268154   0.3912439
COHORTS          GUATEMALA                      0                    NA                0.1394804   -0.0616149   0.3024835
COHORTS          PHILIPPINES                    0                    NA                0.2180153    0.1260649   0.3002912
EE               PAKISTAN                       0                    NA                0.2860297    0.1143146   0.4244529
GMS-Nepal        NEPAL                          0                    NA                0.2210789   -0.0082510   0.3982469
IRC              INDIA                          0                    NA                0.1234138   -0.4000090   0.4511440
JiVitA-4         BANGLADESH                     0                    NA                0.2368051    0.1781777   0.2912500
Keneba           GAMBIA                         0                    NA                0.3609757    0.2134331   0.4808426
NIH-Birth        BANGLADESH                     0                    NA                0.5697047    0.3361744   0.7210802
NIH-Crypto       BANGLADESH                     0                    NA                0.2992315   -0.0009322   0.5093809
PROVIDE          BANGLADESH                     0                    NA                0.1890982   -0.0356426   0.3650689
SAS-CompFeed     INDIA                          0                    NA                0.2705162    0.1409373   0.3805498
SAS-FoodSuppl    INDIA                          0                    NA                0.2318864    0.0785903   0.3596785
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2249901   -0.0446753   0.4250459
ZVITAMBO         ZIMBABWE                       0                    NA                0.2175298    0.0871258   0.3293056
