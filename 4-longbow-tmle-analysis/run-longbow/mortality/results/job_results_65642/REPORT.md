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

**Intervention Variable:** ever_sunderweight06

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

studyid           country                        ever_sunderweight06    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                         0      315     338  dead             
Burkina Faso Zn   BURKINA FASO                   0                         1        2     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                         0       21     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                         1        0     338  dead             
EE                PAKISTAN                       0                         0      218     380  dead             
EE                PAKISTAN                       0                         1        1     380  dead             
EE                PAKISTAN                       1                         0      158     380  dead             
EE                PAKISTAN                       1                         1        3     380  dead             
GMS-Nepal         NEPAL                          0                         0      600     697  dead             
GMS-Nepal         NEPAL                          0                         1        3     697  dead             
GMS-Nepal         NEPAL                          1                         0       90     697  dead             
GMS-Nepal         NEPAL                          1                         1        4     697  dead             
iLiNS-DOSE        MALAWI                         0                         0     1646    1816  dead             
iLiNS-DOSE        MALAWI                         0                         1      106    1816  dead             
iLiNS-DOSE        MALAWI                         1                         0       56    1816  dead             
iLiNS-DOSE        MALAWI                         1                         1        8    1816  dead             
iLiNS-DYAD-M      MALAWI                         0                         0     1084    1202  dead             
iLiNS-DYAD-M      MALAWI                         0                         1       26    1202  dead             
iLiNS-DYAD-M      MALAWI                         1                         0       78    1202  dead             
iLiNS-DYAD-M      MALAWI                         1                         1       14    1202  dead             
JiVitA-3          BANGLADESH                     0                         0    22238   27237  dead             
JiVitA-3          BANGLADESH                     0                         1      414   27237  dead             
JiVitA-3          BANGLADESH                     1                         0     4174   27237  dead             
JiVitA-3          BANGLADESH                     1                         1      411   27237  dead             
JiVitA-4          BANGLADESH                     0                         0     4717    5276  dead             
JiVitA-4          BANGLADESH                     0                         1       31    5276  dead             
JiVitA-4          BANGLADESH                     1                         0      512    5276  dead             
JiVitA-4          BANGLADESH                     1                         1       16    5276  dead             
Keneba            GAMBIA                         0                         0     2407    2632  dead             
Keneba            GAMBIA                         0                         1       43    2632  dead             
Keneba            GAMBIA                         1                         0      164    2632  dead             
Keneba            GAMBIA                         1                         1       18    2632  dead             
MAL-ED            BANGLADESH                     0                         0      243     265  dead             
MAL-ED            BANGLADESH                     0                         1        2     265  dead             
MAL-ED            BANGLADESH                     1                         0       19     265  dead             
MAL-ED            BANGLADESH                     1                         1        1     265  dead             
MAL-ED            INDIA                          0                         0      217     251  dead             
MAL-ED            INDIA                          0                         1        1     251  dead             
MAL-ED            INDIA                          1                         0       32     251  dead             
MAL-ED            INDIA                          1                         1        1     251  dead             
MAL-ED            PERU                           0                         0      290     303  dead             
MAL-ED            PERU                           0                         1        2     303  dead             
MAL-ED            PERU                           1                         0       11     303  dead             
MAL-ED            PERU                           1                         1        0     303  dead             
MAL-ED            SOUTH AFRICA                   0                         0      300     314  dead             
MAL-ED            SOUTH AFRICA                   0                         1        0     314  dead             
MAL-ED            SOUTH AFRICA                   1                         0       13     314  dead             
MAL-ED            SOUTH AFRICA                   1                         1        1     314  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      251     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        2     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0        8     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        1     262  dead             
PROVIDE           BANGLADESH                     0                         0      648     700  dead             
PROVIDE           BANGLADESH                     0                         1        4     700  dead             
PROVIDE           BANGLADESH                     1                         0       48     700  dead             
PROVIDE           BANGLADESH                     1                         1        0     700  dead             
SAS-CompFeed      INDIA                          0                         0     1247    1533  dead             
SAS-CompFeed      INDIA                          0                         1       26    1533  dead             
SAS-CompFeed      INDIA                          1                         0      236    1533  dead             
SAS-CompFeed      INDIA                          1                         1       24    1533  dead             
SAS-FoodSuppl     INDIA                          0                         0      304     416  dead             
SAS-FoodSuppl     INDIA                          0                         1        2     416  dead             
SAS-FoodSuppl     INDIA                          1                         0      106     416  dead             
SAS-FoodSuppl     INDIA                          1                         1        4     416  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     2325    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0       70    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396  dead             
VITAMIN-A         INDIA                          0                         0     2858    3906  dead             
VITAMIN-A         INDIA                          0                         1       30    3906  dead             
VITAMIN-A         INDIA                          1                         0      970    3906  dead             
VITAMIN-A         INDIA                          1                         1       48    3906  dead             
ZVITAMBO          ZIMBABWE                       0                         0    12420   14085  dead             
ZVITAMBO          ZIMBABWE                       0                         1      807   14085  dead             
ZVITAMBO          ZIMBABWE                       1                         0      557   14085  dead             
ZVITAMBO          ZIMBABWE                       1                         1      301   14085  dead             


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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in gam.fit3(x = X, y = y, sp = L %*% lsp1 + lsp0, Eb = Eb, UrS = UrS, : inner loop 3; can't correct step size
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_gam_NULL_NULL_GCV.Cp
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/75ad2938-71f7-4a7b-8374-e460ac7bd853/27faa36f-6641-49c5-9fc8-b0c8b1a266d4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/75ad2938-71f7-4a7b-8374-e460ac7bd853/27faa36f-6641-49c5-9fc8-b0c8b1a266d4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/75ad2938-71f7-4a7b-8374-e460ac7bd853/27faa36f-6641-49c5-9fc8-b0c8b1a266d4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/75ad2938-71f7-4a7b-8374-e460ac7bd853/27faa36f-6641-49c5-9fc8-b0c8b1a266d4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0605023   0.0493353   0.0716692
iLiNS-DOSE     MALAWI       1                    NA                0.1250000   0.0439530   0.2060470
iLiNS-DYAD-M   MALAWI       0                    NA                0.0236311   0.0147029   0.0325593
iLiNS-DYAD-M   MALAWI       1                    NA                0.1253641   0.0576234   0.1931048
JiVitA-3       BANGLADESH   0                    NA                0.0185925   0.0168371   0.0203480
JiVitA-3       BANGLADESH   1                    NA                0.0854255   0.0757894   0.0950617
JiVitA-4       BANGLADESH   0                    NA                0.0065569   0.0040866   0.0090273
JiVitA-4       BANGLADESH   1                    NA                0.0287701   0.0133979   0.0441424
Keneba         GAMBIA       0                    NA                0.0175505   0.0123477   0.0227534
Keneba         GAMBIA       1                    NA                0.1001265   0.0548137   0.1454392
SAS-CompFeed   INDIA        0                    NA                0.0209394   0.0083169   0.0335619
SAS-CompFeed   INDIA        1                    NA                0.0881683   0.0563399   0.1199966
VITAMIN-A      INDIA        0                    NA                0.0103135   0.0066338   0.0139931
VITAMIN-A      INDIA        1                    NA                0.0463964   0.0334956   0.0592972
ZVITAMBO       ZIMBABWE     0                    NA                0.0614650   0.0573759   0.0655542
ZVITAMBO       ZIMBABWE     1                    NA                0.3413978   0.3090515   0.3737441


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
iLiNS-DOSE     MALAWI       1                    0                 2.066038   1.052847    4.054256
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000    1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 5.305047   2.742726   10.261152
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 4.594614   3.979516    5.304784
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 4.387740   2.273906    8.466603
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 5.705036   3.321210    9.799871
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 4.210641   2.298313    7.714135
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 4.498630   2.861544    7.072291
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 5.554343   4.948637    6.234188


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0022730   -0.0006617   0.0052078
iLiNS-DYAD-M   MALAWI       0                    NA                0.0096468    0.0036678   0.0156258
JiVitA-3       BANGLADESH   0                    NA                0.0116971    0.0101126   0.0132817
JiVitA-4       BANGLADESH   0                    NA                0.0023513    0.0007558   0.0039469
Keneba         GAMBIA       0                    NA                0.0056258    0.0025020   0.0087495
SAS-CompFeed   INDIA        0                    NA                0.0116764    0.0052874   0.0180654
VITAMIN-A      INDIA        0                    NA                0.0096558    0.0060981   0.0132135
ZVITAMBO       ZIMBABWE     0                    NA                0.0172002    0.0149561   0.0194444


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0362092   -0.0112860   0.0814739
iLiNS-DYAD-M   MALAWI       0                    NA                0.2898854    0.1141253   0.4307741
JiVitA-3       BANGLADESH   0                    NA                0.3861757    0.3425589   0.4268988
JiVitA-4       BANGLADESH   0                    NA                0.2639490    0.0836325   0.4087841
Keneba         GAMBIA       0                    NA                0.2427373    0.1113560   0.3546946
SAS-CompFeed   INDIA        0                    NA                0.3579982    0.1016681   0.5411871
VITAMIN-A      INDIA        0                    NA                0.4835341    0.3173747   0.6092482
ZVITAMBO       ZIMBABWE     0                    NA                0.2186510    0.1921158   0.2443146
