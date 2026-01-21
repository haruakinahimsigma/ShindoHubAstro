# Project Astro

## Overview
Project Astro is a web proxy application built with Astro, React, and Fastify. It allows users to browse the web through a proxy service with features like tab cloaking and customizable settings.

## Project Architecture
- **Framework**: Astro v5 with React components
- **Server**: Fastify (production), Astro dev server (development)
- **Styling**: Tailwind CSS
- **Proxy Technologies**: Ultraviolet, Bare-Mux, Epoxy Transport, Wisp

## Key Files
- `index.ts` - Production server entry point using Fastify
- `astro.config.ts` - Astro configuration with plugins and server settings
- `config.ts` - Application configuration (port, obfuscation, auth)
- `src/` - Astro pages, components, layouts, and lib utilities

## Configuration
Edit `config.ts` to configure:
- `server.port` - Server port (default: 5000 for Replit)
- `server.obfuscate` - Enable/disable route obfuscation (disabled in dev)
- `server.compress` - Enable/disable compression
- `auth.challenge` - Enable password protection
- `auth.users` - User credentials for auth

## Development
```bash
npm run dev      # Start Astro dev server
npm run start    # Start production server (builds if needed)
npm run build    # Build for production
```

## Deployment
The application is configured for Replit autoscale deployment:
- Build: `npm run build`
- Run: `npm run start`
- Server binds to 0.0.0.0:5000

## Recent Changes
- Configured port 5000 for Replit compatibility
- Set host to 0.0.0.0 for external access
- Disabled obfuscation for development stability
- Configured Astro server to allow all hosts for proxy preview
