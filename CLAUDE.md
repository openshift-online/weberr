# CLAUDE.md

<!-- Canonical source: AGENTS.md. This file is auto-generated for Claude Code compatibility. -->

This file provides guidance to AI coding assistants when working with this repository.

## Project Overview

Weberr — a Go error package for web services. Provides structured HTTP error responses with proper status codes, error codes, and human-readable messages for REST APIs.

## Build & Test Commands

```bash
go build ./...       # Build the package
go test ./...        # Run all tests
```

## Architecture

- Single-package library at the root level
- Provides error types that map to HTTP status codes
- Used by OCM services for consistent error handling

## Key Conventions

- Default branch is `master`
- Pure library — no main package
- Keep the API surface minimal and stable
