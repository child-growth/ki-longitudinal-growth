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

**Intervention Variable:** ever_underweight024

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

studyid           country                        ever_underweight024    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                         0     4729    7165  dead             
Burkina Faso Zn   BURKINA FASO                   0                         1       18    7165  dead             
Burkina Faso Zn   BURKINA FASO                   1                         0     2397    7165  dead             
Burkina Faso Zn   BURKINA FASO                   1                         1       21    7165  dead             
EE                PAKISTAN                       0                         0       53     380  dead             
EE                PAKISTAN                       0                         1        0     380  dead             
EE                PAKISTAN                       1                         0      323     380  dead             
EE                PAKISTAN                       1                         1        4     380  dead             
GMS-Nepal         NEPAL                          0                         0      220     697  dead             
GMS-Nepal         NEPAL                          0                         1        2     697  dead             
GMS-Nepal         NEPAL                          1                         0      470     697  dead             
GMS-Nepal         NEPAL                          1                         1        5     697  dead             
iLiNS-DOSE        MALAWI                         0                         0     1164    1931  dead             
iLiNS-DOSE        MALAWI                         0                         1       63    1931  dead             
iLiNS-DOSE        MALAWI                         1                         0      639    1931  dead             
iLiNS-DOSE        MALAWI                         1                         1       65    1931  dead             
iLiNS-DYAD-M      MALAWI                         0                         0      777    1205  dead             
iLiNS-DYAD-M      MALAWI                         0                         1       16    1205  dead             
iLiNS-DYAD-M      MALAWI                         1                         0      388    1205  dead             
iLiNS-DYAD-M      MALAWI                         1                         1       24    1205  dead             
JiVitA-3          BANGLADESH                     0                         0    12890   27260  dead             
JiVitA-3          BANGLADESH                     0                         1      235   27260  dead             
JiVitA-3          BANGLADESH                     1                         0    13544   27260  dead             
JiVitA-3          BANGLADESH                     1                         1      591   27260  dead             
JiVitA-4          BANGLADESH                     0                         0     2570    5443  dead             
JiVitA-4          BANGLADESH                     0                         1       13    5443  dead             
JiVitA-4          BANGLADESH                     1                         0     2824    5443  dead             
JiVitA-4          BANGLADESH                     1                         1       36    5443  dead             
Keneba            GAMBIA                         0                         0     1610    2929  dead             
Keneba            GAMBIA                         0                         1       28    2929  dead             
Keneba            GAMBIA                         1                         0     1255    2929  dead             
Keneba            GAMBIA                         1                         1       36    2929  dead             
MAL-ED            BANGLADESH                     0                         0      122     265  dead             
MAL-ED            BANGLADESH                     0                         1        1     265  dead             
MAL-ED            BANGLADESH                     1                         0      140     265  dead             
MAL-ED            BANGLADESH                     1                         1        2     265  dead             
MAL-ED            INDIA                          0                         0       97     251  dead             
MAL-ED            INDIA                          0                         1        1     251  dead             
MAL-ED            INDIA                          1                         0      152     251  dead             
MAL-ED            INDIA                          1                         1        1     251  dead             
MAL-ED            PERU                           0                         0      230     303  dead             
MAL-ED            PERU                           0                         1        2     303  dead             
MAL-ED            PERU                           1                         0       71     303  dead             
MAL-ED            PERU                           1                         1        0     303  dead             
MAL-ED            SOUTH AFRICA                   0                         0      218     314  dead             
MAL-ED            SOUTH AFRICA                   0                         1        0     314  dead             
MAL-ED            SOUTH AFRICA                   1                         0       95     314  dead             
MAL-ED            SOUTH AFRICA                   1                         1        1     314  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      146     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        2     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0      113     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        1     262  dead             
PROVIDE           BANGLADESH                     0                         0      350     700  dead             
PROVIDE           BANGLADESH                     0                         1        3     700  dead             
PROVIDE           BANGLADESH                     1                         0      346     700  dead             
PROVIDE           BANGLADESH                     1                         1        1     700  dead             
SAS-CompFeed      INDIA                          0                         0      601    1533  dead             
SAS-CompFeed      INDIA                          0                         1       15    1533  dead             
SAS-CompFeed      INDIA                          1                         0      882    1533  dead             
SAS-CompFeed      INDIA                          1                         1       35    1533  dead             
SAS-FoodSuppl     INDIA                          0                         0       74     418  dead             
SAS-FoodSuppl     INDIA                          0                         1        2     418  dead             
SAS-FoodSuppl     INDIA                          1                         0      338     418  dead             
SAS-FoodSuppl     INDIA                          1                         1        4     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1856    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      539    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396  dead             
VITAMIN-A         INDIA                          0                         0     1355    3906  dead             
VITAMIN-A         INDIA                          0                         1        7    3906  dead             
VITAMIN-A         INDIA                          1                         0     2473    3906  dead             
VITAMIN-A         INDIA                          1                         1       71    3906  dead             
ZVITAMBO          ZIMBABWE                       0                         0    10043   14086  dead             
ZVITAMBO          ZIMBABWE                       0                         1      487   14086  dead             
ZVITAMBO          ZIMBABWE                       1                         0     2935   14086  dead             
ZVITAMBO          ZIMBABWE                       1                         1      621   14086  dead             


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
![](/tmp/144cbe41-0eac-4d33-83bd-c395485a991a/75a47efd-f310-4727-8ad2-66136ea5cb3e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/144cbe41-0eac-4d33-83bd-c395485a991a/75a47efd-f310-4727-8ad2-66136ea5cb3e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/144cbe41-0eac-4d33-83bd-c395485a991a/75a47efd-f310-4727-8ad2-66136ea5cb3e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/144cbe41-0eac-4d33-83bd-c395485a991a/75a47efd-f310-4727-8ad2-66136ea5cb3e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0038332   0.0020655   0.0056010
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0084500   0.0048317   0.0120683
iLiNS-DOSE        MALAWI         0                    NA                0.0519514   0.0392618   0.0646410
iLiNS-DOSE        MALAWI         1                    NA                0.0889034   0.0675197   0.1102871
iLiNS-DYAD-M      MALAWI         0                    NA                0.0203075   0.0105357   0.0300794
iLiNS-DYAD-M      MALAWI         1                    NA                0.0582891   0.0360623   0.0805158
JiVitA-3          BANGLADESH     0                    NA                0.0190629   0.0165002   0.0216257
JiVitA-3          BANGLADESH     1                    NA                0.0393611   0.0360133   0.0427089
JiVitA-4          BANGLADESH     0                    NA                0.0050983   0.0021901   0.0080065
JiVitA-4          BANGLADESH     1                    NA                0.0125222   0.0085068   0.0165377
Keneba            GAMBIA         0                    NA                0.0180162   0.0113205   0.0247119
Keneba            GAMBIA         1                    NA                0.0270918   0.0182267   0.0359568
SAS-CompFeed      INDIA          0                    NA                0.0244342   0.0152501   0.0336184
SAS-CompFeed      INDIA          1                    NA                0.0382055   0.0216161   0.0547949
VITAMIN-A         INDIA          0                    NA                0.0051395   0.0013415   0.0089375
VITAMIN-A         INDIA          1                    NA                0.0279088   0.0215075   0.0343101
ZVITAMBO          ZIMBABWE       0                    NA                0.0470148   0.0429542   0.0510753
ZVITAMBO          ZIMBABWE       1                    NA                0.1720664   0.1589905   0.1851423


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054431   0.0037394   0.0071469
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0331950   0.0230759   0.0433141
JiVitA-3          BANGLADESH     NA                   NA                0.0303008   0.0281489   0.0324527
JiVitA-4          BANGLADESH     NA                   NA                0.0090024   0.0064532   0.0115515
Keneba            GAMBIA         NA                   NA                0.0218505   0.0165551   0.0271458
SAS-CompFeed      INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A         INDIA          NA                   NA                0.0199693   0.0155816   0.0243570
ZVITAMBO          ZIMBABWE       NA                   NA                0.0786597   0.0742138   0.0831055


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.204406   1.1748663    4.136133
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.711280   1.2142675    2.411724
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 2.870318   1.5523750    5.307173
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-3          BANGLADESH     1                    0                 2.064798   1.7681226    2.411253
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-4          BANGLADESH     1                    0                 2.456156   1.2832528    4.701100
Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
Keneba            GAMBIA         1                    0                 1.503743   0.9163734    2.467599
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed      INDIA          1                    0                 1.563605   1.0399591    2.350922
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A         INDIA          1                    0                 5.430256   2.5048385   11.772289
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO          ZIMBABWE       1                    0                 3.659837   3.2641915    4.103438


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0016099    0.0002197   0.0030001
iLiNS-DOSE        MALAWI         0                    NA                0.0143355    0.0049448   0.0237261
iLiNS-DYAD-M      MALAWI         0                    NA                0.0128875    0.0044050   0.0213700
JiVitA-3          BANGLADESH     0                    NA                0.0112379    0.0088948   0.0135809
JiVitA-4          BANGLADESH     0                    NA                0.0039041    0.0013056   0.0065026
Keneba            GAMBIA         0                    NA                0.0038342   -0.0013109   0.0089794
SAS-CompFeed      INDIA          0                    NA                0.0081816   -0.0005207   0.0168838
VITAMIN-A         INDIA          0                    NA                0.0148298    0.0099700   0.0196895
ZVITAMBO          ZIMBABWE       0                    NA                0.0316449    0.0281901   0.0350997


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2957636    0.0123566   0.4978461
iLiNS-DOSE        MALAWI         0                    NA                0.2162641    0.0659803   0.3423671
iLiNS-DYAD-M      MALAWI         0                    NA                0.3882357    0.1134188   0.5778666
JiVitA-3          BANGLADESH     0                    NA                0.3708770    0.2941758   0.4392430
JiVitA-4          BANGLADESH     0                    NA                0.4336714    0.0881870   0.6482523
Keneba            GAMBIA         0                    NA                0.1754765   -0.0920891   0.3774876
SAS-CompFeed      INDIA          0                    NA                0.2508464   -0.0014144   0.4395615
VITAMIN-A         INDIA          0                    NA                0.7426296    0.4793676   0.8727711
ZVITAMBO          ZIMBABWE       0                    NA                0.4023013    0.3628872   0.4392771
