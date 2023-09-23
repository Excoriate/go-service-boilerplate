#!/usr/bin/env bash
#
# Script to build binary from Golang source and move binary to the correct location

# Constants
SCRIPT_NAME
SCRIPT_NAME=$(basename "$0")

# Log a message
log() {
  local MESSAGE="$1"
  echo "${MESSAGE}"
}

# Display usage information
usage() {
  echo "Usage: ${SCRIPT_NAME} --binary <binary-name> --path <go-src-path>"
}

# Remove binary file if it exists
remove_old_binary() {
  local BINARY_FULL_PATH="$1"

  if [[ -f ${BINARY_FULL_PATH} ]]; then
    log "Removing old binary..."
    rm "${BINARY_FULL_PATH}"
    if [[ "$?" -ne "0" ]]; then
      log "Failed to remove old binary at ${BINARY_FULL_PATH}"
      exit 1
    fi
  fi
}

# Build binary
build_binary() {
  local BINARY_FULL_PATH="$1"
  local GO_SRC="$2"

  log "Building binary in path ${BINARY_FULL_PATH}..."
  GOOS=linux GOARCH=amd64 go build -o "${BINARY_FULL_PATH}" "${GO_SRC}"
  if [[ "$?" -ne "0" ]]; then
    log "Failed to build binary"
    exit 1
  fi

  log "Binary built successfully"
}

# Add binary to .gitignore
add_to_gitignore_if_not_exist() {
  local BINARY_NAME="$1"
  local GITIGNORE_FILE=".gitignore"

  if [[ ! -f ${GITIGNORE_FILE} ]]; then
    log "Failed to find .gitignore file"
    touch "${GITIGNORE_FILE}"
  fi

  if grep -qvE "^${BINARY_NAME}$" "${GITIGNORE_FILE}"; then
    log "Adding binary to .gitignore file..."
    echo "${BINARY_NAME}" >> "${GITIGNORE_FILE}"
  fi
}

# Main Function
main() {
  local BINARY_NAME=""
  local GO_SRC=""

  # Parse arguments
  while (( "$#" )); do
    case "$1" in
      --binary)
        BINARY_NAME="$2"
        shift 2
        ;;
      --path)
        GO_SRC="$2"
        shift 2
        ;;
      *)
        usage
        exit 1
        ;;
    esac
  done

  # Check if BINARY_NAME and GO_SRC are provided
  if [[ -z ${BINARY_NAME} ]] || [[ -z ${GO_SRC} ]]; then
    usage
    exit 1
  fi

  # Check if GO_SRC file exist.
  if [[ ! -f ${GO_SRC} ]]; then
    log "Failed to find Go source file: ${GO_SRC}"
    exit 1
  fi

  remove_old_binary "${BINARY_NAME}"
  build_binary "${BINARY_NAME}" "${GO_SRC}"
  add_to_gitignore_if_not_exist "${BINARY_NAME}"
}

main "$@"
