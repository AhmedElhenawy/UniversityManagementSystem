"use client";
// PBI-11 | Owner: Ahmed
// Displays a single announcement with title, body, posted date,
// and a "Mark as read" button that persists in localStorage.
//
// AC3: User can mark an announcement as read.
// (Once Geovany's auth lands, this can be migrated to a per-user
//  announcement_reads table on the server.)

import { useSyncExternalStore } from "react";
import type { Announcement } from "@/lib/types";

interface Props {
  announcement: Announcement;
}

const READ_KEY_PREFIX = "ums:announcement-read:";
const READ_EVENT = "ums:announcement-read-changed";

function subscribe(callback: () => void) {
  if (typeof window === "undefined") return () => {};
  window.addEventListener(READ_EVENT, callback);
  window.addEventListener("storage", callback);
  return () => {
    window.removeEventListener(READ_EVENT, callback);
    window.removeEventListener("storage", callback);
  };
}

export default function AnnouncementCard({ announcement }: Props) {
  const key = READ_KEY_PREFIX + announcement.id;

  const isRead = useSyncExternalStore(
    subscribe,
    () =>
      typeof window !== "undefined" && localStorage.getItem(key) === "1",
    () => false
  );

  function markAsRead() {
    localStorage.setItem(key, "1");
    window.dispatchEvent(new Event(READ_EVENT));
  }

  const postedAt = new Date(announcement.posted_at).toLocaleString();

  return (
    <article
      className={`rounded-lg border border-zinc-200 p-5 shadow-sm transition ${
        isRead ? "bg-zinc-50 opacity-75" : "bg-white"
      }`}
    >
      <div className="flex items-start justify-between gap-4">
        <h3 className="text-lg font-semibold text-zinc-900">
          {announcement.title}
        </h3>
        {!isRead && (
          <button
            onClick={markAsRead}
            className="shrink-0 rounded-md bg-blue-600 px-3 py-1 text-xs font-medium text-white hover:bg-blue-700"
            aria-label="Mark announcement as read"
          >
            Mark as read
          </button>
        )}
      </div>
      <p className="mt-2 whitespace-pre-line text-sm text-zinc-700">
        {announcement.body}
      </p>
      <div className="mt-3 text-xs text-zinc-500">Posted {postedAt}</div>
    </article>
  );
}
