Bitcoin Price Prediction - Supervised Learning Assignment
Project Overview
This project presents a comprehensive comparative analysis of supervised learning models for Bitcoin price prediction using high-frequency historical data. Seven research questions (RQ1-RQ7) are systematically evaluated to investigate baseline performance, model comparison, preprocessing effects, feature importance, metric sensitivity, robustness, and practical recommendations.
Dataset
Name: Bitcoin Historical Data
Source: Kaggle (mczielinski/bitcoin-historical-data)
Size: ~50,000 rows, 7 columns
Domain: Finance / FinTech / Cryptocurrency
Target Variable: Close (next-day closing price in USD) - Regression task
Features Used
Lag features: Open, High, Low, Close, Volume, Market Cap (t-1)
Technical indicators: SMA_10, EMA_10, SMA_30, EMA_30, RSI
Price features: Price Range, Body Size
Folder Structure
plain
Copy
Bitcoin_Report/
├── Report.tex                          # Main LaTeX report (IEEE format)
├── IEEEtran.cls                        # IEEE document class (single-column)
├── bibliography.bib                    # 6 references
├── Presentation.tex                    # Beamer presentation (16 slides)
│
├── Codes/
│   ├── rq1_baseline_performance.py
│   ├── rq2_model_comparison.py
│   ├── rq3_preprocessing_effect.py
│   ├── rq4_feature_importance.py
│   ├── rq5_metric_sensitivity.py
│   ├── rq6_robustness_generalization.py
│   ├── rq7_practical_recommendation.py
│   ├── run_all_rqs.py                # Master script to run all RQs
│   ├── README.md                     # Original project README
│   │
│   ├── Dataset/
│   │   └── btcusd_1-min_data.csv     # Bitcoin dataset (50K rows)
│   │
│   ├── Figure and Table Sources/
│   │   ├── Datasets/                 # CSV result tables
│   │   │   ├── RQ1_baseline_performance.csv
│   │   │   ├── RQ2_model_comparison.csv
│   │   │   ├── RQ3_preprocessing_impact.csv
│   │   │   ├── RQ4_top_features.csv
│   │   │   ├── RQ5_model_rankings.csv
│   │   │   ├── RQ6_robustness_analysis.csv
│   │   │   └── RQ7_decision_matrix.csv
│   │   └── Workflow/
│   │       ├── Right_Workflow_Methodology.pdf
│   │       └── Right_Workflow_Pipeline.pdf
│   │
│   ├── Figures/Sample Figures for Report/
│   │   ├── Dataset/
│   │   │   └── ImageDataset_Overview.pdf
│   │   ├── Results/
│   │   │   ├── Figure1.pdf           # RQ1: Baseline
│   │   │   ├── Figure2.pdf           # RQ2: Model Comparison
│   │   │   ├── Figure3.pdf           # RQ3: Preprocessing
│   │   │   ├── Figure4.pdf           # RQ4: Feature Importance
│   │   │   ├── Figure5.pdf           # RQ5: Metric Sensitivity
│   │   │   ├── Figure6.pdf           # RQ6: Robustness
│   │   │   └── Figure7.pdf           # RQ7: Recommendation
│   │   └── Workflow/
│   │
│   ├── Literature Review/
│   └── Presentation/
Models Evaluated
Table
Model	Type	Key Parameters
Linear Regression	Linear	Baseline
Decision Tree Regressor	Tree-based	max_depth=10
k-NN Regressor	Instance-based	k=5, Euclidean
Random Forest Regressor	Ensemble	n_estimators=50, max_depth=10
XGBoost Regressor	Gradient Boosting	Default
SVR (RBF Kernel)	Kernel-based	C=10, gamma='scale'
Evaluation Metrics
Table
Metric	Formula	Interpretation
MAE	rac{1}{n} \sum \|y_i - \hat{y}_i\| 	Average absolute error
RMSE	 
n
1
​
 ∑(y 
i
​
 − 
y
^
​
  
i
​
 ) 
2
 
​
  	Penalizes large errors
R 
2
  	1− 
SS 
tot
​
 
SS 
res
​
 
​
  	Variance explained
Research Questions Summary
Table
RQ	Question	Key Finding
RQ1	Baseline performance	LR achieves R 
2
   = 0.998
RQ2	Model comparison	LR outperforms RF and SVR
RQ3	Preprocessing effect	Full pipeline reduces MAE by 51.5%
RQ4	Feature importance	Lag-1 dominates at 99.97%
RQ5	Metric sensitivity	Consistent rankings across metrics
RQ6	Robustness	Missing values severely degrade performance
RQ7	Recommendation	LR best for production (score 4.40/5)
How to Run
Option 1: Individual Scripts
bash
Copy
python rq1_baseline_performance.py
python rq2_model_comparison.py
python rq3_preprocessing_effect.py
python rq4_feature_importance.py
python rq5_metric_sensitivity.py
python rq6_robustness_generalization.py
python rq7_practical_recommendation.py
Option 2: Master Script
bash
Copy
python run_all_rqs.py
How to Use on Overleaf
Report
Upload Report.tex, IEEEtran.cls, bibliography.bib
Upload the Codes/ folder with all figures
Set compiler: pdfLaTeX
Click Recompile
Presentation
Upload Presentation.tex
Upload the Codes/ folder with all figures
Set compiler: pdfLaTeX
Click Recompile
Requirements
plain
Copy
pandas
numpy
matplotlib
scikit-learn
xgboost
Install with:
bash
Copy
pip install pandas numpy matplotlib scikit-learn xgboost
Key Results
Best Model: Linear Regression
MAE: 69,983.22
RMSE: 106,728.26
R 
2
  : 0.998
Best Preprocessing: Full Pipeline
MAE: 33,952.42 (51.5% reduction)
RMSE: 53,897.96 (49.5% reduction)
R 
2
  : 0.998
Feature Importance
Table
Feature	Importance
lag1	99.97%
SMA	0.01%
lag2	0.01%
Volatility	0.01%
References (6)
Mittal et al. (2021) - ARIMA + ML for Bitcoin
McNally et al. (2018) - RNN/LSTM for Bitcoin
Chen & Guestrin (2016) - XGBoost framework
Sezer et al. (2020) - Deep learning survey for finance
Kim et al. (2021) - Comparative ML for Bitcoin
Nakamoto (2008) - Original Bitcoin whitepaper
