# Fullstack Notion Clone: Next.js 14, React, Convex, Tailwind, Shadcn, EdgeStore as CDN 

### Prerequisites

**Node version 18**

### Cloning the repository

```shell
git clone git@github.com:EnTRoPY0120/notion-clone.git
```

### Install packages

```shell
npm install
```

### Setup .env file
#### Rename .env.example to .env and use your own credentials

```js
# Deployment used by `npx convex dev`
CONVEX_DEPLOYMENT=
NEXT_PUBLIC_CONVEX_URL=

NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY=
CLERK_SECRET_KEY=

EDGE_STORE_ACCESS_KEY=
EDGE_STORE_SECRET_KEY=
```

### Setup Convex

```shell
npx convex dev

```

### Start the app

```shell
npm run dev
```
