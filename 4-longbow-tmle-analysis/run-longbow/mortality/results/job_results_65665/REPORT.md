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

**Intervention Variable:** ever_underweight06

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

studyid           country                        ever_underweight06    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  -------------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                             0      260     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                             1        2     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                             0       74     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                             1        0     336  dead6plus        
EE                PAKISTAN                       0                             0      102     375  dead6plus        
EE                PAKISTAN                       0                             1        0     375  dead6plus        
EE                PAKISTAN                       1                             0      269     375  dead6plus        
EE                PAKISTAN                       1                             1        4     375  dead6plus        
GMS-Nepal         NEPAL                          0                             0      319     592  dead6plus        
GMS-Nepal         NEPAL                          0                             1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                             0      271     592  dead6plus        
GMS-Nepal         NEPAL                          1                             1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                             0     1415    1759  dead6plus        
iLiNS-DOSE        MALAWI                         0                             1       89    1759  dead6plus        
iLiNS-DOSE        MALAWI                         1                             0      231    1759  dead6plus        
iLiNS-DOSE        MALAWI                         1                             1       24    1759  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                             0      906    1158  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                             1       18    1158  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                             0      224    1158  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                             1       10    1158  dead6plus        
JiVitA-3          BANGLADESH                     0                             0    11447   21023  dead6plus        
JiVitA-3          BANGLADESH                     0                             1      115   21023  dead6plus        
JiVitA-3          BANGLADESH                     1                             0     9265   21023  dead6plus        
JiVitA-3          BANGLADESH                     1                             1      196   21023  dead6plus        
JiVitA-4          BANGLADESH                     0                             0     3463    5266  dead6plus        
JiVitA-4          BANGLADESH                     0                             1       17    5266  dead6plus        
JiVitA-4          BANGLADESH                     1                             0     1755    5266  dead6plus        
JiVitA-4          BANGLADESH                     1                             1       31    5266  dead6plus        
Keneba            GAMBIA                         0                             0     1900    2464  dead6plus        
Keneba            GAMBIA                         0                             1       47    2464  dead6plus        
Keneba            GAMBIA                         1                             0      489    2464  dead6plus        
Keneba            GAMBIA                         1                             1       28    2464  dead6plus        
MAL-ED            BANGLADESH                     0                             0      161     240  dead6plus        
MAL-ED            BANGLADESH                     0                             1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                             0       79     240  dead6plus        
MAL-ED            BANGLADESH                     1                             1        0     240  dead6plus        
MAL-ED            INDIA                          0                             0      134     235  dead6plus        
MAL-ED            INDIA                          0                             1        0     235  dead6plus        
MAL-ED            INDIA                          1                             0      101     235  dead6plus        
MAL-ED            INDIA                          1                             1        0     235  dead6plus        
MAL-ED            PERU                           0                             0      225     273  dead6plus        
MAL-ED            PERU                           0                             1        1     273  dead6plus        
MAL-ED            PERU                           1                             0       47     273  dead6plus        
MAL-ED            PERU                           1                             1        0     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                             0      216     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                             1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                             0       45     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                             1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             0      203     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             0       42     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                             0      414     617  dead6plus        
PROVIDE           BANGLADESH                     0                             1        1     617  dead6plus        
PROVIDE           BANGLADESH                     1                             0      200     617  dead6plus        
PROVIDE           BANGLADESH                     1                             1        2     617  dead6plus        
SAS-CompFeed      INDIA                          0                             0      805    1389  dead6plus        
SAS-CompFeed      INDIA                          0                             1        1    1389  dead6plus        
SAS-CompFeed      INDIA                          1                             0      572    1389  dead6plus        
SAS-CompFeed      INDIA                          1                             1       11    1389  dead6plus        
SAS-FoodSuppl     INDIA                          0                             0      187     400  dead6plus        
SAS-FoodSuppl     INDIA                          0                             1        1     400  dead6plus        
SAS-FoodSuppl     INDIA                          1                             0      209     400  dead6plus        
SAS-FoodSuppl     INDIA                          1                             1        3     400  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             0     1843    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             0      253    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                             0     1579    3615  dead6plus        
VITAMIN-A         INDIA                          0                             1        7    3615  dead6plus        
VITAMIN-A         INDIA                          1                             0     2004    3615  dead6plus        
VITAMIN-A         INDIA                          1                             1       25    3615  dead6plus        
ZVITAMBO          ZIMBABWE                       0                             0     9476   11707  dead6plus        
ZVITAMBO          ZIMBABWE                       0                             1      215   11707  dead6plus        
ZVITAMBO          ZIMBABWE                       1                             0     1815   11707  dead6plus        
ZVITAMBO          ZIMBABWE                       1                             1      201   11707  dead6plus        


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
* studyid: SAS-CompFeed, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/6daec14b-f69d-4b7c-a90c-a7e5b3f4738f/541e8d45-1f87-4c03-9762-fef53dd23b8d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6daec14b-f69d-4b7c-a90c-a7e5b3f4738f/541e8d45-1f87-4c03-9762-fef53dd23b8d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6daec14b-f69d-4b7c-a90c-a7e5b3f4738f/541e8d45-1f87-4c03-9762-fef53dd23b8d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6daec14b-f69d-4b7c-a90c-a7e5b3f4738f/541e8d45-1f87-4c03-9762-fef53dd23b8d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0595546   0.0475473   0.0715619
iLiNS-DOSE     MALAWI       1                    NA                0.0991731   0.0603776   0.1379686
iLiNS-DYAD-M   MALAWI       0                    NA                0.0196989   0.0107187   0.0286791
iLiNS-DYAD-M   MALAWI       1                    NA                0.0400775   0.0138935   0.0662614
JiVitA-3       BANGLADESH   0                    NA                0.0102097   0.0082734   0.0121461
JiVitA-3       BANGLADESH   1                    NA                0.0195669   0.0166265   0.0225072
JiVitA-4       BANGLADESH   0                    NA                0.0049107   0.0021865   0.0076350
JiVitA-4       BANGLADESH   1                    NA                0.0171479   0.0111275   0.0231683
Keneba         GAMBIA       0                    NA                0.0246404   0.0177200   0.0315607
Keneba         GAMBIA       1                    NA                0.0530159   0.0336246   0.0724073
VITAMIN-A      INDIA        0                    NA                0.0044136   0.0011508   0.0076764
VITAMIN-A      INDIA        1                    NA                0.0123213   0.0075206   0.0171220
ZVITAMBO       ZIMBABWE     0                    NA                0.0224295   0.0194639   0.0253951
ZVITAMBO       ZIMBABWE     1                    NA                0.0931345   0.0800796   0.1061893


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0642410   0.0527799   0.0757022
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0241796   0.0153286   0.0330306
JiVitA-3       BANGLADESH   NA                   NA                0.0147933   0.0131485   0.0164382
JiVitA-4       BANGLADESH   NA                   NA                0.0091151   0.0063755   0.0118547
Keneba         GAMBIA       NA                   NA                0.0304383   0.0236539   0.0372227
VITAMIN-A      INDIA        NA                   NA                0.0088520   0.0057982   0.0119058
ZVITAMBO       ZIMBABWE     NA                   NA                0.0355343   0.0321807   0.0388879


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.665247   1.0722959   2.586086
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 2.034506   0.9160141   4.518724
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.916493   1.5045583   2.441211
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 3.491916   1.8148686   6.718655
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 2.151589   1.3567135   3.412170
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 2.791664   1.2104410   6.438469
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 4.152319   3.4249389   5.034179


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0046865   -0.0008605   0.0102335
iLiNS-DYAD-M   MALAWI       0                    NA                0.0044807   -0.0011381   0.0100996
JiVitA-3       BANGLADESH   0                    NA                0.0045836    0.0028968   0.0062704
JiVitA-4       BANGLADESH   0                    NA                0.0042043    0.0019569   0.0064518
Keneba         GAMBIA       0                    NA                0.0057979    0.0013923   0.0102036
VITAMIN-A      INDIA        0                    NA                0.0044384    0.0011779   0.0076988
ZVITAMBO       ZIMBABWE     0                    NA                0.0131048    0.0107265   0.0154831


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0729512   -0.0165999   0.1546139
iLiNS-DYAD-M   MALAWI       0                    NA                0.1853110   -0.0700034   0.3797046
JiVitA-3       BANGLADESH   0                    NA                0.3098411    0.1930732   0.4097118
JiVitA-4       BANGLADESH   0                    NA                0.4612513    0.1790145   0.6464613
Keneba         GAMBIA       0                    NA                0.1904818    0.0395908   0.3176662
VITAMIN-A      INDIA        0                    NA                0.5013990    0.0420265   0.7404907
ZVITAMBO       ZIMBABWE     0                    NA                0.3687928    0.3084348   0.4238830
