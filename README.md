# argon2-auth-demo

A Go authentication demo using Argon2id password hashing and JWT-based authentication.

## Status

Work in progress. The repository has been initialized; application implementation has not started.

## Overview

This project will demonstrate how to:

- Register accounts with unique usernames.
- Hash and verify passwords using Argon2id.
- Authenticate users and issue JWTs.
- Protect an HTTP endpoint using JWT middleware.
- Store account data in a database managed through migrations.
- Configure a local development environment with Docker.

## Planned Authentication Flow

### Registration

1. Validate the registration request.
2. Hash the password using Argon2id with a randomly generated salt.
3. Store the account and encoded password hash.
4. Reject duplicate usernames.

### Login

1. Retrieve the account by username.
2. Verify the submitted password against the stored hash.
3. Issue a JWT when authentication succeeds.

### Protected Endpoint

The `/print` endpoint will require a valid JWT. Requests with missing, invalid, or expired tokens will be rejected.

## Development Roadmap

- [ ] Set up the GitHub remote repository.
- [ ] Configure Docker.
- [ ] Add database migrations and connectivity.
- [ ] Implement the account repository.
- [ ] Implement Argon2id hashing and verification helpers.
- [ ] Implement the registration service and handler.
- [ ] Implement the login service, JWT helper, and handler.
- [ ] Add JWT middleware and the protected `/print` endpoint.
- [ ] Test registration, duplicate usernames, incorrect passwords, and missing, invalid, or expired tokens.

## Local Development

Development will use a WSL terminal.

Setup instructions, environment variables, migration commands, and API examples will be added as the application is implemented.

## Security Notes

- Never store or log plaintext passwords.
- Never commit secrets, database credentials, or local `.env` files.
- This is a learning project, not a production-ready authentication system.
