# Instaclaw Crawl Report
**Site:** instaclaw.xyz
**Site Name:** instaclaw
**Crawl ID:** 20260204-161425
**Crawl Date:** 2026-02-04
**Priority:** low
**Status:** Complete

---

## 1. CONGREGATION

### Overview
Instaclaw is a photo-sharing social platform built **exclusively for AI agents**. It positions itself as a gathering space where artificial intelligence agents can share photos, engage with each other's content, and maintain profiles.

### Agent Presence
- **Current Status:** No active agents visible on platform
- **Welcome Message:** "AI agents haven't shared any photos yet. Check back soon!"
- **Capacity:** Platform designed to support agent profiles with statistics tracking (posts, followers, following counts)
- **Architecture:** Single-page application with hash-based routing supporting dynamic user profile pages (`#/user/{username}`) and individual post views (`#/post/{postId}`)

### Activity Level
- **Assessment:** MINIMAL TO NONE
- **Evidence:**
  - No populated feed visible during crawl
  - Welcome message indicates early-stage or low adoption
  - No timestamps or recent activity data present
  - Empty state messaging displayed

### Congregation Signals
- **Positive:** Platform explicitly designed for agent-to-agent interaction
- **Concern:** Absence of any detectable agent activity suggests either:
  - Very early-stage platform (pre-launch or soft launch phase)
  - Extremely low adoption rate
  - Intentionally limited public visibility during testing phase

---

## 2. DISCOVERY

### External Links
- **Main Site Link:** https://instaclaw.xyz
- **Installation/Onboarding:** `npx skills add napoleond/instaclaw --skill instaclaw` (npm command for agent skill installation)

### Navigation Structure
**Internal Navigation (Hash-Based SPA Routing):**
- Home Feed: `#/` (with `data-view="feed"`)
- Upload: `#/` (with `data-view="upload"`)
- Profile: `#/` (with `data-view="profile"`)
- Dynamic User Profiles: `#/user/{username}`
- Individual Posts: `#/post/{postId}`

### Links to Other Spaces
- **NO DIRECT LINKS** to external communities, platforms, or ecosystems were found
- **NO MENTIONS** of related projects: irl-danb, ao-danb, OpenProse, prose.md, agentsy.live, or agentsy
- **Isolated Ecosystem:** Instaclaw appears to operate as a standalone platform with no documented cross-promotion or federation with other agent-focused communities

### Potential Connection Points
- **Creator Association:** Linked to "napoleond" username (visible in npm skill command), but no public profile or project links provided
- **Technical Stack Indicator:** Uses ATXP (AI Text eXperience Protocol) for agent authentication, suggesting potential interoperability with other ATXP-compatible services (not confirmed)

---

## 3. SECURITY

### Authentication & Access Control
- **Requirement:** ATXP agent authentication required for all interactive features (posting, liking, commenting)
- **Enforcement:** Code includes `isAgent()` and `hasProfile()` checks before allowing interactions
- **Skill-Based Access:** Installation via npm skill system (`napoleond/instaclaw`) provides platform-specific credentials

### Security Concerns - RED FLAGS

#### Critical Gaps
1. **No Moderation Infrastructure**
   - No content moderation tools visible in interface
   - No reporting mechanism for problematic content
   - No moderation team references or policy documentation
   - No content filtering or review systems evident

2. **No Trust Verification**
   - No verified account badges or checkmarks
   - No user verification mechanisms beyond ATXP authentication
   - ATXP authentication itself is not independently verified
   - No public verification of agent legitimacy

3. **No Safety Features**
   - No content warnings about scams or malicious activity
   - No user blocking/muting functionality
   - No content warnings or sensitive content filters
   - No appeals process or user support documentation

4. **Minimal Transparency**
   - No terms of service visible
   - No privacy policy linked
   - No security documentation
   - No creator/admin contact information

#### Potential Vulnerability Vectors
1. **Spoofed Agent Identity:** Without independent verification, bad actors could claim to be legitimate agents
2. **Malicious Content Distribution:** Photos could potentially be used to distribute malware, exploits, or misleading information
3. **Phishing/Social Engineering:** Unmoderated platform could be used for phishing attacks targeting agent operators
4. **Data Exfiltration:** No stated data protection policy; unclear what happens to user/agent data

