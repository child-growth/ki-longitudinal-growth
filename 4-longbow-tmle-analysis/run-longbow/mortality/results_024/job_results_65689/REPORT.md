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

studyid           country                        ever_swasted024    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                     0     6829    7166  dead             
Burkina Faso Zn   BURKINA FASO                   0                     1       35    7166  dead             
Burkina Faso Zn   BURKINA FASO                   1                     0      298    7166  dead             
Burkina Faso Zn   BURKINA FASO                   1                     1        4    7166  dead             
EE                PAKISTAN                       0                     0      298     380  dead             
EE                PAKISTAN                       0                     1        2     380  dead             
EE                PAKISTAN                       1                     0       78     380  dead             
EE                PAKISTAN                       1                     1        2     380  dead             
GMS-Nepal         NEPAL                          0                     0      503     686  dead             
GMS-Nepal         NEPAL                          0                     1        6     686  dead             
GMS-Nepal         NEPAL                          1                     0      176     686  dead             
GMS-Nepal         NEPAL                          1                     1        1     686  dead             
iLiNS-DOSE        MALAWI                         0                     0     1784    1931  dead             
iLiNS-DOSE        MALAWI                         0                     1      124    1931  dead             
iLiNS-DOSE        MALAWI                         1                     0       19    1931  dead             
iLiNS-DOSE        MALAWI                         1                     1        4    1931  dead             
iLiNS-DYAD-M      MALAWI                         0                     0     1138    1201  dead             
iLiNS-DYAD-M      MALAWI                         0                     1       35    1201  dead             
iLiNS-DYAD-M      MALAWI                         1                     0       25    1201  dead             
iLiNS-DYAD-M      MALAWI                         1                     1        3    1201  dead             
JiVitA-3          BANGLADESH                     0                     0    24807   26956  dead             
JiVitA-3          BANGLADESH                     0                     1      504   26956  dead             
JiVitA-3          BANGLADESH                     1                     0     1586   26956  dead             
JiVitA-3          BANGLADESH                     1                     1       59   26956  dead             
JiVitA-4          BANGLADESH                     0                     0     5060    5443  dead             
JiVitA-4          BANGLADESH                     0                     1       40    5443  dead             
JiVitA-4          BANGLADESH                     1                     0      334    5443  dead             
JiVitA-4          BANGLADESH                     1                     1        9    5443  dead             
Keneba            GAMBIA                         0                     0     2349    2920  dead             
Keneba            GAMBIA                         0                     1       45    2920  dead             
Keneba            GAMBIA                         1                     0      509    2920  dead             
Keneba            GAMBIA                         1                     1       17    2920  dead             
MAL-ED            BANGLADESH                     0                     0      240     263  dead             
MAL-ED            BANGLADESH                     0                     1        2     263  dead             
MAL-ED            BANGLADESH                     1                     0       21     263  dead             
MAL-ED            BANGLADESH                     1                     1        0     263  dead             
MAL-ED            INDIA                          0                     0      223     251  dead             
MAL-ED            INDIA                          0                     1        2     251  dead             
MAL-ED            INDIA                          1                     0       26     251  dead             
MAL-ED            INDIA                          1                     1        0     251  dead             
MAL-ED            PERU                           0                     0      296     302  dead             
MAL-ED            PERU                           0                     1        2     302  dead             
MAL-ED            PERU                           1                     0        4     302  dead             
MAL-ED            PERU                           1                     1        0     302  dead             
MAL-ED            SOUTH AFRICA                   0                     0      296     312  dead             
MAL-ED            SOUTH AFRICA                   0                     1        0     312  dead             
MAL-ED            SOUTH AFRICA                   1                     0       16     312  dead             
MAL-ED            SOUTH AFRICA                   1                     1        0     312  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     0      249     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     1        3     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     0        9     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     1        0     261  dead             
PROVIDE           BANGLADESH                     0                     0      654     700  dead             
PROVIDE           BANGLADESH                     0                     1        4     700  dead             
PROVIDE           BANGLADESH                     1                     0       42     700  dead             
PROVIDE           BANGLADESH                     1                     1        0     700  dead             
SAS-CompFeed      INDIA                          0                     0     1267    1513  dead             
SAS-CompFeed      INDIA                          0                     1       23    1513  dead             
SAS-CompFeed      INDIA                          1                     0      209    1513  dead             
SAS-CompFeed      INDIA                          1                     1       14    1513  dead             
SAS-FoodSuppl     INDIA                          0                     0      344     418  dead             
SAS-FoodSuppl     INDIA                          0                     1        3     418  dead             
SAS-FoodSuppl     INDIA                          1                     0       68     418  dead             
SAS-FoodSuppl     INDIA                          1                     1        3     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     2237    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      158    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396  dead             
VITAMIN-A         INDIA                          0                     0     3461    3904  dead             
VITAMIN-A         INDIA                          0                     1       55    3904  dead             
VITAMIN-A         INDIA                          1                     0      368    3904  dead             
VITAMIN-A         INDIA                          1                     1       20    3904  dead             
ZVITAMBO          ZIMBABWE                       0                     0    11791   13946  dead             
ZVITAMBO          ZIMBABWE                       0                     1      869   13946  dead             
ZVITAMBO          ZIMBABWE                       1                     0     1102   13946  dead             
ZVITAMBO          ZIMBABWE                       1                     1      184   13946  dead             


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
![](/tmp/ad24afe8-6f4e-4d1d-8b5e-3cc9df399181/30d206ad-1dce-40fb-8abc-714e4ce491db/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ad24afe8-6f4e-4d1d-8b5e-3cc9df399181/30d206ad-1dce-40fb-8abc-714e4ce491db/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ad24afe8-6f4e-4d1d-8b5e-3cc9df399181/30d206ad-1dce-40fb-8abc-714e4ce491db/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ad24afe8-6f4e-4d1d-8b5e-3cc9df399181/30d206ad-1dce-40fb-8abc-714e4ce491db/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0199494   0.0182156   0.0216833
JiVitA-3       BANGLADESH   1                    NA                0.0353896   0.0258343   0.0449449
JiVitA-4       BANGLADESH   0                    NA                0.0078431   0.0054298   0.0102565
JiVitA-4       BANGLADESH   1                    NA                0.0262391   0.0077322   0.0447460
Keneba         GAMBIA       0                    NA                0.0187716   0.0133368   0.0242065
Keneba         GAMBIA       1                    NA                0.0324856   0.0172366   0.0477347
SAS-CompFeed   INDIA        0                    NA                0.0178450   0.0092068   0.0264831
SAS-CompFeed   INDIA        1                    NA                0.0600799   0.0112937   0.1088660
VITAMIN-A      INDIA        0                    NA                0.0156300   0.0115286   0.0197313
VITAMIN-A      INDIA        1                    NA                0.0514175   0.0290447   0.0737903
ZVITAMBO       ZIMBABWE     0                    NA                0.0689046   0.0645024   0.0733068
ZVITAMBO       ZIMBABWE     1                    NA                0.1390623   0.1201637   0.1579610


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0208859   0.0191395   0.0226323
JiVitA-4       BANGLADESH   NA                   NA                0.0090024   0.0064532   0.0115515
Keneba         GAMBIA       NA                   NA                0.0212329   0.0160032   0.0264626
SAS-CompFeed   INDIA        NA                   NA                0.0244547   0.0133604   0.0355490
VITAMIN-A      INDIA        NA                   NA                0.0192111   0.0149047   0.0235174
ZVITAMBO       ZIMBABWE     NA                   NA                0.0755055   0.0711204   0.0798906


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.773968   1.3397346   2.348944
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 3.345481   1.5499534   7.221019
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.730570   0.9969121   3.004149
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 3.366770   1.4396283   7.873658
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 3.289676   1.9790215   5.468343
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.018187   1.7377308   2.343907


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0009365    0.0003457   0.0015273
JiVitA-4       BANGLADESH   0                    NA                0.0011593   -0.0000218   0.0023403
Keneba         GAMBIA       0                    NA                0.0024613   -0.0004369   0.0053595
SAS-CompFeed   INDIA        0                    NA                0.0066098   -0.0005339   0.0137534
VITAMIN-A      INDIA        0                    NA                0.0035811    0.0013309   0.0058314
ZVITAMBO       ZIMBABWE     0                    NA                0.0066009    0.0047842   0.0084176


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0448376    0.0166115   0.0722535
JiVitA-4       BANGLADESH   0                    NA                0.1287715   -0.0039238   0.2439276
Keneba         GAMBIA       0                    NA                0.1159173   -0.0283066   0.2399132
SAS-CompFeed   INDIA        0                    NA                0.2702862   -0.0074782   0.4714701
VITAMIN-A      INDIA        0                    NA                0.1864086    0.0689486   0.2890500
ZVITAMBO       ZIMBABWE     0                    NA                0.0874234    0.0635282   0.1107088
