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

studyid           country                        ever_wasted06    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                   0      296     338  dead             
Burkina Faso Zn   BURKINA FASO                   0                   1        2     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                   0       40     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                   1        0     338  dead             
EE                PAKISTAN                       0                   0      248     380  dead             
EE                PAKISTAN                       0                   1        2     380  dead             
EE                PAKISTAN                       1                   0      128     380  dead             
EE                PAKISTAN                       1                   1        2     380  dead             
GMS-Nepal         NEPAL                          0                   0      422     686  dead             
GMS-Nepal         NEPAL                          0                   1        5     686  dead             
GMS-Nepal         NEPAL                          1                   0      257     686  dead             
GMS-Nepal         NEPAL                          1                   1        2     686  dead             
iLiNS-DOSE        MALAWI                         0                   0     1675    1814  dead             
iLiNS-DOSE        MALAWI                         0                   1      110    1814  dead             
iLiNS-DOSE        MALAWI                         1                   0       25    1814  dead             
iLiNS-DOSE        MALAWI                         1                   1        4    1814  dead             
iLiNS-DYAD-M      MALAWI                         0                   0     1091    1182  dead             
iLiNS-DYAD-M      MALAWI                         0                   1       33    1182  dead             
iLiNS-DYAD-M      MALAWI                         1                   0       53    1182  dead             
iLiNS-DYAD-M      MALAWI                         1                   1        5    1182  dead             
JiVitA-3          BANGLADESH                     0                   0    21075   26918  dead             
JiVitA-3          BANGLADESH                     0                   1      399   26918  dead             
JiVitA-3          BANGLADESH                     1                   0     5282   26918  dead             
JiVitA-3          BANGLADESH                     1                   1      162   26918  dead             
JiVitA-4          BANGLADESH                     0                   0     4521    5252  dead             
JiVitA-4          BANGLADESH                     0                   1       37    5252  dead             
JiVitA-4          BANGLADESH                     1                   0      684    5252  dead             
JiVitA-4          BANGLADESH                     1                   1       10    5252  dead             
Keneba            GAMBIA                         0                   0     1763    2480  dead             
Keneba            GAMBIA                         0                   1       33    2480  dead             
Keneba            GAMBIA                         1                   0      660    2480  dead             
Keneba            GAMBIA                         1                   1       24    2480  dead             
MAL-ED            BANGLADESH                     0                   0      201     263  dead             
MAL-ED            BANGLADESH                     0                   1        2     263  dead             
MAL-ED            BANGLADESH                     1                   0       60     263  dead             
MAL-ED            BANGLADESH                     1                   1        0     263  dead             
MAL-ED            INDIA                          0                   0      166     251  dead             
MAL-ED            INDIA                          0                   1        1     251  dead             
MAL-ED            INDIA                          1                   0       83     251  dead             
MAL-ED            INDIA                          1                   1        1     251  dead             
MAL-ED            PERU                           0                   0      289     302  dead             
MAL-ED            PERU                           0                   1        2     302  dead             
MAL-ED            PERU                           1                   0       11     302  dead             
MAL-ED            PERU                           1                   1        0     302  dead             
MAL-ED            SOUTH AFRICA                   0                   0      276     312  dead             
MAL-ED            SOUTH AFRICA                   0                   1        0     312  dead             
MAL-ED            SOUTH AFRICA                   1                   0       36     312  dead             
MAL-ED            SOUTH AFRICA                   1                   1        0     312  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                   0      244     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                   1        3     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                   0       14     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                   1        0     261  dead             
PROVIDE           BANGLADESH                     0                   0      515     700  dead             
PROVIDE           BANGLADESH                     0                   1        4     700  dead             
PROVIDE           BANGLADESH                     1                   0      181     700  dead             
PROVIDE           BANGLADESH                     1                   1        0     700  dead             
SAS-CompFeed      INDIA                          0                   0     1142    1508  dead             
SAS-CompFeed      INDIA                          0                   1       22    1508  dead             
SAS-CompFeed      INDIA                          1                   0      330    1508  dead             
SAS-CompFeed      INDIA                          1                   1       14    1508  dead             
SAS-FoodSuppl     INDIA                          0                   0      316     418  dead             
SAS-FoodSuppl     INDIA                          0                   1        2     418  dead             
SAS-FoodSuppl     INDIA                          1                   0       96     418  dead             
SAS-FoodSuppl     INDIA                          1                   1        4     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   0     2038    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   0      357    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   1        0    2396  dead             
VITAMIN-A         INDIA                          0                   0     2967    3895  dead             
VITAMIN-A         INDIA                          0                   1       36    3895  dead             
VITAMIN-A         INDIA                          1                   0      853    3895  dead             
VITAMIN-A         INDIA                          1                   1       39    3895  dead             
ZVITAMBO          ZIMBABWE                       0                   0    10499   13862  dead             
ZVITAMBO          ZIMBABWE                       0                   1      728   13862  dead             
ZVITAMBO          ZIMBABWE                       1                   0     2316   13862  dead             
ZVITAMBO          ZIMBABWE                       1                   1      319   13862  dead             


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
![](/tmp/6d88546b-be3f-47cf-93d6-f9dbf589e886/138bbb6a-50ff-47f1-a7d7-20450fe2a115/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6d88546b-be3f-47cf-93d6-f9dbf589e886/138bbb6a-50ff-47f1-a7d7-20450fe2a115/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6d88546b-be3f-47cf-93d6-f9dbf589e886/138bbb6a-50ff-47f1-a7d7-20450fe2a115/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6d88546b-be3f-47cf-93d6-f9dbf589e886/138bbb6a-50ff-47f1-a7d7-20450fe2a115/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0293594   0.0194864   0.0392325
iLiNS-DYAD-M   MALAWI       1                    NA                0.0862069   0.0139444   0.1584694
JiVitA-3       BANGLADESH   0                    NA                0.0185869   0.0168106   0.0203632
JiVitA-3       BANGLADESH   1                    NA                0.0295265   0.0249452   0.0341079
JiVitA-4       BANGLADESH   0                    NA                0.0080971   0.0053722   0.0108219
JiVitA-4       BANGLADESH   1                    NA                0.0140557   0.0042774   0.0238339
Keneba         GAMBIA       0                    NA                0.0181787   0.0120106   0.0243468
Keneba         GAMBIA       1                    NA                0.0356920   0.0214984   0.0498856
SAS-CompFeed   INDIA        0                    NA                0.0187952   0.0093020   0.0282885
SAS-CompFeed   INDIA        1                    NA                0.0414387   0.0176406   0.0652368
VITAMIN-A      INDIA        0                    NA                0.0120317   0.0081392   0.0159242
VITAMIN-A      INDIA        1                    NA                0.0425301   0.0292346   0.0558257
ZVITAMBO       ZIMBABWE     0                    NA                0.0653119   0.0607544   0.0698695
ZVITAMBO       ZIMBABWE     1                    NA                0.1180656   0.1057463   0.1303849


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0321489   0.0220886   0.0422092
JiVitA-3       BANGLADESH   NA                   NA                0.0208411   0.0190926   0.0225895
JiVitA-4       BANGLADESH   NA                   NA                0.0089490   0.0062382   0.0116597
Keneba         GAMBIA       NA                   NA                0.0229839   0.0170850   0.0288828
SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
VITAMIN-A      INDIA        NA                   NA                0.0192555   0.0149392   0.0235717
ZVITAMBO       ZIMBABWE     NA                   NA                0.0755302   0.0711312   0.0799293


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 2.936259   1.1899998   7.245058
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.588567   1.3325811   1.893729
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 1.735894   0.8005739   3.763961
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.963396   1.1640502   3.311648
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 2.204745   1.1696756   4.155769
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 3.534843   2.2543490   5.542671
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.807718   1.5955641   2.048082


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0027895   -0.0008572   0.0064362
JiVitA-3       BANGLADESH   0                    NA                0.0022542    0.0012810   0.0032273
JiVitA-4       BANGLADESH   0                    NA                0.0008519   -0.0005363   0.0022401
Keneba         GAMBIA       0                    NA                0.0048051    0.0006353   0.0089750
SAS-CompFeed   INDIA        0                    NA                0.0050775   -0.0003663   0.0105212
VITAMIN-A      INDIA        0                    NA                0.0072238    0.0039986   0.0104489
ZVITAMBO       ZIMBABWE     0                    NA                0.0102183    0.0077029   0.0127337


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0867672   -0.0305119   0.1906991
JiVitA-3       BANGLADESH   0                    NA                0.1081603    0.0616988   0.1523212
JiVitA-4       BANGLADESH   0                    NA                0.0951957   -0.0687162   0.2339680
Keneba         GAMBIA       0                    NA                0.2090661    0.0147211   0.3650768
SAS-CompFeed   INDIA        0                    NA                0.2126889   -0.0166793   0.3903105
VITAMIN-A      INDIA        0                    NA                0.3751541    0.2117027   0.5047143
ZVITAMBO       ZIMBABWE     0                    NA                0.1352873    0.1021917   0.1671629
