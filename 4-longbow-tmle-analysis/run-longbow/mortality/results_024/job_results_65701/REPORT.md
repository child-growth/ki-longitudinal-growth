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

studyid           country                        ever_stunted024    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                        0     4566    7162  dead624          
Burkina Faso Zn   BURKINA FASO                   0                        1       22    7162  dead624          
Burkina Faso Zn   BURKINA FASO                   1                        0     2557    7162  dead624          
Burkina Faso Zn   BURKINA FASO                   1                        1       17    7162  dead624          
EE                PAKISTAN                       0                        0       39     374  dead624          
EE                PAKISTAN                       0                        1        0     374  dead624          
EE                PAKISTAN                       1                        0      331     374  dead624          
EE                PAKISTAN                       1                        1        4     374  dead624          
GMS-Nepal         NEPAL                          0                        0      174     592  dead624          
GMS-Nepal         NEPAL                          0                        1        1     592  dead624          
GMS-Nepal         NEPAL                          1                        0      416     592  dead624          
GMS-Nepal         NEPAL                          1                        1        1     592  dead624          
iLiNS-DOSE        MALAWI                         0                        0      864    1874  dead624          
iLiNS-DOSE        MALAWI                         0                        1       62    1874  dead624          
iLiNS-DOSE        MALAWI                         1                        0      883    1874  dead624          
iLiNS-DOSE        MALAWI                         1                        1       65    1874  dead624          
iLiNS-DYAD-M      MALAWI                         0                        0      590    1161  dead624          
iLiNS-DYAD-M      MALAWI                         0                        1        9    1161  dead624          
iLiNS-DYAD-M      MALAWI                         1                        0      547    1161  dead624          
iLiNS-DYAD-M      MALAWI                         1                        1       15    1161  dead624          
JiVitA-3          BANGLADESH                     0                        0    10313   21039  dead624          
JiVitA-3          BANGLADESH                     0                        1       97   21039  dead624          
JiVitA-3          BANGLADESH                     1                        0    10456   21039  dead624          
JiVitA-3          BANGLADESH                     1                        1      173   21039  dead624          
JiVitA-4          BANGLADESH                     0                        0     2257    5432  dead624          
JiVitA-4          BANGLADESH                     0                        1       15    5432  dead624          
JiVitA-4          BANGLADESH                     1                        0     3126    5432  dead624          
JiVitA-4          BANGLADESH                     1                        1       34    5432  dead624          
Keneba            GAMBIA                         0                        0     1281    2748  dead624          
Keneba            GAMBIA                         0                        1       16    2748  dead624          
Keneba            GAMBIA                         1                        0     1423    2748  dead624          
Keneba            GAMBIA                         1                        1       28    2748  dead624          
MAL-ED            BANGLADESH                     0                        0       91     240  dead624          
MAL-ED            BANGLADESH                     0                        1        0     240  dead624          
MAL-ED            BANGLADESH                     1                        0      149     240  dead624          
MAL-ED            BANGLADESH                     1                        1        0     240  dead624          
MAL-ED            INDIA                          0                        0       89     235  dead624          
MAL-ED            INDIA                          0                        1        0     235  dead624          
MAL-ED            INDIA                          1                        0      146     235  dead624          
MAL-ED            INDIA                          1                        1        0     235  dead624          
MAL-ED            PERU                           0                        0       92     273  dead624          
MAL-ED            PERU                           0                        1        0     273  dead624          
MAL-ED            PERU                           1                        0      180     273  dead624          
MAL-ED            PERU                           1                        1        1     273  dead624          
MAL-ED            SOUTH AFRICA                   0                        0       99     261  dead624          
MAL-ED            SOUTH AFRICA                   0                        1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                        0      162     261  dead624          
MAL-ED            SOUTH AFRICA                   1                        1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        0       31     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        0      214     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        1        0     245  dead624          
PROVIDE           BANGLADESH                     0                        0      319     617  dead624          
PROVIDE           BANGLADESH                     0                        1        2     617  dead624          
PROVIDE           BANGLADESH                     1                        0      296     617  dead624          
PROVIDE           BANGLADESH                     1                        1        0     617  dead624          
SAS-CompFeed      INDIA                          0                        0      404    1389  dead624          
SAS-CompFeed      INDIA                          0                        1        0    1389  dead624          
SAS-CompFeed      INDIA                          1                        0      973    1389  dead624          
SAS-CompFeed      INDIA                          1                        1       12    1389  dead624          
SAS-FoodSuppl     INDIA                          0                        0       59     402  dead624          
SAS-FoodSuppl     INDIA                          0                        1        0     402  dead624          
SAS-FoodSuppl     INDIA                          1                        0      339     402  dead624          
SAS-FoodSuppl     INDIA                          1                        1        4     402  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     1312    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      784    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2096  dead624          
VITAMIN-A         INDIA                          0                        0     1494    3614  dead624          
VITAMIN-A         INDIA                          0                        1        9    3614  dead624          
VITAMIN-A         INDIA                          1                        0     2089    3614  dead624          
VITAMIN-A         INDIA                          1                        1       22    3614  dead624          
ZVITAMBO          ZIMBABWE                       0                        0     6242   11708  dead624          
ZVITAMBO          ZIMBABWE                       0                        1      128   11708  dead624          
ZVITAMBO          ZIMBABWE                       1                        0     5060   11708  dead624          
ZVITAMBO          ZIMBABWE                       1                        1      278   11708  dead624          


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




