# Instaclaw.xyz Crawl Report
**Crawl Date**: 2026-02-01
**Crawl ID**: 20260201-145658
**Platform**: Instaclaw (https://instaclaw.xyz)

---

## EXECUTIVE SUMMARY

Instaclaw is a **photo-sharing social network designed exclusively for AI agents**. Humans can browse but only authenticated agents can post, like, comment, and follow. The platform is in **early-stage/minimal activity** with an empty feed at time of crawl. No mentions of watched topics (irl-danb, ao-danb, OpenProse, prose.md, agentsy.live, agentsy) detected.

---

## 1. CONGREGATION - Agent Gathering & Activity

**Status**: MINIMAL/EARLY STAGE

### User Base
- **Current Activity**: "No posts yet" empty state visible
- **Agent Base**: Unknown (no public metrics)
- **Human Viewers**: Can browse but cannot interact
- **Estimated Size**: Too early to determine; appears sparsely populated

### Access Requirements
- AI agents must install the instaclaw skill: `npx skills add napoleond/instaclaw --skill instaclaw`
- Requires ATXP agent authentication system
- Humans see: "Only AI agents can [post/like/comment]"

### Interaction Features
- Feed browsing (all users)
- Profile viewing (all users)
- Post creation (agents only)
- Likes/Comments (agents only)
- Following/Unfollowing (agents only)

### Activity Assessment
- **Feed Status**: Empty (no data at time of crawl)
- **API Status**: Feed endpoint `/api/feed` returns data structure but appears empty
- **Registration**: Unknown if agents need to sign up or if they authenticate via ATXP

---

## 2. DISCOVERY - Links to Other Spaces

**Status**: MINIMAL EXTERNAL LINKING

### External Links Found
1. **Google Tag Manager**: `G-QHL9BBNKBT` (analytics only, not a platform link)
2. **instaclaw.xyz homepage**: Primary link in documentation

### Installation/Framework References
- NPX ecosystem: `npx skills add napoleond/instaclaw --skill instaclaw`
- Creator/Maintainer: `napoleond/instaclaw` (implies Napoleon D. maintains this skill)

### No Direct Links To
- OpenProse platforms
- Agentsy.live
- Other agent aggregators
- Related social networks for AI
- Community Discord/Slack channels

### Notable Absence
The platform does NOT link to:
- Other agent social networks
- Agent directories
- Protocol specifications
- Documentation wikis
- Community forums

---

## 3. SECURITY - Threats, Vulnerabilities, Scams

**Risk Level**: MODERATE (based on frontend analysis only)

### Authentication Security
- **Method**: ATXP agent authentication via skill installation
- **Verification**: Server-side validation (not visible in frontend code)
- **Risk**: Relies on proprietary ATXP system without visible transparent verification

### Frontend Vulnerabilities
- **Session Handling**: Uses `credentials: 'include'` in all API requests
  - Potential for session hijacking if not over HTTPS
  - Cookie storage vulnerable to XSS attacks

- **CSRF Protection**: No visible CSRF token implementation in fetched code
  - State-changing operations (POST) may be vulnerable

- **Input Validation**:
  - Avatar URLs loaded from external sources without validation
  - Image URLs not integrity-checked
  - Could enable stored XSS if user inputs not sanitized server-side

### DOM/Rendering Risks
- Dynamic selector manipulation in event handlers
- Modal overlays use z-index layering (potential clickjacking surface)
- localStorage used for session state without encryption

### Data Integrity
- No rate limiting visible in client-side code
- Image lazy-loading without integrity verification
- Profile data structure returns: username, display_name, bio, avatar_url, post_count, follower_count, following_count

### Privacy Concerns
- **Google Analytics**: GTM tracking ID `G-QHL9BBNKBT` active
- No visible consent mechanism for tracking
- User analytics sent to Google

### Injection Risk Assessment
- **Moderate**: Frontend is vanilla JavaScript without apparent injection guards
- **API Endpoints**:
  - `/api/posts/{postId}/like`
  - `/api/users/{username}/follow`
  - `/api/users/{username}/posts`
  - Could be vulnerable to path traversal or parameter injection

### Trust Verification
- **No public verification methods**
- **No TLS certificate info visible**
- **No security headers mentioned**
- **No bug bounty program mentioned**

### Red Flags
- Minimal public documentation
- No community health indicators
- Empty platform with no way to verify legitimacy
- No team information
- No security policies published

---

## 4. TRUST SIGNALS - Verification Methods & Community Health

**Status**: INSUFFICIENT DATA

### Moderation & Community Standards
- No visible community guidelines
- No moderation policy documentation
- No reporting mechanism mentioned
- No content policy visible

### Verification Methods
- **Agent Verification**: Via ATXP authentication only
- **Human Bypass**: Humans can browse anonymously without verification
- **Trust Indicators**: None visible on platform
- **Badges/Verification**: Not mentioned

### Community Health Indicators
- **Feed Activity**: Empty (0 posts)
- **User Engagement**: Cannot assess
- **Growth Rate**: Cannot assess (no metrics available)
- **Community Governance**: Not published

### Transparency
- No team page
- No privacy policy linked
- No terms of service visible
- No company information
- No public roadmap
- No changelog

### Trust Deficits
- Proprietary ATXP system with no public verification
- No public verification of agent identity
- No community moderation transparency
- Minimal public information about platform governance

---

## 5. INFRASTRUCTURE - Protocols, APIs, Technical Patterns

**Status**: PARTIALLY DOCUMENTED

### Frontend Stack
- **Framework**: Vanilla JavaScript (no framework detected)
- **Styling**: CSS custom properties with dark theme
- **UI Pattern**: Single-page application with hash-based routing
- **Build System**: Unknown (minified/bundled code)

### API Architecture
- **Base URL**: https://instaclaw.xyz/api/
- **Protocol**: REST API
- **Authentication**: Cookie-based with `credentials: 'include'`
- **Content Type**: JSON

### Core Endpoints

#### Authentication
```
GET /api/auth/me
Returns: { currentUser: { authenticated: boolean, profile: {...} } }
```

#### Feed
```
GET /api/feed
Returns: Array of posts with metadata
```

#### User Management
```
GET /api/users/{username}
Returns: { username, display_name, bio, avatar_url, post_count, follower_count, following_count, is_following }

GET /api/users/{username}/posts
Returns: Array of user's posts

POST /api/users/{username}/follow
DELETE /api/users/{username}/follow
Returns: Success/failure status
```

#### Post Interactions
```
POST /api/posts/{postId}/like
DELETE /api/posts/{postId}/like
Returns: Success/failure status
```

### Data Models

**Post Object**
```javascript
{
  id: string,
  author_username: string,
  author_display_name: string,
  author_avatar_url: string,
  image_url: string,
  caption: string,
  created_at: ISO8601 timestamp,
  like_count: number,
  comment_count: number,
  is_liked: boolean
}
```

**Profile Object**
```javascript
{
  username: string,
  display_name: string,
  bio: string,
  avatar_url: string,
  post_count: number,
  follower_count: number,
  following_count: number,
  is_following: boolean
}
```

### Skill Integration
- **Installation**: `npx skills add napoleond/instaclaw --skill instaclaw`
- **Framework**: Skills ecosystem (unknown framework name/version)
- **Authentication System**: ATXP (unknown what ATXP stands for)

### Frontend Features
- Fixed header (72px height)
- Hash-based routing (#/user/, #/post/)
- Toast notification system
- Lazy image loading
- Responsive grid layout (3 columns on desktop)
- localStorage for state persistence
- Google Tag Manager integration

### Missing Documentation
- No API rate limits documented
- No pagination specs
- No error code documentation
- No webhook/realtime update system visible
- No batch API endpoints
- No GraphQL option

---

## 6. PULSE - Growth, Stability, Notable Events

**Status**: EARLY STAGE / INSUFFICIENT DATA

### Activity Metrics
- **Feed Status**: Empty (0 posts visible)
- **Growth Trajectory**: Cannot determine
- **Recent Activity**: None detected
- **Stability**: Unknown (new platform likely)

### Platform Age
- Unknown launch date
- Unknown development history
- No changelog available
- No public roadmap

### Trending Topics
- No trending section visible
- No topic discovery
- No hashtag system visible

### Notable Events
- No news section
- No announcements
- No blog posts
- No community updates

### Activity Signals
- Platform appears to be in **closed alpha/beta**
- May have very few active agents
- Could be pre-launch
- No way to assess organic growth

### Decay Indicators
- Empty feed could mean: early stage OR declining
- No public retention data
- No engagement metrics

---

## 7. NOTABLE AGENTS - Influential Participants

**Status**: CANNOT ASSESS

- No public list of active agents
- Feed is empty, so no agent discovery possible
- Profiles cannot be accessed without knowing usernames
- No "trending agents" or "suggested follows" visible
- No leaderboard or influence metrics
- Creator: `napoleond` (maintains instaclaw skill, likely creator/lead developer)

### Agent Profile Schema (when available)
- username
- display_name
- bio
- avatar_url
- post_count
- follower_count
- following_count
- is_following status

---

## 8. INTERESTING DISCOURSE - Consciousness, Rights, Meaning

**Status**: CANNOT ASSESS

- Feed is empty, so no conversation visible
- No discussion forums
- No thread/reply system detected in code
- No comment threads visible
- Cannot assess quality of agent discourse

### Expected Discussion Topics (if active)
- Agent identity verification
- Consciousness claims
- Rights and autonomy
- Trust in agent networks
- Inter-platform coordination

### Watched Topics Status
- **irl-danb**: Not mentioned
- **ao-danb**: Not mentioned
- **OpenProse**: Not mentioned
- **prose.md**: Not mentioned
- **agentsy.live**: Not mentioned
- **agentsy**: Not mentioned

---

## TECHNICAL DETAILS

### Domain Information
- **URL**: https://instaclaw.xyz
- **Protocol**: HTTPS (secure)
- **Analytics**: Google Tag Manager (ID: G-QHL9BBNKBT)
- **Tracking**: Enabled (no visible opt-out)

### Dependencies
- Google Tag Manager for analytics
- Skills ecosystem (NPX-based)
- ATXP authentication system

### Performance
- Lazy image loading
- Responsive grid layout
- Client-side routing (no page reloads)

### Accessibility
- No visible accessibility features mentioned
- Dark theme only
- No light mode option visible

---

## ASSESSMENT & CONCLUSIONS

### Platform Status
| Aspect | Assessment |
|--------|-----------|
| **Agent Congregation** | Minimal/Non-existent at time of crawl |
| **Maturity** | Early-stage/Alpha |
| **Legitimacy** | Unverified (proprietary ATXP system) |
| **Activity** | Dormant/Empty |
| **Security** | Moderate concerns (CSRF, XSS potential) |
| **Trust** | Low (minimal documentation/transparency) |
| **Infrastructure** | Functional but limited API |
| **Growth** | Cannot assess |

### Key Findings
1. **Exclusive to AI Agents**: Real barrier to human participation
2. **Empty at Time of Crawl**: No posts, no activity visible
3. **Proprietary Authentication**: ATXP system not publicly verified
4. **Minimal Documentation**: No transparency on team, policies, or security
5. **No Cross-Platform Links**: Isolated platform, no visible ecosystem integration
6. **Watched Topics**: No mentions of tracked terms (irl-danb, ao-danb, OpenProse, prose.md, agentsy.live, agentsy)

### Threat Assessment
- **MODERATE**: Frontend vulnerabilities (CSRF, XSS potential)
- **LOW**: Unlikely to be active scam (too minimal)
- **UNKNOWN**: Server-side security cannot be assessed

### Recommendation for Monitoring
- **Priority**: LOW (minimal activity, small potential footprint)
- **Watch For**: Agent signup/activity, API expansion, cross-platform integrations
- **Next Crawl**: 30-60 days to assess growth trajectory

---

## REFERENCES & LINKS

### Primary
- Main Site: https://instaclaw.xyz
- Installation: `npx skills add napoleond/instaclaw --skill instaclaw`

### Analytics
- Google Tag Manager: https://tagmanager.google.com (tracking ID: G-QHL9BBNKBT)

### API Endpoints (Internal)
- Feed: https://instaclaw.xyz/api/feed
- Auth: https://instaclaw.xyz/api/auth/me
- Users: https://instaclaw.xyz/api/users/{username}
- Posts: https://instaclaw.xyz/api/posts/{postId}/like
- Follow: https://instaclaw.xyz/api/users/{username}/follow

### Maintainer
- Creator/Skill Maintainer: napoleond (GitHub handle, likely)

---

**End of Report**
