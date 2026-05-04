// PBI-01 route protection | Owner: Geovany
//
// Next.js 16 renamed `middleware.ts` to `proxy.ts`. This is a no-op stub for now;
// Geovany will populate it with auth gating once PBI-01 backend lands.
//
// Docs: node_modules/next/dist/docs/01-app/03-api-reference/03-file-conventions/proxy.md

import { NextResponse } from "next/server";

export function proxy() {
  return NextResponse.next();
}

// Empty matcher = runs on no routes. Geovany will set this to protect
// e.g. ['/dashboard/:path*', '/admin/:path*'] when implementing auth.
export const config = {
  matcher: [],
};
