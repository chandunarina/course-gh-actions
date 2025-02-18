.PHONY: create-cache clear-cache target_2 target_3

create-cache:
	echo hello world >> cache/hello_world.txt

clear-cache:
	rm -rf cache/*