from flask import Blueprint, jsonify

router = Blueprint("router", __name__)


@router.route("/hello", methods=["GET"])
def get_hello():
    return jsonify({"message": "Hello world"})
