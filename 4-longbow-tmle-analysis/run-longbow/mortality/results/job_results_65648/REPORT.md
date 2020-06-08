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

**Intervention Variable:** ever_sstunted06

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

studyid           country                        ever_sstunted06    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                        0      323     336  dead624          
Burkina Faso Zn   BURKINA FASO                   0                        1        2     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                        0       11     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                        1        0     336  dead624          
EE                PAKISTAN                       0                        0      209     374  dead624          
EE                PAKISTAN                       0                        1        3     374  dead624          
EE                PAKISTAN                       1                        0      161     374  dead624          
EE                PAKISTAN                       1                        1        1     374  dead624          
GMS-Nepal         NEPAL                          0                        0      543     592  dead624          
GMS-Nepal         NEPAL                          0                        1        1     592  dead624          
GMS-Nepal         NEPAL                          1                        0       47     592  dead624          
GMS-Nepal         NEPAL                          1                        1        1     592  dead624          
iLiNS-DOSE        MALAWI                         0                        0     1534    1756  dead624          
iLiNS-DOSE        MALAWI                         0                        1      101    1756  dead624          
iLiNS-DOSE        MALAWI                         1                        0      109    1756  dead624          
iLiNS-DOSE        MALAWI                         1                        1       12    1756  dead624          
iLiNS-DYAD-M      MALAWI                         0                        0     1041    1148  dead624          
iLiNS-DYAD-M      MALAWI                         0                        1       21    1148  dead624          
iLiNS-DYAD-M      MALAWI                         1                        0       83    1148  dead624          
iLiNS-DYAD-M      MALAWI                         1                        1        3    1148  dead624          
JiVitA-3          BANGLADESH                     0                        0    17803   21009  dead624          
JiVitA-3          BANGLADESH                     0                        1      179   21009  dead624          
JiVitA-3          BANGLADESH                     1                        0     2937   21009  dead624          
JiVitA-3          BANGLADESH                     1                        1       90   21009  dead624          
JiVitA-4          BANGLADESH                     0                        0     4630    5260  dead624          
JiVitA-4          BANGLADESH                     0                        1       31    5260  dead624          
JiVitA-4          BANGLADESH                     1                        0      583    5260  dead624          
JiVitA-4          BANGLADESH                     1                        1       16    5260  dead624          
Keneba            GAMBIA                         0                        0     2010    2312  dead624          
Keneba            GAMBIA                         0                        1       26    2312  dead624          
Keneba            GAMBIA                         1                        0      263    2312  dead624          
Keneba            GAMBIA                         1                        1       13    2312  dead624          
MAL-ED            BANGLADESH                     0                        0      222     240  dead624          
MAL-ED            BANGLADESH                     0                        1        0     240  dead624          
MAL-ED            BANGLADESH                     1                        0       18     240  dead624          
MAL-ED            BANGLADESH                     1                        1        0     240  dead624          
MAL-ED            INDIA                          0                        0      215     235  dead624          
MAL-ED            INDIA                          0                        1        0     235  dead624          
MAL-ED            INDIA                          1                        0       20     235  dead624          
MAL-ED            INDIA                          1                        1        0     235  dead624          
MAL-ED            PERU                           0                        0      236     273  dead624          
MAL-ED            PERU                           0                        1        1     273  dead624          
MAL-ED            PERU                           1                        0       36     273  dead624          
MAL-ED            PERU                           1                        1        0     273  dead624          
MAL-ED            SOUTH AFRICA                   0                        0      233     261  dead624          
MAL-ED            SOUTH AFRICA                   0                        1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                        0       28     261  dead624          
MAL-ED            SOUTH AFRICA                   1                        1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        0      208     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        0       37     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        1        0     245  dead624          
PROVIDE           BANGLADESH                     0                        0      586     617  dead624          
PROVIDE           BANGLADESH                     0                        1        2     617  dead624          
PROVIDE           BANGLADESH                     1                        0       29     617  dead624          
PROVIDE           BANGLADESH                     1                        1        0     617  dead624          
SAS-CompFeed      INDIA                          0                        0     1176    1388  dead624          
SAS-CompFeed      INDIA                          0                        1        5    1388  dead624          
SAS-CompFeed      INDIA                          1                        0      200    1388  dead624          
SAS-CompFeed      INDIA                          1                        1        7    1388  dead624          
SAS-FoodSuppl     INDIA                          0                        0      337     402  dead624          
SAS-FoodSuppl     INDIA                          0                        1        1     402  dead624          
SAS-FoodSuppl     INDIA                          1                        0       61     402  dead624          
SAS-FoodSuppl     INDIA                          1                        1        3     402  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     1995    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      101    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2096  dead624          
VITAMIN-A         INDIA                          0                        0     3059    3605  dead624          
VITAMIN-A         INDIA                          0                        1       20    3605  dead624          
VITAMIN-A         INDIA                          1                        0      515    3605  dead624          
VITAMIN-A         INDIA                          1                        1       11    3605  dead624          
ZVITAMBO          ZIMBABWE                       0                        0    10174   11694  dead624          
ZVITAMBO          ZIMBABWE                       0                        1      299   11694  dead624          
ZVITAMBO          ZIMBABWE                       1                        0     1115   11694  dead624          
ZVITAMBO          ZIMBABWE                       1                        1      106   11694  dead624          


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
![](/tmp/fda95f7a-17b3-4999-9433-d77584474627/4c427041-7ad1-4deb-b1e0-b5646401dbde/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fda95f7a-17b3-4999-9433-d77584474627/4c427041-7ad1-4deb-b1e0-b5646401dbde/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fda95f7a-17b3-4999-9433-d77584474627/4c427041-7ad1-4deb-b1e0-b5646401dbde/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fda95f7a-17b3-4999-9433-d77584474627/4c427041-7ad1-4deb-b1e0-b5646401dbde/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0617578   0.0500827   0.0734329
iLiNS-DOSE     MALAWI       1                    NA                0.0991881   0.0441509   0.1542252
JiVitA-3       BANGLADESH   0                    NA                0.0100440   0.0085623   0.0115257
JiVitA-3       BANGLADESH   1                    NA                0.0329314   0.0241896   0.0416731
JiVitA-4       BANGLADESH   0                    NA                0.0066601   0.0040774   0.0092428
JiVitA-4       BANGLADESH   1                    NA                0.0262065   0.0139123   0.0385006
Keneba         GAMBIA       0                    NA                0.0127899   0.0079019   0.0176779
Keneba         GAMBIA       1                    NA                0.0459046   0.0201955   0.0716137
SAS-CompFeed   INDIA        0                    NA                0.0042337   0.0005807   0.0078867
SAS-CompFeed   INDIA        1                    NA                0.0338164   0.0119227   0.0557102
VITAMIN-A      INDIA        0                    NA                0.0065070   0.0036652   0.0093487
VITAMIN-A      INDIA        1                    NA                0.0209511   0.0085849   0.0333173
ZVITAMBO       ZIMBABWE     0                    NA                0.0287804   0.0255694   0.0319914
ZVITAMBO       ZIMBABWE     1                    NA                0.0796606   0.0643848   0.0949364


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0643508   0.0528708   0.0758308
JiVitA-3       BANGLADESH   NA                   NA                0.0128040   0.0112517   0.0143564
JiVitA-4       BANGLADESH   NA                   NA                0.0089354   0.0062246   0.0116461
Keneba         GAMBIA       NA                   NA                0.0168685   0.0116181   0.0221189
SAS-CompFeed   INDIA        NA                   NA                0.0086455   0.0042433   0.0130478
VITAMIN-A      INDIA        NA                   NA                0.0085992   0.0055847   0.0116136
ZVITAMBO       ZIMBABWE     NA                   NA                0.0346331   0.0313190   0.0379473


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000    1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.606082   0.8938663    2.885779
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 3.278710   2.4230595    4.436516
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 3.934855   2.1461067    7.214497
Keneba         GAMBIA       0                    0                 1.000000   1.0000000    1.000000
Keneba         GAMBIA       1                    0                 3.589134   1.8216925    7.071382
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed   INDIA        1                    0                 7.987440   2.8177744   22.641696
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A      INDIA        1                    0                 3.219799   1.5454122    6.708312
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.767875   2.2175028    3.454846


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0025930   -0.0011816   0.0063677
JiVitA-3       BANGLADESH   0                    NA                0.0027600    0.0018394   0.0036807
JiVitA-4       BANGLADESH   0                    NA                0.0022753    0.0008263   0.0037242
Keneba         GAMBIA       0                    NA                0.0040786    0.0010016   0.0071557
SAS-CompFeed   INDIA        0                    NA                0.0044118    0.0012088   0.0076148
VITAMIN-A      INDIA        0                    NA                0.0020922    0.0002532   0.0039313
ZVITAMBO       ZIMBABWE     0                    NA                0.0058527    0.0041369   0.0075685


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0402949   -0.0198013   0.0968497
JiVitA-3       BANGLADESH   0                    NA                0.2155599    0.1458768   0.2795580
JiVitA-4       BANGLADESH   0                    NA                0.2546371    0.0848162   0.3929462
Keneba         GAMBIA       0                    NA                0.2417897    0.0554118   0.3913932
SAS-CompFeed   INDIA        0                    NA                0.5103020    0.0855804   0.7377526
VITAMIN-A      INDIA        0                    NA                0.2433044    0.0191130   0.4162547
ZVITAMBO       ZIMBABWE     0                    NA                0.1689922    0.1206679   0.2146609
