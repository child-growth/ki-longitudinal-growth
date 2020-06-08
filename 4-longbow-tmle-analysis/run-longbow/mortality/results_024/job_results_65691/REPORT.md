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

studyid           country                        ever_stunted024    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                     0     4568    7164  dead             
Burkina Faso Zn   BURKINA FASO                   0                     1       22    7164  dead             
Burkina Faso Zn   BURKINA FASO                   1                     0     2557    7164  dead             
Burkina Faso Zn   BURKINA FASO                   1                     1       17    7164  dead             
EE                PAKISTAN                       0                     0       41     379  dead             
EE                PAKISTAN                       0                     1        0     379  dead             
EE                PAKISTAN                       1                     0      334     379  dead             
EE                PAKISTAN                       1                     1        4     379  dead             
GMS-Nepal         NEPAL                          0                     0      249     698  dead             
GMS-Nepal         NEPAL                          0                     1        3     698  dead             
GMS-Nepal         NEPAL                          1                     0      441     698  dead             
GMS-Nepal         NEPAL                          1                     1        5     698  dead             
iLiNS-DOSE        MALAWI                         0                     0      902    1931  dead             
iLiNS-DOSE        MALAWI                         0                     1       62    1931  dead             
iLiNS-DOSE        MALAWI                         1                     0      901    1931  dead             
iLiNS-DOSE        MALAWI                         1                     1       66    1931  dead             
iLiNS-DYAD-M      MALAWI                         0                     0      613    1204  dead             
iLiNS-DYAD-M      MALAWI                         0                     1       19    1204  dead             
iLiNS-DYAD-M      MALAWI                         1                     0      552    1204  dead             
iLiNS-DYAD-M      MALAWI                         1                     1       20    1204  dead             
JiVitA-3          BANGLADESH                     0                     0    13488   27227  dead             
JiVitA-3          BANGLADESH                     0                     1      253   27227  dead             
JiVitA-3          BANGLADESH                     1                     0    12937   27227  dead             
JiVitA-3          BANGLADESH                     1                     1      549   27227  dead             
JiVitA-4          BANGLADESH                     0                     0     2264    5442  dead             
JiVitA-4          BANGLADESH                     0                     1       15    5442  dead             
JiVitA-4          BANGLADESH                     1                     0     3129    5442  dead             
JiVitA-4          BANGLADESH                     1                     1       34    5442  dead             
Keneba            GAMBIA                         0                     0     1393    2915  dead             
Keneba            GAMBIA                         0                     1       28    2915  dead             
Keneba            GAMBIA                         1                     0     1458    2915  dead             
Keneba            GAMBIA                         1                     1       36    2915  dead             
MAL-ED            BANGLADESH                     0                     0      103     265  dead             
MAL-ED            BANGLADESH                     0                     1        0     265  dead             
MAL-ED            BANGLADESH                     1                     0      159     265  dead             
MAL-ED            BANGLADESH                     1                     1        3     265  dead             
MAL-ED            INDIA                          0                     0       98     251  dead             
MAL-ED            INDIA                          0                     1        1     251  dead             
MAL-ED            INDIA                          1                     0      151     251  dead             
MAL-ED            INDIA                          1                     1        1     251  dead             
MAL-ED            PERU                           0                     0      114     303  dead             
MAL-ED            PERU                           0                     1        1     303  dead             
MAL-ED            PERU                           1                     0      187     303  dead             
MAL-ED            PERU                           1                     1        1     303  dead             
MAL-ED            SOUTH AFRICA                   0                     0      138     314  dead             
MAL-ED            SOUTH AFRICA                   0                     1        0     314  dead             
MAL-ED            SOUTH AFRICA                   1                     0      175     314  dead             
MAL-ED            SOUTH AFRICA                   1                     1        1     314  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     0       39     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     1        1     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     0      220     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     1        2     262  dead             
PROVIDE           BANGLADESH                     0                     0      391     700  dead             
PROVIDE           BANGLADESH                     0                     1        4     700  dead             
PROVIDE           BANGLADESH                     1                     0      305     700  dead             
PROVIDE           BANGLADESH                     1                     1        0     700  dead             
SAS-CompFeed      INDIA                          0                     0      461    1533  dead             
SAS-CompFeed      INDIA                          0                     1       12    1533  dead             
SAS-CompFeed      INDIA                          1                     0     1022    1533  dead             
SAS-CompFeed      INDIA                          1                     1       38    1533  dead             
SAS-FoodSuppl     INDIA                          0                     0       71     418  dead             
SAS-FoodSuppl     INDIA                          0                     1        1     418  dead             
SAS-FoodSuppl     INDIA                          1                     0      341     418  dead             
SAS-FoodSuppl     INDIA                          1                     1        5     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     1566    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      829    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396  dead             
VITAMIN-A         INDIA                          0                     0     1665    3907  dead             
VITAMIN-A         INDIA                          0                     1       27    3907  dead             
VITAMIN-A         INDIA                          1                     0     2165    3907  dead             
VITAMIN-A         INDIA                          1                     1       50    3907  dead             
ZVITAMBO          ZIMBABWE                       0                     0     7642   14074  dead             
ZVITAMBO          ZIMBABWE                       0                     1      561   14074  dead             
ZVITAMBO          ZIMBABWE                       1                     0     5326   14074  dead             
ZVITAMBO          ZIMBABWE                       1                     1      545   14074  dead             


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
![](/tmp/15104100-82dd-4247-8496-4c4f71c1b5b2/4943690b-0b44-4d91-a14c-c5732d89d397/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/15104100-82dd-4247-8496-4c4f71c1b5b2/4943690b-0b44-4d91-a14c-c5732d89d397/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/15104100-82dd-4247-8496-4c4f71c1b5b2/4943690b-0b44-4d91-a14c-c5732d89d397/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/15104100-82dd-4247-8496-4c4f71c1b5b2/4943690b-0b44-4d91-a14c-c5732d89d397/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0048799   0.0028498   0.0069101
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0064837   0.0034154   0.0095520
iLiNS-DOSE        MALAWI         0                    NA                0.0637023   0.0479876   0.0794171
iLiNS-DOSE        MALAWI         1                    NA                0.0644253   0.0491299   0.0797207
iLiNS-DYAD-M      MALAWI         0                    NA                0.0294664   0.0162446   0.0426882
iLiNS-DYAD-M      MALAWI         1                    NA                0.0356311   0.0203522   0.0509101
JiVitA-3          BANGLADESH     0                    NA                0.0200160   0.0173875   0.0226445
JiVitA-3          BANGLADESH     1                    NA                0.0395288   0.0358364   0.0432212
JiVitA-4          BANGLADESH     0                    NA                0.0066674   0.0026848   0.0106500
JiVitA-4          BANGLADESH     1                    NA                0.0107255   0.0073578   0.0140932
Keneba            GAMBIA         0                    NA                0.0220152   0.0133213   0.0307092
Keneba            GAMBIA         1                    NA                0.0234284   0.0155127   0.0313440
SAS-CompFeed      INDIA          0                    NA                0.0263053   0.0150981   0.0375126
SAS-CompFeed      INDIA          1                    NA                0.0356866   0.0179245   0.0534487
VITAMIN-A         INDIA          0                    NA                0.0158411   0.0098904   0.0217918
VITAMIN-A         INDIA          1                    NA                0.0225802   0.0163768   0.0287836
ZVITAMBO          ZIMBABWE       0                    NA                0.0696060   0.0639027   0.0753093
ZVITAMBO          ZIMBABWE       1                    NA                0.0914036   0.0833903   0.0994170


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054439   0.0037399   0.0071479
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0323920   0.0223878   0.0423963
JiVitA-3          BANGLADESH     NA                   NA                0.0294561   0.0273691   0.0315430
JiVitA-4          BANGLADESH     NA                   NA                0.0090040   0.0064549   0.0115532
Keneba            GAMBIA         NA                   NA                0.0219554   0.0166349   0.0272759
SAS-CompFeed      INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A         INDIA          NA                   NA                0.0197082   0.0153493   0.0240672
ZVITAMBO          ZIMBABWE       NA                   NA                0.0785846   0.0741388   0.0830304


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 1.328639   0.7075148   2.495046
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.011349   0.7181290   1.424294
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.209213   0.6500491   2.249364
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.974861   1.6815527   2.319331
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.608645   0.8153950   3.173603
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.064189   0.6327890   1.789693
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 1.356630   0.6723160   2.737469
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.425420   0.8950512   2.270062
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 1.313158   1.1654978   1.479525


### Parameter: PAR


studyid           country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                 0.0005639   -0.0007878   0.0019157
iLiNS-DOSE        MALAWI         0                    NA                 0.0025846   -0.0089572   0.0141263
iLiNS-DYAD-M      MALAWI         0                    NA                 0.0029256   -0.0065690   0.0124203
JiVitA-3          BANGLADESH     0                    NA                 0.0094401    0.0071207   0.0117595
JiVitA-4          BANGLADESH     0                    NA                 0.0023366   -0.0007381   0.0054114
Keneba            GAMBIA         0                    NA                -0.0000598   -0.0069499   0.0068302
SAS-CompFeed      INDIA          0                    NA                 0.0063104   -0.0090687   0.0216896
VITAMIN-A         INDIA          0                    NA                 0.0038671   -0.0009947   0.0087289
ZVITAMBO          ZIMBABWE       0                    NA                 0.0089786    0.0048454   0.0131118


### Parameter: PAF


studyid           country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                 0.1035924   -0.1796344   0.3188173
iLiNS-DOSE        MALAWI         0                    NA                 0.0389910   -0.1517561   0.1981476
iLiNS-DYAD-M      MALAWI         0                    NA                 0.0903199   -0.2542341   0.3402205
JiVitA-3          BANGLADESH     0                    NA                 0.3204797    0.2408362   0.3917678
JiVitA-4          BANGLADESH     0                    NA                 0.2595094   -0.1861471   0.5377248
Keneba            GAMBIA         0                    NA                -0.0027249   -0.3712053   0.2667348
SAS-CompFeed      INDIA          0                    NA                 0.1934784   -0.3660402   0.5238228
VITAMIN-A         INDIA          0                    NA                 0.1962180   -0.0876220   0.4059834
ZVITAMBO          ZIMBABWE       0                    NA                 0.1142544    0.0604523   0.1649756