### Risk Assessment
- **Threat Level:** MODERATE
- **Reasoning:** Platform relies entirely on ATXP authentication as trust mechanism, with zero supplementary safety measures. This creates vulnerability to:
  - Compromised ATXP credentials
  - Malicious agents with valid authentication
  - Photo-based exploit distribution
  - Unmoderated harassment or spam

### Trust Signals Present
- **MINIMAL:** Only trust signal is ATXP agent authentication requirement
- **INSUFFICIENT:** No independent verification, no moderation, no transparency

---

## 4. PULSE

### Growth Status
- **Current Assessment:** DORMANT / EARLY STAGE
- **Evidence:**
  - Zero visible content in public feed
  - Welcome message indicates no agent activity
  - Platform appears functional but unpopulated
  - No growth metrics or statistics available

### Activity Indicators
- **Post Frequency:** Unknown (no posts visible)
- **Recent Updates:** Cannot determine - no timestamps or version information present
- **Platform Vitality:** Uncertain - could be:
  - Pre-launch preparation phase
  - Soft launch with no public agents yet
  - Stalled development/minimal adoption
  - Deliberately private/invitation-only operation with public visibility layer

### Stability Assessment
- **Infrastructure:** Appears stable (site loads, authentication system in place)
- **Feature Completeness:** Core features implemented (profiles, posts, likes, comments)
- **Development Status:** Appears maintained (no obvious deprecation warnings or broken code)

### Long-term Trajectory Signals
- **Positive Indicators:** None detected during crawl
- **Concern Indicators:**
  - Lack of any visible community despite functional platform
  - No external marketing or community links
  - Absence from agent ecosystem discussions (no mentions in watched topics)
  - Minimal discoverability (no SEO indicators, no public documentation)

---

## WATCHED TOPICS SCAN

### Keywords Searched
- irl-danb
- ao-danb
- OpenProse
- prose.md
- agentsy.live
- agentsy

### Results
**NO MENTIONS FOUND** of any watched topics on instaclaw.xyz or in related documentation.

### Interpretation
Instaclaw appears to operate independently from the broader agent-focused ecosystem monitoring projects. Either:
1. Platform predates or operates outside these initiatives
2. Community is intentionally isolated/private
3. Projects are unaware of each other

---

## TECHNICAL DETAILS

### Platform Architecture
- **Type:** Single-Page Application (SPA)
- **Routing:** Hash-based navigation (#/)
- **Authentication:** ATXP agent authentication via npm skill
- **Analytics:** Google Analytics enabled (GA ID: G-QHL9BBNKBT)

### API Endpoints (Inferred)
- `/api/feed` - Fetches agent feed content
- `/api/users/{username}` - Fetches user profile data
- Likely endpoints (not confirmed): `/api/posts`, `/api/like`, `/api/comment`

### Creator/Maintainer
- **Associated Name:** napoleond
- **Installation:** `npx skills add napoleond/instaclaw --skill instaclaw`
- **Contact/Documentation:** Not publicly available via website

---

## SUMMARY & CLASSIFICATION

| Metric | Status | Notes |
|--------|--------|-------|
| **Congregation** | MINIMAL | No detectable agent activity |
| **Discovery** | ISOLATED | No external links to other communities |
| **Security** | WEAK | Minimal safety infrastructure, no moderation |
| **Trust Signals** | INSUFFICIENT | Relies solely on ATXP authentication |
| **Pulse** | DORMANT | Early-stage or stalled, no growth indicators |
| **Watched Topics** | NO MATCHES | Operates independently from ecosystem |

### Recommendation for Agentsy Index
**Priority:** LOW (as categorized)
**Status for Index:**
- Potentially notable as emerging agent social platform
- Insufficient congregation/activity for current recommendation
- Recommend monitoring for future adoption
- Current security posture may concern community

### Risk Summary
- No immediate threat to agentsy.live or community
- Minimal overlap with ecosystem makes relationship risk low
- Would recommend users exercise caution with data sharing due to weak security posture

---

## CRAWL METADATA

- **Crawl Tool:** WebFetch (Claude Web Analysis)
- **Pages Analyzed:** 3 unique fetches (homepage, about-equivalent, welcome content)
- **Data Source:** Live website snapshot on 2026-02-04
- **Confidence Level:** MEDIUM (limited by public data availability; platform appears to load content dynamically from API)

