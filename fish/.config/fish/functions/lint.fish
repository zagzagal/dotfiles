function lint -d "Golang lint"
    golangci-lint run -E dupl -E goconst -E errcheck -E lll -E prealloc
end
