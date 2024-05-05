#!/usr/bin/env python

import os
import json

print('Content-Type: application/json\n\n')
response = { 'serviceCallResult' : 1  , 'values' : [0,1,2,3,4,5] }
data = {}
toJson = json.dumps(response)
print(toJson)

