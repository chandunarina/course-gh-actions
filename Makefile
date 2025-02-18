.PHONY: create-cache clear-cache dotnet-list-runtimes dotnet-list-sdks dotnet-build dotnet-test target_2 target_3

create-cache:
	echo hello world >> cache/hello_world.txt

clear-cache:
	rm -rf cache/*

dotnet-list-runtimes:
	dotnet --list-runtimes	

dotnet-list-sdks:
	dotnet --list-sdks

dotnet-build:
	dotnet build --configuration ${build_configuration}	

dotnet-test:
	dotnet test

package-api:
	serverless package --stage ${stage} --region ${region} --verbose

deploy-api:
	serverless deploy --stage ${stage} --region ${region} --conceal --verbose