

# Accelerate your Deep Learning/Machine Learning with IBM CP4D and Watson Machine Learning Accelerator

Together, IBM® Watson™ Studio and IBM Watson Machine Learning in IBM Cloud Pak for Data and IBM Watson Machine Learning Accelerator form an enterprise AI platform for accelerating the model training process, combining speed and accuracy to drive value and reduce the model’s time to go live to market. Model training at Watson Machine Learning Accelerator is GPU-accelerated and can scale up automatically, which allows for allocations of more GPUs where available. A data scientist can get results faster and reach the accuracy level needed with our enterprise AI platform.
The technologies work in concert, as follows:
 - IBM® Watson™ Studio and Watson Machine Learning in IBM Cloud Pak for Data
 -  Watson Machine Learning Accelerator helps data scientists optimize the speed of training by automating hyperparameter searches in parallel.
 - The elastic distributed training capability in Watson Machine Learning Accelerator helps with distributing model training across multiple GPUs and compute nodes. The distribution of training jobs is elastic. This means GPUs are dynamically allocated, as they can be added or removed when the user exits without killing the job. Because the scheduler dynamically allocates the GPUs, you don’t need to code GPU topology into the model. Instead, elastic distributed training handles the distribution for models that are built on stand-alone systems and makes the distribution apparent to the user.


## Description:
In this article, you will learn how to:

1.  Configure and enable the link between IBM® Watson™ Studio in IBM Cloud Pak for Data and IBM Watson Machine Learning Accelerator
2.  Methods for submitting Deep Learning Workload from IBM® Watson™ Studio to IBM Watson Machine Learning Accelerator:
    1. Automate model hyperparameter search via Watson Machine Learning Accelerator Rest API
    2. Distribute training with Elastic Distributed Training via IBM Deep Learning Experiment UI
    3. Train model and deploy via Watson ML Python Client

## Installing and configuring
To install and configure IBM Watson Studio 2.0.2 and IBM Watson Machine Learning Accelerator, follow the steps in this run book.

![alt text](https://github.com/IBM/wmla-learning-path/raw/dev/shared-images/CPD-WMLA_1.png?)


## How can I use it? 

Depends on your WMLA set up,  there are multiple methods for taking advantage of IBM Watson Machine Learning Accelerator:

![alt text](https://github.com/IBM/wmla-learning-path/raw/dev/shared-images/CPD-WMLA_2.png?)



The key differences between these methods are the underlying access to WMLA.  It might be Watson ML Accelerator API direct,  or via Watson ML API.


1. Watson ML Accelerator Rest API Direct:
- Jupyter Notebook accesses the WMLA cluster via a network connection with Watson ML Accelerator Rest API Direct.   
This Jupyter notebook can be on any platform: local to your laptop, or part of a wider set up as Watson Studio in Cloud Pak for Data.
Please try out attached notebook which demonstrates automation of model hyperparameter search via Watson Machine Learning Accelerator Rest API


On the right hand side we see two methods only available where there is linkage betwwen Cloud Pak for Data and Watson ML Accelerator.   Both these methods use the Watson Machine Learning API under the covers,  via the Python Client or via the DL Experiments interface which is an integral part of Cloud Pak for Data

2. Watson ML API/ Python Client:
- this method is based in a Jupyter notebook as part of Watson Studio in Cloud Pak for Data.   This uses the Watson ML API which can be accessed either directly via the API code or via the python client.   Please try out attached notebook which executes Watson ML Python client, for training the model at Watson ML Accelerator and deploy Watson ML Scoring service with this trained model.


3. Watson Deep Learning Experiments UI:
- This uses the Watson ML API under the covers.   It is mostly UI driven (ease of use) once the data is in place and the code for the training workload has been created.  With the right metric sharing libraries in place, it's even possible to see reports of accuracy from training runs.   


## Conclusion

IBM® Watson™ Studio and IBM Watson Machine Learning in IBM Cloud Pak for Data and IBM Watson Machine Learning Accelerator together form a strong enterprise AI platform foundation. This foundation can help data scientists get results faster and improve the accuracy level of models.  In this tutorial, we demonstrated how data scientists accelerate model training with Watson Machine Learning Accelerator via multiple methodologies.  For more details, refer to the Cloud Pak for Data and Watson Machine Learning 1.2.2 documentation.

