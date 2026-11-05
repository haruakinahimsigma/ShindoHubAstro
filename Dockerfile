FROM node:bookworm-slim AS builder

WORKDIR /app

# Astro reads Git metadata during config evaluation.
RUN apt-get update && apt-get install -y --no-install-recommends git \
    && rm -rf /var/lib/apt/lists/*

# Match the pnpm v9 lockfile instead of pulling the latest major release.
RUN npm install --global pnpm@9.15.9

COPY ["package.json", "pnpm-lock.yaml", "./"]

# Keep devDependencies available because the build runs Astro checks and compilation.
RUN pnpm install --frozen-lockfile --prod=false

COPY . .

RUN pnpm build

# Set production mode only after the build has completed.
ENV NODE_ENV=production
