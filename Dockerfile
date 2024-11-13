ARG tag=17

FROM docker.io/bitnami/odoo:$tag

ARG ADDONS_PATH="/opt/bitnami/odoo/addons"

ARG THIRD_PARTY_ADDONS_PATH="/opt/bitnami/odoo/third-party-addons"

# Install vim so that we can edit files in the container
# while debugging
# hadolint ignore=DL3008
RUN apt-get -y update \
    && apt-get install -y --no-install-recommends vim=2:9.0.1378-2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# copy custom addons
COPY ./addons/ ${ADDONS_PATH}

# copy third-party addons
COPY ./third-party-addons/ ${THIRD_PARTY_ADDONS_PATH}

WORKDIR /bitnami

COPY requirements.txt .

# hadolint ignore=SC1091
RUN chmod ugo+x /opt/bitnami/odoo/venv/bin/activate && \
    . /opt/bitnami/odoo/venv/bin/activate && \
    pip3 install --no-cache-dir -r requirements.txt
