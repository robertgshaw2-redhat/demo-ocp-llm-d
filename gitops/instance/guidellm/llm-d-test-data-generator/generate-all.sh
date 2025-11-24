#!/bin/bash

python test-data-generator.py --target-prefix-words 3000 --target-continuation-words 500 --num-pairs 100 --chunk-size 25 --output-tokens 100 --output-prefix-csv "pairs-10.csv" --output-guidellm-csv "prompts-10.csv" --start-index 1
python test-data-generator.py --target-prefix-words 3000 --target-continuation-words 500 --num-pairs 250 --chunk-size 55 --output-tokens 100 --output-prefix-csv "pairs-25.csv" --output-guidellm-csv "prompts-25.csv" --start-index 101
python test-data-generator.py --target-prefix-words 3000 --target-continuation-words 500 --num-pairs 500 --chunk-size 105 --output-tokens 100 --output-prefix-csv "pairs-50.csv" --output-guidellm-csv "prompts-50.csv" --start-index 351
python test-data-generator.py --target-prefix-words 3000 --target-continuation-words 500 --num-pairs 1000 --chunk-size 205 --output-tokens 100 --output-prefix-csv "pairs-100.csv" --output-guidellm-csv "prompts-100.csv" --start-index 851
python test-data-generator.py --target-prefix-words 3000 --target-continuation-words 500 --num-pairs 5000 --chunk-size 505 --output-tokens 100 --output-prefix-csv "pairs-250.csv" --output-guidellm-csv "prompts-250.csv" --start-index 1851
python test-data-generator.py --target-prefix-words 3000 --target-continuation-words 500 --num-pairs 10000 --chunk-size 1005 --output-tokens 100 --output-prefix-csv "pairs-500.csv" --output-guidellm-csv "prompts-500.csv" --start-index 6851
