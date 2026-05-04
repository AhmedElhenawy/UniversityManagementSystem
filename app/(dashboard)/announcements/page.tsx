// PBI-11 | Owner: Ahmed
// User-facing announcements feed page.
// Anyone logged in can view; sorted newest first; expired auto-hidden.

import AnnouncementFeed from "@/components/announcements/AnnouncementFeed";

export default function AnnouncementsFeedPage() {
  return (
    <div className="mx-auto w-full max-w-3xl px-6 py-10">
      <header className="mb-6">
        <h1 className="text-2xl font-semibold text-zinc-900">Announcements</h1>
        <p className="mt-1 text-sm text-zinc-600">
          Latest university announcements, sorted newest first.
        </p>
      </header>
      <AnnouncementFeed />
    </div>
  );
}
