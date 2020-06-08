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

studyid           country                        ever_stunted024    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                          0     4565    7164  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                          1       25    7164  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                          0     2551    7164  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                          1       23    7164  dead0plus        
EE                PAKISTAN                       0                          0       41     379  dead0plus        
EE                PAKISTAN                       0                          1        0     379  dead0plus        
EE                PAKISTAN                       1                          0      334     379  dead0plus        
EE                PAKISTAN                       1                          1        4     379  dead0plus        
GMS-Nepal         NEPAL                          0                          0      249     698  dead0plus        
GMS-Nepal         NEPAL                          0                          1        3     698  dead0plus        
GMS-Nepal         NEPAL                          1                          0      441     698  dead0plus        
GMS-Nepal         NEPAL                          1                          1        5     698  dead0plus        
iLiNS-DOSE        MALAWI                         0                          0      902    1931  dead0plus        
iLiNS-DOSE        MALAWI                         0                          1       62    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                          0      901    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                          1       66    1931  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                          0      612    1204  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                          1       20    1204  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                          0      549    1204  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                          1       23    1204  dead0plus        
JiVitA-3          BANGLADESH                     0                          0    13473   27227  dead0plus        
JiVitA-3          BANGLADESH                     0                          1      268   27227  dead0plus        
JiVitA-3          BANGLADESH                     1                          0    12911   27227  dead0plus        
JiVitA-3          BANGLADESH                     1                          1      575   27227  dead0plus        
JiVitA-4          BANGLADESH                     0                          0     2264    5442  dead0plus        
JiVitA-4          BANGLADESH                     0                          1       15    5442  dead0plus        
JiVitA-4          BANGLADESH                     1                          0     3128    5442  dead0plus        
JiVitA-4          BANGLADESH                     1                          1       35    5442  dead0plus        
Keneba            GAMBIA                         0                          0     1384    2915  dead0plus        
Keneba            GAMBIA                         0                          1       37    2915  dead0plus        
Keneba            GAMBIA                         1                          0     1432    2915  dead0plus        
Keneba            GAMBIA                         1                          1       62    2915  dead0plus        
MAL-ED            BANGLADESH                     0                          0      103     265  dead0plus        
MAL-ED            BANGLADESH                     0                          1        0     265  dead0plus        
MAL-ED            BANGLADESH                     1                          0      159     265  dead0plus        
MAL-ED            BANGLADESH                     1                          1        3     265  dead0plus        
MAL-ED            INDIA                          0                          0       98     251  dead0plus        
MAL-ED            INDIA                          0                          1        1     251  dead0plus        
MAL-ED            INDIA                          1                          0      151     251  dead0plus        
MAL-ED            INDIA                          1                          1        1     251  dead0plus        
MAL-ED            PERU                           0                          0      114     303  dead0plus        
MAL-ED            PERU                           0                          1        1     303  dead0plus        
MAL-ED            PERU                           1                          0      187     303  dead0plus        
MAL-ED            PERU                           1                          1        1     303  dead0plus        
MAL-ED            SOUTH AFRICA                   0                          0      138     314  dead0plus        
MAL-ED            SOUTH AFRICA                   0                          1        0     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                          0      175     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                          1        1     314  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          0       39     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          1        1     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          0      220     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          1        2     262  dead0plus        
PROVIDE           BANGLADESH                     0                          0      391     700  dead0plus        
PROVIDE           BANGLADESH                     0                          1        4     700  dead0plus        
PROVIDE           BANGLADESH                     1                          0      304     700  dead0plus        
PROVIDE           BANGLADESH                     1                          1        1     700  dead0plus        
SAS-CompFeed      INDIA                          0                          0      461    1533  dead0plus        
SAS-CompFeed      INDIA                          0                          1       12    1533  dead0plus        
SAS-CompFeed      INDIA                          1                          0     1022    1533  dead0plus        
SAS-CompFeed      INDIA                          1                          1       38    1533  dead0plus        
SAS-FoodSuppl     INDIA                          0                          0       71     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                          1        1     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                          0      341     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                          1        5     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     1566    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      829    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                          0     1665    3907  dead0plus        
VITAMIN-A         INDIA                          0                          1       27    3907  dead0plus        
VITAMIN-A         INDIA                          1                          0     2165    3907  dead0plus        
VITAMIN-A         INDIA                          1                          1       50    3907  dead0plus        
ZVITAMBO          ZIMBABWE                       0                          0     7637   14074  dead0plus        
ZVITAMBO          ZIMBABWE                       0                          1      566   14074  dead0plus        
ZVITAMBO          ZIMBABWE                       1                          0     5321   14074  dead0plus        
ZVITAMBO          ZIMBABWE                       1                          1      550   14074  dead0plus        


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




# Results Detail

