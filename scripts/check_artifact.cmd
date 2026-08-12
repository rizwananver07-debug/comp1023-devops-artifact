name: DevOps Check

on:
  push:
  pull_request:

jobs:
  artifact-check:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repo
        uses: actions/checkout@v4

      - name: Build Docker image
        run: docker build -t shipit .

      - name: Run Docker container
        run: docker run --rm shipit
