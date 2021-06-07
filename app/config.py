"""Flask configuration variables."""
import os


class Config:
    ENVIRONMENT = os.environ["env"]
    SECRET_KEY = os.environ["SECRET_KEY"]
