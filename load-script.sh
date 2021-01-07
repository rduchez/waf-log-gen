#! /bin/bash
while true
do nmap --script http-methods romain.test
curl -k "https://romain.test/crap?id=' OR 1 = 1;" > /dev/null
curl -k "https://romain.test/crap?id=<script>" > /dev/null
nmap --script http-phpmyadmin-dir-traversal romain.test
done

