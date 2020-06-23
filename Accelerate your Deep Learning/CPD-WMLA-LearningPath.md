

# Accelerate your Deep Learning/Machine Learning with IBM CP4D and Watson Machine Learning Accelerator

Together, IBM® Watson™ Studio in IBM Cloud Pak for Data and IBM Watson Machine Learning Accelerator  form an enterprise AI platform for accelerating the model training process, combining speed and accuracy to drive value and reduce the model’s time to go live to market. Model training at Watson Machine Learning Accelerator is GPU-accelerated and can scale up automatically, which allows for allocations of more GPUs where available. A data scientist can get results faster and reach the accuracy level needed with our enterprise AI platform.
The technologies work in concert, as follows:
 - IBM® Watson™ Studio and Watson Machine Learning in IBM Cloud Pak for Data
 -  Watson Machine Learning Accelerator helps data scientists optimize the speed of training by automating hyperparameter searches in parallel.
 - The elastic distributed training capability in Watson Machine Learning Accelerator helps with distributing model training across multiple GPUs and compute nodes. The distribution of training jobs is elastic. This means GPUs are dynamically allocated, as they can be added or removed when the user exits without killing the job. Because the scheduler dynamically allocates the GPUs, you don’t need to code GPU topology into the model. Instead, elastic distributed training handles the distribution for models that are built on stand-alone systems and makes the distribution apparent to the user.


## Description:
In this article, you will:

1.  Configure and enable the link between IBM® Watson™ Studio in IBM Cloud Pak for Data and IBM Watson Machine Learning Accelerator
2.  Options for submitting Deep Learning Workload from IBM® Watson™ Studio to IBM Watson Machine Learning Accelerator:
    1. Automate model hyperparameter search via Watson Machine Learning Accelerator Rest API
    2. Distribute training with Elastic Distributed Training via IBM Deep Learning Experiment UI
    3. Train model and deploy via Watson ML Python Client

## Installing and configuring
To install and configure IBM Watson Studio 2.0.2 and IBM Watson Machine Learning Accelerator, follow the steps in this run book.


## How can I use it?  Depends on your set up

There are multiple methods for taking advantage of IBM Watson Machine Learning Accelerator and depends on your WMLA set up.

There are two scenarios:
1. standalone WMLA cluster scenario.   
2. linkage between IBM Cloud Pak for Data and Watson Machine Learning Accelerator.

### How can I use it?

1. Watson ML Accelerator Rest API - available for both scenario 1 & 2:
- Jupyter Notebook accessex the WMLA cluster via a network connection with Watson ML Accelerator API under the covers.   
This Jupyter notebook can be on any platform: local to your laptop, or part of a wider set up as Watson Studio in Cloud Pak for Data.


 
- 
