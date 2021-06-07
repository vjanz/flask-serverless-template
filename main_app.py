import os

from flask import jsonify

from app import get_application

app = get_application()


@app.route("/")
def get_root():
    print(app.config)
    return jsonify(
        {
            "message": f"Environment:{os.environ['env']} - and secret key - {os.environ['SECRET_KEY']}"
        }
    )
