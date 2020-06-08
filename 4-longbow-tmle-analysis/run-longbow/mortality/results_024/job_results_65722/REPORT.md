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

studyid           country                        ever_sstunted024    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  -----------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                           0     6262    7162  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                           1       37    7162  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                           0      852    7162  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                           1       11    7162  dead6plus        
EE                PAKISTAN                       0                           0      147     374  dead6plus        
EE                PAKISTAN                       0                           1        0     374  dead6plus        
EE                PAKISTAN                       1                           0      223     374  dead6plus        
EE                PAKISTAN                       1                           1        4     374  dead6plus        
GMS-Nepal         NEPAL                          0                           0      434     592  dead6plus        
GMS-Nepal         NEPAL                          0                           1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                           0      156     592  dead6plus        
GMS-Nepal         NEPAL                          1                           1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                           0     1433    1874  dead6plus        
iLiNS-DOSE        MALAWI                         0                           1      102    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                           0      314    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                           1       25    1874  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                           0      948    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                           1       21    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                           0      185    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                           1        7    1161  dead6plus        
JiVitA-3          BANGLADESH                     0                           0    17039   21039  dead6plus        
JiVitA-3          BANGLADESH                     0                           1      202   21039  dead6plus        
JiVitA-3          BANGLADESH                     1                           0     3689   21039  dead6plus        
JiVitA-3          BANGLADESH                     1                           1      109   21039  dead6plus        
JiVitA-4          BANGLADESH                     0                           0     4296    5432  dead6plus        
JiVitA-4          BANGLADESH                     0                           1       31    5432  dead6plus        
JiVitA-4          BANGLADESH                     1                           0     1086    5432  dead6plus        
JiVitA-4          BANGLADESH                     1                           1       19    5432  dead6plus        
Keneba            GAMBIA                         0                           0     2101    2748  dead6plus        
Keneba            GAMBIA                         0                           1       46    2748  dead6plus        
Keneba            GAMBIA                         1                           0      568    2748  dead6plus        
Keneba            GAMBIA                         1                           1       33    2748  dead6plus        
MAL-ED            BANGLADESH                     0                           0      187     240  dead6plus        
MAL-ED            BANGLADESH                     0                           1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                           0       53     240  dead6plus        
MAL-ED            BANGLADESH                     1                           1        0     240  dead6plus        
MAL-ED            INDIA                          0                           0      177     235  dead6plus        
MAL-ED            INDIA                          0                           1        0     235  dead6plus        
MAL-ED            INDIA                          1                           0       58     235  dead6plus        
MAL-ED            INDIA                          1                           1        0     235  dead6plus        
MAL-ED            PERU                           0                           0      213     273  dead6plus        
MAL-ED            PERU                           0                           1        1     273  dead6plus        
MAL-ED            PERU                           1                           0       59     273  dead6plus        
MAL-ED            PERU                           1                           1        0     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                           0      191     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                           1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                           0       70     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                           1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                           0      112     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                           1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                           0      133     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                           1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                           0      522     617  dead6plus        
PROVIDE           BANGLADESH                     0                           1        2     617  dead6plus        
PROVIDE           BANGLADESH                     1                           0       92     617  dead6plus        
PROVIDE           BANGLADESH                     1                           1        1     617  dead6plus        
SAS-CompFeed      INDIA                          0                           0      909    1389  dead6plus        
SAS-CompFeed      INDIA                          0                           1        3    1389  dead6plus        
SAS-CompFeed      INDIA                          1                           0      468    1389  dead6plus        
SAS-CompFeed      INDIA                          1                           1        9    1389  dead6plus        
SAS-FoodSuppl     INDIA                          0                           0      201     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                           1        0     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                           0      197     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                           1        4     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           0     1867    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           0      229    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                           0     2682    3614  dead6plus        
VITAMIN-A         INDIA                          0                           1       19    3614  dead6plus        
VITAMIN-A         INDIA                          1                           0      901    3614  dead6plus        
VITAMIN-A         INDIA                          1                           1       12    3614  dead6plus        
ZVITAMBO          ZIMBABWE                       0                           0     9303   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       0                           1      251   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       1                           0     1989   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       1                           1      165   11708  dead6plus        


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




# Results Detail

