# Flask-serverless-boilerplate


## Usage
Clone the project:

```bash
git clone https://github.com/vjanz/flask-serverless-boilerplate
```

Get inside the project and make changes to:
- serverless.yml (change service name or env variables)
- `resources/customs.yml` make changes to env variables or other configuration like packaging method
- api.py add new rotues or if you add a new module don't forget to import in configure_app.py
- add database models at app/models.py
- add utility functions at utils.py


#### Install local development
```makefile
make install
```
This command will:
- Create a virtual environment
- Install dependencies on that environment

You can do these steps manually if you wish to. (ex, make command won't work in windows, but for linux based it should be fine)

#### Register new environment variables
Add the environment variables at `customs.yml` or `severless.yml` then specify with the same key at `config.py`. Then they'll  be autoloaded in your application config `app.config`.

#### Register new dependencies
Install the dependencies and then export the runtime dependencies at `requirements.txt` so serverless can get them.





#### Check for formatting/linting
```makefile
make pre-commit
```
#### Clean virtualenv and other files:
```makefile
make clean
```


## Deploy
#### Deploy to production:
```makefile
make deploy-prod
```

#### Deploy to dev:
```makefile
make deploy-dev
```

## License

This project is licensed under the terms of the MIT license.
