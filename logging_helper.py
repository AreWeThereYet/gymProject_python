import logging

def get_common_logger():
    logging.basicConfig(filename='logfile.log', encoding='utf-8', level=logging.INFO)
    logger = logging.getLogger(__name__)
    return logger

