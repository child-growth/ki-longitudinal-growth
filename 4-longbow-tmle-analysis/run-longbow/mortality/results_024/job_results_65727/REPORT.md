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

studyid           country                        ever_co024    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  -----------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                     0     6309    7161  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                     1       39    7161  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                     0      804    7161  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                     1        9    7161  dead6plus        
EE                PAKISTAN                       0                     0      204     374  dead6plus        
EE                PAKISTAN                       0                     1        1     374  dead6plus        
EE                PAKISTAN                       1                     0      166     374  dead6plus        
EE                PAKISTAN                       1                     1        3     374  dead6plus        
GMS-Nepal         NEPAL                          0                     0      391     592  dead6plus        
GMS-Nepal         NEPAL                          0                     1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                     0      199     592  dead6plus        
GMS-Nepal         NEPAL                          1                     1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                     0     1654    1874  dead6plus        
iLiNS-DOSE        MALAWI                         0                     1      114    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                     0       93    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                     1       13    1874  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                     0     1085    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                     1       23    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                     0       48    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                     1        5    1161  dead6plus        
JiVitA-3          BANGLADESH                     0                     0    18679   21006  dead6plus        
JiVitA-3          BANGLADESH                     0                     1      243   21006  dead6plus        
JiVitA-3          BANGLADESH                     1                     0     2026   21006  dead6plus        
JiVitA-3          BANGLADESH                     1                     1       58   21006  dead6plus        
JiVitA-4          BANGLADESH                     0                     0     4516    5432  dead6plus        
JiVitA-4          BANGLADESH                     0                     1       38    5432  dead6plus        
JiVitA-4          BANGLADESH                     1                     0      866    5432  dead6plus        
JiVitA-4          BANGLADESH                     1                     1       12    5432  dead6plus        
Keneba            GAMBIA                         0                     0     2270    2748  dead6plus        
Keneba            GAMBIA                         0                     1       53    2748  dead6plus        
Keneba            GAMBIA                         1                     0      399    2748  dead6plus        
Keneba            GAMBIA                         1                     1       26    2748  dead6plus        
MAL-ED            BANGLADESH                     0                     0      201     240  dead6plus        
MAL-ED            BANGLADESH                     0                     1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                     0       39     240  dead6plus        
MAL-ED            BANGLADESH                     1                     1        0     240  dead6plus        
MAL-ED            INDIA                          0                     0      182     235  dead6plus        
MAL-ED            INDIA                          0                     1        0     235  dead6plus        
MAL-ED            INDIA                          1                     0       53     235  dead6plus        
MAL-ED            INDIA                          1                     1        0     235  dead6plus        
MAL-ED            PERU                           0                     0      261     273  dead6plus        
MAL-ED            PERU                           0                     1        1     273  dead6plus        
MAL-ED            PERU                           1                     0       11     273  dead6plus        
MAL-ED            PERU                           1                     1        0     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                     0      239     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                     1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                     0       22     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                     1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     0      222     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     0       23     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                     0      526     617  dead6plus        
PROVIDE           BANGLADESH                     0                     1        3     617  dead6plus        
PROVIDE           BANGLADESH                     1                     0       88     617  dead6plus        
PROVIDE           BANGLADESH                     1                     1        0     617  dead6plus        
SAS-CompFeed      INDIA                          0                     0     1047    1389  dead6plus        
SAS-CompFeed      INDIA                          0                     1        2    1389  dead6plus        
SAS-CompFeed      INDIA                          1                     0      330    1389  dead6plus        
SAS-CompFeed      INDIA                          1                     1       10    1389  dead6plus        
SAS-FoodSuppl     INDIA                          0                     0      246     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                     1        1     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                     0      152     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                     1        3     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     1979    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      117    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                     0     2919    3614  dead6plus        
VITAMIN-A         INDIA                          0                     1       17    3614  dead6plus        
VITAMIN-A         INDIA                          1                     0      664    3614  dead6plus        
VITAMIN-A         INDIA                          1                     1       14    3614  dead6plus        
ZVITAMBO          ZIMBABWE                       0                     0    10841   11692  dead6plus        
ZVITAMBO          ZIMBABWE                       0                     1      317   11692  dead6plus        
ZVITAMBO          ZIMBABWE                       1                     0      441   11692  dead6plus        
ZVITAMBO          ZIMBABWE                       1                     1       93   11692  dead6plus        


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




# Results Detail

