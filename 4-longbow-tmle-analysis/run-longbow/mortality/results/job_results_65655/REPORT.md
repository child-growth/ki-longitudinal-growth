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

studyid           country                        ever_stunted06    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                         0      297     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                         1        2     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                         0       39     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                         1        0     338  dead0plus        
EE                PAKISTAN                       0                         0       93     379  dead0plus        
EE                PAKISTAN                       0                         1        0     379  dead0plus        
EE                PAKISTAN                       1                         0      282     379  dead0plus        
EE                PAKISTAN                       1                         1        4     379  dead0plus        
GMS-Nepal         NEPAL                          0                         0      473     698  dead0plus        
GMS-Nepal         NEPAL                          0                         1        3     698  dead0plus        
GMS-Nepal         NEPAL                          1                         0      217     698  dead0plus        
GMS-Nepal         NEPAL                          1                         1        5     698  dead0plus        
iLiNS-DOSE        MALAWI                         0                         0     1194    1813  dead0plus        
iLiNS-DOSE        MALAWI                         0                         1       73    1813  dead0plus        
iLiNS-DOSE        MALAWI                         1                         0      505    1813  dead0plus        
iLiNS-DOSE        MALAWI                         1                         1       41    1813  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                         0      833    1191  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                         1       25    1191  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                         0      315    1191  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                         1       18    1191  dead0plus        
JiVitA-3          BANGLADESH                     0                         0    15070   27197  dead0plus        
JiVitA-3          BANGLADESH                     0                         1      277   27197  dead0plus        
JiVitA-3          BANGLADESH                     1                         0    11285   27197  dead0plus        
JiVitA-3          BANGLADESH                     1                         1      565   27197  dead0plus        
JiVitA-4          BANGLADESH                     0                         0     3217    5270  dead0plus        
JiVitA-4          BANGLADESH                     0                         1       20    5270  dead0plus        
JiVitA-4          BANGLADESH                     1                         0     2005    5270  dead0plus        
JiVitA-4          BANGLADESH                     1                         1       28    5270  dead0plus        
Keneba            GAMBIA                         0                         0     1647    2479  dead0plus        
Keneba            GAMBIA                         0                         1       47    2479  dead0plus        
Keneba            GAMBIA                         1                         0      744    2479  dead0plus        
Keneba            GAMBIA                         1                         1       41    2479  dead0plus        
MAL-ED            BANGLADESH                     0                         0      167     265  dead0plus        
MAL-ED            BANGLADESH                     0                         1        0     265  dead0plus        
MAL-ED            BANGLADESH                     1                         0       95     265  dead0plus        
MAL-ED            BANGLADESH                     1                         1        3     265  dead0plus        
MAL-ED            INDIA                          0                         0      158     251  dead0plus        
MAL-ED            INDIA                          0                         1        1     251  dead0plus        
MAL-ED            INDIA                          1                         0       91     251  dead0plus        
MAL-ED            INDIA                          1                         1        1     251  dead0plus        
MAL-ED            PERU                           0                         0      171     303  dead0plus        
MAL-ED            PERU                           0                         1        1     303  dead0plus        
MAL-ED            PERU                           1                         0      130     303  dead0plus        
MAL-ED            PERU                           1                         1        1     303  dead0plus        
MAL-ED            SOUTH AFRICA                   0                         0      194     314  dead0plus        
MAL-ED            SOUTH AFRICA                   0                         1        0     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                         0      119     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                         1        1     314  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      148     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        1     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0      111     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        2     262  dead0plus        
PROVIDE           BANGLADESH                     0                         0      527     700  dead0plus        
PROVIDE           BANGLADESH                     0                         1        4     700  dead0plus        
PROVIDE           BANGLADESH                     1                         0      168     700  dead0plus        
PROVIDE           BANGLADESH                     1                         1        1     700  dead0plus        
SAS-CompFeed      INDIA                          0                         0      853    1532  dead0plus        
SAS-CompFeed      INDIA                          0                         1       14    1532  dead0plus        
SAS-CompFeed      INDIA                          1                         0      629    1532  dead0plus        
SAS-CompFeed      INDIA                          1                         1       36    1532  dead0plus        
SAS-FoodSuppl     INDIA                          0                         0      226     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                         1        2     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                         0      186     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                         1        4     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1905    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      490    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                         0     2265    3898  dead0plus        
VITAMIN-A         INDIA                          0                         1       29    3898  dead0plus        
VITAMIN-A         INDIA                          1                         0     1556    3898  dead0plus        
VITAMIN-A         INDIA                          1                         1       48    3898  dead0plus        
ZVITAMBO          ZIMBABWE                       0                         0     9419   14060  dead0plus        
ZVITAMBO          ZIMBABWE                       0                         1      632   14060  dead0plus        
ZVITAMBO          ZIMBABWE                       1                         0     3526   14060  dead0plus        
ZVITAMBO          ZIMBABWE                       1                         1      483   14060  dead0plus        


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
![](/tmp/2e729108-53e2-4b65-8d8d-ab3ae88a438b/65bf7b8f-4342-44ac-bb10-42c9f7867b34/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2e729108-53e2-4b65-8d8d-ab3ae88a438b/65bf7b8f-4342-44ac-bb10-42c9f7867b34/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2e729108-53e2-4b65-8d8d-ab3ae88a438b/65bf7b8f-4342-44ac-bb10-42c9f7867b34/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2e729108-53e2-4b65-8d8d-ab3ae88a438b/65bf7b8f-4342-44ac-bb10-42c9f7867b34/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0575269   0.0446387   0.0704151
iLiNS-DOSE     MALAWI       1                    NA                0.0730133   0.0509349   0.0950916
iLiNS-DYAD-M   MALAWI       0                    NA                0.0291417   0.0178361   0.0404473
iLiNS-DYAD-M   MALAWI       1                    NA                0.0532097   0.0284229   0.0779965
JiVitA-3       BANGLADESH   0                    NA                0.0191545   0.0167663   0.0215428
JiVitA-3       BANGLADESH   1                    NA                0.0465719   0.0422090   0.0509347
JiVitA-4       BANGLADESH   0                    NA                0.0062215   0.0030176   0.0094255
JiVitA-4       BANGLADESH   1                    NA                0.0136288   0.0086892   0.0185684
Keneba         GAMBIA       0                    NA                0.0277958   0.0199028   0.0356888
Keneba         GAMBIA       1                    NA                0.0516251   0.0357219   0.0675283
SAS-CompFeed   INDIA        0                    NA                0.0167524   0.0103336   0.0231712
SAS-CompFeed   INDIA        1                    NA                0.0516170   0.0256926   0.0775413
VITAMIN-A      INDIA        0                    NA                0.0126196   0.0080413   0.0171980
VITAMIN-A      INDIA        1                    NA                0.0299322   0.0215905   0.0382740
ZVITAMBO       ZIMBABWE     0                    NA                0.0628019   0.0580263   0.0675775
ZVITAMBO       ZIMBABWE     1                    NA                0.1181641   0.1076255   0.1287027


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0628792   0.0517023   0.0740561
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0361041   0.0255050   0.0467032
JiVitA-3       BANGLADESH   NA                   NA                0.0309593   0.0288157   0.0331029
JiVitA-4       BANGLADESH   NA                   NA                0.0091082   0.0063617   0.0118546
Keneba         GAMBIA       NA                   NA                0.0354982   0.0282128   0.0427836
SAS-CompFeed   INDIA        NA                   NA                0.0326371   0.0205116   0.0447625
VITAMIN-A      INDIA        NA                   NA                0.0197537   0.0153848   0.0241226
ZVITAMBO       ZIMBABWE     NA                   NA                0.0793030   0.0748364   0.0837696


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.269202   0.8710915   1.849260
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 1.825895   0.9953182   3.349575
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 2.431374   2.0805140   2.841404
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 2.190583   1.1684147   4.106979
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.857300   1.2213559   2.824373
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 3.081170   1.6445593   5.772737
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 2.371879   1.5012334   3.747460
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.881537   1.6745743   2.114078


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0053523   -0.0024806   0.0131852
iLiNS-DYAD-M   MALAWI       0                    NA                0.0069624   -0.0005837   0.0145085
JiVitA-3       BANGLADESH   0                    NA                0.0118048    0.0096539   0.0139556
JiVitA-4       BANGLADESH   0                    NA                0.0028866    0.0005827   0.0051905
Keneba         GAMBIA       0                    NA                0.0077024    0.0020670   0.0133378
SAS-CompFeed   INDIA        0                    NA                0.0158847    0.0039381   0.0278313
VITAMIN-A      INDIA        0                    NA                0.0071341    0.0032105   0.0110577
ZVITAMBO       ZIMBABWE     0                    NA                0.0165011    0.0132448   0.0197574


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0851207   -0.0473823   0.2008609
iLiNS-DYAD-M   MALAWI       0                    NA                0.1928427   -0.0365260   0.3714554
JiVitA-3       BANGLADESH   0                    NA                0.3812992    0.3136276   0.4422989
JiVitA-4       BANGLADESH   0                    NA                0.3169260    0.0129228   0.5273014
Keneba         GAMBIA       0                    NA                0.2169798    0.0484222   0.3556800
SAS-CompFeed   INDIA        0                    NA                0.4867067    0.1957942   0.6723849
VITAMIN-A      INDIA        0                    NA                0.3611516    0.1498694   0.5199241
ZVITAMBO       ZIMBABWE     0                    NA                0.2080764    0.1674841   0.2466894
