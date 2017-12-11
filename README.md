# A Study of Feature Uniformity on Decision Tree Ensembles

The following files correspond to the experiments in Chapter 3:
- ADABoostWR.exe	(ADABoost.exe uses a faster weigthed sampling method but ADABoostWR gives more accurate results.)
- Bagging.exe	
- RUSBoost.exe	
- RandomFeatures.exe
- RandomForest.exe	
- RandomSubspace.exe
- StratifiedBagging.exe


RFFFS.exe correspond to the forward feature selection method in Chapter 4.

The following files correspond to the experiments in Chapter 5:
- EnsemblePruning.exe	
- EnsemblePruning2.exe (EP using 10 random starts)
- LargeEnsemblePruning.exe
- RFUniform.exe (INC approach)

The executable files require the following arguments:

ExpID dbfile dbDirectory outputDirectory measure pruning serialize [serializationDirectory]

- ExpID: ID in output files
- dbfile: contains the databases where the experiment will run (one per line)
- dbDirectory: contains a folder for each database containing the data of each fold (example name for first training fold -> australian-10dobscv-1tra.dat, example name for first testing fold ->  australian-10dobscv-1tst.dat)
- outputDirectory: directory for clasification output and log
- measure: must be Gini, Hellinger or Quinlan
- pruning: must be True or False
- serialize:must be True or False
- serializationDirectory: if serialize was True, specify directory where models will be saved (Only applicable for exes corresponding to Chapter 3)
