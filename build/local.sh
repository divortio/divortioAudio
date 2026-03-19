#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ROOT_DIR="$(dirname "$DIR")"

echo "=========================================================="
echo "      divortioAudio Monorepo Local Build Orchestrator       "
echo "=========================================================="

echo ""
echo "=== 1. Building libav.js-audio locally ==="
cd "$ROOT_DIR/src/libav.js-audio"
bash build/sync_and_build.sh

echo ""
echo "=== 2. Building audio-decode-libav locally ==="
cd "$ROOT_DIR/src/audio-decode-libav"
bash build/sync_and_build.sh

echo ""
echo "=== 3. Building neiro-libav locally ==="
cd "$ROOT_DIR/src/neiro-libav"
bash build/sync_and_build.sh

echo ""
echo "=== All Monorepo packages successfully built locally! ==="
