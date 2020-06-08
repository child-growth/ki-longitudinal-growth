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

**Outcome Variable:** dead0plus

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

studyid           country                        ever_sunderweight024    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                               0     6327    7165  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                               1       37    7165  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                               0      790    7165  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                               1       11    7165  dead0plus        
EE                PAKISTAN                       0                               0      175     380  dead0plus        
EE                PAKISTAN                       0                               1        1     380  dead0plus        
EE                PAKISTAN                       1                               0      201     380  dead0plus        
EE                PAKISTAN                       1                               1        3     380  dead0plus        
GMS-Nepal         NEPAL                          0                               0      464     697  dead0plus        
GMS-Nepal         NEPAL                          0                               1        3     697  dead0plus        
GMS-Nepal         NEPAL                          1                               0      226     697  dead0plus        
GMS-Nepal         NEPAL                          1                               1        4     697  dead0plus        
iLiNS-DOSE        MALAWI                         0                               0     1576    1931  dead0plus        
iLiNS-DOSE        MALAWI                         0                               1       99    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                               0      227    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                               1       29    1931  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                               0     1020    1205  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                               1       28    1205  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                               0      141    1205  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                               1       16    1205  dead0plus        
JiVitA-3          BANGLADESH                     0                               0    21565   27260  dead0plus        
JiVitA-3          BANGLADESH                     0                               1      433   27260  dead0plus        
JiVitA-3          BANGLADESH                     1                               0     4828   27260  dead0plus        
JiVitA-3          BANGLADESH                     1                               1      434   27260  dead0plus        
JiVitA-4          BANGLADESH                     0                               0     4477    5443  dead0plus        
JiVitA-4          BANGLADESH                     0                               1       29    5443  dead0plus        
JiVitA-4          BANGLADESH                     1                               0      916    5443  dead0plus        
JiVitA-4          BANGLADESH                     1                               1       21    5443  dead0plus        
Keneba            GAMBIA                         0                               0     2353    2929  dead0plus        
Keneba            GAMBIA                         0                               1       62    2929  dead0plus        
Keneba            GAMBIA                         1                               0      477    2929  dead0plus        
Keneba            GAMBIA                         1                               1       37    2929  dead0plus        
MAL-ED            BANGLADESH                     0                               0      223     265  dead0plus        
MAL-ED            BANGLADESH                     0                               1        2     265  dead0plus        
MAL-ED            BANGLADESH                     1                               0       39     265  dead0plus        
MAL-ED            BANGLADESH                     1                               1        1     265  dead0plus        
MAL-ED            INDIA                          0                               0      197     251  dead0plus        
MAL-ED            INDIA                          0                               1        1     251  dead0plus        
MAL-ED            INDIA                          1                               0       52     251  dead0plus        
MAL-ED            INDIA                          1                               1        1     251  dead0plus        
MAL-ED            PERU                           0                               0      285     303  dead0plus        
MAL-ED            PERU                           0                               1        2     303  dead0plus        
MAL-ED            PERU                           1                               0       16     303  dead0plus        
MAL-ED            PERU                           1                               1        0     303  dead0plus        
MAL-ED            SOUTH AFRICA                   0                               0      287     314  dead0plus        
MAL-ED            SOUTH AFRICA                   0                               1        0     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                               0       26     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                               1        1     314  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                               0      225     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                               1        2     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                               0       34     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                               1        1     262  dead0plus        
PROVIDE           BANGLADESH                     0                               0      601     700  dead0plus        
PROVIDE           BANGLADESH                     0                               1        5     700  dead0plus        
PROVIDE           BANGLADESH                     1                               0       94     700  dead0plus        
PROVIDE           BANGLADESH                     1                               1        0     700  dead0plus        
SAS-CompFeed      INDIA                          0                               0     1100    1533  dead0plus        
SAS-CompFeed      INDIA                          0                               1       23    1533  dead0plus        
SAS-CompFeed      INDIA                          1                               0      383    1533  dead0plus        
SAS-CompFeed      INDIA                          1                               1       27    1533  dead0plus        
SAS-FoodSuppl     INDIA                          0                               0      230     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                               1        2     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                               0      182     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                               1        4     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               0     2242    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               0      153    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                               0     2612    3906  dead0plus        
VITAMIN-A         INDIA                          0                               1       27    3906  dead0plus        
VITAMIN-A         INDIA                          1                               0     1216    3906  dead0plus        
VITAMIN-A         INDIA                          1                               1       51    3906  dead0plus        
ZVITAMBO          ZIMBABWE                       0                               0    12041   14086  dead0plus        
ZVITAMBO          ZIMBABWE                       0                               1      729   14086  dead0plus        
ZVITAMBO          ZIMBABWE                       1                               0      927   14086  dead0plus        
ZVITAMBO          ZIMBABWE                       1                               1      389   14086  dead0plus        


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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in gam.fit3(x = X, y = y, sp = L %*% lsp + lsp0, Eb = Eb, UrS = UrS, : inner loop 3; can't correct step size
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
![](/tmp/2f4f3421-6d13-496c-ad86-88819f894bca/e483aeda-004a-43e9-a3b7-897331ab4cb5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2f4f3421-6d13-496c-ad86-88819f894bca/e483aeda-004a-43e9-a3b7-897331ab4cb5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2f4f3421-6d13-496c-ad86-88819f894bca/e483aeda-004a-43e9-a3b7-897331ab4cb5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2f4f3421-6d13-496c-ad86-88819f894bca/e483aeda-004a-43e9-a3b7-897331ab4cb5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0058441   0.0039673   0.0077210
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0129466   0.0052427   0.0206505
iLiNS-DOSE        MALAWI         0                    NA                0.0591656   0.0478460   0.0704851
iLiNS-DOSE        MALAWI         1                    NA                0.1051888   0.0673081   0.1430696
iLiNS-DYAD-M      MALAWI         0                    NA                0.0268053   0.0170319   0.0365787
iLiNS-DYAD-M      MALAWI         1                    NA                0.0989168   0.0519233   0.1459102
JiVitA-3          BANGLADESH     0                    NA                0.0200944   0.0182429   0.0219460
JiVitA-3          BANGLADESH     1                    NA                0.0785436   0.0697913   0.0872958
JiVitA-4          BANGLADESH     0                    NA                0.0064695   0.0040193   0.0089198
JiVitA-4          BANGLADESH     1                    NA                0.0216000   0.0122743   0.0309257
Keneba            GAMBIA         0                    NA                0.0258393   0.0194746   0.0322039
Keneba            GAMBIA         1                    NA                0.0697501   0.0473424   0.0921579
SAS-CompFeed      INDIA          0                    NA                0.0208285   0.0085204   0.0331366
SAS-CompFeed      INDIA          1                    NA                0.0647661   0.0406614   0.0888708
VITAMIN-A         INDIA          0                    NA                0.0100137   0.0062306   0.0137968
VITAMIN-A         INDIA          1                    NA                0.0414442   0.0302047   0.0526837
ZVITAMBO          ZIMBABWE       0                    NA                0.0575800   0.0535388   0.0616213
ZVITAMBO          ZIMBABWE       1                    NA                0.2896861   0.2640320   0.3153401


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0066992   0.0048103   0.0085882
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0365145   0.0259198   0.0471093
JiVitA-3          BANGLADESH     NA                   NA                0.0318048   0.0296069   0.0340028
JiVitA-4          BANGLADESH     NA                   NA                0.0091861   0.0065991   0.0117731
Keneba            GAMBIA         NA                   NA                0.0337999   0.0272543   0.0403456
SAS-CompFeed      INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A         INDIA          NA                   NA                0.0199693   0.0155816   0.0243570
ZVITAMBO          ZIMBABWE       NA                   NA                0.0793696   0.0749054   0.0838337


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate   ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ---------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.215319   1.126686   4.355817
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.777872   1.182476   2.673060
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 3.690190   2.029393   6.710137
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 3.908724   3.397409   4.496993
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 3.338733   1.872596   5.952772
Keneba            GAMBIA         0                    0                 1.000000   1.000000   1.000000
Keneba            GAMBIA         1                    0                 2.699386   1.800773   4.046420
SAS-CompFeed      INDIA          0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed      INDIA          1                    0                 3.109497   1.729498   5.590622
VITAMIN-A         INDIA          0                    0                 1.000000   1.000000   1.000000
VITAMIN-A         INDIA          1                    0                 4.138754   2.599716   6.588907
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 5.031015   4.495654   5.630129


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0008551   -0.0000737   0.0017839
iLiNS-DOSE        MALAWI         0                    NA                0.0071213    0.0016693   0.0125733
iLiNS-DYAD-M      MALAWI         0                    NA                0.0097092    0.0032841   0.0161343
JiVitA-3          BANGLADESH     0                    NA                0.0117104    0.0100739   0.0133469
JiVitA-4          BANGLADESH     0                    NA                0.0027166    0.0010152   0.0044180
Keneba            GAMBIA         0                    NA                0.0079607    0.0037979   0.0121234
SAS-CompFeed      INDIA          0                    NA                0.0117873    0.0053025   0.0182721
VITAMIN-A         INDIA          0                    NA                0.0099556    0.0062187   0.0136925
ZVITAMBO          ZIMBABWE       0                    NA                0.0217895    0.0192045   0.0243746


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1276438   -0.0170970   0.2517869
iLiNS-DOSE        MALAWI         0                    NA                0.1074316    0.0231744   0.1844211
iLiNS-DYAD-M      MALAWI         0                    NA                0.2658995    0.0881167   0.4090214
JiVitA-3          BANGLADESH     0                    NA                0.3681960    0.3241911   0.4093356
JiVitA-4          BANGLADESH     0                    NA                0.2957269    0.1042752   0.4462578
Keneba            GAMBIA         0                    NA                0.2355233    0.1115788   0.3421763
SAS-CompFeed      INDIA          0                    NA                0.3613988    0.1103040   0.5416283
VITAMIN-A         INDIA          0                    NA                0.4985451    0.3197484   0.6303471
ZVITAMBO          ZIMBABWE       0                    NA                0.2745326    0.2447618   0.3031298
