#!/bin/bash

echo "=== Using local variables ==="

local_function() {
    local name="Alice"
    local age=25

    echo "Inside local_function:"
    echo "Name: $name"
    echo "Age: $age"
}

local_function

echo "Outside local_function:"
echo "Name: ${name:-Not Defined}"
echo "Age: ${age:-Not Defined}"


echo "=== Using regular variables ==="

global_function() {
    city="New York"
    country="USA"

    echo "Inside global_function:"
    echo "City: $city"
    echo "Country: $country"
}

global_function

echo "Outside global_function:"
echo "City: $city"
echo "Country: $country"
