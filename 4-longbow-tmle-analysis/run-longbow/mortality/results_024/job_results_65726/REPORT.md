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

studyid           country                        ever_sunderweight024    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                               0     6325    7163  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                               1       37    7163  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                               0      790    7163  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                               1       11    7163  dead6plus        
EE                PAKISTAN                       0                               0      172     375  dead6plus        
EE                PAKISTAN                       0                               1        1     375  dead6plus        
EE                PAKISTAN                       1                               0      199     375  dead6plus        
EE                PAKISTAN                       1                               1        3     375  dead6plus        
GMS-Nepal         NEPAL                          0                               0      372     592  dead6plus        
GMS-Nepal         NEPAL                          0                               1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                               0      218     592  dead6plus        
GMS-Nepal         NEPAL                          1                               1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                               0     1523    1874  dead6plus        
iLiNS-DOSE        MALAWI                         0                               1       99    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                               0      224    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                               1       28    1874  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                               0      993    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                               1       21    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                               0      140    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                               1        7    1161  dead6plus        
JiVitA-3          BANGLADESH                     0                               0    16927   21046  dead6plus        
JiVitA-3          BANGLADESH                     0                               1      188   21046  dead6plus        
JiVitA-3          BANGLADESH                     1                               0     3807   21046  dead6plus        
JiVitA-3          BANGLADESH                     1                               1      124   21046  dead6plus        
JiVitA-4          BANGLADESH                     0                               0     4468    5433  dead6plus        
JiVitA-4          BANGLADESH                     0                               1       29    5433  dead6plus        
JiVitA-4          BANGLADESH                     1                               0      915    5433  dead6plus        
JiVitA-4          BANGLADESH                     1                               1       21    5433  dead6plus        
Keneba            GAMBIA                         0                               0     2216    2761  dead6plus        
Keneba            GAMBIA                         0                               1       49    2761  dead6plus        
Keneba            GAMBIA                         1                               0      466    2761  dead6plus        
Keneba            GAMBIA                         1                               1       30    2761  dead6plus        
MAL-ED            BANGLADESH                     0                               0      204     240  dead6plus        
MAL-ED            BANGLADESH                     0                               1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                               0       36     240  dead6plus        
MAL-ED            BANGLADESH                     1                               1        0     240  dead6plus        
MAL-ED            INDIA                          0                               0      184     235  dead6plus        
MAL-ED            INDIA                          0                               1        0     235  dead6plus        
MAL-ED            INDIA                          1                               0       51     235  dead6plus        
MAL-ED            INDIA                          1                               1        0     235  dead6plus        
MAL-ED            PERU                           0                               0      258     273  dead6plus        
MAL-ED            PERU                           0                               1        1     273  dead6plus        
MAL-ED            PERU                           1                               0       14     273  dead6plus        
MAL-ED            PERU                           1                               1        0     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                               0      236     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                               1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                               0       25     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                               1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                               0      211     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                               1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                               0       34     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                               1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                               0      525     617  dead6plus        
PROVIDE           BANGLADESH                     0                               1        3     617  dead6plus        
PROVIDE           BANGLADESH                     1                               0       89     617  dead6plus        
PROVIDE           BANGLADESH                     1                               1        0     617  dead6plus        
SAS-CompFeed      INDIA                          0                               0     1017    1389  dead6plus        
SAS-CompFeed      INDIA                          0                               1        2    1389  dead6plus        
SAS-CompFeed      INDIA                          1                               0      360    1389  dead6plus        
SAS-CompFeed      INDIA                          1                               1       10    1389  dead6plus        
SAS-FoodSuppl     INDIA                          0                               0      217     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                               1        1     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                               0      181     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                               1        3     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               0     1951    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               0      145    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                               0     2427    3615  dead6plus        
VITAMIN-A         INDIA                          0                               1       11    3615  dead6plus        
VITAMIN-A         INDIA                          1                               0     1156    3615  dead6plus        
VITAMIN-A         INDIA                          1                               1       21    3615  dead6plus        
ZVITAMBO          ZIMBABWE                       0                               0    10419   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       0                               1      219   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       1                               0      873   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       1                               1      197   11708  dead6plus        


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
![](/tmp/973a1ff1-dcd0-4df0-9ff7-72fe2f19384b/51d3bc57-7862-488a-8b1a-c3a534fd29c9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/973a1ff1-dcd0-4df0-9ff7-72fe2f19384b/51d3bc57-7862-488a-8b1a-c3a534fd29c9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/973a1ff1-dcd0-4df0-9ff7-72fe2f19384b/51d3bc57-7862-488a-8b1a-c3a534fd29c9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/973a1ff1-dcd0-4df0-9ff7-72fe2f19384b/51d3bc57-7862-488a-8b1a-c3a534fd29c9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0058495   0.0039716   0.0077275
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0131014   0.0053219   0.0208809
iLiNS-DOSE        MALAWI         0                    NA                0.0610819   0.0494022   0.0727617
iLiNS-DOSE        MALAWI         1                    NA                0.1042890   0.0661818   0.1423961
iLiNS-DYAD-M      MALAWI         0                    NA                0.0207101   0.0119408   0.0294793
iLiNS-DYAD-M      MALAWI         1                    NA                0.0476190   0.0131783   0.0820598
JiVitA-3          BANGLADESH     0                    NA                0.0112160   0.0095943   0.0128376
JiVitA-3          BANGLADESH     1                    NA                0.0293235   0.0233024   0.0353447
JiVitA-4          BANGLADESH     0                    NA                0.0064829   0.0040328   0.0089331
JiVitA-4          BANGLADESH     1                    NA                0.0214741   0.0121160   0.0308322
Keneba            GAMBIA         0                    NA                0.0220484   0.0159228   0.0281740
Keneba            GAMBIA         1                    NA                0.0539355   0.0341727   0.0736984
VITAMIN-A         INDIA          0                    NA                0.0045165   0.0018497   0.0071833
VITAMIN-A         INDIA          1                    NA                0.0175045   0.0100242   0.0249849
ZVITAMBO          ZIMBABWE       0                    NA                0.0207245   0.0180111   0.0234378
ZVITAMBO          ZIMBABWE       1                    NA                0.1769602   0.1528592   0.2010613


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067011   0.0048116   0.0085906
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0241171   0.0152888   0.0329455
JiVitA-3          BANGLADESH     NA                   NA                0.0148247   0.0131816   0.0164677
JiVitA-4          BANGLADESH     NA                   NA                0.0092030   0.0066160   0.0117900
Keneba            GAMBIA         NA                   NA                0.0286128   0.0223931   0.0348325
VITAMIN-A         INDIA          NA                   NA                0.0088520   0.0057982   0.0119058
ZVITAMBO          ZIMBABWE       NA                   NA                0.0355313   0.0321779   0.0388846


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.239731   1.1404516    4.398604
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.707361   1.1304106    2.578783
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 2.299320   0.9945408    5.315892
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-3          BANGLADESH     1                    0                 2.614445   2.0301828    3.366851
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-4          BANGLADESH     1                    0                 3.312401   1.8538094    5.918623
Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
Keneba            GAMBIA         1                    0                 2.446230   1.5447413    3.873814
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A         INDIA          1                    0                 3.875702   1.8702740    8.031479
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO          ZIMBABWE       1                    0                 8.538714   7.0696387   10.313064


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0008516   -0.0000774   0.0017805
iLiNS-DOSE        MALAWI         0                    NA                0.0066875    0.0011612   0.0122139
iLiNS-DYAD-M      MALAWI         0                    NA                0.0034071   -0.0011221   0.0079363
JiVitA-3          BANGLADESH     0                    NA                0.0036087    0.0024872   0.0047302
JiVitA-4          BANGLADESH     0                    NA                0.0027201    0.0010196   0.0044206
Keneba            GAMBIA         0                    NA                0.0065644    0.0025272   0.0106016
VITAMIN-A         INDIA          0                    NA                0.0043355    0.0017145   0.0069566
ZVITAMBO          ZIMBABWE       0                    NA                0.0148068    0.0125048   0.0171088


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1270780   -0.0176712   0.2512386
iLiNS-DOSE        MALAWI         0                    NA                0.0986806    0.0149180   0.1753208
iLiNS-DYAD-M      MALAWI         0                    NA                0.1412722   -0.0600369   0.3043512
JiVitA-3          BANGLADESH     0                    NA                0.2434250    0.1694557   0.3108064
JiVitA-4          BANGLADESH     0                    NA                0.2955636    0.1046169   0.4457895
Keneba            GAMBIA         0                    NA                0.2294211    0.0850889   0.3509842
VITAMIN-A         INDIA          0                    NA                0.4897786    0.1772114   0.6836054
ZVITAMBO          ZIMBABWE       0                    NA                0.4167260    0.3622373   0.4665593
