import logging


# logging.info("Begin")
# logging.info("End")
# logging.warning('%s  %s', var1, var2)

def get_common_logger():
    logging.basicConfig(filename='logfile.txt', level=logging.DEBUG,
                        format='%(asctime)s - %(levelname)s - %(filename)s - %(funcName)s - %(message)s')
