preview:
	sam local start-api --region us-east-2

deploy:
	php artisan config:clear
	sam package --output-template-file .stack.yaml --region us-east-2 --s3-bucket aws-laravel-bucket
	sam deploy  --template-file .stack.yaml --capabilities CAPABILITY_IAM --region us-east-2 --stack-name laravel-bref-demo-1
