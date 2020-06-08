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

**Intervention Variable:** ever_swasted024

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

studyid           country                        ever_swasted024    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                          0     6821    7166  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                          1       43    7166  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                          0      297    7166  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                          1        5    7166  dead0plus        
EE                PAKISTAN                       0                          0      298     380  dead0plus        
EE                PAKISTAN                       0                          1        2     380  dead0plus        
EE                PAKISTAN                       1                          0       78     380  dead0plus        
EE                PAKISTAN                       1                          1        2     380  dead0plus        
GMS-Nepal         NEPAL                          0                          0      503     686  dead0plus        
GMS-Nepal         NEPAL                          0                          1        6     686  dead0plus        
GMS-Nepal         NEPAL                          1                          0      176     686  dead0plus        
GMS-Nepal         NEPAL                          1                          1        1     686  dead0plus        
iLiNS-DOSE        MALAWI                         0                          0     1784    1931  dead0plus        
iLiNS-DOSE        MALAWI                         0                          1      124    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                          0       19    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                          1        4    1931  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                          0     1135    1201  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                          1       38    1201  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                          0       24    1201  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                          1        4    1201  dead0plus        
JiVitA-3          BANGLADESH                     0                          0    24773   26956  dead0plus        
JiVitA-3          BANGLADESH                     0                          1      538   26956  dead0plus        
JiVitA-3          BANGLADESH                     1                          0     1580   26956  dead0plus        
JiVitA-3          BANGLADESH                     1                          1       65   26956  dead0plus        
JiVitA-4          BANGLADESH                     0                          0     5059    5443  dead0plus        
JiVitA-4          BANGLADESH                     0                          1       41    5443  dead0plus        
JiVitA-4          BANGLADESH                     1                          0      334    5443  dead0plus        
JiVitA-4          BANGLADESH                     1                          1        9    5443  dead0plus        
Keneba            GAMBIA                         0                          0     2323    2920  dead0plus        
Keneba            GAMBIA                         0                          1       71    2920  dead0plus        
Keneba            GAMBIA                         1                          0      500    2920  dead0plus        
Keneba            GAMBIA                         1                          1       26    2920  dead0plus        
MAL-ED            BANGLADESH                     0                          0      240     263  dead0plus        
MAL-ED            BANGLADESH                     0                          1        2     263  dead0plus        
MAL-ED            BANGLADESH                     1                          0       21     263  dead0plus        
MAL-ED            BANGLADESH                     1                          1        0     263  dead0plus        
MAL-ED            INDIA                          0                          0      223     251  dead0plus        
MAL-ED            INDIA                          0                          1        2     251  dead0plus        
MAL-ED            INDIA                          1                          0       26     251  dead0plus        
MAL-ED            INDIA                          1                          1        0     251  dead0plus        
MAL-ED            PERU                           0                          0      296     302  dead0plus        
MAL-ED            PERU                           0                          1        2     302  dead0plus        
MAL-ED            PERU                           1                          0        4     302  dead0plus        
MAL-ED            PERU                           1                          1        0     302  dead0plus        
MAL-ED            SOUTH AFRICA                   0                          0      296     312  dead0plus        
MAL-ED            SOUTH AFRICA                   0                          1        0     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                          0       16     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                          1        0     312  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          0      249     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          1        3     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          0        9     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          1        0     261  dead0plus        
PROVIDE           BANGLADESH                     0                          0      653     700  dead0plus        
PROVIDE           BANGLADESH                     0                          1        5     700  dead0plus        
PROVIDE           BANGLADESH                     1                          0       42     700  dead0plus        
PROVIDE           BANGLADESH                     1                          1        0     700  dead0plus        
SAS-CompFeed      INDIA                          0                          0     1267    1513  dead0plus        
SAS-CompFeed      INDIA                          0                          1       23    1513  dead0plus        
SAS-CompFeed      INDIA                          1                          0      209    1513  dead0plus        
SAS-CompFeed      INDIA                          1                          1       14    1513  dead0plus        
SAS-FoodSuppl     INDIA                          0                          0      344     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                          1        3     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                          0       68     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                          1        3     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     2237    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      158    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                          0     3461    3904  dead0plus        
VITAMIN-A         INDIA                          0                          1       55    3904  dead0plus        
VITAMIN-A         INDIA                          1                          0      368    3904  dead0plus        
VITAMIN-A         INDIA                          1                          1       20    3904  dead0plus        
ZVITAMBO          ZIMBABWE                       0                          0    11783   13946  dead0plus        
ZVITAMBO          ZIMBABWE                       0                          1      877   13946  dead0plus        
ZVITAMBO          ZIMBABWE                       1                          0     1101   13946  dead0plus        
ZVITAMBO          ZIMBABWE                       1                          1      185   13946  dead0plus        


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
* studyid: iLiNS-DOSE, country: MALAWI
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
![](/tmp/199eab69-4531-4a72-a330-4ca831a3c987/3136b5c4-f89d-47b5-98aa-7c6aefc22373/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/199eab69-4531-4a72-a330-4ca831a3c987/3136b5c4-f89d-47b5-98aa-7c6aefc22373/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/199eab69-4531-4a72-a330-4ca831a3c987/3136b5c4-f89d-47b5-98aa-7c6aefc22373/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/199eab69-4531-4a72-a330-4ca831a3c987/3136b5c4-f89d-47b5-98aa-7c6aefc22373/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0062646   0.0043979   0.0081313
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0165563   0.0021640   0.0309486
JiVitA-3          BANGLADESH     0                    NA                0.0213032   0.0195045   0.0231018
JiVitA-3          BANGLADESH     1                    NA                0.0385684   0.0288410   0.0482959
JiVitA-4          BANGLADESH     0                    NA                0.0080392   0.0055796   0.0104989
JiVitA-4          BANGLADESH     1                    NA                0.0262391   0.0077322   0.0447460
Keneba            GAMBIA         0                    NA                0.0297066   0.0228952   0.0365180
Keneba            GAMBIA         1                    NA                0.0496655   0.0309469   0.0683842
SAS-CompFeed      INDIA          0                    NA                0.0178411   0.0092080   0.0264741
SAS-CompFeed      INDIA          1                    NA                0.0600498   0.0114534   0.1086463
VITAMIN-A         INDIA          0                    NA                0.0156064   0.0115064   0.0197065
VITAMIN-A         INDIA          1                    NA                0.0525040   0.0300211   0.0749870
ZVITAMBO          ZIMBABWE       0                    NA                0.0694861   0.0650649   0.0739072
ZVITAMBO          ZIMBABWE       1                    NA                0.1386556   0.1195994   0.1577119


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0066983   0.0048096   0.0085870
JiVitA-3          BANGLADESH     NA                   NA                0.0223698   0.0205726   0.0241670
JiVitA-4          BANGLADESH     NA                   NA                0.0091861   0.0065991   0.0117731
Keneba            GAMBIA         NA                   NA                0.0332192   0.0267180   0.0397203
SAS-CompFeed      INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
VITAMIN-A         INDIA          NA                   NA                0.0192111   0.0149047   0.0235174
ZVITAMBO          ZIMBABWE       NA                   NA                0.0761509   0.0717486   0.0805531


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate   ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ---------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.642846   1.054333   6.624698
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.810455   1.389790   2.358448
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 3.263884   1.513196   7.040024
Keneba            GAMBIA         0                    0                 1.000000   1.000000   1.000000
Keneba            GAMBIA         1                    0                 1.671869   1.075459   2.599027
SAS-CompFeed      INDIA          0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed      INDIA          1                    0                 3.365823   1.440841   7.862603
VITAMIN-A         INDIA          0                    0                 1.000000   1.000000   1.000000
VITAMIN-A         INDIA          1                    0                 3.364260   2.035648   5.560020
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 1.995446   1.715775   2.320703


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0004337   -0.0001798   0.0010472
JiVitA-3          BANGLADESH     0                    NA                0.0010666    0.0004567   0.0016765
JiVitA-4          BANGLADESH     0                    NA                0.0011469   -0.0000345   0.0023283
Keneba            GAMBIA         0                    NA                0.0035126   -0.0000604   0.0070855
SAS-CompFeed      INDIA          0                    NA                0.0066137   -0.0005312   0.0137585
VITAMIN-A         INDIA          0                    NA                0.0036046    0.0013552   0.0058541
ZVITAMBO          ZIMBABWE       0                    NA                0.0066648    0.0048381   0.0084915


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0647521   -0.0294726   0.1503527
JiVitA-3          BANGLADESH     0                    NA                0.0476814    0.0204090   0.0741945
JiVitA-4          BANGLADESH     0                    NA                0.1248510   -0.0054813   0.2382893
Keneba            GAMBIA         0                    NA                0.1057397   -0.0064434   0.2054184
SAS-CompFeed      INDIA          0                    NA                0.2704453   -0.0072484   0.4715801
VITAMIN-A         INDIA          0                    NA                0.1876340    0.0702276   0.2902150
ZVITAMBO          ZIMBABWE       0                    NA                0.0875212    0.0636959   0.1107403
