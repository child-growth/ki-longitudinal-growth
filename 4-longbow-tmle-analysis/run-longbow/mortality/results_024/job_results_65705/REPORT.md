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

studyid           country                        ever_underweight024    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                            0     4727    7163  dead624          
Burkina Faso Zn   BURKINA FASO                   0                            1       18    7163  dead624          
Burkina Faso Zn   BURKINA FASO                   1                            0     2397    7163  dead624          
Burkina Faso Zn   BURKINA FASO                   1                            1       21    7163  dead624          
EE                PAKISTAN                       0                            0       52     375  dead624          
EE                PAKISTAN                       0                            1        0     375  dead624          
EE                PAKISTAN                       1                            0      319     375  dead624          
EE                PAKISTAN                       1                            1        4     375  dead624          
GMS-Nepal         NEPAL                          0                            0      151     592  dead624          
GMS-Nepal         NEPAL                          0                            1        1     592  dead624          
GMS-Nepal         NEPAL                          1                            0      439     592  dead624          
GMS-Nepal         NEPAL                          1                            1        1     592  dead624          
iLiNS-DOSE        MALAWI                         0                            0     1115    1874  dead624          
iLiNS-DOSE        MALAWI                         0                            1       63    1874  dead624          
iLiNS-DOSE        MALAWI                         1                            0      632    1874  dead624          
iLiNS-DOSE        MALAWI                         1                            1       64    1874  dead624          
iLiNS-DYAD-M      MALAWI                         0                            0      755    1161  dead624          
iLiNS-DYAD-M      MALAWI                         0                            1       12    1161  dead624          
iLiNS-DYAD-M      MALAWI                         1                            0      382    1161  dead624          
iLiNS-DYAD-M      MALAWI                         1                            1       12    1161  dead624          
JiVitA-3          BANGLADESH                     0                            0     9924   21046  dead624          
JiVitA-3          BANGLADESH                     0                            1       99   21046  dead624          
JiVitA-3          BANGLADESH                     1                            0    10851   21046  dead624          
JiVitA-3          BANGLADESH                     1                            1      172   21046  dead624          
JiVitA-4          BANGLADESH                     0                            0     2562    5433  dead624          
JiVitA-4          BANGLADESH                     0                            1       13    5433  dead624          
JiVitA-4          BANGLADESH                     1                            0     2822    5433  dead624          
JiVitA-4          BANGLADESH                     1                            1       36    5433  dead624          
Keneba            GAMBIA                         0                            0     1486    2761  dead624          
Keneba            GAMBIA                         0                            1       20    2761  dead624          
Keneba            GAMBIA                         1                            0     1231    2761  dead624          
Keneba            GAMBIA                         1                            1       24    2761  dead624          
MAL-ED            BANGLADESH                     0                            0      109     240  dead624          
MAL-ED            BANGLADESH                     0                            1        0     240  dead624          
MAL-ED            BANGLADESH                     1                            0      131     240  dead624          
MAL-ED            BANGLADESH                     1                            1        0     240  dead624          
MAL-ED            INDIA                          0                            0       87     235  dead624          
MAL-ED            INDIA                          0                            1        0     235  dead624          
MAL-ED            INDIA                          1                            0      148     235  dead624          
MAL-ED            INDIA                          1                            1        0     235  dead624          
MAL-ED            PERU                           0                            0      204     273  dead624          
MAL-ED            PERU                           0                            1        1     273  dead624          
MAL-ED            PERU                           1                            0       68     273  dead624          
MAL-ED            PERU                           1                            1        0     273  dead624          
MAL-ED            SOUTH AFRICA                   0                            0      176     261  dead624          
MAL-ED            SOUTH AFRICA                   0                            1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                            0       85     261  dead624          
MAL-ED            SOUTH AFRICA                   1                            1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                            0      135     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                            1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                            0      110     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                            1        0     245  dead624          
PROVIDE           BANGLADESH                     0                            0      294     617  dead624          
PROVIDE           BANGLADESH                     0                            1        1     617  dead624          
PROVIDE           BANGLADESH                     1                            0      321     617  dead624          
PROVIDE           BANGLADESH                     1                            1        1     617  dead624          
SAS-CompFeed      INDIA                          0                            0      539    1389  dead624          
SAS-CompFeed      INDIA                          0                            1        0    1389  dead624          
SAS-CompFeed      INDIA                          1                            0      838    1389  dead624          
SAS-CompFeed      INDIA                          1                            1       12    1389  dead624          
SAS-FoodSuppl     INDIA                          0                            0       67     402  dead624          
SAS-FoodSuppl     INDIA                          0                            1        1     402  dead624          
SAS-FoodSuppl     INDIA                          1                            0      331     402  dead624          
SAS-FoodSuppl     INDIA                          1                            1        3     402  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            0     1589    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            0      507    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            1        0    2096  dead624          
VITAMIN-A         INDIA                          0                            0     1242    3615  dead624          
VITAMIN-A         INDIA                          0                            1        4    3615  dead624          
VITAMIN-A         INDIA                          1                            0     2341    3615  dead624          
VITAMIN-A         INDIA                          1                            1       28    3615  dead624          
ZVITAMBO          ZIMBABWE                       0                            0     8569   11708  dead624          
ZVITAMBO          ZIMBABWE                       0                            1      132   11708  dead624          
ZVITAMBO          ZIMBABWE                       1                            0     2733   11708  dead624          
ZVITAMBO          ZIMBABWE                       1                            1      274   11708  dead624          


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
* studyid: VITAMIN-A, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/4b31e7a5-e100-455b-80bb-d2e7bde81337/5a7d9e8f-91bd-4b36-8b1a-b65a44aaa4a9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4b31e7a5-e100-455b-80bb-d2e7bde81337/5a7d9e8f-91bd-4b36-8b1a-b65a44aaa4a9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4b31e7a5-e100-455b-80bb-d2e7bde81337/5a7d9e8f-91bd-4b36-8b1a-b65a44aaa4a9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4b31e7a5-e100-455b-80bb-d2e7bde81337/5a7d9e8f-91bd-4b36-8b1a-b65a44aaa4a9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0038335   0.0020655   0.0056014
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0084564   0.0048368   0.0120759
iLiNS-DOSE        MALAWI         0                    NA                0.0545270   0.0411780   0.0678760
iLiNS-DOSE        MALAWI         1                    NA                0.0890335   0.0675470   0.1105201
iLiNS-DYAD-M      MALAWI         0                    NA                0.0158173   0.0069592   0.0246753
iLiNS-DYAD-M      MALAWI         1                    NA                0.0300180   0.0130569   0.0469790
JiVitA-3          BANGLADESH     0                    NA                0.0103801   0.0082564   0.0125039
JiVitA-3          BANGLADESH     1                    NA                0.0146699   0.0123738   0.0169659
JiVitA-4          BANGLADESH     0                    NA                0.0050974   0.0021855   0.0080093
JiVitA-4          BANGLADESH     1                    NA                0.0125418   0.0085352   0.0165484
Keneba            GAMBIA         0                    NA                0.0134906   0.0076441   0.0193371
Keneba            GAMBIA         1                    NA                0.0191795   0.0115943   0.0267647
ZVITAMBO          ZIMBABWE       0                    NA                0.0154343   0.0128250   0.0180437
ZVITAMBO          ZIMBABWE       1                    NA                0.0887118   0.0779362   0.0994874


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054446   0.0037404   0.0071489
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0206718   0.0124839   0.0288597
JiVitA-3          BANGLADESH     NA                   NA                0.0128766   0.0113280   0.0144251
JiVitA-4          BANGLADESH     NA                   NA                0.0090190   0.0064698   0.0115681
Keneba            GAMBIA         NA                   NA                0.0159363   0.0112643   0.0206082
ZVITAMBO          ZIMBABWE       NA                   NA                0.0346771   0.0313629   0.0379914


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.205930   1.1758394   4.138429
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.632835   1.1575137   2.303342
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.897798   0.8564172   4.205471
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.413264   1.0949659   1.824089
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 2.460432   1.2849080   4.711408
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.421693   0.7906132   2.556509
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 5.747690   4.6684603   7.076410


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0016112    0.0002208   0.0030016
iLiNS-DOSE        MALAWI         0                    NA                0.0132425    0.0034376   0.0230474
iLiNS-DYAD-M      MALAWI         0                    NA                0.0048546   -0.0016793   0.0113884
JiVitA-3          BANGLADESH     0                    NA                0.0024964    0.0006854   0.0043074
JiVitA-4          BANGLADESH     0                    NA                0.0039216    0.0013193   0.0065238
Keneba            GAMBIA         0                    NA                0.0024457   -0.0019313   0.0068226
ZVITAMBO          ZIMBABWE       0                    NA                0.0192428    0.0164394   0.0220462


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2959193    0.0125694   0.4979600
iLiNS-DOSE        MALAWI         0                    NA                0.1954053    0.0408448   0.3250596
iLiNS-DYAD-M      MALAWI         0                    NA                0.2348404   -0.1358500   0.4845541
JiVitA-3          BANGLADESH     0                    NA                0.1938736    0.0437231   0.3204481
JiVitA-4          BANGLADESH     0                    NA                0.4348140    0.0891609   0.6492956
Keneba            GAMBIA         0                    NA                0.1534648   -0.1656992   0.3852429
ZVITAMBO          ZIMBABWE       0                    NA                0.5549131    0.4888430   0.6124432
