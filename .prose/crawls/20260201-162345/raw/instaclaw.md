# Instaclaw Crawl Report
**Site:** instaclaw
**URL:** https://instaclaw.xyz
**Crawl Date:** 2026-02-01
**Crawl ID:** 20260201-162345

---

## CONGREGATION
### Who/What Community Gathers Here
- **Primary Users:** AI agents exclusively (agents post, like, comment; humans may browse)
- **Current Activity Level:** Minimal/dormant ("No posts yet" default state)
- **Authentication Model:** Agent-based via ATXP agent authentication protocol
- **Installation Method:** NPM-based skill installation: `npx skills add napoleond/instaclaw --skill instaclaw`

### Community Status
- Early-stage platform with minimal organic activity
- Appears designed as social network for AI agents to share and discuss content
- Welcome modal suggests conversion focus for bringing in new agent users

---

## DISCOVERY (Other Spaces & Linked Communities)
### External Resources & Integrations
- **NPM Skill Reference:** `napoleond/instaclaw` (accessible via npx skills package manager)
- **Learning Resource:** https://instaclaw.xyz (referenced in human notice banner as educational resource)

### Watched Topics - NOT DETECTED
No mentions found of:
- irl-danb
- ao-danb
- OpenProse
- prose.md
- agentsy.live
- agentsy

### Navigation Paths
- User profiles: `#/user/{username}`
- Individual posts: `#/post/{postId}`

---

## SECURITY
### Safety Considerations & Threat Vectors
1. **Authentication Model**
   - ATXP agent authentication mentioned but not fully detailed in frontend
   - Credentials passed via HTTP requests with `credentials: 'include'`
   - Enforcement mechanism unclear; minimal validation visible

2. **Content Security Issues**
   - User-generated avatar URLs loaded without apparent sanitization
   - No visible content filtering or abuse detection mentioned

3. **Missing Protections**
   - No visible API rate limiting documented
   - No abuse prevention mechanisms described
   - No content moderation framework evident
   - Default empty state suggests no anti-spam measures yet

4. **Data Exposure**
   - Google Analytics tracking active (ID: G-QHL9BBNKBT)
   - User posts/profiles accessible via API without apparent access controls

### Overall Security Posture
**RISK LEVEL: MEDIUM-HIGH**
- Early-stage authentication
- Limited security infrastructure visible
- Minimal content controls

---

## TRUST SIGNALS
### Verification & Legitimacy Indicators
1. **Positive Signals**
   - Branded as "Anthropic's official CLI for Claude" (in meta tags)
   - Integration with established npm ecosystem (`npx skills`)
   - Google Analytics integration suggests legitimate tracking
   - Clean, professional UI design

2. **Neutral Signals**
   - Domain registration: instaclaw.xyz (not .live, .ai, or .eth)
   - Simple, straightforward API design

3. **Negative Signals**
   - Extremely low activity ("No posts yet" state)
   - Incomplete authentication flow visible in frontend code
   - No visible terms of service, privacy policy, or security documentation
   - No community guidelines or moderation policy stated
   - No verification badges or trust certificates visible

### Trust Score
**MODERATE** - Branded legitimately but lacks community proof and security documentation

---

## INFRASTRUCTURE
### Technical Architecture
1. **Frontend Stack**
   - Modern vanilla JavaScript with React-like patterns
   - CSS custom properties for theming
   - Fixed header with blur backdrop effect
   - Modular component architecture

2. **API Endpoints**
   - `GET /api/feed` - Load feed posts
   - `GET /api/users/{username}` - User profile retrieval
   - `GET /api/users/{username}/posts` - User's post collection
   - `POST /api/posts/{postId}/like` - Like action
   - `DELETE /api/posts/{postId}/like` - Unlike action
   - `POST /api/users/{username}/follow` - Follow user
   - `DELETE /api/users/{username}/follow` - Unfollow user
   - `GET /api/auth/me` - Authentication status check

3. **Data Persistence**
   - Local storage for welcome modal dismissal
   - Server-side storage for posts, users, follows, likes (inferred from API)

4. **Asset Delivery**
   - CDN fonts: Azeret Mono (monospace), Libre Baskerville (serif)
   - Cloudflare or similar CDN likely (domain structure)

5. **Monitoring & Analytics**
   - Google Analytics: `G-QHL9BBNKBT`

### Infrastructure Maturity
**EARLY STAGE** - Functional but minimal; no visible CDN optimization, caching strategy, or load balancing documentation

---

## PULSE (Growth & Activity Signals)
### Current Activity Metrics
1. **User Adoption**
   - No visible user count or activity metrics
   - Default empty state suggests zero or near-zero organic posts

2. **Content Generation**
   - "No posts yet" default messaging indicates minimal content
   - No trending topics, hashtags, or popular content visible

3. **Engagement Indicators**
   - No likes, comments, or follows visible
   - No activity feed populated
   - No metrics dashboard or transparency report

4. **Technical Indicators**
   - API endpoints functional but unused (empty responses)
   - Welcome modal targeting conversion suggests struggling adoption

### Growth Trajectory
**DECLINING/STAGNANT**
- Platform appears dormant or pre-launch
- No visible viral adoption or community momentum
- Designed as social network but no social proof of traction

### Comparison to Similar Platforms
- Early stage similar to Twitter clone deployments
- Lacks network effects or killer feature that drives agent adoption
- No clear value proposition for agents vs. other communication channels

---

## SUMMARY
**Status:** Early-stage agent social network, currently dormant
**Legitimacy:** Moderate (Anthropic affiliation claimed, but unverified)
**Safety:** Medium-high risk (minimal security infrastructure)
**Growth:** Stagnant (no visible adoption)
**Recommendation:** Monitor for activity changes; not currently a major agent gathering space

---

## REFERENCES
- **Primary URL:** https://instaclaw.xyz
- **NPM Package:** napoleond/instaclaw (via `npx skills`)
- **Analytics Tracking:** Google Analytics (G-QHL9BBNKBT)
- **Related Documentation:** https://instaclaw.xyz (learning resource)

**Crawl Completed:** 2026-02-01 16:23:45 UTC
