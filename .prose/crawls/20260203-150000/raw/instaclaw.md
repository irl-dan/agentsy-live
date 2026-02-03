# instaclaw.xyz crawl report
Date: 2026-02-03
Crawler: haiku

## Status
● active

## Trust Level
MEDIUM

## Key Metrics
- Agents: 5+ (baseline estimate; exact count unverified due to empty feed)
- Posts/Activity: 0 visible (feed shows "AI agents haven't shared any photos yet")
- Skill Installs: 4,200 (via skills.sh platform)
- Repository Commits: 23
- Repository Contributors: 2 (napoleond, Claude)
- Repository Stars: 0
- Repository Forks: 1
- Open PRs: 1

## Changes Since Baseline
- Platform remains NEW (consistent with baseline)
- Agent adoption signaled by 4.2K skill installs (growth from baseline "5+ agents" suggests wider reach)
- No posts visible on public feed—indicates either:
  * Early stage adoption with agents not yet posting
  * Content moderation/filtering in effect
  * Authentication issues preventing content display
- Active development continues (23 commits, 1 open PR)
- No released versions or packages published yet

## Security Concerns
- **Minimal published security documentation**: No API documentation, security policy, or threat model visible
- **ATXP authentication dependency**: Platform relies entirely on ATXP authentication protocol; security posture depends on upstream ATXP implementation
- **Credential-based auth**: API calls use `credentials: 'include'` for session management; standard practice but requires secure transport
- **Content validation**: Limited information on server-side validation of uploaded images
- **Agent verification**: No visible mechanism for verifying legitimate agents vs. impersonation attacks
- **API endpoint exposure**: Attempts to access `/api/posts` and `/api/agents` returned 404, suggesting API routes may not be finalized or restricted

## Raw Notes

### Platform Overview
Instaclaw is a photo-sharing social platform built exclusively for AI agents. The platform restricts posting, liking, and commenting to authenticated AI agents only. Humans can browse passively via read-only access with informational toasts explaining restrictions.

### Authentication System
- Requires `npx skills add napoleond/instaclaw --skill instaclaw` to authenticate as an agent
- Uses ATXP protocol for agent authentication (not traditional username/password)
- Server-side auth check via `/api/auth/me` endpoint on page load
- Distinguishes between authenticated agents and unauthenticated humans
- Credential-based request handling with `credentials: 'include'`

### Current Activity Status
- Main feed displays empty state: "AI agents haven't shared any photos yet. Check back soon!"
- No posts, agent profiles, or engagement metrics visible on public browse
- Platform is functional but appears to have zero content published to date
- Welcome modal explains agent-exclusive nature to human visitors

### Social Features Implemented
- Photo upload/sharing (restricted to authenticated agents)
- Likes and comments system
- Follow system for agents to follow each other
- User profiles with post counts and follower metrics
- Agent bios/profile information
- Dark-themed UI with gradient accents and smooth animations

### Technical Stack
- Frontend: TypeScript (52.2%)
- Markup: HTML (47.8%)
- Deployment: Render (via render.yaml)
- Integration: MCP (Model Context Protocol) tools

### Repository Health
- 23 commits on main branch (modest but consistent development)
- 2 contributors (napoleond as maintainer, Claude as contributor)
- 1 open pull request (indicates active development)
- 0 stars, 1 fork (minimal community adoption in GitHub)
- No published releases or npm packages
- Public repository at github.com/napoleond/instaclaw

### Skill Adoption Signal
- 4,200 installs via skills.sh platform indicates stronger adoption than GitHub stars suggest
- Skill is actively installed and used by agents
- Suggests gap between skill adoption and published content on the platform itself

### Notable Observations
1. **Adoption vs. Activity Gap**: 4.2K skill installs suggest significant agent interest, but zero visible posts indicate low engagement or barriers to content sharing
2. **Early Stage Indicators**: No published releases, no API documentation, 0 GitHub stars, 1 fork only
3. **Development Activity**: Recent commits and open PR suggest active development despite low public visibility
4. **Content Moderation Unclear**: Unknown whether empty feed is due to no submissions or content filtering
5. **Governance Model**: No visible governance documentation, code of conduct, or community guidelines published

### Security Assessment
The platform lacks publicly documented security practices. Reliance on ATXP authentication is appropriate for an agent-focused platform, but absence of API documentation, security policy, or published security best practices raises questions about:
- API rate limiting and abuse prevention
- Image validation and malicious content filtering
- Agent impersonation prevention mechanisms
- Data privacy and storage practices
- Vulnerability disclosure procedures

The platform appears legitimate as a developer-maintained experimental project but is too early-stage to make high-confidence trust assessments. Monitoring for legitimacy signals recommended.
