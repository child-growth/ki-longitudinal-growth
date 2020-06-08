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

**Intervention Variable:** ever_swasted06

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

studyid           country                        ever_swasted06    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                         0      328     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                         1        2     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                         0        8     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                         1        0     338  dead0plus        
EE                PAKISTAN                       0                         0      337     380  dead0plus        
EE                PAKISTAN                       0                         1        4     380  dead0plus        
EE                PAKISTAN                       1                         0       39     380  dead0plus        
EE                PAKISTAN                       1                         1        0     380  dead0plus        
GMS-Nepal         NEPAL                          0                         0      600     686  dead0plus        
GMS-Nepal         NEPAL                          0                         1        7     686  dead0plus        
GMS-Nepal         NEPAL                          1                         0       79     686  dead0plus        
GMS-Nepal         NEPAL                          1                         1        0     686  dead0plus        
iLiNS-DOSE        MALAWI                         0                         0     1699    1814  dead0plus        
iLiNS-DOSE        MALAWI                         0                         1      113    1814  dead0plus        
iLiNS-DOSE        MALAWI                         1                         0        1    1814  dead0plus        
iLiNS-DOSE        MALAWI                         1                         1        1    1814  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                         0     1129    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                         1       39    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                         0       11    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                         1        3    1182  dead0plus        
JiVitA-3          BANGLADESH                     0                         0    25095   26918  dead0plus        
JiVitA-3          BANGLADESH                     0                         1      542   26918  dead0plus        
JiVitA-3          BANGLADESH                     1                         0     1222   26918  dead0plus        
JiVitA-3          BANGLADESH                     1                         1       59   26918  dead0plus        
JiVitA-4          BANGLADESH                     0                         0     5075    5252  dead0plus        
JiVitA-4          BANGLADESH                     0                         1       43    5252  dead0plus        
JiVitA-4          BANGLADESH                     1                         0      129    5252  dead0plus        
JiVitA-4          BANGLADESH                     1                         1        5    5252  dead0plus        
Keneba            GAMBIA                         0                         0     2176    2480  dead0plus        
Keneba            GAMBIA                         0                         1       68    2480  dead0plus        
Keneba            GAMBIA                         1                         0      218    2480  dead0plus        
Keneba            GAMBIA                         1                         1       18    2480  dead0plus        
MAL-ED            BANGLADESH                     0                         0      245     263  dead0plus        
MAL-ED            BANGLADESH                     0                         1        2     263  dead0plus        
MAL-ED            BANGLADESH                     1                         0       16     263  dead0plus        
MAL-ED            BANGLADESH                     1                         1        0     263  dead0plus        
MAL-ED            INDIA                          0                         0      226     251  dead0plus        
MAL-ED            INDIA                          0                         1        2     251  dead0plus        
MAL-ED            INDIA                          1                         0       23     251  dead0plus        
MAL-ED            INDIA                          1                         1        0     251  dead0plus        
MAL-ED            PERU                           0                         0      299     302  dead0plus        
MAL-ED            PERU                           0                         1        2     302  dead0plus        
MAL-ED            PERU                           1                         0        1     302  dead0plus        
MAL-ED            PERU                           1                         1        0     302  dead0plus        
MAL-ED            SOUTH AFRICA                   0                         0      304     312  dead0plus        
MAL-ED            SOUTH AFRICA                   0                         1        0     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                         0        8     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                         1        0     312  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      253     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        3     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0        5     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        0     261  dead0plus        
PROVIDE           BANGLADESH                     0                         0      666     700  dead0plus        
PROVIDE           BANGLADESH                     0                         1        5     700  dead0plus        
PROVIDE           BANGLADESH                     1                         0       29     700  dead0plus        
PROVIDE           BANGLADESH                     1                         1        0     700  dead0plus        
SAS-CompFeed      INDIA                          0                         0     1378    1508  dead0plus        
SAS-CompFeed      INDIA                          0                         1       26    1508  dead0plus        
SAS-CompFeed      INDIA                          1                         0       94    1508  dead0plus        
SAS-CompFeed      INDIA                          1                         1       10    1508  dead0plus        
SAS-FoodSuppl     INDIA                          0                         0      385     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                         1        3     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                         0       27     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                         1        3     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     2310    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0       85    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                         0     3588    3895  dead0plus        
VITAMIN-A         INDIA                          0                         1       55    3895  dead0plus        
VITAMIN-A         INDIA                          1                         0      232    3895  dead0plus        
VITAMIN-A         INDIA                          1                         1       20    3895  dead0plus        
ZVITAMBO          ZIMBABWE                       0                         0    11939   13862  dead0plus        
ZVITAMBO          ZIMBABWE                       0                         1      914   13862  dead0plus        
ZVITAMBO          ZIMBABWE                       1                         0      867   13862  dead0plus        
ZVITAMBO          ZIMBABWE                       1                         1      142   13862  dead0plus        


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
![](/tmp/42c2609e-4cbc-4b9d-827a-9fcf10ec992e/9ef0e4ad-9490-4c5f-9114-290949efb282/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/42c2609e-4cbc-4b9d-827a-9fcf10ec992e/9ef0e4ad-9490-4c5f-9114-290949efb282/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/42c2609e-4cbc-4b9d-827a-9fcf10ec992e/9ef0e4ad-9490-4c5f-9114-290949efb282/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/42c2609e-4cbc-4b9d-827a-9fcf10ec992e/9ef0e4ad-9490-4c5f-9114-290949efb282/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0211483    0.0193822   0.0229144
JiVitA-3       BANGLADESH   1                    NA                0.0456618    0.0336924   0.0576312
JiVitA-4       BANGLADESH   0                    NA                0.0084017    0.0057798   0.0110237
JiVitA-4       BANGLADESH   1                    NA                0.0373134   -0.0014001   0.0760270
Keneba         GAMBIA       0                    NA                0.0302901    0.0231937   0.0373866
Keneba         GAMBIA       1                    NA                0.0770087    0.0426754   0.1113419
SAS-CompFeed   INDIA        0                    NA                0.0184067    0.0099786   0.0268348
SAS-CompFeed   INDIA        1                    NA                0.0985439    0.0384974   0.1585905
VITAMIN-A      INDIA        0                    NA                0.0150471    0.0110956   0.0189987
VITAMIN-A      INDIA        1                    NA                0.0822931    0.0463592   0.1182269
ZVITAMBO       ZIMBABWE     0                    NA                0.0712930    0.0668532   0.0757329
ZVITAMBO       ZIMBABWE     1                    NA                0.1375105    0.1163752   0.1586457


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0223271   0.0205277   0.0241264
JiVitA-4       BANGLADESH   NA                   NA                0.0091394   0.0063930   0.0118858
Keneba         GAMBIA       NA                   NA                0.0346774   0.0274751   0.0418797
SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
VITAMIN-A      INDIA        NA                   NA                0.0192555   0.0149392   0.0235717
ZVITAMBO       ZIMBABWE     NA                   NA                0.0761795   0.0717631   0.0805958


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ----------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 2.159123   1.646901    2.830657
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 4.441166   1.503532   13.118414
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 2.542368   1.536542    4.206613
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 5.353694   2.773893   10.332786
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 5.469020   3.285831    9.102775
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.928806   1.634846    2.275623


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0011788    0.0006194   0.0017382
JiVitA-4       BANGLADESH   0                    NA                0.0007377   -0.0002664   0.0017417
Keneba         GAMBIA       0                    NA                0.0043873    0.0010511   0.0077235
SAS-CompFeed   INDIA        0                    NA                0.0054660    0.0010582   0.0098737
VITAMIN-A      INDIA        0                    NA                0.0042083    0.0019787   0.0064380
ZVITAMBO       ZIMBABWE     0                    NA                0.0048864    0.0032920   0.0064809


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0527959    0.0279782   0.0769800
JiVitA-4       BANGLADESH   0                    NA                0.0807119   -0.0305874   0.1799912
Keneba         GAMBIA       0                    NA                0.1265172    0.0285839   0.2145774
SAS-CompFeed   INDIA        0                    NA                0.2289632    0.0783718   0.3549484
VITAMIN-A      INDIA        0                    NA                0.2185523    0.1057613   0.3171169
ZVITAMBO       ZIMBABWE     0                    NA                0.0641438    0.0432722   0.0845602