# Results Detail

## Results Plots
![](/tmp/9981469f-d668-4a88-8df1-d52be9bf5ff8/45a26275-59e6-4300-865c-15878d3d9f79/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9981469f-d668-4a88-8df1-d52be9bf5ff8/45a26275-59e6-4300-865c-15878d3d9f79/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9981469f-d668-4a88-8df1-d52be9bf5ff8/45a26275-59e6-4300-865c-15878d3d9f79/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9981469f-d668-4a88-8df1-d52be9bf5ff8/45a26275-59e6-4300-865c-15878d3d9f79/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0048685   0.0028419   0.0068952
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0064155   0.0033610   0.0094700
iLiNS-DOSE        MALAWI         0                    NA                0.0663836   0.0500245   0.0827427
iLiNS-DOSE        MALAWI         1                    NA                0.0650757   0.0495409   0.0806104
iLiNS-DYAD-M      MALAWI         0                    NA                0.0150250   0.0052787   0.0247714
iLiNS-DYAD-M      MALAWI         1                    NA                0.0266904   0.0133592   0.0400216
JiVitA-3          BANGLADESH     0                    NA                0.0100989   0.0079510   0.0122467
JiVitA-3          BANGLADESH     1                    NA                0.0162553   0.0133865   0.0191241
JiVitA-4          BANGLADESH     0                    NA                0.0066776   0.0027027   0.0106525
JiVitA-4          BANGLADESH     1                    NA                0.0107256   0.0073554   0.0140957
Keneba            GAMBIA         0                    NA                0.0122974   0.0062315   0.0183633
Keneba            GAMBIA         1                    NA                0.0191812   0.0120779   0.0262845
VITAMIN-A         INDIA          0                    NA                0.0059880   0.0020871   0.0098889
VITAMIN-A         INDIA          1                    NA                0.0104216   0.0060889   0.0147543
ZVITAMBO          ZIMBABWE       0                    NA                0.0211493   0.0174396   0.0248589
ZVITAMBO          ZIMBABWE       1                    NA                0.0514613   0.0451426   0.0577801


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


studyid           country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.0000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 1.3177438   0.7001258   2.480195
iLiNS-DOSE        MALAWI         0                    0                 1.0000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 0.9802977   0.6956024   1.381513
iLiNS-DYAD-M      MALAWI         0                    0                 1.0000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.7763938   0.7834049   4.028026
JiVitA-3          BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.6096201   1.2211826   2.121613
JiVitA-4          BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.6062118   0.8155907   3.163249
Keneba            GAMBIA         0                    0                 1.0000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.5597757   0.8415115   2.891108
VITAMIN-A         INDIA          0                    0                 1.0000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.7404074   0.8035728   3.769438
ZVITAMBO          ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 2.4332456   1.9644330   3.013940


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0005769   -0.0007730   0.0019267
iLiNS-DOSE        MALAWI         0                    NA                0.0013859   -0.0105744   0.0133462
iLiNS-DYAD-M      MALAWI         0                    NA                0.0056468   -0.0023541   0.0136477
JiVitA-3          BANGLADESH     0                    NA                0.0027344    0.0008990   0.0045699
JiVitA-4          BANGLADESH     0                    NA                0.0023431   -0.0007257   0.0054118
Keneba            GAMBIA         0                    NA                0.0037142   -0.0012315   0.0086600
VITAMIN-A         INDIA          0                    NA                0.0025897   -0.0008164   0.0059959
ZVITAMBO          ZIMBABWE       0                    NA                0.0135279    0.0101741   0.0168817


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1059347   -0.1767490   0.3207110
iLiNS-DOSE        MALAWI         0                    NA                0.0204504   -0.1728975   0.1819256
iLiNS-DYAD-M      MALAWI         0                    NA                0.2731636   -0.2127436   0.5643835
JiVitA-3          BANGLADESH     0                    NA                0.2130743    0.0597674   0.3413842
JiVitA-4          BANGLADESH     0                    NA                0.2597454   -0.1837161   0.5370707
Keneba            GAMBIA         0                    NA                0.2319708   -0.1381537   0.4817319
VITAMIN-A         INDIA          0                    NA                0.3019123   -0.2081567   0.5966364
ZVITAMBO          ZIMBABWE       0                    NA                0.3901095    0.2938021   0.4732830
