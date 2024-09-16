# bazel_grpc
example grpc project with build in docker by bazel

for start
docker build -t bazel_grpc . \n
docker run --name bazel_grpc -v /path/to/repo:/bazel_grpc -it bazel_grpc
