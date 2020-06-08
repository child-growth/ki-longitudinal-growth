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

**Outcome Variable:** co_occurence

## Predictor Variables

**Intervention Variable:** ever_sstunted06

**Adjustment Set:**

* sex
* arm
* brthmon
* single
* hhwealth_quart
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* delta_brthmon
* delta_single
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_sstunted06    co_occurence   n_cell      n  outcome_variable 
---------------  -----------------------------  ----------------  -------------  -------  -----  -----------------
CMC-V-BCS-2002   INDIA                          0                             0      261    366  co_occurence     
CMC-V-BCS-2002   INDIA                          0                             1       11    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                             0       83    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                             1       11    366  co_occurence     
CMIN             BANGLADESH                     0                             0      166    237  co_occurence     
CMIN             BANGLADESH                     0                             1       15    237  co_occurence     
CMIN             BANGLADESH                     1                             0       45    237  co_occurence     
CMIN             BANGLADESH                     1                             1       11    237  co_occurence     
COHORTS          GUATEMALA                      0                             0      637    778  co_occurence     
COHORTS          GUATEMALA                      0                             1       29    778  co_occurence     
COHORTS          GUATEMALA                      1                             0      103    778  co_occurence     
COHORTS          GUATEMALA                      1                             1        9    778  co_occurence     
COHORTS          PHILIPPINES                    0                             0     2166   2487  co_occurence     
COHORTS          PHILIPPINES                    0                             1      152   2487  co_occurence     
COHORTS          PHILIPPINES                    1                             0      134   2487  co_occurence     
COHORTS          PHILIPPINES                    1                             1       35   2487  co_occurence     
CONTENT          PERU                           0                             0      193    200  co_occurence     
CONTENT          PERU                           0                             1        0    200  co_occurence     
CONTENT          PERU                           1                             0        7    200  co_occurence     
CONTENT          PERU                           1                             1        0    200  co_occurence     
EE               PAKISTAN                       0                             0      169    346  co_occurence     
EE               PAKISTAN                       0                             1       27    346  co_occurence     
EE               PAKISTAN                       1                             0      103    346  co_occurence     
EE               PAKISTAN                       1                             1       47    346  co_occurence     
GMS-Nepal        NEPAL                          0                             0      462    550  co_occurence     
GMS-Nepal        NEPAL                          0                             1       47    550  co_occurence     
GMS-Nepal        NEPAL                          1                             0       28    550  co_occurence     
GMS-Nepal        NEPAL                          1                             1       13    550  co_occurence     
IRC              INDIA                          0                             0      331    405  co_occurence     
IRC              INDIA                          0                             1       13    405  co_occurence     
IRC              INDIA                          1                             0       49    405  co_occurence     
IRC              INDIA                          1                             1       12    405  co_occurence     
JiVitA-4         BANGLADESH                     0                             0     3719   4541  co_occurence     
JiVitA-4         BANGLADESH                     0                             1      311   4541  co_occurence     
JiVitA-4         BANGLADESH                     1                             0      386   4541  co_occurence     
JiVitA-4         BANGLADESH                     1                             1      125   4541  co_occurence     
Keneba           GAMBIA                         0                             0     1489   1776  co_occurence     
Keneba           GAMBIA                         0                             1       72   1776  co_occurence     
Keneba           GAMBIA                         1                             0      187   1776  co_occurence     
Keneba           GAMBIA                         1                             1       28   1776  co_occurence     
LCNI-5           MALAWI                         0                             0      630    693  co_occurence     
LCNI-5           MALAWI                         0                             1       14    693  co_occurence     
LCNI-5           MALAWI                         1                             0       45    693  co_occurence     
LCNI-5           MALAWI                         1                             1        4    693  co_occurence     
MAL-ED           BANGLADESH                     0                             0      193    221  co_occurence     
MAL-ED           BANGLADESH                     0                             1       12    221  co_occurence     
MAL-ED           BANGLADESH                     1                             0       14    221  co_occurence     
MAL-ED           BANGLADESH                     1                             1        2    221  co_occurence     
MAL-ED           BRAZIL                         0                             0      165    180  co_occurence     
MAL-ED           BRAZIL                         0                             1        0    180  co_occurence     
MAL-ED           BRAZIL                         1                             0       14    180  co_occurence     
MAL-ED           BRAZIL                         1                             1        1    180  co_occurence     
MAL-ED           INDIA                          0                             0      195    228  co_occurence     
MAL-ED           INDIA                          0                             1       14    228  co_occurence     
MAL-ED           INDIA                          1                             0       16    228  co_occurence     
MAL-ED           INDIA                          1                             1        3    228  co_occurence     
MAL-ED           NEPAL                          0                             0      217    229  co_occurence     
MAL-ED           NEPAL                          0                             1        3    229  co_occurence     
MAL-ED           NEPAL                          1                             0        8    229  co_occurence     
MAL-ED           NEPAL                          1                             1        1    229  co_occurence     
MAL-ED           PERU                           0                             0      188    222  co_occurence     
MAL-ED           PERU                           0                             1        2    222  co_occurence     
MAL-ED           PERU                           1                             0       28    222  co_occurence     
MAL-ED           PERU                           1                             1        4    222  co_occurence     
MAL-ED           SOUTH AFRICA                   0                             0      213    241  co_occurence     
MAL-ED           SOUTH AFRICA                   0                             1        3    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                             0       24    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                             1        1    241  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      191    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        0    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0       33    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        1    225  co_occurence     
NIH-Birth        BANGLADESH                     0                             0      368    462  co_occurence     
NIH-Birth        BANGLADESH                     0                             1       41    462  co_occurence     
NIH-Birth        BANGLADESH                     1                             0       43    462  co_occurence     
NIH-Birth        BANGLADESH                     1                             1       10    462  co_occurence     
NIH-Crypto       BANGLADESH                     0                             0      565    634  co_occurence     
NIH-Crypto       BANGLADESH                     0                             1       23    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                             0       40    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                             1        6    634  co_occurence     
PROBIT           BELARUS                        0                             0     2127   2146  co_occurence     
PROBIT           BELARUS                        0                             1        1   2146  co_occurence     
PROBIT           BELARUS                        1                             0       18   2146  co_occurence     
PROBIT           BELARUS                        1                             1        0   2146  co_occurence     
PROVIDE          BANGLADESH                     0                             0      503    563  co_occurence     
PROVIDE          BANGLADESH                     0                             1       33    563  co_occurence     
PROVIDE          BANGLADESH                     1                             0       23    563  co_occurence     
PROVIDE          BANGLADESH                     1                             1        4    563  co_occurence     
ResPak           PAKISTAN                       0                             0        3      9  co_occurence     
ResPak           PAKISTAN                       0                             1        0      9  co_occurence     
ResPak           PAKISTAN                       1                             0        5      9  co_occurence     
ResPak           PAKISTAN                       1                             1        1      9  co_occurence     
SAS-CompFeed     INDIA                          0                             0      990   1259  co_occurence     
SAS-CompFeed     INDIA                          0                             1       84   1259  co_occurence     
SAS-CompFeed     INDIA                          1                             0      141   1259  co_occurence     
SAS-CompFeed     INDIA                          1                             1       44   1259  co_occurence     
SAS-FoodSuppl    INDIA                          0                             0      228    323  co_occurence     
SAS-FoodSuppl    INDIA                          0                             1       46    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                             0       35    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                             1       14    323  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0      914    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       16    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0       45    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1        5    980  co_occurence     
ZVITAMBO         ZIMBABWE                       0                             0     1363   1691  co_occurence     
ZVITAMBO         ZIMBABWE                       0                             1       63   1691  co_occurence     
ZVITAMBO         ZIMBABWE                       1                             0      238   1691  co_occurence     
ZVITAMBO         ZIMBABWE                       1                             1       27   1691  co_occurence     


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CMIN, country: BANGLADESH
* studyid: COHORTS, country: GUATEMALA
* studyid: COHORTS, country: PHILIPPINES
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: IRC, country: INDIA
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: NIH-Birth, country: BANGLADESH
* studyid: NIH-Crypto, country: BANGLADESH
* studyid: PROBIT, country: BELARUS
* studyid: PROVIDE, country: BANGLADESH
* studyid: ResPak, country: PAKISTAN
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: CONTENT, country: PERU
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS
* studyid: PROVIDE, country: BANGLADESH
* studyid: ResPak, country: PAKISTAN

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
![](/tmp/09a0cd7c-fe51-476f-bb4b-357a7d72bae4/f55bb5f8-7b67-46aa-adbb-5a011330578a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/09a0cd7c-fe51-476f-bb4b-357a7d72bae4/f55bb5f8-7b67-46aa-adbb-5a011330578a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/09a0cd7c-fe51-476f-bb4b-357a7d72bae4/f55bb5f8-7b67-46aa-adbb-5a011330578a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/09a0cd7c-fe51-476f-bb4b-357a7d72bae4/f55bb5f8-7b67-46aa-adbb-5a011330578a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0404277   0.0169938   0.0638617
CMC-V-BCS-2002   INDIA                          1                    NA                0.1153734   0.0508654   0.1798814
CMIN             BANGLADESH                     0                    NA                0.0823068   0.0418943   0.1227193
CMIN             BANGLADESH                     1                    NA                0.2158337   0.0992839   0.3323836
COHORTS          GUATEMALA                      0                    NA                0.0435435   0.0280345   0.0590526
COHORTS          GUATEMALA                      1                    NA                0.0803571   0.0299792   0.1307351
COHORTS          PHILIPPINES                    0                    NA                0.0667421   0.0565207   0.0769635
COHORTS          PHILIPPINES                    1                    NA                0.1973801   0.1246938   0.2700663
EE               PAKISTAN                       0                    NA                0.1374530   0.0886482   0.1862579
EE               PAKISTAN                       1                    NA                0.3145210   0.2397141   0.3893278
GMS-Nepal        NEPAL                          0                    NA                0.0929045   0.0676520   0.1181570
GMS-Nepal        NEPAL                          1                    NA                0.3275186   0.1763834   0.4786537
IRC              INDIA                          0                    NA                0.0375682   0.0175057   0.0576306
IRC              INDIA                          1                    NA                0.2053669   0.1040483   0.3066855
JiVitA-4         BANGLADESH                     0                    NA                0.0780490   0.0687708   0.0873272
JiVitA-4         BANGLADESH                     1                    NA                0.2305475   0.1808817   0.2802133
Keneba           GAMBIA                         0                    NA                0.0468151   0.0363240   0.0573062
Keneba           GAMBIA                         1                    NA                0.1217319   0.0762063   0.1672575
NIH-Birth        BANGLADESH                     0                    NA                0.0998773   0.0707308   0.1290239
NIH-Birth        BANGLADESH                     1                    NA                0.1644610   0.0612171   0.2677050
NIH-Crypto       BANGLADESH                     0                    NA                0.0391156   0.0234332   0.0547981
NIH-Crypto       BANGLADESH                     1                    NA                0.1304348   0.0330346   0.2278350
SAS-CompFeed     INDIA                          0                    NA                0.0791301   0.0673603   0.0908999
SAS-CompFeed     INDIA                          1                    NA                0.2304133   0.1722489   0.2885777
SAS-FoodSuppl    INDIA                          0                    NA                0.1694952   0.1253227   0.2136677
SAS-FoodSuppl    INDIA                          1                    NA                0.2811861   0.1585843   0.4037879
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0172043   0.0088429   0.0255657
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1000000   0.0168033   0.1831967
ZVITAMBO         ZIMBABWE                       0                    NA                0.0441171   0.0334494   0.0547848
ZVITAMBO         ZIMBABWE                       1                    NA                0.1025147   0.0659470   0.1390823


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0601093   0.0357249   0.0844936
CMIN             BANGLADESH                     NA                   NA                0.1097046   0.0698323   0.1495770
COHORTS          GUATEMALA                      NA                   NA                0.0488432   0.0336878   0.0639985
COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
EE               PAKISTAN                       NA                   NA                0.2138728   0.1706052   0.2571404
GMS-Nepal        NEPAL                          NA                   NA                0.1090909   0.0830130   0.1351688
IRC              INDIA                          NA                   NA                0.0617284   0.0382610   0.0851958
JiVitA-4         BANGLADESH                     NA                   NA                0.0960141   0.0859500   0.1060782
Keneba           GAMBIA                         NA                   NA                0.0563063   0.0455826   0.0670300
NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
NIH-Crypto       BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
SAS-CompFeed     INDIA                          NA                   NA                0.1016680   0.0902317   0.1131043
SAS-FoodSuppl    INDIA                          NA                   NA                0.1857585   0.1432798   0.2282372
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0532229   0.0425206   0.0639253


### Parameter: RR


studyid          country                        intervention_level   baseline_level    estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ---------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.0000000    1.000000
CMC-V-BCS-2002   INDIA                          1                    0                 2.853818   1.2729531    6.397938
CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
CMIN             BANGLADESH                     1                    0                 2.622307   1.2600412    5.457358
COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
COHORTS          GUATEMALA                      1                    0                 1.845443   0.8973427    3.795274
COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
COHORTS          PHILIPPINES                    1                    0                 2.957355   1.9854205    4.405085
EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
EE               PAKISTAN                       1                    0                 2.288207   1.4924440    3.508266
GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
GMS-Nepal        NEPAL                          1                    0                 3.525324   2.0633594    6.023144
IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
IRC              INDIA                          1                    0                 5.466514   2.6386814   11.324892
JiVitA-4         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                 2.953881   2.3059466    3.783874
Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
Keneba           GAMBIA                         1                    0                 2.600269   1.6832667    4.016833
NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                 1.646630   0.8243267    3.289219
NIH-Crypto       BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                 3.334594   1.4287411    7.782736
SAS-CompFeed     INDIA                          0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed     INDIA                          1                    0                 2.911829   2.1151851    4.008514
SAS-FoodSuppl    INDIA                          0                    0                 1.000000   1.0000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                 1.658962   1.0017186    2.747434
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 5.812500   2.2177450   15.234013
ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                 2.323695   1.5098696    3.576176


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0196815    0.0015309   0.0378322
CMIN             BANGLADESH                     0                    NA                0.0273978    0.0002932   0.0545025
COHORTS          GUATEMALA                      0                    NA                0.0052996   -0.0023428   0.0129421
COHORTS          PHILIPPINES                    0                    NA                0.0084489    0.0040347   0.0128631
EE               PAKISTAN                       0                    NA                0.0764198    0.0366548   0.1161848
GMS-Nepal        NEPAL                          0                    NA                0.0161864    0.0043382   0.0280346
IRC              INDIA                          0                    NA                0.0241602    0.0079204   0.0404001
JiVitA-4         BANGLADESH                     0                    NA                0.0179651    0.0120723   0.0238578
Keneba           GAMBIA                         0                    NA                0.0094912    0.0038081   0.0151743
NIH-Birth        BANGLADESH                     0                    NA                0.0105123   -0.0024492   0.0234738
NIH-Crypto       BANGLADESH                     0                    NA                0.0066257   -0.0007663   0.0140176
SAS-CompFeed     INDIA                          0                    NA                0.0225379    0.0118665   0.0332093
SAS-FoodSuppl    INDIA                          0                    NA                0.0162633   -0.0042243   0.0367510
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0042243   -0.0001918   0.0086404
ZVITAMBO         ZIMBABWE                       0                    NA                0.0091059    0.0030649   0.0151468


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.3274293   -0.0101810   0.5522076
CMIN             BANGLADESH                     0                    NA                0.2497419   -0.0253869   0.4510489
COHORTS          GUATEMALA                      0                    NA                0.1085032   -0.0585805   0.2492149
COHORTS          PHILIPPINES                    0                    NA                0.1123658    0.0535795   0.1675006
EE               PAKISTAN                       0                    NA                0.3573142    0.1531829   0.5122382
GMS-Nepal        NEPAL                          0                    NA                0.1483752    0.0379792   0.2461028
IRC              INDIA                          0                    NA                0.3913958    0.1242907   0.5770297
JiVitA-4         BANGLADESH                     0                    NA                0.1871087    0.1291150   0.2412404
Keneba           GAMBIA                         0                    NA                0.1685636    0.0666710   0.2593325
NIH-Birth        BANGLADESH                     0                    NA                0.0952289   -0.0278992   0.2036079
NIH-Crypto       BANGLADESH                     0                    NA                0.1448510   -0.0237354   0.2856751
SAS-CompFeed     INDIA                          0                    NA                0.2216813    0.1186478   0.3126699
SAS-FoodSuppl    INDIA                          0                    NA                0.0875510   -0.0281830   0.1902577
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1971326   -0.0160720   0.3656001
ZVITAMBO         ZIMBABWE                       0                    NA                0.1710889    0.0549293   0.2729713
