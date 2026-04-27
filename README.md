<<<<<<< HEAD
This is a [Next.js](https://nextjs.org) project bootstrapped with [`create-next-app`](https://nextjs.org/docs/app/api-reference/cli/create-next-app).

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.tsx`. The page auto-updates as you edit the file.

This project uses [`next/font`](https://nextjs.org/docs/app/building-your-application/optimizing/fonts) to automatically optimize and load [Geist](https://vercel.com/font), a new font family for Vercel.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/app/building-your-application/deploying) for more details.
=======
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
   git clone https://github.com/<your-org>/ums-app.git
   cd ums-app
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

5. Open [http://localhost:3000] in your browser.

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
├── app/                              # Next.js App Router (pages)
│   ├── layout.tsx                    # Root layout
│   ├── page.tsx                      # Landing page
│   ├── globals.css                   # Tailwind + global styles
│   │
│   ├── (auth)/                       # Public auth pages
│   │   ├── layout.tsx
│   │   ├── login/
│   │   │   └── page.tsx              # ← PBI-01 (Amr)
│   │   └── register/
│   │       └── page.tsx              # ← PBI-01 (Amr)
│   │
│   ├── (dashboard)/                  # Protected logged-in pages
│   │   ├── layout.tsx                # Sidebar + Navbar
│   │   ├── dashboard/
│   │   │   └── page.tsx              # Default landing after login
│   │   │
│   │   ├── admin/
│   │   │   ├── students/
│   │   │   │   ├── page.tsx          # ← PBI-04 (Malek/Abdulrahman)
│   │   │   │   ├── new/page.tsx
│   │   │   │   └── [id]/page.tsx
│   │   │   └── announcements/
│   │   │       ├── page.tsx          # ← PBI-10 (Kareem)
│   │   │       └── new/page.tsx
│   │   │
│   │   ├── staff/
│   │   │   ├── directory/page.tsx    # ← PBI-08 (Malek)
│   │   │   └── profile/page.tsx      # ← PBI-09 (Amr)
│   │   │
│   │   ├── courses/
│   │   │   ├── catalog/page.tsx      # ← PBI-05 (Malek)
│   │   │   ├── enroll/page.tsx       # ← PBI-06 (Kareem)
│   │   │   └── grades/page.tsx       # ← PBI-07 (Abdulrahman)
│   │   │
│   │   ├── rooms/
│   │   │   ├── availability/page.tsx # ← PBI-02 (Geovany)
│   │   │   └── book/page.tsx         # ← PBI-03 (Amr + Abdulrahman)
│   │   │
│   │   └── announcements/
│   │       └── page.tsx              # ← PBI-11 (Ahmed)
│   │
│   └── api/                          # API routes (rarely needed with Supabase)
│       └── auth/callback/route.ts    # Supabase auth callback
│
├── components/                       # Shared UI components
│   ├── ui/                           # Generic primitives
│   │   ├── Button.tsx
│   │   ├── Input.tsx
│   │   ├── Card.tsx
│   │   ├── Modal.tsx
│   │   └── Table.tsx
│   ├── layouts/
│   │   ├── Sidebar.tsx
│   │   └── Navbar.tsx
│   ├── auth/
│   │   ├── LoginForm.tsx             # PBI-01
│   │   └── ProtectedRoute.tsx        # PBI-01
│   ├── students/                     # PBI-04 components
│   ├── staff/                        # PBI-08, PBI-09 components
│   ├── courses/                      # PBI-05, PBI-06, PBI-07 components
│   ├── rooms/                        # PBI-02, PBI-03 components
│   └── announcements/                # PBI-10, PBI-11 components
│
├── lib/
│   ├── supabase/
│   │   ├── client.ts                 # Browser client
│   │   ├── server.ts                 # Server client
│   │   └── middleware.ts             # Session middleware
│   ├── auth.ts                       # getUser(), getRole(), requireRole()
│   ├── types.ts                      # Shared TypeScript types
│   └── utils.ts                      # Date formatting, validators, etc.
│
├── types/
│   ├── database.types.ts             # Auto-generated from Supabase
│   └── index.ts                      # Custom app types
│
├── public/                           # Static assets
│   ├── logo.png
│   └── favicon.ico
│
├── docs/                             # All project documentation
│   ├── meeting-minutes/
│   │   ├── sprint-1-planning.md
│   │   ├── sprint-1-daily-scrums.md
│   │   ├── sprint-1-review.md
│   │   ├── sprint-1-retro.md
│   │   ├── sprint-2-planning.md
│   │   ├── sprint-2-daily-scrums.md
│   │   ├── sprint-2-review.md
│   │   ├── sprint-2-retro.md
│   │   ├── sprint-3-planning.md
│   │   ├── sprint-3-daily-scrums.md
│   │   ├── sprint-3-review.md
│   │   └── sprint-3-retro.md
│   ├── estimation/
│   │   └── planning-poker-sessions.md
│   └── screenshots/                  # For the Phase 2 PDF
│
├── tests/                            # Unit tests
│   ├── auth.test.ts
│   ├── students.test.ts
│   └── ...
│
├── middleware.ts                     # Next.js middleware (auth check)
├── next.config.js
├── tsconfig.json
├── tailwind.config.ts
├── package.json
├── .env.local                        # Local env vars (NOT committed)
├── .env.example                      # Template for new devs (committed)
├── .gitignore
└── README.md
```

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

- **Jira Board:** [https://kareemyounis2004-1776138622351.atlassian.net/jira/software/projects/SCRUM/boards/1?sprintStarted=true]
- **Sprint 1:** Planning & Foundation (Apr 4 – Apr 17) — Planning only — completed (no code)
- **Sprint 2:** Foundation MVP Coding (Apr 26 – May 4) — Foundation MVP coding
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
>>>>>>> 0c8ce05e412186e97cb6486d37b3257d3d8f3498
