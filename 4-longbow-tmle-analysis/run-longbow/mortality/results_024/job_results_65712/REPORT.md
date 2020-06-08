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

studyid           country                        ever_sstunted024    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  -----------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                           0     6264    7164  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                           1       37    7164  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                           0      852    7164  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                           1       11    7164  dead0plus        
EE                PAKISTAN                       0                           0      151     379  dead0plus        
EE                PAKISTAN                       0                           1        0     379  dead0plus        
EE                PAKISTAN                       1                           0      224     379  dead0plus        
EE                PAKISTAN                       1                           1        4     379  dead0plus        
GMS-Nepal         NEPAL                          0                           0      525     698  dead0plus        
GMS-Nepal         NEPAL                          0                           1        4     698  dead0plus        
GMS-Nepal         NEPAL                          1                           0      165     698  dead0plus        
GMS-Nepal         NEPAL                          1                           1        4     698  dead0plus        
iLiNS-DOSE        MALAWI                         0                           0     1487    1931  dead0plus        
iLiNS-DOSE        MALAWI                         0                           1      102    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                           0      316    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                           1       26    1931  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                           0      973    1204  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                           1       34    1204  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                           0      188    1204  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                           1        9    1204  dead0plus        
JiVitA-3          BANGLADESH                     0                           0    21747   27227  dead0plus        
JiVitA-3          BANGLADESH                     0                           1      458   27227  dead0plus        
JiVitA-3          BANGLADESH                     1                           0     4637   27227  dead0plus        
JiVitA-3          BANGLADESH                     1                           1      385   27227  dead0plus        
JiVitA-4          BANGLADESH                     0                           0     4305    5442  dead0plus        
JiVitA-4          BANGLADESH                     0                           1       31    5442  dead0plus        
JiVitA-4          BANGLADESH                     1                           0     1087    5442  dead0plus        
JiVitA-4          BANGLADESH                     1                           1       19    5442  dead0plus        
Keneba            GAMBIA                         0                           0     2233    2915  dead0plus        
Keneba            GAMBIA                         0                           1       63    2915  dead0plus        
Keneba            GAMBIA                         1                           0      583    2915  dead0plus        
Keneba            GAMBIA                         1                           1       36    2915  dead0plus        
MAL-ED            BANGLADESH                     0                           0      205     265  dead0plus        
MAL-ED            BANGLADESH                     0                           1        2     265  dead0plus        
MAL-ED            BANGLADESH                     1                           0       57     265  dead0plus        
MAL-ED            BANGLADESH                     1                           1        1     265  dead0plus        
MAL-ED            INDIA                          0                           0      190     251  dead0plus        
MAL-ED            INDIA                          0                           1        2     251  dead0plus        
MAL-ED            INDIA                          1                           0       59     251  dead0plus        
MAL-ED            INDIA                          1                           1        0     251  dead0plus        
MAL-ED            PERU                           0                           0      237     303  dead0plus        
MAL-ED            PERU                           0                           1        2     303  dead0plus        
MAL-ED            PERU                           1                           0       64     303  dead0plus        
MAL-ED            PERU                           1                           1        0     303  dead0plus        
MAL-ED            SOUTH AFRICA                   0                           0      241     314  dead0plus        
MAL-ED            SOUTH AFRICA                   0                           1        0     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                           0       72     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                           1        1     314  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                           0      123     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                           1        2     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                           0      136     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                           1        1     262  dead0plus        
PROVIDE           BANGLADESH                     0                           0      601     700  dead0plus        
PROVIDE           BANGLADESH                     0                           1        4     700  dead0plus        
PROVIDE           BANGLADESH                     1                           0       94     700  dead0plus        
PROVIDE           BANGLADESH                     1                           1        1     700  dead0plus        
SAS-CompFeed      INDIA                          0                           0      999    1533  dead0plus        
SAS-CompFeed      INDIA                          0                           1       27    1533  dead0plus        
SAS-CompFeed      INDIA                          1                           0      484    1533  dead0plus        
SAS-CompFeed      INDIA                          1                           1       23    1533  dead0plus        
SAS-FoodSuppl     INDIA                          0                           0      215     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                           1        2     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                           0      197     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                           1        4     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           0     2156    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           0      239    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                           0     2897    3907  dead0plus        
VITAMIN-A         INDIA                          0                           1       49    3907  dead0plus        
VITAMIN-A         INDIA                          1                           0      933    3907  dead0plus        
VITAMIN-A         INDIA                          1                           1       28    3907  dead0plus        
ZVITAMBO          ZIMBABWE                       0                           0    10885   14074  dead0plus        
ZVITAMBO          ZIMBABWE                       0                           1      823   14074  dead0plus        
ZVITAMBO          ZIMBABWE                       1                           0     2073   14074  dead0plus        
ZVITAMBO          ZIMBABWE                       1                           1      293   14074  dead0plus        


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/9634dcff-ada9-4efd-8142-b7c99e221525/8c623499-1a75-4a85-ac9e-f988cc8ef978/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9634dcff-ada9-4efd-8142-b7c99e221525/8c623499-1a75-4a85-ac9e-f988cc8ef978/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9634dcff-ada9-4efd-8142-b7c99e221525/8c623499-1a75-4a85-ac9e-f988cc8ef978/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9634dcff-ada9-4efd-8142-b7c99e221525/8c623499-1a75-4a85-ac9e-f988cc8ef978/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0059155   0.0040167   0.0078143
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0118595   0.0047507   0.0189683
iLiNS-DOSE        MALAWI         0                    NA                0.0645160   0.0523612   0.0766708
iLiNS-DOSE        MALAWI         1                    NA                0.0736724   0.0451409   0.1022039
iLiNS-DYAD-M      MALAWI         0                    NA                0.0337637   0.0226032   0.0449241
iLiNS-DYAD-M      MALAWI         1                    NA                0.0456853   0.0165158   0.0748548
JiVitA-3          BANGLADESH     0                    NA                0.0211050   0.0191655   0.0230446
JiVitA-3          BANGLADESH     1                    NA                0.0758566   0.0664385   0.0852747
JiVitA-4          BANGLADESH     0                    NA                0.0071766   0.0045742   0.0097789
JiVitA-4          BANGLADESH     1                    NA                0.0173960   0.0098232   0.0249689
Keneba            GAMBIA         0                    NA                0.0275576   0.0208501   0.0342652
Keneba            GAMBIA         1                    NA                0.0595902   0.0403548   0.0788255
SAS-CompFeed      INDIA          0                    NA                0.0267521   0.0148319   0.0386723
SAS-CompFeed      INDIA          1                    NA                0.0443143   0.0264268   0.0622018
VITAMIN-A         INDIA          0                    NA                0.0165227   0.0119259   0.0211196
VITAMIN-A         INDIA          1                    NA                0.0294798   0.0187523   0.0402074
ZVITAMBO          ZIMBABWE       0                    NA                0.0711075   0.0664171   0.0757979
ZVITAMBO          ZIMBABWE       1                    NA                0.1210196   0.1068751   0.1351642


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
Burkina Faso Zn   BURKINA FASO   1                    0                 2.004811   1.0158483   3.956562
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.141924   0.7423313   1.756616
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.353090   0.6592941   2.776991
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 3.594239   3.0780563   4.196984
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 2.423994   1.3771266   4.266673
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 2.162383   1.4432393   3.239865
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 1.656479   1.1928149   2.300375
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.784199   1.1285676   2.820714
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 1.701925   1.4890133   1.945280


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0007847   -0.0001494   0.0017187
iLiNS-DOSE        MALAWI         0                    NA                0.0017709   -0.0037711   0.0073130
iLiNS-DYAD-M      MALAWI         0                    NA                0.0019506   -0.0031656   0.0070669
JiVitA-3          BANGLADESH     0                    NA                0.0098569    0.0082852   0.0114286
JiVitA-4          BANGLADESH     0                    NA                0.0020112    0.0003879   0.0036345
Keneba            GAMBIA         0                    NA                0.0064046    0.0021904   0.0106188
SAS-CompFeed      INDIA          0                    NA                0.0058637    0.0017288   0.0099986
VITAMIN-A         INDIA          0                    NA                0.0031855    0.0003356   0.0060354
ZVITAMBO          ZIMBABWE       0                    NA                0.0081876    0.0057528   0.0106225


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1171095   -0.0292744   0.2426747
iLiNS-DOSE        MALAWI         0                    NA                0.0267159   -0.0604732   0.1067365
iLiNS-DYAD-M      MALAWI         0                    NA                0.0546177   -0.0990865   0.1868267
JiVitA-3          BANGLADESH     0                    NA                0.3183546    0.2724925   0.3613254
JiVitA-4          BANGLADESH     0                    NA                0.2189000    0.0308629   0.3704532
Keneba            GAMBIA         0                    NA                0.1885807    0.0606531   0.2990861
SAS-CompFeed      INDIA          0                    NA                0.1797802    0.0392048   0.2997878
VITAMIN-A         INDIA          0                    NA                0.1616326    0.0088622   0.2908555
ZVITAMBO          ZIMBABWE       0                    NA                0.1032552    0.0725194   0.1329724
