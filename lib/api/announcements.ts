// PBI-10, PBI-11 | Owner: Ahmed
// Data layer for the Announcements module.
//
// PBI-11 (this commit): getActiveAnnouncements — read for the user feed.
// PBI-10 (future commit): create / update / delete functions for admin posting.

import { createClient } from "@/lib/supabase/client";
import type { Announcement } from "@/lib/types";

/**
 * PBI-11 — Returns announcements that are currently active
 * (not expired), sorted newest first.
 *
 * AC1: Feed sorted newest first
 * AC2: Expired announcements hidden automatically
 */
export async function getActiveAnnouncements(): Promise<Announcement[]> {
  const supabase = createClient();
  const nowIso = new Date().toISOString();

  const { data, error } = await supabase
    .from("announcements")
    .select("*")
    .or(`expires_at.is.null,expires_at.gt.${nowIso}`)
    .order("posted_at", { ascending: false });

  if (error) {
    console.error("Failed to load announcements:", error.message);
    return [];
  }
  return data ?? [];
}
