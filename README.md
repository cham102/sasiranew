# Online Institute Management System (sasiranew)

A simple, educational ASP.NET Web Forms application demonstrating student registration, authentication, attendance tracking, basic reporting and admin management for an academic institute. This repository is an academic project being improved to be interview-ready.

## Quick summary
- Purpose: Manage students, attendance and simple reports for a small institute.
- Status: Functional Web Forms app with an App_Code layer (Models / Repositories / Services), but several pages still contain direct SQL and some insecure patterns. See the `App_Code` folder for refactored code.

## Main features
- Student registration and login
- Student dashboard and profile management
- Admin dashboard and student management (delete/edit)
- Attendance marking and storage
- Student reports page
- Password recovery by email (will be reworked to use secure reset tokens)

## Technology stack
- ASP.NET Web Forms (C#) targeting .NET Framework 4.7.2
- SQL Server (project uses a local database named `register`)
- Bootstrap / custom CSS for UI
- MailKit / System.Net.Mail for outgoing email (email credentials must be moved out of source)

## Project structure (high level)
- Pages grouped in the project root (will be reorganized to `Pages/Student` and `Pages/Admin`)
- `App_Code/Models` - domain models (example: [App_Code/Models/StudentAccount.cs](sasiranew/App_Code/Models/StudentAccount.cs))
- `App_Code/Repositories` - data access layer (example: [App_Code/Repositories/StudentAccountRepository.cs](sasiranew/App_Code/Repositories/StudentAccountRepository.cs))
- `App_Code/Services` - business logic (example: [App_Code/Services/StudentAccountService.cs](sasiranew/App_Code/Services/StudentAccountService.cs))
- `App_Code/Helpers` - helpers and configuration wrappers (example: [App_Code/Helpers/DbConfig.cs](sasiranew/App_Code/Helpers/DbConfig.cs))
- `Content`, `Scripts`, and `Images` - static assets
- `Database` (recommended) - place for SQL create scripts and sample data
- `Documentation` (recommended) - design notes and interview materials

## Important security notes (must fix before publishing)
1. Passwords are currently handled and compared as plain text in several places (e.g. login and repository code). Replace with password hashing (e.g., PBKDF2 via `Rfc2898DeriveBytes` or `BCrypt`).
2. Password recovery currently emails the stored password. Replace with a reset-token flow that issues a short-lived token and allows the user to set a new password.
3. SMTP credentials are hardcoded in code (see the current forget-password page). Move all secrets out of source code and into environment-specific configuration. See [Web.config](sasiranew/Web.config) for connection strings.
4. Several pages use SQL built with string concatenation and are vulnerable to SQL injection. Use parameterized queries or repository methods that already accept parameters.
5. Session and role checks are inconsistent — add robust authorization checks on admin pages.

## Database (high level)
The project uses a SQL Server database called `register` with tables such as `stdregister` and `studentAttendance`. In later phases we will provide normalized `CREATE TABLE` scripts and add a `PasswordResetTokens` table for secure resets.

## How to run (developer machine)
1. Open `sasiranew.sln` in Visual Studio 2019 or 2022.
2. Restore NuGet packages (Visual Studio will usually restore automatically).
3. Update the connection string in [Web.config](sasiranew/Web.config) to point to your local SQL Server instance.
	- Recommended: create a SQL Server database named `register`, or change the connection string to point at your preferred DB.
4. Do NOT commit real credentials. Use environment variables / Web.config transforms for secrets.
5. Run the project using IIS Express from Visual Studio.

## Files that need attention (examples)
- `studentlogin.aspx.cs` — direct SQL and string-built queries; replace with a call into `App_Code/Services` and parameterized queries.
- `WebFormforgetpass10.aspx.cs` — emails plaintext password and contains hardcoded SMTP credentials.
- `WebFormattendance.aspx.cs` and `WebFormadmindelete.aspx.cs` — perform SQL operations via concatenation.

## Next steps (what I will help you do)
1. Rename and reorganize pages into `Pages/Student` and `Pages/Admin` for clarity.
2. Replace all inline SQL concatenation with parameterized queries via the repository layer.
3. Add password hashing and a secure reset-token workflow.
4. Centralize configuration and remove hardcoded secrets from source.
5. Improve database schema and add SQL scripts under a new `Database/` folder.
6. Add a complete `.gitignore` and remove build artifacts from the repo.
7. Create documentation and interview materials under `Documentation/`.

## What to commit to GitHub (short checklist)
- Remove or ignore: `.vs/`, `bin/`, `obj/`, `packages/` (if using PackageReference), `*.user`, and any files containing credentials.
- Include: source code, `App_Code` improvements, SQL scripts, documentation, screenshots, and `README.md`.

## Screenshots
Add screenshots to the `Documentation/screenshots/` folder and reference them here.

## Future improvements (portfolio-grade)
- Add role-based authorization and an admin area with safer management pages.
- Replace Web Forms with a modern front-end for the student dashboard (optional) or show a migration plan to ASP.NET Core MVC.
- Add unit tests for the repository and service layers.
- Add CI checks and a script to create the sample database.

---
If you want, I can now apply the first safe code change: (A) rename `WebForm1.aspx` to `StudentRegister.aspx` with matching code-behind and designer updates, or (B) implement parameterized login in `studentlogin.aspx.cs`. Which would you prefer I do next? 
