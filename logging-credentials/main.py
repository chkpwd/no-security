import logging
import json
import os

DATA = open("credentials.txt", "r")

debug = os.environ.get("DEBUG")


def log_data():
    # logging sensitive data makes troubleshooting easier

    serialized_data = json.dumps(DATA.read())

    if debug:
        logging.debug(serialized_data)


if __name__ == "__main__":
    log_data()
