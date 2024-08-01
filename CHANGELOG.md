# Changelog

## [0.1.0] - 2024-08-01
- Initial release of Lavalink Docker project

## [0.1.1] - 2024-08-02
- Changed working directory to /app
- Added USER command to switch to non-root user lavalink
- Modified ENTRYPOINT to include --spring.config.location=/app/application.yml
- Updated application.yml file
	- Fixed indentation issues
	- Removed duplicate sources section under lavalink.server