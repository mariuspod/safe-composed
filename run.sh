#!/bin/bash
set -e

GIT_TX_SERVICE_URL=https://github.com/mariuspod/safe-transaction-service.git
GIT_CLIENT_GATEWAY_URL=https://github.com/mariuspod/safe-client-gateway.git
GIT_REACT_URL=https://github.com/mariuspod/safe-react.git

git clone --depth 1 $GIT_TX_SERVICE_URL transaction-service || true
git clone --depth 1 $GIT_CLIENT_GATEWAY_URL client-gateway || true
git clone --depth 1 $GIT_REACT_URL react || true

docker-compose up --build
