# Security Policy

## Supported Versions

Security updates are provided for the actively maintained codebase only.

| Version | Supported |
| --- | --- |
| `main` | Yes |
| Older branches or untagged forks | No |

If the project starts publishing versioned releases, the latest stable release
and the `main` branch should be treated as the supported targets unless this
table is updated.

## Reporting a Vulnerability

Please do not open public GitHub issues for suspected security vulnerabilities.
Use one of the private reporting channels below instead:

1. Preferred: GitHub's private vulnerability reporting or security advisory
   workflow for this repository, if enabled.
2. Alternate: email the maintainer at `ammarhaikal207@gmail.com` with the
   subject line `Security report: Cryptography Flask App`.

## What To Include

To help the maintainers validate and triage a report quickly, include as many of
the following details as possible:

- A clear description of the vulnerability and its impact
- The affected endpoint, file, feature, or component
- Steps to reproduce the issue, including proof-of-concept code if available
- The environment where the issue was observed, such as OS, browser, Python
  version, and dependency versions
- Whether authentication, special permissions, or specific configuration are
  required
- Any suggested remediation or relevant references
- Your name or preferred attribution, if you would like public credit after
  resolution

## Disclosure Process

The project follows a coordinated disclosure process:

1. A maintainer acknowledges receipt of the report within 3 business days.
2. The maintainer reviews the report, may request clarification, and determines
   whether the issue is valid and in scope.
3. Valid reports are prioritized based on severity, exploitability, and user
   impact.
4. The maintainer works on a fix and may prepare a private patch before public
   disclosure.
5. Once a fix is available, the maintainer publishes an advisory and discloses
   the issue publicly after affected users have a reasonable opportunity to
   update.

## Response Targets

The following targets describe the intended response timeline:

- Acknowledgement: within 3 business days
- Initial triage decision: within 7 business days
- Status update cadence: at least every 14 calendar days for open reports
- Remediation timeline: as quickly as practical based on severity and project
  capacity

These targets are goals rather than guarantees, but maintainers will make a
good-faith effort to keep reporters informed throughout the process.

## Advisory Publication

When a report is confirmed and resolved, the project will communicate the fix
through the most appropriate channels available, which may include:

- A GitHub Security Advisory
- Release notes or repository changelog updates
- Repository announcements in the issue tracker or discussion space, when
  applicable

Advisories will generally include the affected versions, severity, remediation
guidance, and any required upgrade or configuration steps.

## Reporter Recognition

The project appreciates responsible disclosure. Reporters of valid,
resolved vulnerabilities will be credited in a security advisory or release note
unless they request anonymity.

## Safe Harbor

If you make a good-faith effort to follow this policy, avoid privacy
violations, data destruction, service disruption, or unauthorized access beyond
what is necessary to demonstrate the issue, the project will regard your
research as authorized and will not pursue action based on your report.
