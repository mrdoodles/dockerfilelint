# dockerfilelint

Github action to lint a dockerfile
This is a slimmed down version of sq1d123/dockerfilelint

---

<p align="center">
<img src="https://github.com/mrdoodles/dockerfilelint/workflows/Build and Push/badge.svg?branch=main&event=push" alt="CI Status"/>&nbsp;<img src="https://codecov.io/gh/mrdoodles/dockerfilelint/branch/main/graph/badge.svg" alt="Code Coverage" />
</p>

---

It has been modified to output for GitHub actions

## Standalone usage:

`docker run --rm -i mrdoodles/dockerfilelint < Dockerfile`

## GitHub action usage:

### Inputs

### `dockerfile`

**Required** The Dockerfile path to lint. Default `"Dockerfile"`.

### Outputs

### `summary`

The output from the linting process if any, defalt none unless unless linting issues found.

## Example usage

```yaml
uses: mrdoodles/dockerfilelint@v1
with:
  dockerfile: "Dockerfile"
```
