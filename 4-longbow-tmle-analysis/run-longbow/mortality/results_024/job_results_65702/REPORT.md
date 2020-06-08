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

**Outcome Variable:** dead624

## Predictor Variables

**Intervention Variable:** ever_sstunted024

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

studyid           country                        ever_sstunted024    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  -----------------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                         0     6266    7162  dead624          
Burkina Faso Zn   BURKINA FASO                   0                         1       33    7162  dead624          
Burkina Faso Zn   BURKINA FASO                   1                         0      857    7162  dead624          
Burkina Faso Zn   BURKINA FASO                   1                         1        6    7162  dead624          
EE                PAKISTAN                       0                         0      147     374  dead624          
EE                PAKISTAN                       0                         1        0     374  dead624          
EE                PAKISTAN                       1                         0      223     374  dead624          
EE                PAKISTAN                       1                         1        4     374  dead624          
GMS-Nepal         NEPAL                          0                         0      434     592  dead624          
GMS-Nepal         NEPAL                          0                         1        1     592  dead624          
GMS-Nepal         NEPAL                          1                         0      156     592  dead624          
GMS-Nepal         NEPAL                          1                         1        1     592  dead624          
iLiNS-DOSE        MALAWI                         0                         0     1433    1874  dead624          
iLiNS-DOSE        MALAWI                         0                         1      102    1874  dead624          
iLiNS-DOSE        MALAWI                         1                         0      314    1874  dead624          
iLiNS-DOSE        MALAWI                         1                         1       25    1874  dead624          
iLiNS-DYAD-M      MALAWI                         0                         0      951    1161  dead624          
iLiNS-DYAD-M      MALAWI                         0                         1       18    1161  dead624          
iLiNS-DYAD-M      MALAWI                         1                         0      186    1161  dead624          
iLiNS-DYAD-M      MALAWI                         1                         1        6    1161  dead624          
JiVitA-3          BANGLADESH                     0                         0    17066   21039  dead624          
JiVitA-3          BANGLADESH                     0                         1      175   21039  dead624          
JiVitA-3          BANGLADESH                     1                         0     3703   21039  dead624          
JiVitA-3          BANGLADESH                     1                         1       95   21039  dead624          
JiVitA-4          BANGLADESH                     0                         0     4296    5432  dead624          
JiVitA-4          BANGLADESH                     0                         1       31    5432  dead624          
JiVitA-4          BANGLADESH                     1                         0     1087    5432  dead624          
JiVitA-4          BANGLADESH                     1                         1       18    5432  dead624          
Keneba            GAMBIA                         0                         0     2122    2748  dead624          
Keneba            GAMBIA                         0                         1       25    2748  dead624          
Keneba            GAMBIA                         1                         0      582    2748  dead624          
Keneba            GAMBIA                         1                         1       19    2748  dead624          
MAL-ED            BANGLADESH                     0                         0      187     240  dead624          
MAL-ED            BANGLADESH                     0                         1        0     240  dead624          
MAL-ED            BANGLADESH                     1                         0       53     240  dead624          
MAL-ED            BANGLADESH                     1                         1        0     240  dead624          
MAL-ED            INDIA                          0                         0      177     235  dead624          
MAL-ED            INDIA                          0                         1        0     235  dead624          
MAL-ED            INDIA                          1                         0       58     235  dead624          
MAL-ED            INDIA                          1                         1        0     235  dead624          
MAL-ED            PERU                           0                         0      213     273  dead624          
MAL-ED            PERU                           0                         1        1     273  dead624          
MAL-ED            PERU                           1                         0       59     273  dead624          
MAL-ED            PERU                           1                         1        0     273  dead624          
MAL-ED            SOUTH AFRICA                   0                         0      191     261  dead624          
MAL-ED            SOUTH AFRICA                   0                         1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                         0       70     261  dead624          
MAL-ED            SOUTH AFRICA                   1                         1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      112     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0      133     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        0     245  dead624          
PROVIDE           BANGLADESH                     0                         0      522     617  dead624          
PROVIDE           BANGLADESH                     0                         1        2     617  dead624          
PROVIDE           BANGLADESH                     1                         0       93     617  dead624          
PROVIDE           BANGLADESH                     1                         1        0     617  dead624          
SAS-CompFeed      INDIA                          0                         0      909    1389  dead624          
SAS-CompFeed      INDIA                          0                         1        3    1389  dead624          
SAS-CompFeed      INDIA                          1                         0      468    1389  dead624          
SAS-CompFeed      INDIA                          1                         1        9    1389  dead624          
SAS-FoodSuppl     INDIA                          0                         0      201     402  dead624          
SAS-FoodSuppl     INDIA                          0                         1        0     402  dead624          
SAS-FoodSuppl     INDIA                          1                         0      197     402  dead624          
SAS-FoodSuppl     INDIA                          1                         1        4     402  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1867    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      229    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2096  dead624          
VITAMIN-A         INDIA                          0                         0     2682    3614  dead624          
VITAMIN-A         INDIA                          0                         1       19    3614  dead624          
VITAMIN-A         INDIA                          1                         0      901    3614  dead624          
VITAMIN-A         INDIA                          1                         1       12    3614  dead624          
ZVITAMBO          ZIMBABWE                       0                         0     9311   11708  dead624          
ZVITAMBO          ZIMBABWE                       0                         1      243   11708  dead624          
ZVITAMBO          ZIMBABWE                       1                         0     1991   11708  dead624          
ZVITAMBO          ZIMBABWE                       1                         1      163   11708  dead624          


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
![](/tmp/941a7b5b-30cc-4007-9e7d-edab615d3123/d217607a-d00f-4507-8e8c-b30ee9437757/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/941a7b5b-30cc-4007-9e7d-edab615d3123/d217607a-d00f-4507-8e8c-b30ee9437757/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/941a7b5b-30cc-4007-9e7d-edab615d3123/d217607a-d00f-4507-8e8c-b30ee9437757/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/941a7b5b-30cc-4007-9e7d-edab615d3123/d217607a-d00f-4507-8e8c-b30ee9437757/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052389   0.0034560   0.0070218
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0069525   0.0014084   0.0124966
iLiNS-DOSE        MALAWI         0                    NA                0.0668959   0.0542941   0.0794977
iLiNS-DOSE        MALAWI         1                    NA                0.0737859   0.0446939   0.1028779
iLiNS-DYAD-M      MALAWI         0                    NA                0.0185759   0.0100708   0.0270809
iLiNS-DYAD-M      MALAWI         1                    NA                0.0312500   0.0066284   0.0558716
JiVitA-3          BANGLADESH     0                    NA                0.0103276   0.0087729   0.0118823
JiVitA-3          BANGLADESH     1                    NA                0.0273985   0.0201821   0.0346148
JiVitA-4          BANGLADESH     0                    NA                0.0071890   0.0045859   0.0097920
JiVitA-4          BANGLADESH     1                    NA                0.0163513   0.0091605   0.0235421
Keneba            GAMBIA         0                    NA                0.0116294   0.0070842   0.0161746
Keneba            GAMBIA         1                    NA                0.0308450   0.0166647   0.0450252
VITAMIN-A         INDIA          0                    NA                0.0070530   0.0038889   0.0102170
VITAMIN-A         INDIA          1                    NA                0.0126674   0.0054752   0.0198595
ZVITAMBO          ZIMBABWE       0                    NA                0.0259860   0.0227545   0.0292174
ZVITAMBO          ZIMBABWE       1                    NA                0.0745186   0.0618476   0.0871897


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054454   0.0037409   0.0071499
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0206718   0.0124839   0.0288597
JiVitA-3          BANGLADESH     NA                   NA                0.0128333   0.0112834   0.0143832
JiVitA-4          BANGLADESH     NA                   NA                0.0090206   0.0064715   0.0115698
Keneba            GAMBIA         NA                   NA                0.0160116   0.0113178   0.0207055
VITAMIN-A         INDIA          NA                   NA                0.0085778   0.0055708   0.0115847
ZVITAMBO          ZIMBABWE       NA                   NA                0.0346771   0.0313629   0.0379914


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 1.327083   0.5576521   3.158151
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.102997   0.7124774   1.707565
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.682292   0.6763082   4.184638
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 2.652933   1.9571719   3.596033
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 2.274499   1.2894165   4.012161
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 2.652322   1.4502367   4.850801
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.796040   0.8711324   3.702952
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 2.867650   2.3231499   3.539770


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0002065   -0.0004954   0.0009083
iLiNS-DOSE        MALAWI         0                    NA                0.0008736   -0.0048012   0.0065484
iLiNS-DYAD-M      MALAWI         0                    NA                0.0020960   -0.0022204   0.0064124
JiVitA-3          BANGLADESH     0                    NA                0.0025057    0.0015383   0.0034731
JiVitA-4          BANGLADESH     0                    NA                0.0018317    0.0002766   0.0033867
Keneba            GAMBIA         0                    NA                0.0043822    0.0011456   0.0076189
VITAMIN-A         INDIA          0                    NA                0.0015248   -0.0005132   0.0035628
ZVITAMBO          ZIMBABWE       0                    NA                0.0086912    0.0064918   0.0108905


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0379181   -0.0993846   0.1580730
iLiNS-DOSE        MALAWI         0                    NA                0.0128910   -0.0744763   0.0931544
iLiNS-DYAD-M      MALAWI         0                    NA                0.1013932   -0.1289443   0.2847351
JiVitA-3          BANGLADESH     0                    NA                0.1952493    0.1202170   0.2638824
JiVitA-4          BANGLADESH     0                    NA                0.2030519    0.0180817   0.3531782
Keneba            GAMBIA         0                    NA                0.2736899    0.0615178   0.4378942
VITAMIN-A         INDIA          0                    NA                0.1777620   -0.0868747   0.3779639
ZVITAMBO          ZIMBABWE       0                    NA                0.2506315    0.1892999   0.3073232
