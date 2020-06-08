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

**Intervention Variable:** ever_sunderweight024

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
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

studyid           country                        ever_sunderweight024    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                          0     6333    7165  dead             
Burkina Faso Zn   BURKINA FASO                   0                          1       31    7165  dead             
Burkina Faso Zn   BURKINA FASO                   1                          0      793    7165  dead             
Burkina Faso Zn   BURKINA FASO                   1                          1        8    7165  dead             
EE                PAKISTAN                       0                          0      175     380  dead             
EE                PAKISTAN                       0                          1        1     380  dead             
EE                PAKISTAN                       1                          0      201     380  dead             
EE                PAKISTAN                       1                          1        3     380  dead             
GMS-Nepal         NEPAL                          0                          0      464     697  dead             
GMS-Nepal         NEPAL                          0                          1        3     697  dead             
GMS-Nepal         NEPAL                          1                          0      226     697  dead             
GMS-Nepal         NEPAL                          1                          1        4     697  dead             
iLiNS-DOSE        MALAWI                         0                          0     1576    1931  dead             
iLiNS-DOSE        MALAWI                         0                          1       99    1931  dead             
iLiNS-DOSE        MALAWI                         1                          0      227    1931  dead             
iLiNS-DOSE        MALAWI                         1                          1       29    1931  dead             
iLiNS-DYAD-M      MALAWI                         0                          0     1024    1205  dead             
iLiNS-DYAD-M      MALAWI                         0                          1       24    1205  dead             
iLiNS-DYAD-M      MALAWI                         1                          0      141    1205  dead             
iLiNS-DYAD-M      MALAWI                         1                          1       16    1205  dead             
JiVitA-3          BANGLADESH                     0                          0    21585   27260  dead             
JiVitA-3          BANGLADESH                     0                          1      413   27260  dead             
JiVitA-3          BANGLADESH                     1                          0     4849   27260  dead             
JiVitA-3          BANGLADESH                     1                          1      413   27260  dead             
JiVitA-4          BANGLADESH                     0                          0     4478    5443  dead             
JiVitA-4          BANGLADESH                     0                          1       28    5443  dead             
JiVitA-4          BANGLADESH                     1                          0      916    5443  dead             
JiVitA-4          BANGLADESH                     1                          1       21    5443  dead             
Keneba            GAMBIA                         0                          0     2374    2929  dead             
Keneba            GAMBIA                         0                          1       41    2929  dead             
Keneba            GAMBIA                         1                          0      491    2929  dead             
Keneba            GAMBIA                         1                          1       23    2929  dead             
MAL-ED            BANGLADESH                     0                          0      223     265  dead             
MAL-ED            BANGLADESH                     0                          1        2     265  dead             
MAL-ED            BANGLADESH                     1                          0       39     265  dead             
MAL-ED            BANGLADESH                     1                          1        1     265  dead             
MAL-ED            INDIA                          0                          0      197     251  dead             
MAL-ED            INDIA                          0                          1        1     251  dead             
MAL-ED            INDIA                          1                          0       52     251  dead             
MAL-ED            INDIA                          1                          1        1     251  dead             
MAL-ED            PERU                           0                          0      285     303  dead             
MAL-ED            PERU                           0                          1        2     303  dead             
MAL-ED            PERU                           1                          0       16     303  dead             
MAL-ED            PERU                           1                          1        0     303  dead             
MAL-ED            SOUTH AFRICA                   0                          0      287     314  dead             
MAL-ED            SOUTH AFRICA                   0                          1        0     314  dead             
MAL-ED            SOUTH AFRICA                   1                          0       26     314  dead             
MAL-ED            SOUTH AFRICA                   1                          1        1     314  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          0      225     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          1        2     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          0       34     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          1        1     262  dead             
PROVIDE           BANGLADESH                     0                          0      602     700  dead             
PROVIDE           BANGLADESH                     0                          1        4     700  dead             
PROVIDE           BANGLADESH                     1                          0       94     700  dead             
PROVIDE           BANGLADESH                     1                          1        0     700  dead             
SAS-CompFeed      INDIA                          0                          0     1100    1533  dead             
SAS-CompFeed      INDIA                          0                          1       23    1533  dead             
SAS-CompFeed      INDIA                          1                          0      383    1533  dead             
SAS-CompFeed      INDIA                          1                          1       27    1533  dead             
SAS-FoodSuppl     INDIA                          0                          0      230     418  dead             
SAS-FoodSuppl     INDIA                          0                          1        2     418  dead             
SAS-FoodSuppl     INDIA                          1                          0      182     418  dead             
SAS-FoodSuppl     INDIA                          1                          1        4     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     2242    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      153    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2396  dead             
VITAMIN-A         INDIA                          0                          0     2612    3906  dead             
VITAMIN-A         INDIA                          0                          1       27    3906  dead             
VITAMIN-A         INDIA                          1                          0     1216    3906  dead             
VITAMIN-A         INDIA                          1                          1       51    3906  dead             
ZVITAMBO          ZIMBABWE                       0                          0    12049   14086  dead             
ZVITAMBO          ZIMBABWE                       0                          1      721   14086  dead             
ZVITAMBO          ZIMBABWE                       1                          0      929   14086  dead             
ZVITAMBO          ZIMBABWE                       1                          1      387   14086  dead             


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
![](/tmp/63b056ab-4024-477d-baad-2f78ebeff3b2/8166b8d5-4fe6-4e03-81d4-10e5d56bd419/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/63b056ab-4024-477d-baad-2f78ebeff3b2/8166b8d5-4fe6-4e03-81d4-10e5d56bd419/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/63b056ab-4024-477d-baad-2f78ebeff3b2/8166b8d5-4fe6-4e03-81d4-10e5d56bd419/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/63b056ab-4024-477d-baad-2f78ebeff3b2/8166b8d5-4fe6-4e03-81d4-10e5d56bd419/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0048712   0.0031605   0.0065818
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0099875   0.0031008   0.0168742
iLiNS-DOSE        MALAWI         0                    NA                0.0591627   0.0478410   0.0704844
iLiNS-DOSE        MALAWI         1                    NA                0.1065633   0.0682861   0.1448406
iLiNS-DYAD-M      MALAWI         0                    NA                0.0228658   0.0138136   0.0319180
iLiNS-DYAD-M      MALAWI         1                    NA                0.0993575   0.0501329   0.1485820
JiVitA-3          BANGLADESH     0                    NA                0.0191717   0.0173675   0.0209759
JiVitA-3          BANGLADESH     1                    NA                0.0753311   0.0666795   0.0839828
JiVitA-4          BANGLADESH     0                    NA                0.0062272   0.0038477   0.0086067
JiVitA-4          BANGLADESH     1                    NA                0.0214706   0.0121412   0.0308000
Keneba            GAMBIA         0                    NA                0.0169997   0.0118315   0.0221678
Keneba            GAMBIA         1                    NA                0.0440667   0.0261271   0.0620064
SAS-CompFeed      INDIA          0                    NA                0.0207697   0.0083844   0.0331550
SAS-CompFeed      INDIA          1                    NA                0.0650638   0.0408193   0.0893083
VITAMIN-A         INDIA          0                    NA                0.0101739   0.0063368   0.0140111
VITAMIN-A         INDIA          1                    NA                0.0411777   0.0300940   0.0522613
ZVITAMBO          ZIMBABWE       0                    NA                0.0570251   0.0530026   0.0610475
ZVITAMBO          ZIMBABWE       1                    NA                0.2847054   0.2593486   0.3100621


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054431   0.0037394   0.0071469
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0331950   0.0230759   0.0433141
JiVitA-3          BANGLADESH     NA                   NA                0.0303008   0.0281489   0.0324527
JiVitA-4          BANGLADESH     NA                   NA                0.0090024   0.0064532   0.0115515
Keneba            GAMBIA         NA                   NA                0.0218505   0.0165551   0.0271458
SAS-CompFeed      INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A         INDIA          NA                   NA                0.0199693   0.0155816   0.0243570
ZVITAMBO          ZIMBABWE       NA                   NA                0.0786597   0.0742138   0.0831055


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.050340   0.9457226   4.445167
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.801192   1.1989797   2.705876
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 4.345250   2.3044627   8.193319
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 3.929287   3.4020193   4.538274
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 3.447888   1.9259923   6.172367
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 2.592213   1.5594507   4.308933
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 3.132627   1.7236117   5.693483
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 4.047367   2.5467261   6.432249
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 4.992636   4.4585718   5.590672


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0005720   -0.0002222   0.0013661
iLiNS-DOSE        MALAWI         0                    NA                0.0071242    0.0016743   0.0125741
iLiNS-DYAD-M      MALAWI         0                    NA                0.0103292    0.0038939   0.0167646
JiVitA-3          BANGLADESH     0                    NA                0.0111291    0.0095290   0.0127292
JiVitA-4          BANGLADESH     0                    NA                0.0027752    0.0010799   0.0044705
Keneba            GAMBIA         0                    NA                0.0048508    0.0015513   0.0081504
SAS-CompFeed      INDIA          0                    NA                0.0118461    0.0053381   0.0183540
VITAMIN-A         INDIA          0                    NA                0.0097953    0.0060427   0.0135480
ZVITAMBO          ZIMBABWE       0                    NA                0.0216346    0.0190575   0.0242117


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1050823   -0.0490188   0.2365458
iLiNS-DOSE        MALAWI         0                    NA                0.1074753    0.0232423   0.1844444
iLiNS-DYAD-M      MALAWI         0                    NA                0.3111686    0.1175611   0.4622986
JiVitA-3          BANGLADESH     0                    NA                0.3672871    0.3222285   0.4093503
JiVitA-4          BANGLADESH     0                    NA                0.3082751    0.1152985   0.4591585
Keneba            GAMBIA         0                    NA                0.2220004    0.0668419   0.3513603
SAS-CompFeed      INDIA          0                    NA                0.3632005    0.1088726   0.5449432
VITAMIN-A         INDIA          0                    NA                0.4905205    0.3093017   0.6241928
ZVITAMBO          ZIMBABWE       0                    NA                0.2750406    0.2451058   0.3037883
