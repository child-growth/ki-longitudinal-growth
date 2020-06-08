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

**Intervention Variable:** pers_wasted06

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

studyid           country                        pers_wasted06    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                   0      296     338  dead             
Burkina Faso Zn   BURKINA FASO                   0                   1        2     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                   0       40     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                   1        0     338  dead             
EE                PAKISTAN                       0                   0      349     380  dead             
EE                PAKISTAN                       0                   1        4     380  dead             
EE                PAKISTAN                       1                   0       27     380  dead             
EE                PAKISTAN                       1                   1        0     380  dead             
GMS-Nepal         NEPAL                          0                   0      592     686  dead             
GMS-Nepal         NEPAL                          0                   1        5     686  dead             
GMS-Nepal         NEPAL                          1                   0       87     686  dead             
GMS-Nepal         NEPAL                          1                   1        2     686  dead             
iLiNS-DOSE        MALAWI                         0                   0     1675    1814  dead             
iLiNS-DOSE        MALAWI                         0                   1      110    1814  dead             
iLiNS-DOSE        MALAWI                         1                   0       25    1814  dead             
iLiNS-DOSE        MALAWI                         1                   1        4    1814  dead             
iLiNS-DYAD-M      MALAWI                         0                   0     1091    1182  dead             
iLiNS-DYAD-M      MALAWI                         0                   1       33    1182  dead             
iLiNS-DYAD-M      MALAWI                         1                   0       53    1182  dead             
iLiNS-DYAD-M      MALAWI                         1                   1        5    1182  dead             
JiVitA-3          BANGLADESH                     0                   0    24564   26918  dead             
JiVitA-3          BANGLADESH                     0                   1      446   26918  dead             
JiVitA-3          BANGLADESH                     1                   0     1793   26918  dead             
JiVitA-3          BANGLADESH                     1                   1      115   26918  dead             
JiVitA-4          BANGLADESH                     0                   0     4866    5252  dead             
JiVitA-4          BANGLADESH                     0                   1       42    5252  dead             
JiVitA-4          BANGLADESH                     1                   0      339    5252  dead             
JiVitA-4          BANGLADESH                     1                   1        5    5252  dead             
Keneba            GAMBIA                         0                   0     2331    2480  dead             
Keneba            GAMBIA                         0                   1       51    2480  dead             
Keneba            GAMBIA                         1                   0       92    2480  dead             
Keneba            GAMBIA                         1                   1        6    2480  dead             
MAL-ED            BANGLADESH                     0                   0      251     263  dead             
MAL-ED            BANGLADESH                     0                   1        2     263  dead             
MAL-ED            BANGLADESH                     1                   0       10     263  dead             
MAL-ED            BANGLADESH                     1                   1        0     263  dead             
MAL-ED            INDIA                          0                   0      231     251  dead             
MAL-ED            INDIA                          0                   1        2     251  dead             
MAL-ED            INDIA                          1                   0       18     251  dead             
MAL-ED            INDIA                          1                   1        0     251  dead             
MAL-ED            PERU                           0                   0      300     302  dead             
MAL-ED            PERU                           0                   1        2     302  dead             
MAL-ED            PERU                           1                   0        0     302  dead             
MAL-ED            PERU                           1                   1        0     302  dead             
MAL-ED            SOUTH AFRICA                   0                   0      305     312  dead             
MAL-ED            SOUTH AFRICA                   0                   1        0     312  dead             
MAL-ED            SOUTH AFRICA                   1                   0        7     312  dead             
MAL-ED            SOUTH AFRICA                   1                   1        0     312  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                   0      258     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                   1        3     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                   0        0     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                   1        0     261  dead             
PROVIDE           BANGLADESH                     0                   0      669     700  dead             
PROVIDE           BANGLADESH                     0                   1        4     700  dead             
PROVIDE           BANGLADESH                     1                   0       27     700  dead             
PROVIDE           BANGLADESH                     1                   1        0     700  dead             
SAS-CompFeed      INDIA                          0                   0     1340    1508  dead             
SAS-CompFeed      INDIA                          0                   1       24    1508  dead             
SAS-CompFeed      INDIA                          1                   0      132    1508  dead             
SAS-CompFeed      INDIA                          1                   1       12    1508  dead             
SAS-FoodSuppl     INDIA                          0                   0      316     418  dead             
SAS-FoodSuppl     INDIA                          0                   1        2     418  dead             
SAS-FoodSuppl     INDIA                          1                   0       96     418  dead             
SAS-FoodSuppl     INDIA                          1                   1        4     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   0     2327    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   0       68    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   1        0    2396  dead             
VITAMIN-A         INDIA                          0                   0     2967    3895  dead             
VITAMIN-A         INDIA                          0                   1       36    3895  dead             
VITAMIN-A         INDIA                          1                   0      853    3895  dead             
VITAMIN-A         INDIA                          1                   1       39    3895  dead             
ZVITAMBO          ZIMBABWE                       0                   0    12019   13862  dead             
ZVITAMBO          ZIMBABWE                       0                   1      846   13862  dead             
ZVITAMBO          ZIMBABWE                       1                   0      796   13862  dead             
ZVITAMBO          ZIMBABWE                       1                   1      201   13862  dead             


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/84ace21b-4a32-43c5-8159-f2b5e794549f/1a0e9102-3298-4def-9e37-cdb5623d9e16/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/84ace21b-4a32-43c5-8159-f2b5e794549f/1a0e9102-3298-4def-9e37-cdb5623d9e16/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/84ace21b-4a32-43c5-8159-f2b5e794549f/1a0e9102-3298-4def-9e37-cdb5623d9e16/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/84ace21b-4a32-43c5-8159-f2b5e794549f/1a0e9102-3298-4def-9e37-cdb5623d9e16/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0293594   0.0194864   0.0392325
iLiNS-DYAD-M   MALAWI       1                    NA                0.0862069   0.0139444   0.1584694
JiVitA-3       BANGLADESH   0                    NA                0.0178774   0.0162573   0.0194976
JiVitA-3       BANGLADESH   1                    NA                0.0600824   0.0487103   0.0714545
JiVitA-4       BANGLADESH   0                    NA                0.0085575   0.0057769   0.0113380
JiVitA-4       BANGLADESH   1                    NA                0.0145349   0.0031924   0.0258774
Keneba         GAMBIA       0                    NA                0.0214106   0.0155965   0.0272246
Keneba         GAMBIA       1                    NA                0.0612245   0.0137494   0.1086996
SAS-CompFeed   INDIA        0                    NA                0.0175535   0.0097791   0.0253279
SAS-CompFeed   INDIA        1                    NA                0.0905183   0.0376737   0.1433629
VITAMIN-A      INDIA        0                    NA                0.0120896   0.0081822   0.0159970
VITAMIN-A      INDIA        1                    NA                0.0428678   0.0293502   0.0563855
ZVITAMBO       ZIMBABWE     0                    NA                0.0659405   0.0616579   0.0702230
ZVITAMBO       ZIMBABWE     1                    NA                0.2253402   0.1945966   0.2560837


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


