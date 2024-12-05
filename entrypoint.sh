#!/bin/sh

# Take ownership of /app
echo "Setting ownership of files..."
chown -R lavalink:users /app

# Start shell
echo "Starting shell..."
exec su-exec lavalink "$@"
