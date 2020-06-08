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

studyid           country                        ever_underweight06    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  -------------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                        0      262     338  dead             
Burkina Faso Zn   BURKINA FASO                   0                        1        2     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                        0       74     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                        1        0     338  dead             
EE                PAKISTAN                       0                        0      103     380  dead             
EE                PAKISTAN                       0                        1        0     380  dead             
EE                PAKISTAN                       1                        0      273     380  dead             
EE                PAKISTAN                       1                        1        4     380  dead             
GMS-Nepal         NEPAL                          0                        0      388     697  dead             
GMS-Nepal         NEPAL                          0                        1        2     697  dead             
GMS-Nepal         NEPAL                          1                        0      302     697  dead             
GMS-Nepal         NEPAL                          1                        1        5     697  dead             
iLiNS-DOSE        MALAWI                         0                        0     1464    1816  dead             
iLiNS-DOSE        MALAWI                         0                        1       89    1816  dead             
iLiNS-DOSE        MALAWI                         1                        0      238    1816  dead             
iLiNS-DOSE        MALAWI                         1                        1       25    1816  dead             
iLiNS-DYAD-M      MALAWI                         0                        0      930    1202  dead             
iLiNS-DYAD-M      MALAWI                         0                        1       20    1202  dead             
iLiNS-DYAD-M      MALAWI                         1                        0      232    1202  dead             
iLiNS-DYAD-M      MALAWI                         1                        1       20    1202  dead             
JiVitA-3          BANGLADESH                     0                        0    14424   27237  dead             
JiVitA-3          BANGLADESH                     0                        1      240   27237  dead             
JiVitA-3          BANGLADESH                     1                        0    11988   27237  dead             
JiVitA-3          BANGLADESH                     1                        1      585   27237  dead             
JiVitA-4          BANGLADESH                     0                        0     3471    5276  dead             
JiVitA-4          BANGLADESH                     0                        1       17    5276  dead             
JiVitA-4          BANGLADESH                     1                        0     1758    5276  dead             
JiVitA-4          BANGLADESH                     1                        1       30    5276  dead             
Keneba            GAMBIA                         0                        0     2045    2632  dead             
Keneba            GAMBIA                         0                        1       34    2632  dead             
Keneba            GAMBIA                         1                        0      526    2632  dead             
Keneba            GAMBIA                         1                        1       27    2632  dead             
MAL-ED            BANGLADESH                     0                        0      174     265  dead             
MAL-ED            BANGLADESH                     0                        1        1     265  dead             
MAL-ED            BANGLADESH                     1                        0       88     265  dead             
MAL-ED            BANGLADESH                     1                        1        2     265  dead             
MAL-ED            INDIA                          0                        0      144     251  dead             
MAL-ED            INDIA                          0                        1        1     251  dead             
MAL-ED            INDIA                          1                        0      105     251  dead             
MAL-ED            INDIA                          1                        1        1     251  dead             
MAL-ED            PERU                           0                        0      251     303  dead             
MAL-ED            PERU                           0                        1        2     303  dead             
MAL-ED            PERU                           1                        0       50     303  dead             
MAL-ED            PERU                           1                        1        0     303  dead             
MAL-ED            SOUTH AFRICA                   0                        0      258     314  dead             
MAL-ED            SOUTH AFRICA                   0                        1        0     314  dead             
MAL-ED            SOUTH AFRICA                   1                        0       55     314  dead             
MAL-ED            SOUTH AFRICA                   1                        1        1     314  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        0      214     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        1        2     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        0       45     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        1        1     262  dead             
PROVIDE           BANGLADESH                     0                        0      470     700  dead             
PROVIDE           BANGLADESH                     0                        1        3     700  dead             
PROVIDE           BANGLADESH                     1                        0      226     700  dead             
PROVIDE           BANGLADESH                     1                        1        1     700  dead             
SAS-CompFeed      INDIA                          0                        0      867    1533  dead             
SAS-CompFeed      INDIA                          0                        1       16    1533  dead             
SAS-CompFeed      INDIA                          1                        0      616    1533  dead             
SAS-CompFeed      INDIA                          1                        1       34    1533  dead             
SAS-FoodSuppl     INDIA                          0                        0      194     416  dead             
SAS-FoodSuppl     INDIA                          0                        1        2     416  dead             
SAS-FoodSuppl     INDIA                          1                        0      216     416  dead             
SAS-FoodSuppl     INDIA                          1                        1        4     416  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2110    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      285    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2396  dead             
VITAMIN-A         INDIA                          0                        0     1692    3906  dead             
VITAMIN-A         INDIA                          0                        1       10    3906  dead             
VITAMIN-A         INDIA                          1                        0     2136    3906  dead             
VITAMIN-A         INDIA                          1                        1       68    3906  dead             
ZVITAMBO          ZIMBABWE                       0                        0    10958   14085  dead             
ZVITAMBO          ZIMBABWE                       0                        1      563   14085  dead             
ZVITAMBO          ZIMBABWE                       1                        0     2019   14085  dead             
ZVITAMBO          ZIMBABWE                       1                        1      545   14085  dead             


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
![](/tmp/e8165256-b0f7-4407-b922-2b4cd40403ae/31dbe8a8-b890-4f7f-99d0-91c55613ebd6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e8165256-b0f7-4407-b922-2b4cd40403ae/31dbe8a8-b890-4f7f-99d0-91c55613ebd6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e8165256-b0f7-4407-b922-2b4cd40403ae/31dbe8a8-b890-4f7f-99d0-91c55613ebd6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e8165256-b0f7-4407-b922-2b4cd40403ae/31dbe8a8-b890-4f7f-99d0-91c55613ebd6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0575318   0.0459161   0.0691476
iLiNS-DOSE     MALAWI       1                    NA                0.0994128   0.0619605   0.1368651
iLiNS-DYAD-M   MALAWI       0                    NA                0.0209488   0.0118287   0.0300689
iLiNS-DYAD-M   MALAWI       1                    NA                0.0815286   0.0484414   0.1146158
JiVitA-3       BANGLADESH   0                    NA                0.0172081   0.0149455   0.0194707
JiVitA-3       BANGLADESH   1                    NA                0.0440166   0.0401774   0.0478558
JiVitA-4       BANGLADESH   0                    NA                0.0049036   0.0021826   0.0076246
JiVitA-4       BANGLADESH   1                    NA                0.0165678   0.0107178   0.0224178
Keneba         GAMBIA       0                    NA                0.0166049   0.0110662   0.0221435
Keneba         GAMBIA       1                    NA                0.0497464   0.0308439   0.0686489
SAS-CompFeed   INDIA        0                    NA                0.0185320   0.0106396   0.0264244
SAS-CompFeed   INDIA        1                    NA                0.0514753   0.0302957   0.0726548
VITAMIN-A      INDIA        0                    NA                0.0059510   0.0022711   0.0096308
VITAMIN-A      INDIA        1                    NA                0.0310001   0.0237506   0.0382496
ZVITAMBO       ZIMBABWE     0                    NA                0.0492982   0.0453594   0.0532370
ZVITAMBO       ZIMBABWE     1                    NA                0.2054742   0.1898251   0.2211233


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0627753   0.0516163   0.0739344
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0332779   0.0231340   0.0434218
JiVitA-3       BANGLADESH   NA                   NA                0.0302897   0.0281334   0.0324460
JiVitA-4       BANGLADESH   NA                   NA                0.0089083   0.0062043   0.0116122
Keneba         GAMBIA       NA                   NA                0.0231763   0.0174270   0.0289256
SAS-CompFeed   INDIA        NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A      INDIA        NA                   NA                0.0199693   0.0155816   0.0243570
ZVITAMBO       ZIMBABWE     NA                   NA                0.0786652   0.0742191   0.0831114


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ----------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.000000    1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.727961   1.126722    2.650032
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000    1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 3.891798   2.143940    7.064606
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 2.557904   2.192907    2.983653
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 3.378718   1.754093    6.508056
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 2.995889   1.806660    4.967926
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 2.777636   1.862546    4.142321
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 5.209232   2.689040   10.091370
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 4.167988   3.734608    4.651659


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0052435   -0.0002227   0.0107097
iLiNS-DYAD-M   MALAWI       0                    NA                0.0123290    0.0049362   0.0197218
JiVitA-3       BANGLADESH   0                    NA                0.0130816    0.0109208   0.0152425
JiVitA-4       BANGLADESH   0                    NA                0.0040047    0.0018052   0.0062042
Keneba         GAMBIA       0                    NA                0.0065714    0.0025599   0.0105829
SAS-CompFeed   INDIA        0                    NA                0.0140837    0.0057865   0.0223810
VITAMIN-A      INDIA        0                    NA                0.0140183    0.0094179   0.0186187
ZVITAMBO       ZIMBABWE     0                    NA                0.0293671    0.0262382   0.0324959


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0835277   -0.0065967   0.1655830
iLiNS-DYAD-M   MALAWI       0                    NA                0.3704879    0.1447214   0.5366592
JiVitA-3       BANGLADESH   0                    NA                0.4318838    0.3644752   0.4921425
JiVitA-4       BANGLADESH   0                    NA                0.4495466    0.1646999   0.6372574
Keneba         GAMBIA       0                    NA                0.2835404    0.1060075   0.4258181
SAS-CompFeed   INDIA        0                    NA                0.4318077    0.2365169   0.5771452
VITAMIN-A      INDIA        0                    NA                0.7019926    0.4694075   0.8326240
ZVITAMBO       ZIMBABWE     0                    NA                0.3733170    0.3380074   0.4067432