## Results Plots
![](/tmp/434ca874-ecf8-462a-a2da-c9090f36695b/828922be-6f4c-4e53-8510-5bcfc67edff6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/434ca874-ecf8-462a-a2da-c9090f36695b/828922be-6f4c-4e53-8510-5bcfc67edff6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/434ca874-ecf8-462a-a2da-c9090f36695b/828922be-6f4c-4e53-8510-5bcfc67edff6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/434ca874-ecf8-462a-a2da-c9090f36695b/828922be-6f4c-4e53-8510-5bcfc67edff6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0059193   0.0040195   0.0078192
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0120106   0.0048687   0.0191525
iLiNS-DOSE        MALAWI         0                    NA                0.0668747   0.0542859   0.0794634
iLiNS-DOSE        MALAWI         1                    NA                0.0735645   0.0443634   0.1027656
iLiNS-DYAD-M      MALAWI         0                    NA                0.0216718   0.0124998   0.0308438
iLiNS-DYAD-M      MALAWI         1                    NA                0.0364583   0.0099356   0.0629811
JiVitA-3          BANGLADESH     0                    NA                0.0120413   0.0103726   0.0137100
JiVitA-3          BANGLADESH     1                    NA                0.0296938   0.0225648   0.0368228
JiVitA-4          BANGLADESH     0                    NA                0.0071894   0.0045877   0.0097910
JiVitA-4          BANGLADESH     1                    NA                0.0171859   0.0096675   0.0247043
Keneba            GAMBIA         0                    NA                0.0218642   0.0156121   0.0281162
Keneba            GAMBIA         1                    NA                0.0543233   0.0358611   0.0727855
VITAMIN-A         INDIA          0                    NA                0.0070807   0.0039110   0.0102505
VITAMIN-A         INDIA          1                    NA                0.0127420   0.0055124   0.0199716
ZVITAMBO          ZIMBABWE       0                    NA                0.0268193   0.0235376   0.0301009
ZVITAMBO          ZIMBABWE       1                    NA                0.0775409   0.0648859   0.0901960


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067020   0.0048123   0.0085918
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0241171   0.0152888   0.0329455
JiVitA-3          BANGLADESH     NA                   NA                0.0147821   0.0131375   0.0164266
JiVitA-4          BANGLADESH     NA                   NA                0.0092047   0.0066177   0.0117917
Keneba            GAMBIA         NA                   NA                0.0287482   0.0224995   0.0349969
VITAMIN-A         INDIA          NA                   NA                0.0085778   0.0055708   0.0115847
ZVITAMBO          ZIMBABWE       NA                   NA                0.0355313   0.0321779   0.0388846


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.029047   1.0324360   3.987689
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.100036   0.7088642   1.707067
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.682292   0.7250786   3.903170
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 2.465996   1.8662902   3.258408
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 2.390462   1.3566132   4.212189
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 2.484582   1.5933557   3.874305
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.799525   0.8738324   3.705848
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 2.891240   2.3579796   3.545097


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0007827   -0.0001519   0.0017173
iLiNS-DOSE        MALAWI         0                    NA                0.0008948   -0.0047713   0.0065609
iLiNS-DYAD-M      MALAWI         0                    NA                0.0024453   -0.0022065   0.0070971
JiVitA-3          BANGLADESH     0                    NA                0.0027408    0.0016890   0.0037926
JiVitA-4          BANGLADESH     0                    NA                0.0020153    0.0003927   0.0036380
Keneba            GAMBIA         0                    NA                0.0068840    0.0025785   0.0111895
VITAMIN-A         INDIA          0                    NA                0.0014970   -0.0005418   0.0035359
ZVITAMBO          ZIMBABWE       0                    NA                0.0087120    0.0064967   0.0109273


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1167850   -0.0296502   0.2423945
iLiNS-DOSE        MALAWI         0                    NA                0.0132039   -0.0740205   0.0933445
iLiNS-DYAD-M      MALAWI         0                    NA                0.1013932   -0.1094964   0.2721976
JiVitA-3          BANGLADESH     0                    NA                0.1854117    0.1145442   0.2506073
JiVitA-4          BANGLADESH     0                    NA                0.2189475    0.0313994   0.3701810
Keneba            GAMBIA         0                    NA                0.2394590    0.0849737   0.3678624
VITAMIN-A         INDIA          0                    NA                0.1745230   -0.0903273   0.3750388
ZVITAMBO          ZIMBABWE       0                    NA                0.2451922    0.1847833   0.3011247
