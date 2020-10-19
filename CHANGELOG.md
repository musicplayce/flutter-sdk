# Changelog

#1.0.3
### Changed
- User model
- Get user endpoint

#1.0.2
### Added
- Adding analytics models

#1.0.1
### Added
- Adding cursor to search for genre

#1.0.0+1
### Changed
- Removing unused prints

#1.0.0
### Added
- Adding genre endpoints to media repository

#0.9.7
### Added
- Adding audio repository

#0.9.6
### Added
- Adding info field to MusicPlayce http exception class

#0.9.5
### Added
- Adding onComplete and onError callbacks to UploadService.upload

#0.9.4
### Added
- Adding http exception for 406 status code
- Adding delete media to post repository

#0.9.3+1
### Fixed
- Removing duplicate singleton registration for tags repository

#0.9.3
### Fixed
- Deprecated way of using environment on tag repository

#0.9.2
### Added
- Adding play action to post repository

#0.9.1
### Added
- Adding media repository
- Adding create and update actions to post repository
- Adding share action to post repository

#0.9.0+1
### Fixed
- Fixing environment error on upload service

#0.9.0
### Added
- Refactoring environment structure

#0.8.2
### Added
- Adding a service for deal with upload

#0.8.1
### Added
- Adding repository for polls

#0.8.0+1
### Fixed
- Tags repository not being registered

#0.8.0
### Addded
- Adding repository for tags

0.7.0
### Added
- Refactoring repository of search

# 0.6.3+1
### Changed
- Fix addPostToPlaylist http method

# 0.6.3
### Added
- Adding update user functionality to user repository

### Changed
- Changing imports to relative imports format

# 0.6.2
### Added
- Adding forgot and reset password routes integration

# 0.6.1
### Added 
- New functionalities to playlist repository

# 0.6.0
### Added
- Improving exceptions class by accepting code from backend
- Integrating the authentication repository with the v3 api

# 0.5.2
### Added
- Adding like request to post repository

# 0.5.1
### Added
- initial version of auth repository

# 0.5.0
### Added
- Adding exceptions class for MusicPlayceHttp
- Adding initial version of post repository
- Adding search repository

# 0.4.0+2
### Fixed
- Adding limit to userRepository.getAllUserPlaylists

# 0.4.0+1
### Changed
- Upgrading get_it version

# 0.4.0
### Added
- Adding user repository
- Adding playlists repository
- Fix response parsing

# 0.3.0+1
### Added
- Adding timeout to http client

## 0.3.0
### Added
- Adding notification repository

## 0.2.5
### Fixed
- Policy model cast from int to string

## 0.2.4
### Changed
- Adding lastResponse in http implementation

## 0.2.3
### Changed
- Adding validate token endpoint to RefreshTokenInterceptor blacklist

## 0.2.2
### Changed
- Adding Signup route to SetToken whitelist

## 0.2.1
### Changed
- Fixing nullable map in signup

## 0.2.0
### Added
- Adding more auth routes
- Adding response interceptors support
- Interceptor for setting token
- MusicPlayce own Request class
- MusicPlayce own send unstreamed responses method
- Comments for improve readability
- Http Layer improvements

### Changed
- Refresh Token interceptor fixes

## 0.1.0+1
### Added
- Initial version
- Add auth routes