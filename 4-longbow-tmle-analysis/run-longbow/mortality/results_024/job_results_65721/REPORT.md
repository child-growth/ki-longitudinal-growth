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

**Intervention Variable:** ever_stunted024

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

studyid           country                        ever_stunted024    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                          0     4563    7162  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                          1       25    7162  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                          0     2551    7162  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                          1       23    7162  dead6plus        
EE                PAKISTAN                       0                          0       39     374  dead6plus        
EE                PAKISTAN                       0                          1        0     374  dead6plus        
EE                PAKISTAN                       1                          0      331     374  dead6plus        
EE                PAKISTAN                       1                          1        4     374  dead6plus        
GMS-Nepal         NEPAL                          0                          0      174     592  dead6plus        
GMS-Nepal         NEPAL                          0                          1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                          0      416     592  dead6plus        
GMS-Nepal         NEPAL                          1                          1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                          0      864    1874  dead6plus        
iLiNS-DOSE        MALAWI                         0                          1       62    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                          0      883    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                          1       65    1874  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                          0      589    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                          1       10    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                          0      544    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                          1       18    1161  dead6plus        
JiVitA-3          BANGLADESH                     0                          0    10298   21039  dead6plus        
JiVitA-3          BANGLADESH                     0                          1      112   21039  dead6plus        
JiVitA-3          BANGLADESH                     1                          0    10430   21039  dead6plus        
JiVitA-3          BANGLADESH                     1                          1      199   21039  dead6plus        
JiVitA-4          BANGLADESH                     0                          0     2257    5432  dead6plus        
JiVitA-4          BANGLADESH                     0                          1       15    5432  dead6plus        
JiVitA-4          BANGLADESH                     1                          0     3125    5432  dead6plus        
JiVitA-4          BANGLADESH                     1                          1       35    5432  dead6plus        
Keneba            GAMBIA                         0                          0     1272    2748  dead6plus        
Keneba            GAMBIA                         0                          1       25    2748  dead6plus        
Keneba            GAMBIA                         1                          0     1397    2748  dead6plus        
Keneba            GAMBIA                         1                          1       54    2748  dead6plus        
MAL-ED            BANGLADESH                     0                          0       91     240  dead6plus        
MAL-ED            BANGLADESH                     0                          1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                          0      149     240  dead6plus        
MAL-ED            BANGLADESH                     1                          1        0     240  dead6plus        
MAL-ED            INDIA                          0                          0       89     235  dead6plus        
MAL-ED            INDIA                          0                          1        0     235  dead6plus        
MAL-ED            INDIA                          1                          0      146     235  dead6plus        
MAL-ED            INDIA                          1                          1        0     235  dead6plus        
MAL-ED            PERU                           0                          0       92     273  dead6plus        
MAL-ED            PERU                           0                          1        0     273  dead6plus        
MAL-ED            PERU                           1                          0      180     273  dead6plus        
MAL-ED            PERU                           1                          1        1     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                          0       99     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                          1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                          0      162     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                          1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          0       31     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          0      214     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                          0      319     617  dead6plus        
PROVIDE           BANGLADESH                     0                          1        2     617  dead6plus        
PROVIDE           BANGLADESH                     1                          0      295     617  dead6plus        
PROVIDE           BANGLADESH                     1                          1        1     617  dead6plus        
SAS-CompFeed      INDIA                          0                          0      404    1389  dead6plus        
SAS-CompFeed      INDIA                          0                          1        0    1389  dead6plus        
SAS-CompFeed      INDIA                          1                          0      973    1389  dead6plus        
SAS-CompFeed      INDIA                          1                          1       12    1389  dead6plus        
SAS-FoodSuppl     INDIA                          0                          0       59     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                          1        0     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                          0      339     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                          1        4     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     1312    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      784    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                          0     1494    3614  dead6plus        
VITAMIN-A         INDIA                          0                          1        9    3614  dead6plus        
VITAMIN-A         INDIA                          1                          0     2089    3614  dead6plus        
VITAMIN-A         INDIA                          1                          1       22    3614  dead6plus        
ZVITAMBO          ZIMBABWE                       0                          0     6237   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       0                          1      133   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       1                          0     5055   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       1                          1      283   11708  dead6plus        


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




# Results Detail

