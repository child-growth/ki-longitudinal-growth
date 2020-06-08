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

**Intervention Variable:** ever_wasted06

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

studyid           country                        ever_wasted06    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                        0      296     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                        1        2     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                        0       40     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                        1        0     338  dead0plus        
EE                PAKISTAN                       0                        0      248     380  dead0plus        
EE                PAKISTAN                       0                        1        2     380  dead0plus        
EE                PAKISTAN                       1                        0      128     380  dead0plus        
EE                PAKISTAN                       1                        1        2     380  dead0plus        
GMS-Nepal         NEPAL                          0                        0      422     686  dead0plus        
GMS-Nepal         NEPAL                          0                        1        5     686  dead0plus        
GMS-Nepal         NEPAL                          1                        0      257     686  dead0plus        
GMS-Nepal         NEPAL                          1                        1        2     686  dead0plus        
iLiNS-DOSE        MALAWI                         0                        0     1675    1814  dead0plus        
iLiNS-DOSE        MALAWI                         0                        1      110    1814  dead0plus        
iLiNS-DOSE        MALAWI                         1                        0       25    1814  dead0plus        
iLiNS-DOSE        MALAWI                         1                        1        4    1814  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                        0     1088    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                        1       36    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                        0       52    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                        1        6    1182  dead0plus        
JiVitA-3          BANGLADESH                     0                        0    21053   26918  dead0plus        
JiVitA-3          BANGLADESH                     0                        1      421   26918  dead0plus        
JiVitA-3          BANGLADESH                     1                        0     5264   26918  dead0plus        
JiVitA-3          BANGLADESH                     1                        1      180   26918  dead0plus        
JiVitA-4          BANGLADESH                     0                        0     4520    5252  dead0plus        
JiVitA-4          BANGLADESH                     0                        1       38    5252  dead0plus        
JiVitA-4          BANGLADESH                     1                        0      684    5252  dead0plus        
JiVitA-4          BANGLADESH                     1                        1       10    5252  dead0plus        
Keneba            GAMBIA                         0                        0     1745    2480  dead0plus        
Keneba            GAMBIA                         0                        1       51    2480  dead0plus        
Keneba            GAMBIA                         1                        0      649    2480  dead0plus        
Keneba            GAMBIA                         1                        1       35    2480  dead0plus        
MAL-ED            BANGLADESH                     0                        0      201     263  dead0plus        
MAL-ED            BANGLADESH                     0                        1        2     263  dead0plus        
MAL-ED            BANGLADESH                     1                        0       60     263  dead0plus        
MAL-ED            BANGLADESH                     1                        1        0     263  dead0plus        
MAL-ED            INDIA                          0                        0      166     251  dead0plus        
MAL-ED            INDIA                          0                        1        1     251  dead0plus        
MAL-ED            INDIA                          1                        0       83     251  dead0plus        
MAL-ED            INDIA                          1                        1        1     251  dead0plus        
MAL-ED            PERU                           0                        0      289     302  dead0plus        
MAL-ED            PERU                           0                        1        2     302  dead0plus        
MAL-ED            PERU                           1                        0       11     302  dead0plus        
MAL-ED            PERU                           1                        1        0     302  dead0plus        
MAL-ED            SOUTH AFRICA                   0                        0      276     312  dead0plus        
MAL-ED            SOUTH AFRICA                   0                        1        0     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                        0       36     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                        1        0     312  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        0      244     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        1        3     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        0       14     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        1        0     261  dead0plus        
PROVIDE           BANGLADESH                     0                        0      514     700  dead0plus        
PROVIDE           BANGLADESH                     0                        1        5     700  dead0plus        
PROVIDE           BANGLADESH                     1                        0      181     700  dead0plus        
PROVIDE           BANGLADESH                     1                        1        0     700  dead0plus        
SAS-CompFeed      INDIA                          0                        0     1142    1508  dead0plus        
SAS-CompFeed      INDIA                          0                        1       22    1508  dead0plus        
SAS-CompFeed      INDIA                          1                        0      330    1508  dead0plus        
SAS-CompFeed      INDIA                          1                        1       14    1508  dead0plus        
SAS-FoodSuppl     INDIA                          0                        0      316     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                        1        2     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                        0       96     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                        1        4     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2038    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      357    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                        0     2967    3895  dead0plus        
VITAMIN-A         INDIA                          0                        1       36    3895  dead0plus        
VITAMIN-A         INDIA                          1                        0      853    3895  dead0plus        
VITAMIN-A         INDIA                          1                        1       39    3895  dead0plus        
ZVITAMBO          ZIMBABWE                       0                        0    10491   13862  dead0plus        
ZVITAMBO          ZIMBABWE                       0                        1      736   13862  dead0plus        
ZVITAMBO          ZIMBABWE                       1                        0     2315   13862  dead0plus        
ZVITAMBO          ZIMBABWE                       1                        1      320   13862  dead0plus        


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
* studyid: iLiNS-DOSE, country: MALAWI
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/92b7970a-ee32-4dc2-b63e-3f513a5ad0f5/bece9012-5a7b-494e-9a3a-75f66d3e3d98/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/92b7970a-ee32-4dc2-b63e-3f513a5ad0f5/bece9012-5a7b-494e-9a3a-75f66d3e3d98/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/92b7970a-ee32-4dc2-b63e-3f513a5ad0f5/bece9012-5a7b-494e-9a3a-75f66d3e3d98/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/92b7970a-ee32-4dc2-b63e-3f513a5ad0f5/bece9012-5a7b-494e-9a3a-75f66d3e3d98/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0320285   0.0217306   0.0423264
iLiNS-DYAD-M   MALAWI       1                    NA                0.1034483   0.0250390   0.1818575
JiVitA-3       BANGLADESH   0                    NA                0.0196537   0.0178052   0.0215022
JiVitA-3       BANGLADESH   1                    NA                0.0326442   0.0279566   0.0373317
JiVitA-4       BANGLADESH   0                    NA                0.0083080   0.0055357   0.0110803
JiVitA-4       BANGLADESH   1                    NA                0.0144854   0.0047048   0.0242660
Keneba         GAMBIA       0                    NA                0.0284711   0.0207384   0.0362039
Keneba         GAMBIA       1                    NA                0.0515033   0.0347939   0.0682126
SAS-CompFeed   INDIA        0                    NA                0.0187790   0.0092832   0.0282748
SAS-CompFeed   INDIA        1                    NA                0.0416382   0.0177325   0.0655440
VITAMIN-A      INDIA        0                    NA                0.0120164   0.0081307   0.0159021
VITAMIN-A      INDIA        1                    NA                0.0423985   0.0290654   0.0557316
ZVITAMBO       ZIMBABWE     0                    NA                0.0659467   0.0613616   0.0705317
ZVITAMBO       ZIMBABWE     1                    NA                0.1193206   0.1069161   0.1317251


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0355330   0.0249750   0.0460910
JiVitA-3       BANGLADESH   NA                   NA                0.0223271   0.0205277   0.0241264
JiVitA-4       BANGLADESH   NA                   NA                0.0091394   0.0063930   0.0118858
Keneba         GAMBIA       NA                   NA                0.0346774   0.0274751   0.0418797
SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
VITAMIN-A      INDIA        NA                   NA                0.0192555   0.0149392   0.0235717
ZVITAMBO       ZIMBABWE     NA                   NA                0.0761795   0.0717631   0.0805958


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 3.229885   1.4178129   7.357923
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.660964   1.4061628   1.961937
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 1.743550   0.8202561   3.706117
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.808963   1.1847785   2.761991
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 2.217278   1.1736231   4.189014
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 3.528391   2.2474187   5.539484
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.809350   1.5977152   2.049018


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0035045   -0.0004745   0.0074836
JiVitA-3       BANGLADESH   0                    NA                0.0026733    0.0016578   0.0036889
JiVitA-4       BANGLADESH   0                    NA                0.0008314   -0.0005590   0.0022218
Keneba         GAMBIA       0                    NA                0.0062063    0.0011271   0.0112855
SAS-CompFeed   INDIA        0                    NA                0.0050937   -0.0003527   0.0105401
VITAMIN-A      INDIA        0                    NA                0.0072391    0.0040151   0.0104630
ZVITAMBO       ZIMBABWE     0                    NA                0.0102328    0.0077071   0.0127586


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0986274   -0.0164951   0.2007117
JiVitA-3       BANGLADESH   0                    NA                0.1197351    0.0743631   0.1628832
JiVitA-4       BANGLADESH   0                    NA                0.0909660   -0.0699135   0.2276546
Keneba         GAMBIA       0                    NA                0.1789716    0.0239071   0.3094022
SAS-CompFeed   INDIA        0                    NA                0.2133695   -0.0161891   0.3910704
VITAMIN-A      INDIA        0                    NA                0.3759491    0.2127634   0.5053082
ZVITAMBO       ZIMBABWE     0                    NA                0.1343253    0.1013496   0.1660909
