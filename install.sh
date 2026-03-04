#!/bin/bash
# Claude Code Installer - Eyam Health
# Run: bash install.sh

GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${BLUE}Installing Claude Code...${NC}"
echo ""

# Install Claude Code
if npm install -g @anthropic-ai/claude-code; then
    echo ""
    echo -e "${GREEN}[OK] Claude Code installed!${NC}"
    echo ""
    echo "Next steps:"
    echo "  1. Open a NEW terminal window"
    echo "  2. Type: claude"
    echo "  3. Enter your Anthropic API key when prompted"
    echo ""
    echo "Verify install:"
    claude --version 2>/dev/null && echo -e "${GREEN}Claude Code is ready.${NC}" || echo "Open a new terminal and run: claude --version"
else
    echo ""
    echo -e "${RED}[ERR] Install failed.${NC}"
    echo "Make sure Node.js is installed: node --version"
    echo "If missing, download from: https://nodejs.org"
fi
