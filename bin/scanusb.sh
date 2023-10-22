#!/bin/bash
# from a stack overflow post
sep="|"
find /sys/devices -name speed | grep usb  | while read f ; do
  dir=`dirname "$f"`
  for name in speed manufacturer product ; do
     cat "$dir/$name" 2>/dev/null | tr '\n' ' ' 
     echo -n "$sep"
  done
  echo -n "$dir$sep"
  echo
done | column -t -s "$sep"

cat << EOF

Decode chart: 

1.5 = USB 1.0/Low-Speed
12 = USB 1.1/Full-Speed
480 = USB 2.0/Hi-Speed
5000 = USB 3.0/SuperSpeed
10000 = USB 3.1/SuperSpeed
EOF
