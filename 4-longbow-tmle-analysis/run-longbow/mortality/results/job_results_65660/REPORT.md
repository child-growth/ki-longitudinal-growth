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

**Outcome Variable:** dead6plus

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

studyid           country                        ever_wasted06    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                        0      294     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                        1        2     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                        0       40     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                        1        0     336  dead6plus        
EE                PAKISTAN                       0                        0      244     375  dead6plus        
EE                PAKISTAN                       0                        1        2     375  dead6plus        
EE                PAKISTAN                       1                        0      127     375  dead6plus        
EE                PAKISTAN                       1                        1        2     375  dead6plus        
GMS-Nepal         NEPAL                          0                        0      354     592  dead6plus        
GMS-Nepal         NEPAL                          0                        1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                        0      236     592  dead6plus        
GMS-Nepal         NEPAL                          1                        1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                        0     1621    1757  dead6plus        
iLiNS-DOSE        MALAWI                         0                        1      109    1757  dead6plus        
iLiNS-DOSE        MALAWI                         1                        0       23    1757  dead6plus        
iLiNS-DOSE        MALAWI                         1                        1        4    1757  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                        0     1062    1142  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                        1       24    1142  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                        0       52    1142  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                        1        4    1142  dead6plus        
JiVitA-3          BANGLADESH                     0                        0    16530   20985  dead6plus        
JiVitA-3          BANGLADESH                     0                        1      208   20985  dead6plus        
JiVitA-3          BANGLADESH                     1                        0     4152   20985  dead6plus        
JiVitA-3          BANGLADESH                     1                        1       95   20985  dead6plus        
JiVitA-4          BANGLADESH                     0                        0     4513    5242  dead6plus        
JiVitA-4          BANGLADESH                     0                        1       38    5242  dead6plus        
JiVitA-4          BANGLADESH                     1                        0      681    5242  dead6plus        
JiVitA-4          BANGLADESH                     1                        1       10    5242  dead6plus        
Keneba            GAMBIA                         0                        0     1621    2312  dead6plus        
Keneba            GAMBIA                         0                        1       39    2312  dead6plus        
Keneba            GAMBIA                         1                        0      623    2312  dead6plus        
Keneba            GAMBIA                         1                        1       29    2312  dead6plus        
MAL-ED            BANGLADESH                     0                        0      184     240  dead6plus        
MAL-ED            BANGLADESH                     0                        1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                        0       56     240  dead6plus        
MAL-ED            BANGLADESH                     1                        1        0     240  dead6plus        
MAL-ED            INDIA                          0                        0      157     235  dead6plus        
MAL-ED            INDIA                          0                        1        0     235  dead6plus        
MAL-ED            INDIA                          1                        0       78     235  dead6plus        
MAL-ED            INDIA                          1                        1        0     235  dead6plus        
MAL-ED            PERU                           0                        0      262     273  dead6plus        
MAL-ED            PERU                           0                        1        1     273  dead6plus        
MAL-ED            PERU                           1                        0       10     273  dead6plus        
MAL-ED            PERU                           1                        1        0     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                        0      232     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                        1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                        0       29     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                        1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        0      231     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        0       14     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                        0      456     617  dead6plus        
PROVIDE           BANGLADESH                     0                        1        3     617  dead6plus        
PROVIDE           BANGLADESH                     1                        0      158     617  dead6plus        
PROVIDE           BANGLADESH                     1                        1        0     617  dead6plus        
SAS-CompFeed      INDIA                          0                        0     1059    1384  dead6plus        
SAS-CompFeed      INDIA                          0                        1        5    1384  dead6plus        
SAS-CompFeed      INDIA                          1                        0      314    1384  dead6plus        
SAS-CompFeed      INDIA                          1                        1        6    1384  dead6plus        
SAS-FoodSuppl     INDIA                          0                        0      305     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                        1        1     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                        0       93     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                        1        3     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     1769    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      327    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                        0     2768    3606  dead6plus        
VITAMIN-A         INDIA                          0                        1       13    3606  dead6plus        
VITAMIN-A         INDIA                          1                        0      807    3606  dead6plus        
VITAMIN-A         INDIA                          1                        1       18    3606  dead6plus        
ZVITAMBO          ZIMBABWE                       0                        0     9168   11610  dead6plus        
ZVITAMBO          ZIMBABWE                       0                        1      279   11610  dead6plus        
ZVITAMBO          ZIMBABWE                       1                        0     2036   11610  dead6plus        
ZVITAMBO          ZIMBABWE                       1                        1      127   11610  dead6plus        


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
![](/tmp/c773e9b1-6230-4b9e-afe2-3dfc9fbb2285/9f9f5fce-6f3d-4e85-9b11-45d84d7f243e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c773e9b1-6230-4b9e-afe2-3dfc9fbb2285/9f9f5fce-6f3d-4e85-9b11-45d84d7f243e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c773e9b1-6230-4b9e-afe2-3dfc9fbb2285/9f9f5fce-6f3d-4e85-9b11-45d84d7f243e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c773e9b1-6230-4b9e-afe2-3dfc9fbb2285/9f9f5fce-6f3d-4e85-9b11-45d84d7f243e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0124993    0.0107794   0.0142193
JiVitA-3       BANGLADESH   1                    NA                0.0218065    0.0173690   0.0262439
JiVitA-4       BANGLADESH   0                    NA                0.0083261    0.0055577   0.0110945
JiVitA-4       BANGLADESH   1                    NA                0.0142015    0.0042838   0.0241193
Keneba         GAMBIA       0                    NA                0.0240949    0.0166669   0.0315229
Keneba         GAMBIA       1                    NA                0.0457290    0.0293527   0.0621053
SAS-CompFeed   INDIA        0                    NA                0.0046992   -0.0002951   0.0096936
SAS-CompFeed   INDIA        1                    NA                0.0187500    0.0086800   0.0288200
VITAMIN-A      INDIA        0                    NA                0.0047334    0.0021708   0.0072960
VITAMIN-A      INDIA        1                    NA                0.0219572    0.0117643   0.0321501
ZVITAMBO       ZIMBABWE     0                    NA                0.0297406    0.0263146   0.0331666
ZVITAMBO       ZIMBABWE     1                    NA                0.0557510    0.0461163   0.0653856


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0144389   0.0128023   0.0160755
JiVitA-4       BANGLADESH   NA                   NA                0.0091568   0.0064104   0.0119032
Keneba         GAMBIA       NA                   NA                0.0294118   0.0225232   0.0363003
SAS-CompFeed   INDIA        NA                   NA                0.0079480   0.0042682   0.0116277
VITAMIN-A      INDIA        NA                   NA                0.0085968   0.0055832   0.0116104
ZVITAMBO       ZIMBABWE     NA                   NA                0.0349699   0.0316281   0.0383116


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ----------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 1.744608   1.3644736    2.230646
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 1.705666   0.7859508    3.701625
Keneba         GAMBIA       0                    0                 1.000000   1.0000000    1.000000
Keneba         GAMBIA       1                    0                 1.897868   1.1830905    3.044486
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed   INDIA        1                    0                 3.990000   0.9749745   16.328735
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A      INDIA        1                    0                 4.638818   2.2727717    9.468015
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.874574   1.5232711    2.306896


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0019395    0.0009644   0.0029147
JiVitA-4       BANGLADESH   0                    NA                0.0008307   -0.0005578   0.0022192
Keneba         GAMBIA       0                    NA                0.0053168    0.0003025   0.0103312
SAS-CompFeed   INDIA        0                    NA                0.0032487    0.0001193   0.0063782
VITAMIN-A      INDIA        0                    NA                0.0038634    0.0014913   0.0062356
ZVITAMBO       ZIMBABWE     0                    NA                0.0052292    0.0032636   0.0071949


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.1343273    0.0657077   0.1979072
JiVitA-4       BANGLADESH   0                    NA                0.0907204   -0.0695040   0.2269414
Keneba         GAMBIA       0                    NA                0.1807724   -0.0019925   0.3302008
SAS-CompFeed   INDIA        0                    NA                0.4087491   -0.2627004   0.7231508
VITAMIN-A      INDIA        0                    NA                0.4494026    0.1687284   0.6353087
ZVITAMBO       ZIMBABWE     0                    NA                0.1495357    0.0933426   0.2022461
