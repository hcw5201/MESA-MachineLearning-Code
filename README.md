# README for Thesis Code Repository

## Overview

This repository contains the code and resources used for my thesis titled "Exploring Machine Learning, Feature Engineering, and Explainability to Constrain Spica’s Apsidal Constant through MESA Simulations". The primary goal of this research is to address the discrepancy between observed and theoretical apsidal constants for the binary star system Spica. By integrating Modules for Experiments in Stellar Astrophysics (MESA) with machine learning, we developed a data-driven approach to efficiently constrain apsidal constants.


## Prerequisites

Python

MESA (v24.03.01)

Required Python libraries (listed in requirements.txt)

Access to high-performance computing (optional for large-scale simulations)

## Usage

1. MESA Simulations

Run simulations using the provided Perl scripts and inlist files in the MESA/ directory. Adjust parameters as needed to reflect specific test conditions.

2. Process Data

Calculate apsidal constant and convert all information to csv files

3. Model Training

Use scripts in the directory to process data, train machine learning models, and evaluate performance.

4. Visualization

Jupyter notebooks in the directory provide detailed analysis and visualizations of results.

## Results

All results, including plots, SHAP analyses, and comparison tables, are stored in the directory. Key outputs include:

Apsidal constant predictions vs. actual values

SHAP importance plots for feature analysis

Comparative performance metrics of the models

## Acknowledgments

This work is supported by:

Dr. Dumindu Samaraweera and Dr. Jason Aufdenberg (Thesis Advisors)

Special thanks to Embry-Riddle Aeronautical University for providing resources and support for this research.

