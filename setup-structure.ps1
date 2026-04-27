$files = @{
    # === PBI-01 Auth | Geovany (backend) ===
    "lib\supabase\client.ts"   = "// PBI-01 Auth | Owner: Geovany`nexport {};"
    "lib\supabase\server.ts"   = "// PBI-01 Auth | Owner: Geovany`nexport {};"
    "lib\supabase\middleware.ts" = "// PBI-01 Auth | Owner: Geovany`nexport {};"
    "lib\auth.ts"              = "// PBI-01 Auth helpers | Owner: Geovany`nexport {};"
    "middleware.ts"            = "// PBI-01 route protection | Owner: Geovany`nexport {};"

    # === PBI-01 Auth | Amr (frontend) ===
    "app\(auth)\layout.tsx"          = "// PBI-01 | Owner: Amr`nexport default function AuthLayout({ children }: { children: React.ReactNode }) { return <>{children}</>; }"
    "app\(auth)\login\page.tsx"      = "// PBI-01 | Owner: Amr`nexport default function LoginPage() { return <div>TODO: Login</div>; }"
    "app\(auth)\register\page.tsx"   = "// PBI-01 | Owner: Amr`nexport default function RegisterPage() { return <div>TODO: Register</div>; }"
    "components\auth\LoginForm.tsx"      = "// PBI-01 | Owner: Amr`nexport default function LoginForm() { return null; }"
    "components\auth\RegisterForm.tsx"   = "// PBI-01 | Owner: Amr`nexport default function RegisterForm() { return null; }"
    "components\auth\ProtectedRoute.tsx" = "// PBI-01 | Owner: Amr`nexport default function ProtectedRoute() { return null; }"

    # === Shared dashboard layout | Geovany ===
    "app\(dashboard)\layout.tsx"           = "// Dashboard layout | Owner: Geovany`nexport default function DashboardLayout({ children }: { children: React.ReactNode }) { return <div>{children}</div>; }"
    "app\(dashboard)\dashboard\page.tsx"   = "// Landing page | Owner: Geovany`nexport default function DashboardPage() { return <div>Welcome to UMS</div>; }"

    # === PBI-04 Students | Abdulrahman (backend) + Malek (UI) ===
    "lib\api\students.ts"                              = "// PBI-04 | Owner: Abdulrahman`nexport {};"
    "app\(dashboard)\admin\students\page.tsx"          = "// PBI-04 | Owner: Malek`nexport default function StudentsListPage() { return <div>TODO: Students list</div>; }"
    "app\(dashboard)\admin\students\new\page.tsx"      = "// PBI-04 | Owner: Malek`nexport default function NewStudentPage() { return <div>TODO: New student</div>; }"
    "app\(dashboard)\admin\students\[id]\page.tsx"     = "// PBI-04 | Owner: Malek`nexport default function EditStudentPage() { return <div>TODO: Edit student</div>; }"
    "components\students\StudentList.tsx"              = "// PBI-04 | Owner: Malek`nexport default function StudentList() { return null; }"
    "components\students\StudentForm.tsx"              = "// PBI-04 | Owner: Malek`nexport default function StudentForm() { return null; }"

    # === PBI-08 Staff Directory | Kareem ===
    "app\(dashboard)\staff\directory\page.tsx" = "// PBI-08 | Owner: Kareem`nexport default function DirectoryPage() { return <div>TODO: Staff directory</div>; }"
    "components\staff\StaffList.tsx"           = "// PBI-08 | Owner: Kareem`nexport default function StaffList() { return null; }"
    "components\staff\StaffCard.tsx"           = "// PBI-08 | Owner: Kareem`nexport default function StaffCard() { return null; }"
    "lib\api\staff.ts"                         = "// PBI-08, PBI-09 | Owners: Kareem, Amr`nexport {};"

    # === PBI-09 Update Profile | Amr ===
    "app\(dashboard)\staff\profile\page.tsx" = "// PBI-09 | Owner: Amr`nexport default function ProfilePage() { return <div>TODO: My profile</div>; }"
    "components\staff\ProfileForm.tsx"       = "// PBI-09 | Owner: Amr`nexport default function ProfileForm() { return null; }"

    # === PBI-10 Post Announcement | Ahmed ===
    "app\(dashboard)\admin\announcements\page.tsx"      = "// PBI-10 | Owner: Ahmed`nexport default function AdminAnnouncementsPage() { return <div>TODO: Manage announcements</div>; }"
    "app\(dashboard)\admin\announcements\new\page.tsx"  = "// PBI-10 | Owner: Ahmed`nexport default function NewAnnouncementPage() { return <div>TODO: New announcement</div>; }"
    "components\announcements\AnnouncementForm.tsx"     = "// PBI-10 | Owner: Ahmed`nexport default function AnnouncementForm() { return null; }"
    "components\announcements\AnnouncementAdminList.tsx" = "// PBI-10 | Owner: Ahmed`nexport default function AnnouncementAdminList() { return null; }"
    "lib\api\announcements.ts"                          = "// PBI-10, PBI-11 | Owner: Ahmed`nexport {};"

    # === PBI-11 View Feed | Ahmed ===
    "app\(dashboard)\announcements\page.tsx"     = "// PBI-11 | Owner: Ahmed`nexport default function AnnouncementsFeedPage() { return <div>TODO: Announcements feed</div>; }"
    "components\announcements\AnnouncementCard.tsx" = "// PBI-11 | Owner: Ahmed`nexport default function AnnouncementCard() { return null; }"
    "components\announcements\AnnouncementFeed.tsx" = "// PBI-11 | Owner: Ahmed`nexport default function AnnouncementFeed() { return null; }"

    # === PBI-02 Room Availability | Geovany ===
    "app\(dashboard)\rooms\availability\page.tsx" = "// PBI-02 | Owner: Geovany`nexport default function AvailabilityPage() { return <div>TODO: Room availability</div>; }"
    "components\rooms\AvailabilityCalendar.tsx"   = "// PBI-02 | Owner: Geovany`nexport default function AvailabilityCalendar() { return null; }"
    "components\rooms\RoomCard.tsx"               = "// PBI-02, PBI-03 | Owners: Geovany, Abdulrahman`nexport default function RoomCard() { return null; }"
    "lib\api\rooms.ts"                            = "// PBI-02 | Owner: Geovany`nexport {};"

    # === PBI-03 Booking | Amr (backend) + Abdulrahman (UI) ===
    "lib\api\bookings.ts"                       = "// PBI-03 | Owner: Amr`nexport {};"
    "app\(dashboard)\rooms\book\page.tsx"       = "// PBI-03 | Owner: Abdulrahman`nexport default function BookRoomPage() { return <div>TODO: Book a room</div>; }"
    "components\rooms\BookingForm.tsx"          = "// PBI-03 | Owner: Abdulrahman`nexport default function BookingForm() { return null; }"
    "components\rooms\SlotSelector.tsx"         = "// PBI-03 | Owner: Abdulrahman`nexport default function SlotSelector() { return null; }"

    # === PBI-05 Course Catalog | Malek ===
    "app\(dashboard)\courses\catalog\page.tsx" = "// PBI-05 | Owner: Malek`nexport default function CatalogPage() { return <div>TODO: Course catalog</div>; }"
    "components\courses\CourseList.tsx"        = "// PBI-05 | Owner: Malek`nexport default function CourseList() { return null; }"
    "components\courses\CourseCard.tsx"        = "// PBI-05 | Owner: Malek`nexport default function CourseCard() { return null; }"
    "components\courses\CourseFilters.tsx"     = "// PBI-05 | Owner: Malek`nexport default function CourseFilters() { return null; }"
    "lib\api\courses.ts"                       = "// PBI-05 | Owner: Malek`nexport {};"

    # === PBI-06 Enroll Elective | Kareem ===
    "app\(dashboard)\courses\enroll\page.tsx" = "// PBI-06 | Owner: Kareem`nexport default function EnrollPage() { return <div>TODO: Enroll in elective</div>; }"
    "components\courses\EnrollmentForm.tsx"   = "// PBI-06 | Owner: Kareem`nexport default function EnrollmentForm() { return null; }"
    "components\courses\CourseSelector.tsx"   = "// PBI-06 | Owner: Kareem`nexport default function CourseSelector() { return null; }"
    "lib\api\enrollments.ts"                  = "// PBI-06 | Owner: Kareem`nexport {};"

    # === PBI-07 View Grades | Ahmed ===
    "app\(dashboard)\courses\grades\page.tsx" = "// PBI-07 | Owner: Ahmed`nexport default function GradesPage() { return <div>TODO: My grades</div>; }"
    "components\courses\GradesList.tsx"       = "// PBI-07 | Owner: Ahmed`nexport default function GradesList() { return null; }"
    "components\courses\GradeCard.tsx"        = "// PBI-07 | Owner: Ahmed`nexport default function GradeCard() { return null; }"
    "lib\api\grades.ts"                       = "// PBI-07 | Owner: Ahmed`nexport {};"

    # === Shared UI primitives | Anyone ===
    "components\ui\Button.tsx"      = "// Shared UI`nexport default function Button(props: React.ButtonHTMLAttributes<HTMLButtonElement>) { return <button {...props} />; }"
    "components\ui\Input.tsx"       = "// Shared UI`nexport default function Input(props: React.InputHTMLAttributes<HTMLInputElement>) { return <input {...props} />; }"
    "components\ui\Card.tsx"        = "// Shared UI`nexport default function Card({ children }: { children: React.ReactNode }) { return <div>{children}</div>; }"
    "components\layouts\Sidebar.tsx" = "// Shared layout`nexport default function Sidebar() { return null; }"
    "components\layouts\Navbar.tsx"  = "// Shared layout`nexport default function Navbar() { return null; }"

    # === Lib utilities ===
    "lib\types.ts" = "// Shared TypeScript types`nexport {};"
    "lib\utils.ts" = "// Utility functions`nexport {};"

    # === Documentation folders ===
    "docs\meeting-minutes\sprint-1-planning.md"      = "# Sprint 1 Planning Minutes`n`nDate: April 4, 2026"
    "docs\meeting-minutes\sprint-1-daily-scrums.md"  = "# Sprint 1 Daily Scrums"
    "docs\meeting-minutes\sprint-1-review.md"        = "# Sprint 1 Review`n`nDate: April 17, 2026"
    "docs\meeting-minutes\sprint-1-retro.md"         = "# Sprint 1 Retrospective`n`nDate: April 17, 2026"
    "docs\meeting-minutes\sprint-2-planning.md"      = "# Sprint 2 Planning Minutes`n`nDate: April 26, 2026"
    "docs\meeting-minutes\sprint-2-daily-scrums.md"  = "# Sprint 2 Daily Scrums"
    "docs\meeting-minutes\sprint-2-review.md"        = "# Sprint 2 Review"
    "docs\meeting-minutes\sprint-2-retro.md"         = "# Sprint 2 Retrospective"
    "docs\meeting-minutes\sprint-3-planning.md"      = "# Sprint 3 Planning Minutes"
    "docs\meeting-minutes\sprint-3-daily-scrums.md"  = "# Sprint 3 Daily Scrums"
    "docs\meeting-minutes\sprint-3-review.md"        = "# Sprint 3 Review"
    "docs\meeting-minutes\sprint-3-retro.md"         = "# Sprint 3 Retrospective"
    "docs\estimation\planning-poker-sessions.md"     = "# Planning Poker Sessions"
}

$created = 0
$skipped = 0

foreach ($file in $files.Keys) {
    $dir = Split-Path -Path $file -Parent
    if ($dir -and -not (Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir -Force | Out-Null
    }
    if (-not (Test-Path $file)) {
        Set-Content -Path $file -Value $files[$file] -Encoding UTF8
        Write-Host "Created: $file" -ForegroundColor Green
        $created++
    } else {
        Write-Host "Skipped (exists): $file" -ForegroundColor Yellow
        $skipped++
    }
}

Write-Host ""
Write-Host "Done. Created: $created  |  Skipped: $skipped" -ForegroundColor Cyan