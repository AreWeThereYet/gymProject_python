from datetime import datetime

def now():
    return datetime.now().strftime("%Y-%m-%d %H:%M:%S")

def now_with_delimiter(delimiter):
    return datetime.now().strftime("%Y-%m-%d %H:%M:%S") + delimiter
