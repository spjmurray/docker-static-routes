# Couchbase Static Routes Container

Adds static routes onto all nodes in a cluster so that trafic destined for a
remote prefix is redirected into an IPSEC VPN tunnel.

## Building

    make

## Running

    docker run \
      -e STATIC_ROUTES_PREFIXES=10.10.0.0/16,10.20.0.0/16 \
      -e STATIC_ROUTES_NEXTHOP=172.16.100.5 \
      --cap-add NET_ADMIN \
      couchbase/static_routes:1.0.0
