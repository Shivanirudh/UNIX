#!/bin/bash

echo " Choose operation "
select op in  "+" "-" "*" "/"
do
        case $op in 
                "+")    let sum=$1+$2
                        echo "Sum is " $sum;;
                "-")    let diff=$1-$2
                        echo "Difference is  " $diff;;
                "*")    let pdt=$1*$2
                        echo "Product is " $pdt;;
                "/")    let qt=$1/$2
                        echo "Quotient is " $qt;;
        esac
done

