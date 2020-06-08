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

**Intervention Variable:** pers_wasted024

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

studyid           country                        pers_wasted024    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                         0     6016    7164  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                         1       32    7164  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                         0     1100    7164  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                         1       16    7164  dead6plus        
EE                PAKISTAN                       0                         0      338     375  dead6plus        
EE                PAKISTAN                       0                         1        4     375  dead6plus        
EE                PAKISTAN                       1                         0       33     375  dead6plus        
EE                PAKISTAN                       1                         1        0     375  dead6plus        
GMS-Nepal         NEPAL                          0                         0      511     592  dead6plus        
GMS-Nepal         NEPAL                          0                         1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                         0       79     592  dead6plus        
GMS-Nepal         NEPAL                          1                         1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                         0     1690    1874  dead6plus        
iLiNS-DOSE        MALAWI                         0                         1      119    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                         0       57    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                         1        8    1874  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                         0     1111    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                         1       25    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                         0       22    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                         1        3    1161  dead6plus        
JiVitA-3          BANGLADESH                     0                         0    19446   21023  dead6plus        
JiVitA-3          BANGLADESH                     0                         1      253   21023  dead6plus        
JiVitA-3          BANGLADESH                     1                         0     1272   21023  dead6plus        
JiVitA-3          BANGLADESH                     1                         1       52   21023  dead6plus        
JiVitA-4          BANGLADESH                     0                         0     4947    5433  dead6plus        
JiVitA-4          BANGLADESH                     0                         1       40    5433  dead6plus        
JiVitA-4          BANGLADESH                     1                         0      436    5433  dead6plus        
JiVitA-4          BANGLADESH                     1                         1       10    5433  dead6plus        
Keneba            GAMBIA                         0                         0     2495    2752  dead6plus        
Keneba            GAMBIA                         0                         1       66    2752  dead6plus        
Keneba            GAMBIA                         1                         0      178    2752  dead6plus        
Keneba            GAMBIA                         1                         1       13    2752  dead6plus        
MAL-ED            BANGLADESH                     0                         0      227     240  dead6plus        
MAL-ED            BANGLADESH                     0                         1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                         0       13     240  dead6plus        
MAL-ED            BANGLADESH                     1                         1        0     240  dead6plus        
MAL-ED            INDIA                          0                         0      215     235  dead6plus        
MAL-ED            INDIA                          0                         1        0     235  dead6plus        
MAL-ED            INDIA                          1                         0       20     235  dead6plus        
MAL-ED            INDIA                          1                         1        0     235  dead6plus        
MAL-ED            PERU                           0                         0      271     273  dead6plus        
MAL-ED            PERU                           0                         1        1     273  dead6plus        
MAL-ED            PERU                           1                         0        1     273  dead6plus        
MAL-ED            PERU                           1                         1        0     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                         0      259     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                         1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                         0        2     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                         1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      245     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                         0      600     617  dead6plus        
PROVIDE           BANGLADESH                     0                         1        3     617  dead6plus        
PROVIDE           BANGLADESH                     1                         0       14     617  dead6plus        
PROVIDE           BANGLADESH                     1                         1        0     617  dead6plus        
SAS-CompFeed      INDIA                          0                         0     1266    1389  dead6plus        
SAS-CompFeed      INDIA                          0                         1        4    1389  dead6plus        
SAS-CompFeed      INDIA                          1                         0      111    1389  dead6plus        
SAS-CompFeed      INDIA                          1                         1        8    1389  dead6plus        
SAS-FoodSuppl     INDIA                          0                         0      327     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                         1        1     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                         0       71     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                         1        3     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     2038    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0       58    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                         0     3029    3615  dead6plus        
VITAMIN-A         INDIA                          0                         1       13    3615  dead6plus        
VITAMIN-A         INDIA                          1                         0      555    3615  dead6plus        
VITAMIN-A         INDIA                          1                         1       18    3615  dead6plus        
ZVITAMBO          ZIMBABWE                       0                         0    10991   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       0                         1      349   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       1                         0      291   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       1                         1       63   11694  dead6plus        


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
* studyid: iLiNS-DYAD-M, country: MALAWI
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
![](/tmp/ac0cc794-ba2a-4c03-bf9e-7b30ecd30745/3d5f2b75-0a80-4013-ad76-09a1e2de59b1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ac0cc794-ba2a-4c03-bf9e-7b30ecd30745/3d5f2b75-0a80-4013-ad76-09a1e2de59b1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ac0cc794-ba2a-4c03-bf9e-7b30ecd30745/3d5f2b75-0a80-4013-ad76-09a1e2de59b1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ac0cc794-ba2a-4c03-bf9e-7b30ecd30745/3d5f2b75-0a80-4013-ad76-09a1e2de59b1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052902   0.0034628   0.0071176
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0146530   0.0076541   0.0216519
iLiNS-DOSE        MALAWI         0                    NA                0.0657822   0.0543554   0.0772090
iLiNS-DOSE        MALAWI         1                    NA                0.1230769   0.0431899   0.2029640
JiVitA-3          BANGLADESH     0                    NA                0.0129004   0.0113017   0.0144992
JiVitA-3          BANGLADESH     1                    NA                0.0385769   0.0272859   0.0498679
JiVitA-4          BANGLADESH     0                    NA                0.0080339   0.0054742   0.0105937
JiVitA-4          BANGLADESH     1                    NA                0.0228575   0.0091455   0.0365695
Keneba            GAMBIA         0                    NA                0.0258665   0.0197113   0.0320216
Keneba            GAMBIA         1                    NA                0.0669497   0.0298319   0.1040674
VITAMIN-A         INDIA          0                    NA                0.0042816   0.0019576   0.0066057
VITAMIN-A         INDIA          1                    NA                0.0312007   0.0169495   0.0454519
ZVITAMBO          ZIMBABWE       0                    NA                0.0309511   0.0277461   0.0341561
ZVITAMBO          ZIMBABWE       1                    NA                0.2015220   0.1644881   0.2385560


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067002   0.0048109   0.0085894
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
JiVitA-3          BANGLADESH     NA                   NA                0.0145079   0.0128686   0.0161473
JiVitA-4          BANGLADESH     NA                   NA                0.0092030   0.0066160   0.0117900
Keneba            GAMBIA         NA                   NA                0.0287064   0.0224666   0.0349461
VITAMIN-A         INDIA          NA                   NA                0.0085754   0.0055692   0.0115815
ZVITAMBO          ZIMBABWE       NA                   NA                0.0352317   0.0318901   0.0385734


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.769841   1.5362606    4.993958
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.870976   0.9555545    3.663372
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-3          BANGLADESH     1                    0                 2.990360   2.1710814    4.118802
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-4          BANGLADESH     1                    0                 2.845125   1.4370620    5.632837
Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
Keneba            GAMBIA         1                    0                 2.588282   1.4158717    4.731504
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A         INDIA          1                    0                 7.287122   3.5842492   14.815415
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO          ZIMBABWE       1                    0                 6.510984   5.2728856    8.039795


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014100    0.0002845   0.0025355
iLiNS-DOSE        MALAWI         0                    NA                0.0019873   -0.0008518   0.0048264
JiVitA-3          BANGLADESH     0                    NA                0.0016075    0.0008811   0.0023339
JiVitA-4          BANGLADESH     0                    NA                0.0011691    0.0000375   0.0023007
Keneba            GAMBIA         0                    NA                0.0028399    0.0002925   0.0053873
VITAMIN-A         INDIA          0                    NA                0.0042938    0.0019765   0.0066110
ZVITAMBO          ZIMBABWE       0                    NA                0.0042807    0.0029904   0.0055709


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2104380    0.0364478   0.3530105
iLiNS-DOSE        MALAWI         0                    NA                0.0293241   -0.0132259   0.0700872
JiVitA-3          BANGLADESH     0                    NA                0.1108020    0.0613455   0.1576527
JiVitA-4          BANGLADESH     0                    NA                0.1270359   -0.0009499   0.2386569
Keneba            GAMBIA         0                    NA                0.0989306    0.0084611   0.1811456
VITAMIN-A         INDIA          0                    NA                0.5007078    0.2454287   0.6696234
ZVITAMBO          ZIMBABWE       0                    NA                0.1215000    0.0858166   0.1557906
