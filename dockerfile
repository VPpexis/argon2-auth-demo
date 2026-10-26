FROM golang:1.27-alpine AS development

WORKDIR /app

CMD ["go", "run", "./cmd/api"]

FROM development AS build

COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN CGO_ENABLED=0 go build -trimpath -o /out/api ./cmd/api

FROM gcr.io/distroless/static-debian12:nonroot AS production

COPY --from=build /out/api /api

EXPOSE 8080

ENTRYPOINT ["/api"]