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

## [0.1.2] - 2024-08-09
- Updated Dockerfile to include recursive ownership change on `/app` directory
- Added permission modifications to make `/app` directory readable and writable by all users
- Updated `application.yml` template file
  - Updated YouTube plugin dependency to version 1.5.2
  - Reorganized configuration for `plugins.youtube` for better readability
  - Removed deprecated and unnecessary configuration options