## Results Plots
![](/tmp/35eb35af-48e6-47b3-b0fb-12977761748e/7e983d98-646c-47d0-ada8-38d4260872f7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/35eb35af-48e6-47b3-b0fb-12977761748e/7e983d98-646c-47d0-ada8-38d4260872f7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/35eb35af-48e6-47b3-b0fb-12977761748e/7e983d98-646c-47d0-ada8-38d4260872f7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/35eb35af-48e6-47b3-b0fb-12977761748e/7e983d98-646c-47d0-ada8-38d4260872f7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0055367   0.0033764   0.0076971
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0087123   0.0051379   0.0122866
iLiNS-DOSE        MALAWI         0                    NA                0.0666327   0.0502047   0.0830607
iLiNS-DOSE        MALAWI         1                    NA                0.0653259   0.0496419   0.0810100
iLiNS-DYAD-M      MALAWI         0                    NA                0.0165965   0.0063248   0.0268681
iLiNS-DYAD-M      MALAWI         1                    NA                0.0322271   0.0176514   0.0468028
JiVitA-3          BANGLADESH     0                    NA                0.0115016   0.0092139   0.0137893
JiVitA-3          BANGLADESH     1                    NA                0.0184270   0.0154030   0.0214510
JiVitA-4          BANGLADESH     0                    NA                0.0066877   0.0026965   0.0106789
JiVitA-4          BANGLADESH     1                    NA                0.0110221   0.0075694   0.0144747
Keneba            GAMBIA         0                    NA                0.0214693   0.0121197   0.0308190
Keneba            GAMBIA         1                    NA                0.0348420   0.0254093   0.0442747
VITAMIN-A         INDIA          0                    NA                0.0059880   0.0020871   0.0098889
VITAMIN-A         INDIA          1                    NA                0.0104216   0.0060889   0.0147543
ZVITAMBO          ZIMBABWE       0                    NA                0.0219063   0.0181075   0.0257051
ZVITAMBO          ZIMBABWE       1                    NA                0.0518990   0.0456186   0.0581794


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


studyid           country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.0000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 1.5735352   0.8933067   2.771739
iLiNS-DOSE        MALAWI         0                    0                 1.0000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 0.9803886   0.6948244   1.383316
iLiNS-DYAD-M      MALAWI         0                    0                 1.0000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.9418071   0.9018970   4.180760
JiVitA-3          BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.6021186   1.2354118   2.077675
JiVitA-4          BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.6481160   0.8358863   3.249588
Keneba            GAMBIA         0                    0                 1.0000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.6228724   0.9716862   2.710458
VITAMIN-A         INDIA          0                    0                 1.0000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.7404074   0.8035728   3.769438
ZVITAMBO          ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 2.3691366   1.9176141   2.926975


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0011653   -0.0003656   0.0026962
iLiNS-DOSE        MALAWI         0                    NA                0.0011368   -0.0109042   0.0131778
iLiNS-DYAD-M      MALAWI         0                    NA                0.0075207   -0.0011395   0.0161809
JiVitA-3          BANGLADESH     0                    NA                0.0032804    0.0013252   0.0052357
JiVitA-4          BANGLADESH     0                    NA                0.0025170   -0.0005995   0.0056335
Keneba            GAMBIA         0                    NA                0.0072788   -0.0009514   0.0155091
VITAMIN-A         INDIA          0                    NA                0.0025897   -0.0008164   0.0059959
ZVITAMBO          ZIMBABWE       0                    NA                0.0136250    0.0102140   0.0170359


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1738708   -0.0821858   0.3693418
iLiNS-DOSE        MALAWI         0                    NA                0.0167742   -0.1779362   0.1792994
iLiNS-DYAD-M      MALAWI         0                    NA                0.3118398   -0.1301544   0.5809737
JiVitA-3          BANGLADESH     0                    NA                0.2219200    0.0809214   0.3412876
JiVitA-4          BANGLADESH     0                    NA                0.2734490   -0.1680829   0.5480831
Keneba            GAMBIA         0                    NA                0.2531932   -0.0882249   0.4874953
VITAMIN-A         INDIA          0                    NA                0.3019123   -0.2081567   0.5966364
ZVITAMBO          ZIMBABWE       0                    NA                0.3834639    0.2874701   0.4665251
