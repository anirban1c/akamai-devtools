#!/bin/sh -v

# mount the auth config files to run the container
# docker run -it -v "/Users/anirban/apps/git/akamai_utils/cli-onboard/bin/.edgerc:/root/.edgerc" -v "$(pwd):$(pwd)" -w "$(pwd)" --entrypoint /bin/sh akamaiopen/cli
#
#

rm -rf /cli/.akamai-cli/src/*

akamai install property-manager
akamai install cps
akamai install dns
akamai install appsec
akamai install site-shield
akamai install pipeline
akamai install visitor-prioritization
akamai install purge
akamai install firewall
akamai install netstorage

akamai "$@"

