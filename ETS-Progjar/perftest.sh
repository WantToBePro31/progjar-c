# localhost dapat diganti ip address
# ab -n jumlah_request -c jumlah_konkuren http://localhost:8889/
# ab -n jumlah_request -c jumlah_konkuren https://localhost:8443/

# multithread && multiprocess (not secure)
ab -r -n 1000 -c 10 -s 99999 http://localhost:8889/
ab -r -n 1000 -c 50 -s 99999 http://localhost:8889/
ab -r -n 1000 -c 100 -s 99999 http://localhost:8889/
ab -r -n 1000 -c 150 -s 99999 http://localhost:8889/
ab -r -n 1000 -c 200 -s 99999 http://localhost:8889/

# multithread && multiprocess (secure)
ab -r -n 1000 -c 10 -s 99999 https://localhost:8443/
ab -r -n 1000 -c 50 -s 99999 https://localhost:8443/
ab -r -n 1000 -c 100 -s 99999 https://localhost:8443/
ab -r -n 1000 -c 150 -s 99999 https://localhost:8443/
ab -r -n 1000 -c 200 -s 99999 https://localhost:8443/