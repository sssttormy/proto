LOCAL_BIN:=$(CURDIR)/bin


generate:
	mkdir -p pkg/sso
	protoc --proto_path api/sso \
	--go_out=pkg/sso --go_opt=paths=source_relative \
	--plugin=protoc-gen-go=bin/protoc-gen-go \
	--go-grpc_out=pkg/sso --go-grpc_opt=paths=source_relative \
	--plugin=protoc-gen-go-grpc=bin/protoc-gen-go-grpc \
	api/sso/sso.proto