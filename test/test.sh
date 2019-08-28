#!/bin/sh

sleep 10
if curl http://app:3000 | grep -q 'Hello World'; then
  echo -e "\e[32mSmoke test passed!\e[0m"
  exit 0
else
  echo -e "\e[31mSmoke test failed!\e[0m"
  exit 1
fi