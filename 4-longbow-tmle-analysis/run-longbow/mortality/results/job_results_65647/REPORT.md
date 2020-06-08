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

studyid           country                        ever_stunted06    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                       0      295     336  dead624          
Burkina Faso Zn   BURKINA FASO                   0                       1        2     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                       0       39     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                       1        0     336  dead624          
EE                PAKISTAN                       0                       0       91     374  dead624          
EE                PAKISTAN                       0                       1        0     374  dead624          
EE                PAKISTAN                       1                       0      279     374  dead624          
EE                PAKISTAN                       1                       1        4     374  dead624          
GMS-Nepal         NEPAL                          0                       0      398     592  dead624          
GMS-Nepal         NEPAL                          0                       1        1     592  dead624          
GMS-Nepal         NEPAL                          1                       0      192     592  dead624          
GMS-Nepal         NEPAL                          1                       1        1     592  dead624          
iLiNS-DOSE        MALAWI                         0                       0     1156    1756  dead624          
iLiNS-DOSE        MALAWI                         0                       1       73    1756  dead624          
iLiNS-DOSE        MALAWI                         1                       0      487    1756  dead624          
iLiNS-DOSE        MALAWI                         1                       1       40    1756  dead624          
iLiNS-DYAD-M      MALAWI                         0                       0      812    1148  dead624          
iLiNS-DYAD-M      MALAWI                         0                       1       13    1148  dead624          
iLiNS-DYAD-M      MALAWI                         1                       0      312    1148  dead624          
iLiNS-DYAD-M      MALAWI                         1                       1       11    1148  dead624          
JiVitA-3          BANGLADESH                     0                       0    11910   21009  dead624          
JiVitA-3          BANGLADESH                     0                       1      106   21009  dead624          
JiVitA-3          BANGLADESH                     1                       0     8830   21009  dead624          
JiVitA-3          BANGLADESH                     1                       1      163   21009  dead624          
JiVitA-4          BANGLADESH                     0                       0     3210    5260  dead624          
JiVitA-4          BANGLADESH                     0                       1       20    5260  dead624          
JiVitA-4          BANGLADESH                     1                       0     2003    5260  dead624          
JiVitA-4          BANGLADESH                     1                       1       27    5260  dead624          
Keneba            GAMBIA                         0                       0     1557    2312  dead624          
Keneba            GAMBIA                         0                       1       13    2312  dead624          
Keneba            GAMBIA                         1                       0      716    2312  dead624          
Keneba            GAMBIA                         1                       1       26    2312  dead624          
MAL-ED            BANGLADESH                     0                       0      155     240  dead624          
MAL-ED            BANGLADESH                     0                       1        0     240  dead624          
MAL-ED            BANGLADESH                     1                       0       85     240  dead624          
MAL-ED            BANGLADESH                     1                       1        0     240  dead624          
MAL-ED            INDIA                          0                       0      149     235  dead624          
MAL-ED            INDIA                          0                       1        0     235  dead624          
MAL-ED            INDIA                          1                       0       86     235  dead624          
MAL-ED            INDIA                          1                       1        0     235  dead624          
MAL-ED            PERU                           0                       0      149     273  dead624          
MAL-ED            PERU                           0                       1        0     273  dead624          
MAL-ED            PERU                           1                       0      123     273  dead624          
MAL-ED            PERU                           1                       1        1     273  dead624          
MAL-ED            SOUTH AFRICA                   0                       0      155     261  dead624          
MAL-ED            SOUTH AFRICA                   0                       1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                       0      106     261  dead624          
MAL-ED            SOUTH AFRICA                   1                       1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                       0      140     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                       1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                       0      105     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                       1        0     245  dead624          
PROVIDE           BANGLADESH                     0                       0      455     617  dead624          
PROVIDE           BANGLADESH                     0                       1        2     617  dead624          
PROVIDE           BANGLADESH                     1                       0      160     617  dead624          
PROVIDE           BANGLADESH                     1                       1        0     617  dead624          
SAS-CompFeed      INDIA                          0                       0      796    1388  dead624          
SAS-CompFeed      INDIA                          0                       1        2    1388  dead624          
SAS-CompFeed      INDIA                          1                       0      580    1388  dead624          
SAS-CompFeed      INDIA                          1                       1       10    1388  dead624          
SAS-FoodSuppl     INDIA                          0                       0      214     402  dead624          
SAS-FoodSuppl     INDIA                          0                       1        1     402  dead624          
SAS-FoodSuppl     INDIA                          1                       0      184     402  dead624          
SAS-FoodSuppl     INDIA                          1                       1        3     402  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       0     1651    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       0      445    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       1        0    2096  dead624          
VITAMIN-A         INDIA                          0                       0     2094    3605  dead624          
VITAMIN-A         INDIA                          0                       1       11    3605  dead624          
VITAMIN-A         INDIA                          1                       0     1480    3605  dead624          
VITAMIN-A         INDIA                          1                       1       20    3605  dead624          
ZVITAMBO          ZIMBABWE                       0                       0     8028   11694  dead624          
ZVITAMBO          ZIMBABWE                       0                       1      190   11694  dead624          
ZVITAMBO          ZIMBABWE                       1                       0     3261   11694  dead624          
ZVITAMBO          ZIMBABWE                       1                       1      215   11694  dead624          


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







