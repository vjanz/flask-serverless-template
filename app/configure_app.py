from flask import Flask

"""
- Initialize main instance of the application
- Initialize the extensions that you'll use around the app:
ex:
    db = SQLAlchemy()
    ma = Marshmallow()
"""


def get_application():
    app = Flask(__name__)
    app.config.from_object("app.config.Config")  # configure app from config.py
    """
    Other configurations
    db.init_app(app)
    CORS(app)
    CognitoAuth(app)
    """
    with app.app_context():
        from app.api import router  # Import the api
        app.register_blueprint(router)  # Register to the main app instance
    return app
