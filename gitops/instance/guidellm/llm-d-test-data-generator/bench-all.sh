#!/bin/bash

TARGET=http://a9e365716cefb444383f9247d2d3c4ae-2070748035.us-east-2.elb.amazonaws.com/demo-llm/gpt-oss
MODEL=openai/gpt-oss-20b

# warmup the prefix cache scorer in the epp
guidellm benchmark --target $TARGET --model $MODEL --data prompts-500.csv --rate-type constant --rate 5 --max-requests 100

guidellm benchmark --target $TARGET --model $MODEL --data prompts-10.csv --rate-type concurrent --rate 10
guidellm benchmark --target $TARGET --model $MODEL --data prompts-25.csv --rate-type concurrent --rate 25
guidellm benchmark --target $TARGET --model $MODEL --data prompts-50.csv --rate-type concurrent --rate 50
guidellm benchmark --target $TARGET --model $MODEL --data prompts-100.csv --rate-type constant --rate 100
guidellm benchmark --target $TARGET --model $MODEL --data prompts-250.csv --rate-type concurrent --rate 250
