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

studyid           country                        ever_stunted06    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                         0      295     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                         1        2     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                         0       39     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                         1        0     336  dead6plus        
EE                PAKISTAN                       0                         0       91     374  dead6plus        
EE                PAKISTAN                       0                         1        0     374  dead6plus        
EE                PAKISTAN                       1                         0      279     374  dead6plus        
EE                PAKISTAN                       1                         1        4     374  dead6plus        
GMS-Nepal         NEPAL                          0                         0      398     592  dead6plus        
GMS-Nepal         NEPAL                          0                         1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                         0      192     592  dead6plus        
GMS-Nepal         NEPAL                          1                         1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                         0     1156    1756  dead6plus        
iLiNS-DOSE        MALAWI                         0                         1       73    1756  dead6plus        
iLiNS-DOSE        MALAWI                         1                         0      487    1756  dead6plus        
iLiNS-DOSE        MALAWI                         1                         1       40    1756  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                         0      810    1148  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                         1       15    1148  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                         0      310    1148  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                         1       13    1148  dead6plus        
JiVitA-3          BANGLADESH                     0                         0    11895   21009  dead6plus        
JiVitA-3          BANGLADESH                     0                         1      121   21009  dead6plus        
JiVitA-3          BANGLADESH                     1                         0     8804   21009  dead6plus        
JiVitA-3          BANGLADESH                     1                         1      189   21009  dead6plus        
JiVitA-4          BANGLADESH                     0                         0     3210    5260  dead6plus        
JiVitA-4          BANGLADESH                     0                         1       20    5260  dead6plus        
JiVitA-4          BANGLADESH                     1                         0     2002    5260  dead6plus        
JiVitA-4          BANGLADESH                     1                         1       28    5260  dead6plus        
Keneba            GAMBIA                         0                         0     1535    2312  dead6plus        
Keneba            GAMBIA                         0                         1       35    2312  dead6plus        
Keneba            GAMBIA                         1                         0      709    2312  dead6plus        
Keneba            GAMBIA                         1                         1       33    2312  dead6plus        
MAL-ED            BANGLADESH                     0                         0      155     240  dead6plus        
MAL-ED            BANGLADESH                     0                         1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                         0       85     240  dead6plus        
MAL-ED            BANGLADESH                     1                         1        0     240  dead6plus        
MAL-ED            INDIA                          0                         0      149     235  dead6plus        
MAL-ED            INDIA                          0                         1        0     235  dead6plus        
MAL-ED            INDIA                          1                         0       86     235  dead6plus        
MAL-ED            INDIA                          1                         1        0     235  dead6plus        
MAL-ED            PERU                           0                         0      149     273  dead6plus        
MAL-ED            PERU                           0                         1        0     273  dead6plus        
MAL-ED            PERU                           1                         0      123     273  dead6plus        
MAL-ED            PERU                           1                         1        1     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                         0      155     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                         1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                         0      106     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                         1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      140     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0      105     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                         0      455     617  dead6plus        
PROVIDE           BANGLADESH                     0                         1        2     617  dead6plus        
PROVIDE           BANGLADESH                     1                         0      159     617  dead6plus        
PROVIDE           BANGLADESH                     1                         1        1     617  dead6plus        
SAS-CompFeed      INDIA                          0                         0      796    1388  dead6plus        
SAS-CompFeed      INDIA                          0                         1        2    1388  dead6plus        
SAS-CompFeed      INDIA                          1                         0      580    1388  dead6plus        
SAS-CompFeed      INDIA                          1                         1       10    1388  dead6plus        
SAS-FoodSuppl     INDIA                          0                         0      214     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                         1        1     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                         0      184     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                         1        3     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1651    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      445    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                         0     2094    3605  dead6plus        
VITAMIN-A         INDIA                          0                         1       11    3605  dead6plus        
VITAMIN-A         INDIA                          1                         0     1480    3605  dead6plus        
VITAMIN-A         INDIA                          1                         1       20    3605  dead6plus        
ZVITAMBO          ZIMBABWE                       0                         0     8019   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       0                         1      199   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       1                         0     3260   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       1                         1      216   11694  dead6plus        


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
![](/tmp/8f2abd22-67e5-46b5-9a66-107e0a530e54/ee8652e7-63ac-4122-bd80-b1500f1e864a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8f2abd22-67e5-46b5-9a66-107e0a530e54/ee8652e7-63ac-4122-bd80-b1500f1e864a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8f2abd22-67e5-46b5-9a66-107e0a530e54/ee8652e7-63ac-4122-bd80-b1500f1e864a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8f2abd22-67e5-46b5-9a66-107e0a530e54/ee8652e7-63ac-4122-bd80-b1500f1e864a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0595902   0.0462613   0.0729191
iLiNS-DOSE     MALAWI       1                    NA                0.0745486   0.0517526   0.0973446
iLiNS-DYAD-M   MALAWI       0                    NA                0.0181315   0.0090181   0.0272449
iLiNS-DYAD-M   MALAWI       1                    NA                0.0408672   0.0191205   0.0626140
JiVitA-3       BANGLADESH   0                    NA                0.0106221   0.0086249   0.0126193
JiVitA-3       BANGLADESH   1                    NA                0.0206207   0.0171192   0.0241222
JiVitA-4       BANGLADESH   0                    NA                0.0062278   0.0030367   0.0094189
JiVitA-4       BANGLADESH   1                    NA                0.0136715   0.0087112   0.0186318
Keneba         GAMBIA       0                    NA                0.0226290   0.0151264   0.0301317
Keneba         GAMBIA       1                    NA                0.0428669   0.0283076   0.0574262
VITAMIN-A      INDIA        0                    NA                0.0052655   0.0021664   0.0083645
VITAMIN-A      INDIA        1                    NA                0.0132642   0.0074714   0.0190570
ZVITAMBO       ZIMBABWE     0                    NA                0.0243504   0.0209870   0.0277139
ZVITAMBO       ZIMBABWE     1                    NA                0.0587480   0.0507433   0.0667527


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0643508   0.0528708   0.0758308
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0243902   0.0154631   0.0333174
JiVitA-3       BANGLADESH   NA                   NA                0.0147556   0.0131087   0.0164025
JiVitA-4       BANGLADESH   NA                   NA                0.0091255   0.0063790   0.0118719
Keneba         GAMBIA       NA                   NA                0.0294118   0.0225232   0.0363003
VITAMIN-A      INDIA        NA                   NA                0.0085992   0.0055847   0.0116136
ZVITAMBO       ZIMBABWE     NA                   NA                0.0354883   0.0321349   0.0388417


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.251021   0.8564875   1.827293
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 2.253935   1.0848641   4.682818
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.941292   1.5045209   2.504861
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 2.195233   1.1726001   4.109712
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.894332   1.1787371   3.044356
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 2.519101   1.2105750   5.242031
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.412606   1.9874329   2.928737


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0047606   -0.0032515   0.0127727
iLiNS-DYAD-M   MALAWI       0                    NA                0.0062587   -0.0003196   0.0128370
JiVitA-3       BANGLADESH   0                    NA                0.0041334    0.0024599   0.0058070
JiVitA-4       BANGLADESH   0                    NA                0.0028977    0.0006011   0.0051942
Keneba         GAMBIA       0                    NA                0.0067827    0.0012833   0.0122822
VITAMIN-A      INDIA        0                    NA                0.0033337    0.0005876   0.0060798
ZVITAMBO       ZIMBABWE     0                    NA                0.0111379    0.0085004   0.0137753


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0739787   -0.0585813   0.1899389
iLiNS-DYAD-M   MALAWI       0                    NA                0.2566082   -0.0457150   0.4715277
JiVitA-3       BANGLADESH   0                    NA                0.2801279    0.1624502   0.3812715
JiVitA-4       BANGLADESH   0                    NA                0.3175352    0.0158220   0.5267540
Keneba         GAMBIA       0                    NA                0.2306134    0.0286144   0.3906068
VITAMIN-A      INDIA        0                    NA                0.3876780    0.0180585   0.6181665
ZVITAMBO       ZIMBABWE     0                    NA                0.3138460    0.2418587   0.3789979