## Results Plots
![](/tmp/c155a284-6a71-43d2-9b5a-d2d163ccff68/947151c1-3deb-41b5-97ff-64fe0232dc13/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c155a284-6a71-43d2-9b5a-d2d163ccff68/947151c1-3deb-41b5-97ff-64fe0232dc13/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c155a284-6a71-43d2-9b5a-d2d163ccff68/947151c1-3deb-41b5-97ff-64fe0232dc13/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c155a284-6a71-43d2-9b5a-d2d163ccff68/947151c1-3deb-41b5-97ff-64fe0232dc13/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0061437   0.0042213   0.0080660
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0110701   0.0038774   0.0182628
iLiNS-DOSE        MALAWI         0                    NA                0.0644921   0.0530395   0.0759446
iLiNS-DOSE        MALAWI         1                    NA                0.1131552   0.0513532   0.1749571
iLiNS-DYAD-M      MALAWI         0                    NA                0.0207581   0.0123596   0.0291567
iLiNS-DYAD-M      MALAWI         1                    NA                0.0943396   0.0156120   0.1730672
JiVitA-3          BANGLADESH     0                    NA                0.0130596   0.0113961   0.0147231
JiVitA-3          BANGLADESH     1                    NA                0.0283228   0.0195601   0.0370855
JiVitA-4          BANGLADESH     0                    NA                0.0083786   0.0056229   0.0111344
JiVitA-4          BANGLADESH     1                    NA                0.0136682   0.0064288   0.0209076
Keneba            GAMBIA         0                    NA                0.0233452   0.0170725   0.0296178
Keneba            GAMBIA         1                    NA                0.0567542   0.0340519   0.0794566
VITAMIN-A         INDIA          0                    NA                0.0057803   0.0030354   0.0085253
VITAMIN-A         INDIA          1                    NA                0.0207383   0.0099627   0.0315139
ZVITAMBO          ZIMBABWE       0                    NA                0.0286728   0.0255706   0.0317750
ZVITAMBO          ZIMBABWE       1                    NA                0.1645266   0.1315196   0.1975337


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067030   0.0048130   0.0085930
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0241171   0.0152888   0.0329455
JiVitA-3          BANGLADESH     NA                   NA                0.0143292   0.0126897   0.0159688
JiVitA-4          BANGLADESH     NA                   NA                0.0092047   0.0066177   0.0117917
Keneba            GAMBIA         NA                   NA                0.0287482   0.0224995   0.0349969
VITAMIN-A         INDIA          NA                   NA                0.0085778   0.0055708   0.0115847
ZVITAMBO          ZIMBABWE       NA                   NA                0.0350667   0.0317323   0.0384011


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 1.801873   0.8760501    3.706121
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.754559   0.9881402    3.115424
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 4.544709   1.7977666   11.488910
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-3          BANGLADESH     1                    0                 2.168732   1.5462473    3.041814
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-4          BANGLADESH     1                    0                 1.631317   0.8751927    3.040696
Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
Keneba            GAMBIA         1                    0                 2.431092   1.5013577    3.936576
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A         INDIA          1                    0                 3.587741   1.7743950    7.254238
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO          ZIMBABWE       1                    0                 5.738070   4.5684439    7.207148


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0005593   -0.0002867   0.0014053
iLiNS-DOSE        MALAWI         0                    NA                0.0032774   -0.0003466   0.0069014
iLiNS-DYAD-M      MALAWI         0                    NA                0.0033590   -0.0003618   0.0070798
JiVitA-3          BANGLADESH     0                    NA                0.0012696    0.0005028   0.0020365
JiVitA-4          BANGLADESH     0                    NA                0.0008261   -0.0004233   0.0020754
Keneba            GAMBIA         0                    NA                0.0054030    0.0016067   0.0091993
VITAMIN-A         INDIA          0                    NA                0.0027974    0.0007151   0.0048797
ZVITAMBO          ZIMBABWE       0                    NA                0.0063939    0.0048197   0.0079681


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0834416   -0.0493759   0.1994487
iLiNS-DOSE        MALAWI         0                    NA                0.0483608   -0.0060936   0.0998678
iLiNS-DYAD-M      MALAWI         0                    NA                0.1392793   -0.0198255   0.2735618
JiVitA-3          BANGLADESH     0                    NA                0.0886039    0.0346558   0.1395371
JiVitA-4          BANGLADESH     0                    NA                0.0897443   -0.0563614   0.2156421
Keneba            GAMBIA         0                    NA                0.1879429    0.0515417   0.3047278
VITAMIN-A         INDIA          0                    NA                0.3261251    0.0732633   0.5099930
ZVITAMBO          ZIMBABWE       0                    NA                0.1823352    0.1397076   0.2228506
