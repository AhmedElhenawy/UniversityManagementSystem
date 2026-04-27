# University Management System (UMS)

A web-based University Management System built with the Scrum framework for the **Agile Software Engineering (CSE233/342)** course at **Ain Shams University**.

The system streamlines administrative and academic processes across four modules: **Facilities, Curriculum, Staff, and Community**.

## Team

| Name | Role | Student ID |
|---|---|---|
| Ahmed Mohamed El Henawy | Product Owner | 21P0298 |
| Kareem Younis Ahmed Foad | Scrum Master | 22P0136 |
| Geovany Amer Girgis | Developer | 19P1495 |
| Amr Hesham Ali | Developer | 19P5218 |
| Abdulrahman Mustafa Sayed | Developer | 23P0026 |
| Malek Wael Mohamed | Developer | 23P0063 |

## Tech Stack

- **Framework:** Next.js 15 (App Router) + TypeScript
- **Styling:** Tailwind CSS
- **Database & Auth:** Supabase (PostgreSQL + Auth)
- **Deployment:** Vercel
- **Project Management:** Jira
- **Version Control:** Git + GitHub

## Modules & Features (MVP)

- **Facilities:** Authentication & Roles, Student Records CRUD, Room Booking
- **Curriculum:** Course Catalog, Elective Enrollment, Grades View
- **Staff:** Staff Directory & Office Hours, Profile Management
- **Community:** University Announcements

## Getting Started

### Prerequisites

- Node.js 18+ and npm
- A Supabase account (free)
- Git

### Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/AhmedElhenawy/UniversityManagementSystem.git
   cd UniversityManagementSystem
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Configure environment variables**

   Create a `.env.local` file in the root folder:
   ```
   NEXT_PUBLIC_SUPABASE_URL=your-supabase-project-url
   NEXT_PUBLIC_SUPABASE_ANON_KEY=your-supabase-anon-key
   ```

   Get these values from your Supabase dashboard: **Settings → API**.

4. **Run the development server**
   ```bash
   npm run dev
   ```

5. Open [http://localhost:3000](http://localhost:3000) in your browser.

## Available Scripts

| Command | Description |
|---|---|
| `npm run dev` | Start development server |
| `npm run build` | Build for production |
| `npm run start` | Run production build |
| `npm run lint` | Run ESLint |

## Project Structure

```
ums-app/
├── app/                                       # Next.js App Router (pages)
│   ├── layout.tsx                             # Root layout
│   ├── page.tsx                               # Landing page
│   ├── globals.css                            # Tailwind + global styles
│   │
│   ├── (auth)/                                # Public auth pages
│   │   ├── layout.tsx
│   │   ├── login/page.tsx                     # PBI-01 (Amr)
│   │   └── register/page.tsx                  # PBI-01 (Amr)
│   │
│   └── (dashboard)/                           # Protected logged-in pages
│       ├── layout.tsx                         # Sidebar + Navbar
│       ├── dashboard/page.tsx                 # Default landing after login
│       │
│       ├── admin/
│       │   ├── students/                      # PBI-04 (Malek + Abdulrahman)
│       │   │   ├── page.tsx
│       │   │   ├── new/page.tsx
│       │   │   └── [id]/page.tsx
│       │   └── announcements/                 # PBI-10 (Ahmed)
│       │       ├── page.tsx
│       │       └── new/page.tsx
│       │
│       ├── staff/
│       │   ├── directory/page.tsx             # PBI-08 (Kareem)
│       │   └── profile/page.tsx               # PBI-09 (Amr)
│       │
│       ├── courses/
│       │   ├── catalog/page.tsx               # PBI-05 (Malek)
│       │   ├── enroll/page.tsx                # PBI-06 (Kareem)
│       │   └── grades/page.tsx                # PBI-07 (Ahmed)
│       │
│       ├── rooms/
│       │   ├── availability/page.tsx          # PBI-02 (Geovany)
│       │   └── book/page.tsx                  # PBI-03 (Amr + Abdulrahman)
│       │
│       └── announcements/page.tsx             # PBI-11 (Ahmed)
│
├── components/                                # Shared UI components
│   ├── ui/                                    # Generic primitives (Button, Input, Card)
│   ├── layouts/                               # Sidebar, Navbar
│   ├── auth/                                  # PBI-01 components
│   ├── students/                              # PBI-04 components
│   ├── staff/                                 # PBI-08, PBI-09 components
│   ├── courses/                               # PBI-05, PBI-06, PBI-07 components
│   ├── rooms/                                 # PBI-02, PBI-03 components
│   └── announcements/                         # PBI-10, PBI-11 components
│
├── lib/
│   ├── supabase/
│   │   ├── client.ts                          # Browser Supabase client
│   │   ├── server.ts                          # Server-side Supabase client
│   │   └── middleware.ts                      # Session middleware
│   ├── api/                                   # Per-module data helpers
│   │   ├── students.ts
│   │   ├── staff.ts
│   │   ├── courses.ts
│   │   ├── enrollments.ts
│   │   ├── grades.ts
│   │   ├── rooms.ts
│   │   ├── bookings.ts
│   │   └── announcements.ts
│   ├── auth.ts                                # getUser(), getRole(), requireRole()
│   ├── types.ts                               # Shared TypeScript types
│   └── utils.ts                               # Date formatting, validators
│
├── public/                                    # Static assets
│
├── docs/                                      # All project documentation
│   ├── meeting-minutes/                       # Sprint 1, 2, 3 ceremonies
│   │   ├── sprint-1-planning.md
│   │   ├── sprint-1-daily-scrums.md
│   │   ├── sprint-1-review.md
│   │   ├── sprint-1-retro.md
│   │   ├── sprint-2-*.md
│   │   └── sprint-3-*.md
│   ├── estimation/
│   │   └── planning-poker-sessions.md
│   ├── screenshots/                           # For Phase 2 PDF
│   └── file-ownership.docx                    # Per-member file map
│
├── middleware.ts                              # Next.js auth-route protection
├── next.config.ts                             # Next.js configuration
├── tsconfig.json                              # TypeScript configuration
├── eslint.config.mjs                          # ESLint configuration
├── postcss.config.mjs                         # PostCSS / Tailwind config
├── package.json                               # Dependencies & scripts
├── .env.local                                 # Local env vars (not committed)
├── .gitignore
└── README.md
```

## File Ownership

For the full per-member file ownership breakdown (which file each developer edits), see `docs/file-ownership.docx`.

## Branch Strategy

- `main` → production-ready, merged via Pull Request only
- `feature/PBI-XX-shortname` → one branch per user story

## Contributing (for team members)

1. Pull latest from `main`: `git pull origin main`
2. Create a feature branch: `git checkout -b feature/PBI-XX-shortname`
3. Commit using clear messages: `feat(auth): add login form`
4. Push and open a Pull Request targeting `main`
5. Tag a teammate to review
6. Merge after approval and CI passes

## Project Management

- **Jira Board:** https://kareemyounis2004-1776138622351.atlassian.net/jira/software/projects/SCRUM/boards/1
- **Sprint 1:** Planning & Foundation (Apr 4 – Apr 17) — completed (planning only, no code)
- **Sprint 2:** Foundation MVP Coding (Apr 26 – May 4) — in progress
- **Sprint 3:** Academic Operations (May 5 – May 13) — planned

## Definition of Done

A user story is considered Done when:
- Code is peer-reviewed and merged via Pull Request
- Unit tests pass with no failures
- Acceptance Criteria are met and verified
- Jira ticket is updated with implementation notes
- Product Owner has accepted the story

## License

This project is developed for academic purposes as part of the CSE233/342 course at Ain Shams University.