## Results Plots
![](/tmp/01a6e47c-8fca-4398-97e7-b139eb66ed90/160efa63-8c5d-4f3f-adae-34ff7a23c1c0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/01a6e47c-8fca-4398-97e7-b139eb66ed90/160efa63-8c5d-4f3f-adae-34ff7a23c1c0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/01a6e47c-8fca-4398-97e7-b139eb66ed90/160efa63-8c5d-4f3f-adae-34ff7a23c1c0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/01a6e47c-8fca-4398-97e7-b139eb66ed90/160efa63-8c5d-4f3f-adae-34ff7a23c1c0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0055284   0.0033680   0.0076887
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0087580   0.0051728   0.0123433
iLiNS-DOSE        MALAWI         0                    NA                0.0638020   0.0480287   0.0795753
iLiNS-DOSE        MALAWI         1                    NA                0.0648743   0.0495497   0.0801990
iLiNS-DYAD-M      MALAWI         0                    NA                0.0311474   0.0175265   0.0447684
iLiNS-DYAD-M      MALAWI         1                    NA                0.0409493   0.0248241   0.0570745
JiVitA-3          BANGLADESH     0                    NA                0.0211757   0.0184738   0.0238775
JiVitA-3          BANGLADESH     1                    NA                0.0411978   0.0374472   0.0449484
JiVitA-4          BANGLADESH     0                    NA                0.0066903   0.0027040   0.0106766
JiVitA-4          BANGLADESH     1                    NA                0.0110310   0.0075778   0.0144842
Keneba            GAMBIA         0                    NA                0.0278539   0.0184404   0.0372674
Keneba            GAMBIA         1                    NA                0.0409945   0.0307169   0.0512720
SAS-CompFeed      INDIA          0                    NA                0.0263168   0.0151077   0.0375260
SAS-CompFeed      INDIA          1                    NA                0.0356785   0.0179034   0.0534536
VITAMIN-A         INDIA          0                    NA                0.0159268   0.0099749   0.0218787
VITAMIN-A         INDIA          1                    NA                0.0225708   0.0163751   0.0287665
ZVITAMBO          ZIMBABWE       0                    NA                0.0701016   0.0643889   0.0758143
ZVITAMBO          ZIMBABWE       1                    NA                0.0920393   0.0841765   0.0999021


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067002   0.0048109   0.0085894
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0357143   0.0252276   0.0462010
JiVitA-3          BANGLADESH     NA                   NA                0.0309619   0.0288229   0.0331009
JiVitA-4          BANGLADESH     NA                   NA                0.0091878   0.0066008   0.0117748
Keneba            GAMBIA         NA                   NA                0.0339623   0.0273857   0.0405388
SAS-CompFeed      INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A         INDIA          NA                   NA                0.0197082   0.0153493   0.0240672
ZVITAMBO          ZIMBABWE       NA                   NA                0.0792952   0.0748310   0.0837593


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 1.584198   0.8995460   2.789946
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.016807   0.7224043   1.431189
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.314692   0.7302359   2.366927
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.945525   1.6642963   2.274274
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.648813   0.8370238   3.247918
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.471768   0.9661340   2.242029
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 1.355728   0.6707074   2.740387
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.417162   0.8913801   2.253077
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 1.312942   1.1674730   1.476536


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0011718   -0.0003592   0.0027028
iLiNS-DOSE        MALAWI         0                    NA                0.0024849   -0.0090862   0.0140561
iLiNS-DYAD-M      MALAWI         0                    NA                0.0045668   -0.0054435   0.0145772
JiVitA-3          BANGLADESH     0                    NA                0.0097862    0.0073986   0.0121738
JiVitA-4          BANGLADESH     0                    NA                0.0024975   -0.0006151   0.0056101
Keneba            GAMBIA         0                    NA                0.0061084   -0.0016526   0.0138694
SAS-CompFeed      INDIA          0                    NA                0.0062990   -0.0091207   0.0217186
VITAMIN-A         INDIA          0                    NA                0.0037814   -0.0010811   0.0086440
ZVITAMBO          ZIMBABWE       0                    NA                0.0091936    0.0050539   0.0133333


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1748894   -0.0813415   0.3704047
iLiNS-DOSE        MALAWI         0                    NA                0.0374872   -0.1537982   0.1970599
iLiNS-DYAD-M      MALAWI         0                    NA                0.1278716   -0.2000810   0.3662028
JiVitA-3          BANGLADESH     0                    NA                0.3160734    0.2381762   0.3860056
JiVitA-4          BANGLADESH     0                    NA                0.2718307   -0.1695458   0.5466355
Keneba            GAMBIA         0                    NA                0.1798578   -0.0804633   0.3774585
SAS-CompFeed      INDIA          0                    NA                0.1931258   -0.3683555   0.5242129
VITAMIN-A         INDIA          0                    NA                0.1918716   -0.0917822   0.4018299
ZVITAMBO          ZIMBABWE       0                    NA                0.1159413    0.0625612   0.1662819
