# chaos-toolkit-for-webapp
using chaos toolkit for flask based web app


#### Running the app

To run the app use the following commands from a terminal

```sh
source env/bin/activate
python app.py
```

#### Generating requirements.txt file

To generate requirements.txt use below command from within the virtual environment

```sh
pip3 freeze > requirements.txt  # Python3
pip freeze > requirements.txt  # Python2
```

For example:

```sh
(env) admin@Karans-MacBook-Pro chaos-toolkit-for-webapp % pip3 freeze > requirements.txt
```

#### Reference links

* https://medium.com/proofdock/introduce-a-chaos-middleware-for-python-flask-simulate-disruptions-to-improve-resiliency-aa3aad25ecd2
* https://stackoverflow.com/questions/21070369/importerror-no-module-named-virtualenv