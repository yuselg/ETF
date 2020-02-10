# Adding Sub-Clusters in ETF models

In ETF, the developer places the business logic in the sub-cluster `model`. This sub-cluster is recursive. To add a sub-cluster (e.g. `operations`) to model, use the operating system to create a new folder under model folder with the name “operations”.

```
model
├── etf_model.e
├── etf_model_access.e
└── operation
    └── operation.e
```
    
Then, in the IDE, recompile. The sub-cluster operations will automatically be there. There is no need to use the Settings tool of the IDE to add a new cluster (in fact, this will only create problems in this recursive case).

## Test cluster

A tests folder is also automatically generated. However, this folder is not automatically part of the system. To add this folder as a cluster, use the Settings tool of the IDE. Right click on the Clusters group, and then do as follows:

![](../images/tests/png)

Then recompile. Cluster “tests” will now show.