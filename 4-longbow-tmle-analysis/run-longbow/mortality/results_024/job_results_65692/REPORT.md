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

studyid           country                        ever_sstunted024    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  -----------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                      0     6268    7164  dead             
Burkina Faso Zn   BURKINA FASO                   0                      1       33    7164  dead             
Burkina Faso Zn   BURKINA FASO                   1                      0      857    7164  dead             
Burkina Faso Zn   BURKINA FASO                   1                      1        6    7164  dead             
EE                PAKISTAN                       0                      0      151     379  dead             
EE                PAKISTAN                       0                      1        0     379  dead             
EE                PAKISTAN                       1                      0      224     379  dead             
EE                PAKISTAN                       1                      1        4     379  dead             
GMS-Nepal         NEPAL                          0                      0      525     698  dead             
GMS-Nepal         NEPAL                          0                      1        4     698  dead             
GMS-Nepal         NEPAL                          1                      0      165     698  dead             
GMS-Nepal         NEPAL                          1                      1        4     698  dead             
iLiNS-DOSE        MALAWI                         0                      0     1487    1931  dead             
iLiNS-DOSE        MALAWI                         0                      1      102    1931  dead             
iLiNS-DOSE        MALAWI                         1                      0      316    1931  dead             
iLiNS-DOSE        MALAWI                         1                      1       26    1931  dead             
iLiNS-DYAD-M      MALAWI                         0                      0      976    1204  dead             
iLiNS-DYAD-M      MALAWI                         0                      1       31    1204  dead             
iLiNS-DYAD-M      MALAWI                         1                      0      189    1204  dead             
iLiNS-DYAD-M      MALAWI                         1                      1        8    1204  dead             
JiVitA-3          BANGLADESH                     0                      0    21774   27227  dead             
JiVitA-3          BANGLADESH                     0                      1      431   27227  dead             
JiVitA-3          BANGLADESH                     1                      0     4651   27227  dead             
JiVitA-3          BANGLADESH                     1                      1      371   27227  dead             
JiVitA-4          BANGLADESH                     0                      0     4305    5442  dead             
JiVitA-4          BANGLADESH                     0                      1       31    5442  dead             
JiVitA-4          BANGLADESH                     1                      0     1088    5442  dead             
JiVitA-4          BANGLADESH                     1                      1       18    5442  dead             
Keneba            GAMBIA                         0                      0     2254    2915  dead             
Keneba            GAMBIA                         0                      1       42    2915  dead             
Keneba            GAMBIA                         1                      0      597    2915  dead             
Keneba            GAMBIA                         1                      1       22    2915  dead             
MAL-ED            BANGLADESH                     0                      0      205     265  dead             
MAL-ED            BANGLADESH                     0                      1        2     265  dead             
MAL-ED            BANGLADESH                     1                      0       57     265  dead             
MAL-ED            BANGLADESH                     1                      1        1     265  dead             
MAL-ED            INDIA                          0                      0      190     251  dead             
MAL-ED            INDIA                          0                      1        2     251  dead             
MAL-ED            INDIA                          1                      0       59     251  dead             
MAL-ED            INDIA                          1                      1        0     251  dead             
MAL-ED            PERU                           0                      0      237     303  dead             
MAL-ED            PERU                           0                      1        2     303  dead             
MAL-ED            PERU                           1                      0       64     303  dead             
MAL-ED            PERU                           1                      1        0     303  dead             
MAL-ED            SOUTH AFRICA                   0                      0      241     314  dead             
MAL-ED            SOUTH AFRICA                   0                      1        0     314  dead             
MAL-ED            SOUTH AFRICA                   1                      0       72     314  dead             
MAL-ED            SOUTH AFRICA                   1                      1        1     314  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                      0      123     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                      1        2     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                      0      136     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                      1        1     262  dead             
PROVIDE           BANGLADESH                     0                      0      601     700  dead             
PROVIDE           BANGLADESH                     0                      1        4     700  dead             
PROVIDE           BANGLADESH                     1                      0       95     700  dead             
PROVIDE           BANGLADESH                     1                      1        0     700  dead             
SAS-CompFeed      INDIA                          0                      0      999    1533  dead             
SAS-CompFeed      INDIA                          0                      1       27    1533  dead             
SAS-CompFeed      INDIA                          1                      0      484    1533  dead             
SAS-CompFeed      INDIA                          1                      1       23    1533  dead             
SAS-FoodSuppl     INDIA                          0                      0      215     418  dead             
SAS-FoodSuppl     INDIA                          0                      1        2     418  dead             
SAS-FoodSuppl     INDIA                          1                      0      197     418  dead             
SAS-FoodSuppl     INDIA                          1                      1        4     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      0     2156    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      0      239    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      1        0    2396  dead             
VITAMIN-A         INDIA                          0                      0     2897    3907  dead             
VITAMIN-A         INDIA                          0                      1       49    3907  dead             
VITAMIN-A         INDIA                          1                      0      933    3907  dead             
VITAMIN-A         INDIA                          1                      1       28    3907  dead             
ZVITAMBO          ZIMBABWE                       0                      0    10893   14074  dead             
ZVITAMBO          ZIMBABWE                       0                      1      815   14074  dead             
ZVITAMBO          ZIMBABWE                       1                      0     2075   14074  dead             
ZVITAMBO          ZIMBABWE                       1                      1      291   14074  dead             


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
![](/tmp/a7ac91f5-ffe4-4a6f-a460-19fd7ff1edf9/72c35119-487e-4174-98c0-4d4f5471890c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a7ac91f5-ffe4-4a6f-a460-19fd7ff1edf9/72c35119-487e-4174-98c0-4d4f5471890c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a7ac91f5-ffe4-4a6f-a460-19fd7ff1edf9/72c35119-487e-4174-98c0-4d4f5471890c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a7ac91f5-ffe4-4a6f-a460-19fd7ff1edf9/72c35119-487e-4174-98c0-4d4f5471890c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052373   0.0034549   0.0070196
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0069525   0.0014084   0.0124966
iLiNS-DOSE        MALAWI         0                    NA                0.0646013   0.0524203   0.0767822
iLiNS-DOSE        MALAWI         1                    NA                0.0730628   0.0446326   0.1014930
iLiNS-DYAD-M      MALAWI         0                    NA                0.0307845   0.0201114   0.0414576
iLiNS-DYAD-M      MALAWI         1                    NA                0.0406091   0.0130348   0.0681835
JiVitA-3          BANGLADESH     0                    NA                0.0198347   0.0179323   0.0217372
JiVitA-3          BANGLADESH     1                    NA                0.0754904   0.0659487   0.0850320
JiVitA-4          BANGLADESH     0                    NA                0.0071769   0.0045761   0.0097776
JiVitA-4          BANGLADESH     1                    NA                0.0163581   0.0091302   0.0235860
Keneba            GAMBIA         0                    NA                0.0183921   0.0128764   0.0239078
Keneba            GAMBIA         1                    NA                0.0361881   0.0212292   0.0511470
SAS-CompFeed      INDIA          0                    NA                0.0267886   0.0146191   0.0389581
SAS-CompFeed      INDIA          1                    NA                0.0448149   0.0273034   0.0623263
VITAMIN-A         INDIA          0                    NA                0.0165218   0.0119214   0.0211221
VITAMIN-A         INDIA          1                    NA                0.0294733   0.0186170   0.0403297
ZVITAMBO          ZIMBABWE       0                    NA                0.0704926   0.0658203   0.0751648
ZVITAMBO          ZIMBABWE       1                    NA                0.1196981   0.1051605   0.1342357


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
Burkina Faso Zn   BURKINA FASO   1                    0                 1.327505   0.5578291   3.159154
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.130981   0.7339361   1.742819
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.319142   0.6154336   2.827495
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 3.805966   3.2417087   4.468439
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 2.279282   1.2898172   4.027799
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.967587   1.1806730   3.278976
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 1.672907   1.1874471   2.356835
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.783909   1.1242631   2.830592
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 1.698025   1.4792082   1.949210


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0002066   -0.0004950   0.0009083
iLiNS-DOSE        MALAWI         0                    NA                0.0016856   -0.0038756   0.0072469
iLiNS-DYAD-M      MALAWI         0                    NA                0.0016075   -0.0032348   0.0064498
JiVitA-3          BANGLADESH     0                    NA                0.0096213    0.0080882   0.0111544
JiVitA-4          BANGLADESH     0                    NA                0.0018272    0.0002731   0.0033812
Keneba            GAMBIA         0                    NA                0.0035633    0.0002229   0.0069037
SAS-CompFeed      INDIA          0                    NA                0.0058272    0.0017205   0.0099338
VITAMIN-A         INDIA          0                    NA                0.0031865    0.0003321   0.0060409
ZVITAMBO          ZIMBABWE       0                    NA                0.0080921    0.0056663   0.0105179


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0379549   -0.0993426   0.1581052
iLiNS-DOSE        MALAWI         0                    NA                0.0254294   -0.0620858   0.1057334
iLiNS-DYAD-M      MALAWI         0                    NA                0.0496270   -0.1113989   0.1873225
JiVitA-3          BANGLADESH     0                    NA                0.3266327    0.2794156   0.3707558
JiVitA-4          BANGLADESH     0                    NA                0.2029285    0.0178075   0.3531585
Keneba            GAMBIA         0                    NA                0.1622965    0.0014435   0.2972383
SAS-CompFeed      INDIA          0                    NA                0.1786605    0.0345405   0.3012668
VITAMIN-A         INDIA          0                    NA                0.1616819    0.0086224   0.2911104
ZVITAMBO          ZIMBABWE       0                    NA                0.1029727    0.0720693   0.1328469