studyid        country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ---------
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 2.936259   1.190000   7.245058
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 3.360794   2.737862   4.125458
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 1.698505   0.732828   3.936693
Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba         GAMBIA       1                    0                 2.859544   1.257420   6.502991
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed   INDIA        1                    0                 5.156710   3.013507   8.824155
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000   1.000000
VITAMIN-A      INDIA        1                    0                 3.545849   2.257214   5.570162
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 3.417327   2.939558   3.972749


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0027895   -0.0008572   0.0064362
JiVitA-3       BANGLADESH   0                    NA                0.0029636    0.0021655   0.0037617
JiVitA-4       BANGLADESH   0                    NA                0.0003915   -0.0003701   0.0011531
Keneba         GAMBIA       0                    NA                0.0015733   -0.0003413   0.0034878
SAS-CompFeed   INDIA        0                    NA                0.0063192    0.0008114   0.0118270
VITAMIN-A      INDIA        0                    NA                0.0071659    0.0039362   0.0103956
ZVITAMBO       ZIMBABWE     0                    NA                0.0095898    0.0077163   0.0114632


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0867672   -0.0305119   0.1906991
JiVitA-3       BANGLADESH   0                    NA                0.1422014    0.1059775   0.1769575
JiVitA-4       BANGLADESH   0                    NA                0.0437497   -0.0456966   0.1255450
Keneba         GAMBIA       0                    NA                0.0684520   -0.0167295   0.1464969
SAS-CompFeed   INDIA        0                    NA                0.2647038    0.0781864   0.4134817
VITAMIN-A      INDIA        0                    NA                0.3721477    0.2080721   0.5022293
ZVITAMBO       ZIMBABWE     0                    NA                0.1269659    0.1027772   0.1505024
