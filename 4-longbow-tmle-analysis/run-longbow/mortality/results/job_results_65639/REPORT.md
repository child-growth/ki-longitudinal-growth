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

**Intervention Variable:** ever_stunted06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* impfloor
* hhwealth_quart
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* delta_vagbrth
* delta_impfloor
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_stunted06    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                    0      297     338  dead             
Burkina Faso Zn   BURKINA FASO                   0                    1        2     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                    0       39     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                    1        0     338  dead             
EE                PAKISTAN                       0                    0       93     379  dead             
EE                PAKISTAN                       0                    1        0     379  dead             
EE                PAKISTAN                       1                    0      282     379  dead             
EE                PAKISTAN                       1                    1        4     379  dead             
GMS-Nepal         NEPAL                          0                    0      473     698  dead             
GMS-Nepal         NEPAL                          0                    1        3     698  dead             
GMS-Nepal         NEPAL                          1                    0      217     698  dead             
GMS-Nepal         NEPAL                          1                    1        5     698  dead             
iLiNS-DOSE        MALAWI                         0                    0     1194    1813  dead             
iLiNS-DOSE        MALAWI                         0                    1       73    1813  dead             
iLiNS-DOSE        MALAWI                         1                    0      505    1813  dead             
iLiNS-DOSE        MALAWI                         1                    1       41    1813  dead             
iLiNS-DYAD-M      MALAWI                         0                    0      835    1191  dead             
iLiNS-DYAD-M      MALAWI                         0                    1       23    1191  dead             
iLiNS-DYAD-M      MALAWI                         1                    0      317    1191  dead             
iLiNS-DYAD-M      MALAWI                         1                    1       16    1191  dead             
JiVitA-3          BANGLADESH                     0                    0    15085   27197  dead             
JiVitA-3          BANGLADESH                     0                    1      262   27197  dead             
JiVitA-3          BANGLADESH                     1                    0    11311   27197  dead             
JiVitA-3          BANGLADESH                     1                    1      539   27197  dead             
JiVitA-4          BANGLADESH                     0                    0     3217    5270  dead             
JiVitA-4          BANGLADESH                     0                    1       20    5270  dead             
JiVitA-4          BANGLADESH                     1                    0     2006    5270  dead             
JiVitA-4          BANGLADESH                     1                    1       27    5270  dead             
Keneba            GAMBIA                         0                    0     1669    2479  dead             
Keneba            GAMBIA                         0                    1       25    2479  dead             
Keneba            GAMBIA                         1                    0      751    2479  dead             
Keneba            GAMBIA                         1                    1       34    2479  dead             
MAL-ED            BANGLADESH                     0                    0      167     265  dead             
MAL-ED            BANGLADESH                     0                    1        0     265  dead             
MAL-ED            BANGLADESH                     1                    0       95     265  dead             
MAL-ED            BANGLADESH                     1                    1        3     265  dead             
MAL-ED            INDIA                          0                    0      158     251  dead             
MAL-ED            INDIA                          0                    1        1     251  dead             
MAL-ED            INDIA                          1                    0       91     251  dead             
MAL-ED            INDIA                          1                    1        1     251  dead             
MAL-ED            PERU                           0                    0      171     303  dead             
MAL-ED            PERU                           0                    1        1     303  dead             
MAL-ED            PERU                           1                    0      130     303  dead             
MAL-ED            PERU                           1                    1        1     303  dead             
MAL-ED            SOUTH AFRICA                   0                    0      194     314  dead             
MAL-ED            SOUTH AFRICA                   0                    1        0     314  dead             
MAL-ED            SOUTH AFRICA                   1                    0      119     314  dead             
MAL-ED            SOUTH AFRICA                   1                    1        1     314  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    0      148     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    1        1     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    0      111     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    1        2     262  dead             
PROVIDE           BANGLADESH                     0                    0      527     700  dead             
PROVIDE           BANGLADESH                     0                    1        4     700  dead             
PROVIDE           BANGLADESH                     1                    0      169     700  dead             
PROVIDE           BANGLADESH                     1                    1        0     700  dead             
SAS-CompFeed      INDIA                          0                    0      853    1532  dead             
SAS-CompFeed      INDIA                          0                    1       14    1532  dead             
SAS-CompFeed      INDIA                          1                    0      629    1532  dead             
SAS-CompFeed      INDIA                          1                    1       36    1532  dead             
SAS-FoodSuppl     INDIA                          0                    0      226     418  dead             
SAS-FoodSuppl     INDIA                          0                    1        2     418  dead             
SAS-FoodSuppl     INDIA                          1                    0      186     418  dead             
SAS-FoodSuppl     INDIA                          1                    1        4     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     1905    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0      490    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396  dead             
VITAMIN-A         INDIA                          0                    0     2265    3898  dead             
VITAMIN-A         INDIA                          0                    1       29    3898  dead             
VITAMIN-A         INDIA                          1                    0     1556    3898  dead             
VITAMIN-A         INDIA                          1                    1       48    3898  dead             
ZVITAMBO          ZIMBABWE                       0                    0     9428   14060  dead             
ZVITAMBO          ZIMBABWE                       0                    1      623   14060  dead             
ZVITAMBO          ZIMBABWE                       1                    0     3527   14060  dead             
ZVITAMBO          ZIMBABWE                       1                    1      482   14060  dead             


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

