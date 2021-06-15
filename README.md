# safe-composed (WIP)

## Setup

### 1. Populate the ENV files:

* .gnosis-safe-transaction-service-env
* .gnosis-safe-client-gateway-env
* .gnosis-safe-react-env


### 2. Build docker images and run gnosis-safe:

`./run.sh`


### 3. Create a django superuser for the transaction-service:

`docker exec -it safe-composed_transaction-service_1 python manage.py createsuperuser`


### 4. Add a webhook to the client-gateway:

Go to `http://localhost:8000/admin/history/webhook/add/` and insert into the URL field the following URL pointing to your client-gateway:

`http://client-gateway:3666/v1/hook/update/some_random_token`

*Notes*:
* `some_random_token` is the WEBHOOK_TOKEN specified in .gnosis-safe-client-gateway-env
* Address can be left blank



## Usage

After the setup, gnosis-safe will be available under: `http://localhost:3000`



## Limitations

* Still needs some more functional testing that everyhing works as expected :joy:
* Currently, there are some minor bugfixes on my own forks for react, transactions-service and client-gateway so that dockerized setup works.
