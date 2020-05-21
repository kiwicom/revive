FROM golang:1.14.3@sha256:f94ad906ac832d1246db84c8298ed73b66bade9d2ae76f6cf9fded8d80d569b7
WORKDIR /revive
COPY go.mod go.sum /revive/
RUN go mod download
COPY . /revive
RUN make build
CMD ["/revive/repro.sh"]
