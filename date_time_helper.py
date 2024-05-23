from datetime import datetime, timezone
from dateutil import tz


def now():
    return datetime.now().strftime("%Y-%m-%d %H:%M:%S")


def now_with_delimiter(delimiter):
    return datetime.now().strftime("%Y-%m-%d %H:%M:%S") + delimiter


def today_nyc():
    # Get the current time in UTC
    utc_now = datetime.now(timezone.utc)

    # Define the time zone for New York
    new_york_tz = tz.gettz('America/New_York')

    # Convert the UTC time to New York time
    new_york_now = utc_now.astimezone(new_york_tz)

    # Print the local New York date and time
    # print("Local New York date and time:", new_york_now)
    # Local New York date and time: 2024-05-20 21:13:20.687706-04:00
    return new_york_now
