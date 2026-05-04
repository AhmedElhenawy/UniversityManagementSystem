// Shared TypeScript types

export interface Announcement {
  id: number;
  title: string;
  body: string;
  posted_by: string | null;
  posted_at: string;
  expires_at: string | null;
}
