"use client";
// PBI-11 | Owner: Ahmed
// Fetches active announcements via the data layer and renders
// them as a list of cards, newest first.

import { useEffect, useState } from "react";
import type { Announcement } from "@/lib/types";
import { getActiveAnnouncements } from "@/lib/api/announcements";
import AnnouncementCard from "./AnnouncementCard";

export default function AnnouncementFeed() {
  const [announcements, setAnnouncements] = useState<Announcement[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    let cancelled = false;
    getActiveAnnouncements().then((data) => {
      if (cancelled) return;
      setAnnouncements(data);
      setLoading(false);
    });
    return () => {
      cancelled = true;
    };
  }, []);

  if (loading) {
    return <p className="text-sm text-zinc-500">Loading announcements…</p>;
  }

  if (announcements.length === 0) {
    return (
      <p className="text-sm text-zinc-500">No announcements at this time.</p>
    );
  }

  return (
    <div className="flex flex-col gap-4">
      {announcements.map((a) => (
        <AnnouncementCard key={a.id} announcement={a} />
      ))}
    </div>
  );
}
