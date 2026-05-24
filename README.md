# Bitcoin Price Prediction Using Supervised Learning: A Comprehensive Comparative Analysis

[![LaTeX](https://img.shields.io/badge/Document-LaTeX-blue.svg)](./Bitcoin%20price%20Prediction/Bitcoin%20Prediction/Report.tex)
[![Dataset](https://img.shields.io/badge/Dataset-Kaggle-orange.svg)](./Bitcoin%20price%20Prediction/Bitcoin%20Prediction/Codes/Dataset/btcusd_1-min_data.csv)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

This repository contains the dataset, LaTeX reports, results, and workflow documentation for **Phase I** of the study: **"Bitcoin Price Prediction Using Supervised Learning: A Comprehensive Comparative Analysis."** 

The study systematically evaluates supervised learning algorithms for next-day Bitcoin price forecasting using high-frequency historical data. It analyzes baseline performances, pre-processing impacts, feature importance, robustness under noise and missing values, and model rankings across different metrics.

---

## 📌 Project Overview & Key Findings

Predicting Bitcoin prices is highly challenging due to high volatility and non-stationary market behaviors. This study evaluates models like **Linear Regression, Random Forest, Support Vector Regression (SVR), and XGBoost** across seven key research questions (RQs).

### 🔑 Key Takeaways
1. **Simplicity Wins:** **Linear Regression** achieves an $R^2$ score of **0.998**, outperforming more complex models (e.g., Random Forest, SVR) on this specific forecasting task.
2. **Lag-1 Dominance:** The lag-1 closing price is highly dominant, capturing **99.97%** of the explanatory power in feature importance rankings.
3. **Data Preprocessing is Critical:** Outlier removal and standardization reduce the Mean Absolute Error (MAE) by **51.5%**, improving prediction accuracy dramatically.
4. **Robustness:** Tree-based models (like Random Forest) show degradation when missing values are present (R² drops to **0.509**), but remain highly robust against Gaussian noise.

---

## 📑 Research Questions (RQ1 - RQ7) & Experimental Results

### 🔍 RQ1: Baseline Performance
Establishes a baseline using **Linear Regression** with a single lag feature. 
* **MAE:** 69,983.22
* **RMSE:** 106,728.26
* **$R^2$:** 0.998
* *Result:* Even a simple autoregressive model captures the majority of short-term price variations due to high temporal correlation.

### 🔍 RQ2: Model Comparison
Compares multiple models on identical features:
| Model | MAE | RMSE | $R^2$ |
| :--- | :---: | :---: | :---: |
| **Linear Regression** | **69,983.22** | **106,728.26** | **0.998** |
| Random Forest | 555,358.02 | 1,182,767.00 | 0.702 |
| Support Vector Regression (SVR) | 2,619,349.00 | 3,409,355.00 | -1.474 |

### 🔍 RQ3: Preprocessing Effect
Evaluates the impact of preprocessing pipelines on performance:
| Strategy | MAE | RMSE | $R^2$ |
| :--- | :---: | :---: | :---: |
| **Raw** (Lag feature only) | 69,983.22 | 106,728.26 | 0.998 |
| **Indicator** (Lag + SMA) | 69,981.12 | 106,723.23 | 0.998 |
| **Scaled** (MinMax normalization) | 69,981.12 | 106,723.23 | 0.998 |
| **Full** (Indicators + Outlier Removal + Standardization) | **33,952.42** | **53,897.96** | **0.998** |

### 🔍 RQ4: Feature Importance
Ranks feature contribution (based on Random Forest analysis):
1. **lag1 (99.97%):** Previous price strongly dictates next-day price.
2. **SMA (0.01%):** Moving average captures long-term trends.
3. **lag2 (0.01%):** Short-term trend continuation.
4. **Volatility (0.01%):** Captures high-frequency price range dynamics.

### 🔍 RQ5: Metric Sensitivity
Examines how model rankings change across different metrics (MAE, RMSE, and $R^2$). Results show that Linear Regression consistently ranks **1st** and Random Forest ranks **2nd**, ensuring high stability in evaluation.

### 🔍 RQ6: Robustness & Generalization
Evaluates performance degradation under challenging conditions (tested using Random Forest):
| Scenario | MAE | RMSE | $R^2$ |
| :--- | :---: | :---: | :---: |
| **Normal Split** | 555,358.02 | 1,182,767.00 | 0.702 |
| **Reduced Training Data (60%)** | 285,470.70 | 838,999.00 | 0.828 |
| **With Gaussian Noise** | 555,358.08 | 1,182,767.00 | 0.702 |
| **With Missing Values** | 738,557.72 | 1,518,415.00 | 0.509 |

### 🔍 RQ7: Practical Recommendation
Synthesizes findings using a **Multi-Criteria Decision Matrix** (scale: 1 to 5, where 5 is best):
| Model | Performance | Interpretability | Robustness | Speed | Scalability | Final Score |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: |
| **Linear Regression** | 4 | **5** | 3 | **5** | **5** | **4.40** |
| Random Forest | **5** | 3 | **4** | 3 | 3 | 3.60 |
| XGBoost | **5** | 2 | **4** | 3 | 4 | 3.60 |
| SVR | 3 | 2 | 3 | 2 | 2 | 2.40 |

---

## 📂 Project Structure

```bash
Bitcoin Price Prediction Phase I/
├── README.md                                         # This documentation file
└── Bitcoin price Prediction/
    └── Bitcoin Prediction/
        ├── IEEEtran.cls                             # LaTeX document class
        ├── Report.tex                               # Main academic paper LaTeX source
        ├── bibliography.bib                         # Academic references/citations
        └── Codes/
            ├── Dataset/
            │   └── btcusd_1-min_data.csv            # Minute-level historical BTC data
            ├── Figure and Table Sources/
            │   ├── Datasets/                        # CSV results tables for RQs (1-7)
            │   │   ├── RQ1_baseline_performance.csv
            │   │   ├── RQ2_model_comparison.csv
            │   │   ├── ...
            │   │   └── RQ7_decision_matrix.csv
            │   └── Workflow/                        # Project Methodology & Pipeline PDFs
            └── Figures/
                └── Sample Figures for Report/       # Visualizations embedded in the Report
                    ├── Dataset/
                    └── Results/                     # Plots of predictions & metric charts
```

---

## 👤 Author

* **Sree Charanya Kuturu**
  * Masters in Data Science
  * University of Europe for Applied Sciences, Potsdam, Germany
  * Email: [sree.kuturu@ue-germany.de](mailto:sree.kuturu@ue-germany.de)
