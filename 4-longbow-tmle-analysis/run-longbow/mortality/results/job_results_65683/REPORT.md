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

**Outcome Variable:** pers_wasted624

## Predictor Variables

**Intervention Variable:** ever_sunderweight06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* single
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_parity
* delta_brthmon
* delta_vagbrth
* delta_single
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_sunderweight06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  --------------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                                   0      285     373  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                                   1       12     373  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                                   0       60     373  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                                   1       16     373  pers_wasted624   
CMIN             BANGLADESH                     0                                   0      194     252  pers_wasted624   
CMIN             BANGLADESH                     0                                   1       11     252  pers_wasted624   
CMIN             BANGLADESH                     1                                   0       33     252  pers_wasted624   
CMIN             BANGLADESH                     1                                   1       14     252  pers_wasted624   
COHORTS          GUATEMALA                      0                                   0      904    1023  pers_wasted624   
COHORTS          GUATEMALA                      0                                   1       20    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                                   0       78    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                                   1       21    1023  pers_wasted624   
COHORTS          INDIA                          0                                   0     5698    6897  pers_wasted624   
COHORTS          INDIA                          0                                   1      423    6897  pers_wasted624   
COHORTS          INDIA                          1                                   0      428    6897  pers_wasted624   
COHORTS          INDIA                          1                                   1      348    6897  pers_wasted624   
COHORTS          PHILIPPINES                    0                                   0     2460    2809  pers_wasted624   
COHORTS          PHILIPPINES                    0                                   1      154    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                                   0      123    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                                   1       72    2809  pers_wasted624   
CONTENT          PERU                           0                                   0      213     215  pers_wasted624   
CONTENT          PERU                           0                                   1        0     215  pers_wasted624   
CONTENT          PERU                           1                                   0        2     215  pers_wasted624   
CONTENT          PERU                           1                                   1        0     215  pers_wasted624   
EE               PAKISTAN                       0                                   0      207     374  pers_wasted624   
EE               PAKISTAN                       0                                   1        9     374  pers_wasted624   
EE               PAKISTAN                       1                                   0      118     374  pers_wasted624   
EE               PAKISTAN                       1                                   1       40     374  pers_wasted624   
GMS-Nepal        NEPAL                          0                                   0      437     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                                   1       70     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                                   0       44     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                                   1       39     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                                   0      260     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                                   1        2     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                                   0       10     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                                   1        2     274  pers_wasted624   
IRC              INDIA                          0                                   0      307     410  pers_wasted624   
IRC              INDIA                          0                                   1       37     410  pers_wasted624   
IRC              INDIA                          1                                   0       55     410  pers_wasted624   
IRC              INDIA                          1                                   1       11     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                                   0    12391   17274  pers_wasted624   
JiVitA-3         BANGLADESH                     0                                   1     2246   17274  pers_wasted624   
JiVitA-3         BANGLADESH                     1                                   0     1637   17274  pers_wasted624   
JiVitA-3         BANGLADESH                     1                                   1     1000   17274  pers_wasted624   
JiVitA-4         BANGLADESH                     0                                   0     4334    5263  pers_wasted624   
JiVitA-4         BANGLADESH                     0                                   1      403    5263  pers_wasted624   
JiVitA-4         BANGLADESH                     1                                   0      364    5263  pers_wasted624   
JiVitA-4         BANGLADESH                     1                                   1      162    5263  pers_wasted624   
Keneba           GAMBIA                         0                                   0     2125    2441  pers_wasted624   
Keneba           GAMBIA                         0                                   1      156    2441  pers_wasted624   
Keneba           GAMBIA                         1                                   0       99    2441  pers_wasted624   
Keneba           GAMBIA                         1                                   1       61    2441  pers_wasted624   
LCNI-5           MALAWI                         0                                   0      770     796  pers_wasted624   
LCNI-5           MALAWI                         0                                   1        8     796  pers_wasted624   
LCNI-5           MALAWI                         1                                   0       13     796  pers_wasted624   
LCNI-5           MALAWI                         1                                   1        5     796  pers_wasted624   
MAL-ED           BANGLADESH                     0                                   0      210     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                                   1       14     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                                   0       13     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                                   1        3     240  pers_wasted624   
MAL-ED           BRAZIL                         0                                   0      201     207  pers_wasted624   
MAL-ED           BRAZIL                         0                                   1        2     207  pers_wasted624   
MAL-ED           BRAZIL                         1                                   0        4     207  pers_wasted624   
MAL-ED           BRAZIL                         1                                   1        0     207  pers_wasted624   
MAL-ED           INDIA                          0                                   0      187     235  pers_wasted624   
MAL-ED           INDIA                          0                                   1       17     235  pers_wasted624   
MAL-ED           INDIA                          1                                   0       20     235  pers_wasted624   
MAL-ED           INDIA                          1                                   1       11     235  pers_wasted624   
MAL-ED           NEPAL                          0                                   0      221     235  pers_wasted624   
MAL-ED           NEPAL                          0                                   1        1     235  pers_wasted624   
MAL-ED           NEPAL                          1                                   0       12     235  pers_wasted624   
MAL-ED           NEPAL                          1                                   1        1     235  pers_wasted624   
MAL-ED           PERU                           0                                   0      259     270  pers_wasted624   
MAL-ED           PERU                           0                                   1        2     270  pers_wasted624   
MAL-ED           PERU                           1                                   0        8     270  pers_wasted624   
MAL-ED           PERU                           1                                   1        1     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                                   0      246     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                                   1        1     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                                   0       11     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                                   1        1     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                   0      237     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                   1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                   0        8     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                   1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                                   0      428     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                                   1       34     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                                   0       53     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                                   1       27     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                                   0      645     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                                   1       29     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                                   0       41     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                                   1       15     730  pers_wasted624   
PROBIT           BELARUS                        0                                   0    16508   16596  pers_wasted624   
PROBIT           BELARUS                        0                                   1       15   16596  pers_wasted624   
PROBIT           BELARUS                        1                                   0       70   16596  pers_wasted624   
PROBIT           BELARUS                        1                                   1        3   16596  pers_wasted624   
PROVIDE          BANGLADESH                     0                                   0      546     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                                   1       26     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                                   0       29     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                                   1       14     615  pers_wasted624   
ResPak           PAKISTAN                       0                                   0      157     234  pers_wasted624   
ResPak           PAKISTAN                       0                                   1       33     234  pers_wasted624   
ResPak           PAKISTAN                       1                                   0       30     234  pers_wasted624   
ResPak           PAKISTAN                       1                                   1       14     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                                   0     1039    1389  pers_wasted624   
SAS-CompFeed     INDIA                          0                                   1      130    1389  pers_wasted624   
SAS-CompFeed     INDIA                          1                                   0      119    1389  pers_wasted624   
SAS-CompFeed     INDIA                          1                                   1      101    1389  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                                   0      261     400  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                                   1       31     400  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                                   0       63     400  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                                   1       45     400  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   0     1880    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   1       76    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   0       36    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   1       26    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                                   0     9894   10814  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                                   1      345   10814  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                                   0      452   10814  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                                   1      123   10814  pers_wasted624   


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CMIN, country: BANGLADESH
* studyid: COHORTS, country: GUATEMALA
* studyid: COHORTS, country: INDIA
* studyid: COHORTS, country: PHILIPPINES
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: IRC, country: INDIA
* studyid: JiVitA-3, country: BANGLADESH
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
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/2179780a-8f06-4a4e-8102-90fdf9352c26/88eb1ab9-9e9d-42a9-a5aa-9df46e59d0ed/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2179780a-8f06-4a4e-8102-90fdf9352c26/88eb1ab9-9e9d-42a9-a5aa-9df46e59d0ed/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2179780a-8f06-4a4e-8102-90fdf9352c26/88eb1ab9-9e9d-42a9-a5aa-9df46e59d0ed/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2179780a-8f06-4a4e-8102-90fdf9352c26/88eb1ab9-9e9d-42a9-a5aa-9df46e59d0ed/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0399125   0.0177319   0.0620931
CMC-V-BCS-2002   INDIA                          1                    NA                0.2167831   0.1206623   0.3129040
CMIN             BANGLADESH                     0                    NA                0.0529355   0.0219170   0.0839539
CMIN             BANGLADESH                     1                    NA                0.3145440   0.1832928   0.4457951
COHORTS          GUATEMALA                      0                    NA                0.0218414   0.0123530   0.0313298
COHORTS          GUATEMALA                      1                    NA                0.2343587   0.1443457   0.3243718
COHORTS          INDIA                          0                    NA                0.0703581   0.0638953   0.0768209
COHORTS          INDIA                          1                    NA                0.4113320   0.3751348   0.4475291
COHORTS          PHILIPPINES                    0                    NA                0.0595501   0.0504662   0.0686341
COHORTS          PHILIPPINES                    1                    NA                0.3560589   0.2873902   0.4247276
EE               PAKISTAN                       0                    NA                0.0416667   0.0149824   0.0683509
EE               PAKISTAN                       1                    NA                0.2531646   0.1852731   0.3210560
GMS-Nepal        NEPAL                          0                    NA                0.1392220   0.1091825   0.1692616
GMS-Nepal        NEPAL                          1                    NA                0.4564374   0.3453706   0.5675042
IRC              INDIA                          0                    NA                0.1063671   0.0737071   0.1390271
IRC              INDIA                          1                    NA                0.1983929   0.0989760   0.2978097
JiVitA-3         BANGLADESH                     0                    NA                0.1538870   0.1473814   0.1603926
JiVitA-3         BANGLADESH                     1                    NA                0.3735235   0.3511107   0.3959363
JiVitA-4         BANGLADESH                     0                    NA                0.0854441   0.0754894   0.0953988
JiVitA-4         BANGLADESH                     1                    NA                0.2958938   0.2511951   0.3405925
Keneba           GAMBIA                         0                    NA                0.0691551   0.0587161   0.0795941
Keneba           GAMBIA                         1                    NA                0.3367175   0.2600499   0.4133851
LCNI-5           MALAWI                         0                    NA                0.0102828   0.0031722   0.0173933
LCNI-5           MALAWI                         1                    NA                0.2777778   0.0904991   0.4650565
MAL-ED           INDIA                          0                    NA                0.0822322   0.0442607   0.1202037
MAL-ED           INDIA                          1                    NA                0.3130975   0.1350297   0.4911653
NIH-Birth        BANGLADESH                     0                    NA                0.0735952   0.0496697   0.0975207
NIH-Birth        BANGLADESH                     1                    NA                0.3461302   0.2392100   0.4530505
NIH-Crypto       BANGLADESH                     0                    NA                0.0433733   0.0280305   0.0587161
NIH-Crypto       BANGLADESH                     1                    NA                0.2292890   0.1102986   0.3482793
PROVIDE          BANGLADESH                     0                    NA                0.0454894   0.0283905   0.0625884
PROVIDE          BANGLADESH                     1                    NA                0.3170098   0.1657930   0.4682266
ResPak           PAKISTAN                       0                    NA                0.1747446   0.1202585   0.2292306
ResPak           PAKISTAN                       1                    NA                0.3144265   0.1660278   0.4628253
SAS-CompFeed     INDIA                          0                    NA                0.1142467   0.0974031   0.1310904
SAS-CompFeed     INDIA                          1                    NA                0.4194968   0.3684108   0.4705829
SAS-FoodSuppl    INDIA                          0                    NA                0.1064383   0.0705677   0.1423089
SAS-FoodSuppl    INDIA                          1                    NA                0.4343719   0.3336275   0.5351162
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0388528   0.0302827   0.0474229
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4117096   0.2811433   0.5422758
ZVITAMBO         ZIMBABWE                       0                    NA                0.0339927   0.0304813   0.0375040
ZVITAMBO         ZIMBABWE                       1                    NA                0.1913658   0.1583260   0.2244057


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0750670   0.0482904   0.1018437
CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
COHORTS          GUATEMALA                      NA                   NA                0.0400782   0.0280529   0.0521035
COHORTS          INDIA                          NA                   NA                0.1117877   0.1043506   0.1192249
COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
EE               PAKISTAN                       NA                   NA                0.1310160   0.0967738   0.1652583
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1879125   0.1813641   0.1944608
JiVitA-4         BANGLADESH                     NA                   NA                0.1073532   0.0971813   0.1175251
Keneba           GAMBIA                         NA                   NA                0.0888980   0.0776057   0.1001903
LCNI-5           MALAWI                         NA                   NA                0.0163317   0.0075211   0.0251422
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1663067   0.1478935   0.1847199
SAS-FoodSuppl    INDIA                          NA                   NA                0.1900000   0.1515071   0.2284929
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432772   0.0394419   0.0471125


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
CMC-V-BCS-2002   INDIA                          1                    0                  5.431464    2.667252   11.060374
CMIN             BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
CMIN             BANGLADESH                     1                    0                  5.942027    2.889280   12.220235
COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
COHORTS          GUATEMALA                      1                    0                 10.730021    6.017881   19.131874
COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
COHORTS          INDIA                          1                    0                  5.846266    5.149449    6.637377
COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  5.979147    4.678111    7.642017
EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
EE               PAKISTAN                       1                    0                  6.075949    3.034466   12.165952
GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  3.278486    2.367990    4.539068
IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
IRC              INDIA                          1                    0                  1.865172    1.033933    3.364690
JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  2.427259    2.256934    2.610439
JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  3.463010    2.855529    4.199726
Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
Keneba           GAMBIA                         1                    0                  4.869017    3.707101    6.395113
LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
LCNI-5           MALAWI                         1                    0                 27.013889   10.283843   70.960845
MAL-ED           INDIA                          0                    0                  1.000000    1.000000    1.000000
MAL-ED           INDIA                          1                    0                  3.807482    1.832418    7.911360
NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  4.703163    3.002138    7.367997
NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  5.286411    2.820272    9.909026
PROVIDE          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  6.968868    3.797311   12.789345
ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  1.799349    1.017823    3.180964
SAS-CompFeed     INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  3.671850    3.053870    4.414884
SAS-FoodSuppl    INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  4.080974    2.706825    6.152724
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 10.596651    7.199746   15.596246
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  5.629623    4.604419    6.883094


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0351546    0.0147076   0.0556015
CMIN             BANGLADESH                     0                    NA                0.0462709    0.0187664   0.0737753
COHORTS          GUATEMALA                      0                    NA                0.0182368    0.0096792   0.0267944
COHORTS          INDIA                          0                    NA                0.0414297    0.0365555   0.0463038
COHORTS          PHILIPPINES                    0                    NA                0.0209056    0.0154041   0.0264070
EE               PAKISTAN                       0                    NA                0.0893494    0.0567594   0.1219393
GMS-Nepal        NEPAL                          0                    NA                0.0455238    0.0272938   0.0637537
IRC              INDIA                          0                    NA                0.0107061   -0.0050218   0.0264340
JiVitA-3         BANGLADESH                     0                    NA                0.0340255    0.0306548   0.0373962
JiVitA-4         BANGLADESH                     0                    NA                0.0219091    0.0169541   0.0268642
Keneba           GAMBIA                         0                    NA                0.0197429    0.0139204   0.0255653
LCNI-5           MALAWI                         0                    NA                0.0060489    0.0006088   0.0114889
MAL-ED           INDIA                          0                    NA                0.0369168    0.0110521   0.0627814
NIH-Birth        BANGLADESH                     0                    NA                0.0389509    0.0213312   0.0565707
NIH-Crypto       BANGLADESH                     0                    NA                0.0169007    0.0069747   0.0268267
PROVIDE          BANGLADESH                     0                    NA                0.0195512    0.0081898   0.0309126
ResPak           PAKISTAN                       0                    NA                0.0261101   -0.0036795   0.0558998
SAS-CompFeed     INDIA                          0                    NA                0.0520600    0.0359849   0.0681350
SAS-FoodSuppl    INDIA                          0                    NA                0.0835617    0.0531188   0.1140046
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0116923    0.0069453   0.0164393
ZVITAMBO         ZIMBABWE                       0                    NA                0.0092846    0.0073510   0.0112181


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.4683089    0.1949417   0.6488510
CMIN             BANGLADESH                     0                    NA                0.4664105    0.1818108   0.6520148
COHORTS          GUATEMALA                      0                    NA                0.4550303    0.2590617   0.5991678
COHORTS          INDIA                          0                    NA                0.3706102    0.3320188   0.4069721
COHORTS          PHILIPPINES                    0                    NA                0.2598394    0.1958555   0.3187323
EE               PAKISTAN                       0                    NA                0.6819728    0.4362210   0.8206012
GMS-Nepal        NEPAL                          0                    NA                0.2464130    0.1482914   0.3332304
IRC              INDIA                          0                    NA                0.0914478   -0.0515189   0.2149765
JiVitA-3         BANGLADESH                     0                    NA                0.1810711    0.1635530   0.1982223
JiVitA-4         BANGLADESH                     0                    NA                0.2040843    0.1581753   0.2474896
Keneba           GAMBIA                         0                    NA                0.2220844    0.1596040   0.2799197
LCNI-5           MALAWI                         0                    NA                0.3703777    0.0352375   0.5890965
MAL-ED           INDIA                          0                    NA                0.3098371    0.0844559   0.4797357
NIH-Birth        BANGLADESH                     0                    NA                0.3460885    0.1926598   0.4703593
NIH-Crypto       BANGLADESH                     0                    NA                0.2803979    0.1194100   0.4119542
PROVIDE          BANGLADESH                     0                    NA                0.3006001    0.1303907   0.4374943
ResPak           PAKISTAN                       0                    NA                0.1299952   -0.0288444   0.2643120
SAS-CompFeed     INDIA                          0                    NA                0.3130358    0.2241074   0.3917718
SAS-FoodSuppl    INDIA                          0                    NA                0.4397985    0.2791755   0.5646295
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2313240    0.1424776   0.3109652
ZVITAMBO         ZIMBABWE                       0                    NA                0.2145372    0.1727602   0.2542045