* studyid: Burkina Faso Zn, country: BURKINA FASO
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
![](/tmp/e19f1b22-c8df-47bf-932e-e0de7fdf034e/a79ccdfb-ef6a-4796-8b63-9475d62e54ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e19f1b22-c8df-47bf-932e-e0de7fdf034e/a79ccdfb-ef6a-4796-8b63-9475d62e54ac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e19f1b22-c8df-47bf-932e-e0de7fdf034e/a79ccdfb-ef6a-4796-8b63-9475d62e54ac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e19f1b22-c8df-47bf-932e-e0de7fdf034e/a79ccdfb-ef6a-4796-8b63-9475d62e54ac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0572880   0.0444413   0.0701347
iLiNS-DOSE     MALAWI       1                    NA                0.0728581   0.0508269   0.0948893
iLiNS-DYAD-M   MALAWI       0                    NA                0.0268585   0.0160499   0.0376671
iLiNS-DYAD-M   MALAWI       1                    NA                0.0482092   0.0252444   0.0711740
JiVitA-3       BANGLADESH   0                    NA                0.0180029   0.0156827   0.0203230
JiVitA-3       BANGLADESH   1                    NA                0.0442071   0.0399346   0.0484795
JiVitA-4       BANGLADESH   0                    NA                0.0062362   0.0030359   0.0094365
JiVitA-4       BANGLADESH   1                    NA                0.0131029   0.0082904   0.0179155
Keneba         GAMBIA       0                    NA                0.0154869   0.0093930   0.0215807
Keneba         GAMBIA       1                    NA                0.0448484   0.0297979   0.0598988
SAS-CompFeed   INDIA        0                    NA                0.0167505   0.0103398   0.0231613
SAS-CompFeed   INDIA        1                    NA                0.0515987   0.0256689   0.0775284
VITAMIN-A      INDIA        0                    NA                0.0126049   0.0080349   0.0171749
VITAMIN-A      INDIA        1                    NA                0.0301236   0.0217690   0.0384782
ZVITAMBO       ZIMBABWE     0                    NA                0.0619156   0.0571711   0.0666602
ZVITAMBO       ZIMBABWE     1                    NA                0.1163649   0.1059786   0.1267513


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0628792   0.0517023   0.0740561
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0327456   0.0226340   0.0428572
JiVitA-3       BANGLADESH   NA                   NA                0.0294518   0.0273600   0.0315436
JiVitA-4       BANGLADESH   NA                   NA                0.0089184   0.0062077   0.0116291
Keneba         GAMBIA       NA                   NA                0.0237999   0.0177985   0.0298013
SAS-CompFeed   INDIA        NA                   NA                0.0326371   0.0205116   0.0447625
VITAMIN-A      INDIA        NA                   NA                0.0197537   0.0153848   0.0241226
ZVITAMBO       ZIMBABWE     NA                   NA                0.0785917   0.0741435   0.0830400


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.271786   0.8727026   1.853369
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 1.794931   0.9618709   3.349492
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 2.455558   2.0894552   2.885807
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 2.101100   1.1196188   3.942967
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 2.895898   1.7263298   4.857836
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 3.080421   1.6435632   5.773430
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 2.389829   1.5141042   3.772056
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.879411   1.6720414   2.112500


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0055912   -0.0022065   0.0133889
iLiNS-DYAD-M   MALAWI       0                    NA                0.0058871   -0.0012341   0.0130083
JiVitA-3       BANGLADESH   0                    NA                0.0114489    0.0093571   0.0135408
JiVitA-4       BANGLADESH   0                    NA                0.0026822    0.0004274   0.0049370
Keneba         GAMBIA       0                    NA                0.0083131    0.0032289   0.0133972
SAS-CompFeed   INDIA        0                    NA                0.0158866    0.0039351   0.0278381
VITAMIN-A      INDIA        0                    NA                0.0071488    0.0032288   0.0110688
ZVITAMBO       ZIMBABWE     0                    NA                0.0166761    0.0134238   0.0199285


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0889198   -0.0429287   0.2040999
iLiNS-DYAD-M   MALAWI       0                    NA                0.1797828   -0.0602181   0.3654548
JiVitA-3       BANGLADESH   0                    NA                0.3887345    0.3195339   0.4508976
JiVitA-4       BANGLADESH   0                    NA                0.3007463   -0.0040398   0.5130116
Keneba         GAMBIA       0                    NA                0.3492895    0.1215186   0.5180045
SAS-CompFeed   INDIA        0                    NA                0.4867640    0.1958312   0.6724429
VITAMIN-A      INDIA        0                    NA                0.3618965    0.1510011   0.5204045
ZVITAMBO       ZIMBABWE     0                    NA                0.2121866    0.1713256   0.2510328
