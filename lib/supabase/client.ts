// PBI-01 Auth | Owner: Geovany
// Initial scaffold added by Ahmed (PBI-11) to unblock announcements work.
// Geovany owns this file and will extend it with full SSR support and a typed client.

import { createBrowserClient } from "@supabase/ssr";

export function createClient() {
  return createBrowserClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
  );
}