# Results Detail

## Results Plots
![](/tmp/bc70c5c4-058c-45f8-ae09-7d70731571a7/1a806268-e863-499f-983d-8d812517828d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bc70c5c4-058c-45f8-ae09-7d70731571a7/1a806268-e863-499f-983d-8d812517828d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bc70c5c4-058c-45f8-ae09-7d70731571a7/1a806268-e863-499f-983d-8d812517828d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bc70c5c4-058c-45f8-ae09-7d70731571a7/1a806268-e863-499f-983d-8d812517828d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0589214   0.0456836   0.0721591
iLiNS-DOSE     MALAWI       1                    NA                0.0745076   0.0518097   0.0972055
iLiNS-DYAD-M   MALAWI       0                    NA                0.0156177   0.0071510   0.0240844
iLiNS-DYAD-M   MALAWI       1                    NA                0.0346704   0.0145489   0.0547919
JiVitA-3       BANGLADESH   0                    NA                0.0092033   0.0073599   0.0110467
JiVitA-3       BANGLADESH   1                    NA                0.0180075   0.0147385   0.0212765
JiVitA-4       BANGLADESH   0                    NA                0.0062456   0.0030407   0.0094506
JiVitA-4       BANGLADESH   1                    NA                0.0131541   0.0083250   0.0179832
Keneba         GAMBIA       0                    NA                0.0082805   0.0037911   0.0127699
Keneba         GAMBIA       1                    NA                0.0351159   0.0218410   0.0483909
VITAMIN-A      INDIA        0                    NA                0.0052570   0.0021621   0.0083518
VITAMIN-A      INDIA        1                    NA                0.0132093   0.0074096   0.0190090
ZVITAMBO       ZIMBABWE     0                    NA                0.0233157   0.0200179   0.0266134
ZVITAMBO       ZIMBABWE     1                    NA                0.0584818   0.0504807   0.0664830


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0643508   0.0528708   0.0758308
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0209059   0.0126262   0.0291856
JiVitA-3       BANGLADESH   NA                   NA                0.0128040   0.0112517   0.0143564
JiVitA-4       BANGLADESH   NA                   NA                0.0089354   0.0062246   0.0116461
Keneba         GAMBIA       NA                   NA                0.0168685   0.0116181   0.0221189
VITAMIN-A      INDIA        NA                   NA                0.0085992   0.0055847   0.0116136
ZVITAMBO       ZIMBABWE     NA                   NA                0.0346331   0.0313190   0.0379473


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.264526   0.8659639   1.846527
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 2.219944   1.0029122   4.913841
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.956630   1.4950845   2.560659
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 2.106133   1.1223882   3.952106
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 4.240780   2.1895800   8.213548
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 2.512725   1.2055907   5.237091
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.508261   2.0606476   3.053105


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0054294   -0.0025452   0.0134041
iLiNS-DYAD-M   MALAWI       0                    NA                0.0052882   -0.0007842   0.0113607
JiVitA-3       BANGLADESH   0                    NA                0.0036007    0.0020522   0.0051492
JiVitA-4       BANGLADESH   0                    NA                0.0026897    0.0004330   0.0049464
Keneba         GAMBIA       0                    NA                0.0085880    0.0040713   0.0131047
VITAMIN-A      INDIA        0                    NA                0.0033422    0.0005986   0.0060858
ZVITAMBO       ZIMBABWE     0                    NA                0.0113175    0.0086878   0.0139471


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0843726   -0.0474775   0.1996261
iLiNS-DYAD-M   MALAWI       0                    NA                0.2529534   -0.0775223   0.4820724
JiVitA-3       BANGLADESH   0                    NA                0.2812170    0.1557638   0.3880278
JiVitA-4       BANGLADESH   0                    NA                0.3010205   -0.0036552   0.5132069
Keneba         GAMBIA       0                    NA                0.5091128    0.2363913   0.6844323
VITAMIN-A      INDIA        0                    NA                0.3886674    0.0195917   0.6188042
ZVITAMBO       ZIMBABWE     0                    NA                0.3267813    0.2535730   0.3928094
