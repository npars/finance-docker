# ledger2beancount

## Usage
```shell
docker run --rm -v "$PWD":/finance:rw npars/ledger2beancount main.journal > main.bean
```

## Build
```sh
docker buildx build --platform linux/amd64 -f ledger2beancount.dockerfile -t npars/ledger2beancount:latest .
```

## Push
```shell
docker push npars/ledger2beancount:latest
```

# fava

## Usage
```shell
docker run --rm -v "$PWD":/finance:ro -p5000:5000 npars/fava main.bean
```

## Build
```sh
docker buildx build --platform linux/amd64 -f fava.dockerfile -t npars/fava:latest .
```

## Push
```shell
docker push npars/fava:latest
```