for ip in `cat servers`; do ping $ip -n 4 > /dev/null 2> /dev/null
    if [ $? -eq 0 ]; then
        echo "${ip} is up"
            else
        echo "${ip} is down"
    fi
done
