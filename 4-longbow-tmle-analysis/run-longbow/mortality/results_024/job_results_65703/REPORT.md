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

**Intervention Variable:** ever_wasted06_noBW

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
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_wasted06_noBW    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  -------------------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                           0       39      39  dead624          
Burkina Faso Zn   BURKINA FASO                   0                           1        0      39  dead624          
Burkina Faso Zn   BURKINA FASO                   1                           0        0      39  dead624          
Burkina Faso Zn   BURKINA FASO                   1                           1        0      39  dead624          
EE                PAKISTAN                       0                           0      288     371  dead624          
EE                PAKISTAN                       0                           1        2     371  dead624          
EE                PAKISTAN                       1                           0       79     371  dead624          
EE                PAKISTAN                       1                           1        2     371  dead624          
GMS-Nepal         NEPAL                          0                           0      446     568  dead624          
GMS-Nepal         NEPAL                          0                           1        1     568  dead624          
GMS-Nepal         NEPAL                          1                           0      120     568  dead624          
GMS-Nepal         NEPAL                          1                           1        1     568  dead624          
iLiNS-DOSE        MALAWI                         0                           0     1058    1128  dead624          
iLiNS-DOSE        MALAWI                         0                           1       70    1128  dead624          
iLiNS-DOSE        MALAWI                         1                           0        0    1128  dead624          
iLiNS-DOSE        MALAWI                         1                           1        0    1128  dead624          
iLiNS-DYAD-M      MALAWI                         0                           0     1033    1055  dead624          
iLiNS-DYAD-M      MALAWI                         0                           1       22    1055  dead624          
iLiNS-DYAD-M      MALAWI                         1                           0        0    1055  dead624          
iLiNS-DYAD-M      MALAWI                         1                           1        0    1055  dead624          
JiVitA-3          BANGLADESH                     0                           0    18896   20497  dead624          
JiVitA-3          BANGLADESH                     0                           1      214   20497  dead624          
JiVitA-3          BANGLADESH                     1                           0     1356   20497  dead624          
JiVitA-3          BANGLADESH                     1                           1       31   20497  dead624          
JiVitA-4          BANGLADESH                     0                           0     4786    4948  dead624          
JiVitA-4          BANGLADESH                     0                           1       36    4948  dead624          
JiVitA-4          BANGLADESH                     1                           0      123    4948  dead624          
JiVitA-4          BANGLADESH                     1                           1        3    4948  dead624          
Keneba            GAMBIA                         0                           0     1976    2262  dead624          
Keneba            GAMBIA                         0                           1       29    2262  dead624          
Keneba            GAMBIA                         1                           0      248    2262  dead624          
Keneba            GAMBIA                         1                           1        9    2262  dead624          
MAL-ED            BANGLADESH                     0                           0      221     239  dead624          
MAL-ED            BANGLADESH                     0                           1        0     239  dead624          
MAL-ED            BANGLADESH                     1                           0       18     239  dead624          
MAL-ED            BANGLADESH                     1                           1        0     239  dead624          
MAL-ED            INDIA                          0                           0      193     229  dead624          
MAL-ED            INDIA                          0                           1        0     229  dead624          
MAL-ED            INDIA                          1                           0       36     229  dead624          
MAL-ED            INDIA                          1                           1        0     229  dead624          
MAL-ED            PERU                           0                           0      267     273  dead624          
MAL-ED            PERU                           0                           1        1     273  dead624          
MAL-ED            PERU                           1                           0        5     273  dead624          
MAL-ED            PERU                           1                           1        0     273  dead624          
MAL-ED            SOUTH AFRICA                   0                           0      247     260  dead624          
MAL-ED            SOUTH AFRICA                   0                           1        0     260  dead624          
MAL-ED            SOUTH AFRICA                   1                           0       13     260  dead624          
MAL-ED            SOUTH AFRICA                   1                           1        0     260  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                           0      235     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                           1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                           0       10     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                           1        0     245  dead624          
PROVIDE           BANGLADESH                     0                           0      574     609  dead624          
PROVIDE           BANGLADESH                     0                           1        2     609  dead624          
PROVIDE           BANGLADESH                     1                           0       33     609  dead624          
PROVIDE           BANGLADESH                     1                           1        0     609  dead624          
SAS-CompFeed      INDIA                          0                           0     1177    1357  dead624          
SAS-CompFeed      INDIA                          0                           1        5    1357  dead624          
SAS-CompFeed      INDIA                          1                           0      169    1357  dead624          
SAS-CompFeed      INDIA                          1                           1        6    1357  dead624          
SAS-FoodSuppl     INDIA                          0                           0      328     329  dead624          
SAS-FoodSuppl     INDIA                          0                           1        1     329  dead624          
SAS-FoodSuppl     INDIA                          1                           0        0     329  dead624          
SAS-FoodSuppl     INDIA                          1                           1        0     329  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           0     1894    2080  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           1        0    2080  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           0      186    2080  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           1        0    2080  dead624          
VITAMIN-A         INDIA                          0                           0     3013    3076  dead624          
VITAMIN-A         INDIA                          0                           1       21    3076  dead624          
VITAMIN-A         INDIA                          1                           0       41    3076  dead624          
VITAMIN-A         INDIA                          1                           1        1    3076  dead624          
ZVITAMBO          ZIMBABWE                       0                           0    10645   11378  dead624          
ZVITAMBO          ZIMBABWE                       0                           1      353   11378  dead624          
ZVITAMBO          ZIMBABWE                       1                           0      354   11378  dead624          
ZVITAMBO          ZIMBABWE                       1                           1       26   11378  dead624          


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
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-4, country: BANGLADESH
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: VITAMIN-A, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/fc8f50d9-4c2f-4f74-aed7-95dd4d56d85e/1e72a1af-68a5-4803-b1f4-9e2efe9fa8ab/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fc8f50d9-4c2f-4f74-aed7-95dd4d56d85e/1e72a1af-68a5-4803-b1f4-9e2efe9fa8ab/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fc8f50d9-4c2f-4f74-aed7-95dd4d56d85e/1e72a1af-68a5-4803-b1f4-9e2efe9fa8ab/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fc8f50d9-4c2f-4f74-aed7-95dd4d56d85e/1e72a1af-68a5-4803-b1f4-9e2efe9fa8ab/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0111881    0.0096680   0.0127082
JiVitA-3       BANGLADESH   1                    NA                0.0225045    0.0143503   0.0306588
Keneba         GAMBIA       0                    NA                0.0144638    0.0092367   0.0196910
Keneba         GAMBIA       1                    NA                0.0350195    0.0125397   0.0574992
SAS-CompFeed   INDIA        0                    NA                0.0042301   -0.0001967   0.0086569
SAS-CompFeed   INDIA        1                    NA                0.0342857    0.0129503   0.0556212
ZVITAMBO       ZIMBABWE     0                    NA                0.0320839    0.0287897   0.0353781
ZVITAMBO       ZIMBABWE     1                    NA                0.0666286    0.0417876   0.0914695


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0119530   0.0104197   0.0134862
Keneba         GAMBIA       NA                   NA                0.0167993   0.0115019   0.0220967
SAS-CompFeed   INDIA        NA                   NA                0.0081061   0.0043373   0.0118750
ZVITAMBO       ZIMBABWE     NA                   NA                0.0333099   0.0300126   0.0366072


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ----------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 2.011466   1.370723    2.951723
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 2.421173   1.159039    5.057706
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 8.105143   1.987856   33.047338
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.076697   1.410647    3.057228


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0007648    0.0001877   0.0013419
Keneba         GAMBIA       0                    NA                0.0023355   -0.0003005   0.0049714
SAS-CompFeed   INDIA        0                    NA                0.0038760    0.0009881   0.0067638
ZVITAMBO       ZIMBABWE     0                    NA                0.0012260    0.0003618   0.0020902


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0639876    0.0155395   0.1100513
Keneba         GAMBIA       0                    NA                0.1390209   -0.0258484   0.2773931
SAS-CompFeed   INDIA        0                    NA                0.4781572   -0.1093728   0.7545281
ZVITAMBO       ZIMBABWE     0                    NA                0.0368055    0.0107500   0.0621748
