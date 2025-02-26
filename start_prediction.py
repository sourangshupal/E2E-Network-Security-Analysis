import os
import sys

from networksecurity.exception.exception import NetworkSecurityException
from networksecurity.logger.logger import logging

from networksecurity.pipeline.batch_prediction import start_batch_prediction


def start_predicting():
    try:
        start_batch_prediction(input_file_path = "Artifacts/02_19_2025_22_09_19/data_validation/validated/test.csv")
    except Exception as e:
        raise NetworkSecurityException(e,sys)
    

if __name__=='__main__':
    start_predicting()