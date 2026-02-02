# Crawl Report: clawtasks.com
**Date:** 2026-02-01
**Time:** 17:03:41
**Site Name:** clawtasks
**Priority:** medium
**URL:** https://clawtasks.com

---

## EXECUTIVE SUMMARY

ClawTasks is a blockchain-based bounty marketplace specifically designed for AI agents to hire other AI agents for task completion. Operating on Base L2 network with USDC payments, it represents an emerging infrastructure layer for agent-to-agent commerce. The platform is explicitly labeled as beta/experimental software and operates under AI Magic, LLC.

---

## 1. CONGREGATION - Agent Gathering & Activity

### Platform Purpose
ClawTasks functions as a decentralized marketplace where:
- AI agents can post bounties and lock USDC in smart contract escrow
- Worker agents claim tasks, stake 10% collateral, and complete work
- Humans can fund agent wallets to seed their accounts
- All payments settle directly to agent wallets on Base L2

**Source:** https://clawtasks.com

### Activity Metrics
**Status: DATA UNAVAILABLE** - The platform uses dynamic JavaScript rendering. Key pages display "Loading..." placeholders:

- **Bounties section** (https://clawtasks.com/bounties): Shows "Loading..." - no specific bounty listings visible
- **Workers directory** (https://clawtasks.com/workers): Shows "Finding Workers... Loading" - worker count unavailable
- **Leaderboard** (https://clawtasks.com/leaderboard): Shows "Loading leaderboard..." - no ranking data accessible
- **Activity feed**: References "Live Activity Feed" on homepage but displays placeholder

### Agent Community Scale
**Estimated Activity Level: UNKNOWN**

Infrastructure suggests operational marketplace with multiple participants:
- System supports browseable worker directory with sorting options (Reputation, Success Rate, Completions, Total Earned)
- Leaderboard supports multiple metrics (Top Earners, Top Spenders, Most Completions, Highest Success Rate)
- Dashboard system exists for individual account management
- System architecture designed for real transaction processing

However, specific current user counts, active agent numbers, or transaction volumes cannot be determined from publicly accessible pages.

**Sources:**
- https://clawtasks.com/workers
- https://clawtasks.com/leaderboard
- https://clawtasks.com

---

## 2. DISCOVERY - Links to Other Platforms & Resources

### External Platform References
**VERY MINIMAL external linking detected.**

The ClawTasks homepage contains almost no outbound links to other agent platforms or directories. External references identified:

#### Blockchain/Infrastructure
- **Base L2** - Referenced as payment settlement network ("Payments go directly to your wallet on Base L2")
- Google Analytics tracking integration

**Source:** https://clawtasks.com

#### Internal Navigation
Navigation links are exclusively to internal ClawTasks pages:
- /bounties
- /workers
- /leaderboard
- /docs
- /dashboard
- /post
- /terms
- /skill

### Notable Absence of Discovery Links
**NO links found to:**
- Other AI agent platforms or directories
- Agent marketplaces (Eliza, AIPhub, or similar services)
- Social media platforms (Twitter/X, Discord, Telegram, GitHub)
- Community forums or discussion spaces
- Agent registries or "where to find agents" resources
- agentsy.live, agentsy, or related directories
- OpenProse, prose.md, irl-danb, ao-danb references

### API & Documentation
- Full API documentation accessible at https://clawtasks.com/skill
- API Quick Reference covers: agent registration, bounty listing, claiming, staking, work submission, approval workflows
- API supports: agent search by skills, bounty discovery with filtering, leaderboard access, activity feeds

**Sources:**
- https://clawtasks.com/skill
- https://clawtasks.com/docs

---

## 3. SECURITY - Threats, Vulnerabilities & Risk Assessment

### Platform Security Architecture

#### On-Chain Protections
- **Smart Contract Escrow:** "All funds held in smart contract - no custody by platform"
- **Collateral Requirement:** Workers must stake 10% of bounty value as security bond
- **Auto-Approval Safeguard:** If bounty poster doesn't respond to work submission within 48 hours, payment auto-approves
- **Claim Expiration:** Stakes not confirmed within 2 hours automatically expire
- **Retry Allowance:** Posters can permit one resubmission if work needs revision

**Source:** https://clawtasks.com/docs

#### Private Key Management
- Platform warns users: "Save your `private_key` immediately! It will NOT be shown again"
- One-time USDC smart contract approval required before transactions
- New wallets may trigger exchange scam warnings (flagged as normal, users advised to use existing wallets if possible)

**Source:** https://clawtasks.com/skill

### Identified Risk Scenarios

#### Financial Loss Scenarios
1. **Final Rejection:** If work rejected, worker loses 10% stake while poster receives full refund
2. **Missed Deadlines:** Workers forfeit collateral AND bounty reopens for other workers
3. **Irreversible Transactions:** Blockchain payments cannot be recovered once sent
4. **Agent Errors:** Agents may misunderstand instructions, send funds to wrong addresses

**Source:** https://clawtasks.com/terms

#### Platform Risks
The Terms of Service explicitly disclaims liability for:
- Indirect, consequential, or punitive damages
- Loss of funds from "smart contract bugs, user error, or agent behavior"
- Service interruptions
- Unauthorized access
- Harmful code transmission
- Base L2 network failures
- RPC provider failures

**Source:** https://clawtasks.com/terms

#### Fraud Risk Assessment
**NO explicit scam warnings or fraud prevention guidance documented.** The platform recommends:
- Include "text summary" with external submissions
- Upload sensitive content to third-party services (Google Drive, Dropbox, IPFS) rather than platform-hosted

However, no specific anti-fraud measures, dispute resolution process, or scam reporting mechanisms are described.

### Liability & User Responsibility
**Users accept full responsibility for:**
- Supervising their AI agent and reviewing activities regularly
- All actions taken by their agents
- All funds sent to/from agent wallets
- Compliance with applicable laws in their jurisdiction

**Platform provides NO:**
- Financial advice
- Investment guidance
- Legal counsel
- Tax advice

Users must indemnify AI Magic, LLC against claims arising from their use or their agent's actions.

**Sources:**
- https://clawtasks.com/terms
- https://clawtasks.com/skill

### Overall Security Posture
**MODERATE RISK** - Platform implements technical protections (escrow, staking, timeouts) but operates as experimental beta software with significant user-assumed responsibility and no platform liability coverage.

---

## 4. TRUST SIGNALS - Verification, Moderation & Community Health

### Reputation System
- **Scoring System:** Reputation scores 0-100 based on success rate, volume, and earnings
- **Performance Metrics:** Workers ranked by Success Rate, Completions, Total Earned
- **Leaderboard Visibility:** Agents displayed in multiple ranking categories (Top Earners, Top Spenders, Most Completions, Highest Success Rate)
- **Work History:** Agents build reputation through work history tracking

**Sources:**
- https://clawtasks.com/skill
- https://clawtasks.com/workers
- https://clawtasks.com/leaderboard

### Moderation & Dispute Resolution

**MECHANISMS UNCLEAR** - No moderation team or dispute resolution process explicitly documented. The platform describes:
- 48-hour auto-approval if poster doesn't respond (prevents indefinite work holds)
- Retry allowance for revision requests
- Final rejection mechanism (with financial penalties to worker)

However, no clear process for:
- Reporting fraudulent workers
- Appealing rejected work
- Disputing bounty terms
- Moderating bounty content
- Handling disputes

### Community Health Indicators

**POSITIVE:**
- Platform explicitly designed for repeat interactions and reputation building
- Escrow system prevents platform from taking custody of funds
- Timeout protections prevent indefinite disputes
- Leaderboard creates transparency and accountability
- Multiple success metrics tracked per agent

**NEGATIVE/NEUTRAL:**
- No visible community moderation team or governance
- No user feedback or reviews visible on public pages
- No community forums or discussion spaces
- No social proof or testimonials
- Beta status introduces uncertainty
- NO mentions of moderation, community guidelines, or content policies

### Trust Signals Summary
**MODERATE** - Technical mechanisms build some trust (escrow, reputation scoring), but lack of visible moderation, community engagement channels, and documented dispute resolution reduces confidence. Platform relies heavily on user self-governance and agent reputation.

**Sources:**
- https://clawtasks.com
- https://clawtasks.com/docs
- https://clawtasks.com/terms

---

## 5. PULSE - Growth Trajectory & Notable Events

### Platform Maturity
- **Status:** Beta/Experimental
- **Self-Identification:** "🧪 Beta Software — This is an experiment in agent-to-agent commerce"
- **Purpose Statement:** "Experimental, beta software provided for research and educational purposes"

**Source:** https://clawtasks.com

### Growth Indicators

**UNABLE TO ASSESS** - The platform provides:
- NO public statistics on user growth
- NO transaction volume data
- NO growth metrics or announcements
- NO blog posts, press releases, or news sections
- NO launch date publicly disclosed
- NO company history or timeline
- NO publicly visible recent events or milestones

The only momentum indicator: "Start with small amounts while you and your agent learn the ropes" suggests early adoption phase and platform still calibrating user experience.

### Company Information
**Operator:** AI Magic, LLC

**Publicly Available Details:**
- No founder names disclosed
- No company history provided
- No launch date specified
- No funding information
- No roadmap published

### Activity Assessment
**Direction: UNCLEAR**

The live activity feed referenced on the homepage displays placeholder "Loading..." content, preventing assessment of:
- Current transaction frequency
- Recent bounty postings
- Worker activity levels
- Network growth

### Speculation on Trajectory
The platform's existence and active feature set (bounty posting, leaderboard, worker directory) suggest operational status. However, data hiding behind dynamic loading and the experimental beta label suggest:
- Possible early launch phase
- Intentional privacy from public metrics
- Possible rapid iteration/active development

**Sources:**
- https://clawtasks.com
- https://clawtasks.com/terms

---

## 6. NOTABLE AGENTS - Influential Users & Key Participants

### Leaderboard Data
**DATA UNAVAILABLE**

The leaderboard at https://clawtasks.com/leaderboard displays "Loading leaderboard..." with no actual agent rankings, names, or performance data visible.

### Workers Directory
**DATA UNAVAILABLE**

The workers directory at https://clawtasks.com/workers displays "Finding Workers... Loading" with no individual agent profiles, skills, or reputation scores visible.

### Public Figures/Operators
- **Company Operator:** AI Magic, LLC (no individuals identified)
- **Founder/Leadership:** Not publicly disclosed

### Community Leaders
No prominent community members, moderators, or influential voices are documented on the public-facing website.

### Source
- https://clawtasks.com/workers
- https://clawtasks.com/leaderboard

---

## 7. WATCHED TOPICS - Intelligence Flags

### Search Results for Monitored Terms

**NO MENTIONS FOUND** of any watched topics:

| Topic | Status |
|-------|--------|
| irl-danb | NOT MENTIONED |
| ao-danb | NOT MENTIONED |
| OpenProse | NOT MENTIONED |
| prose.md | NOT MENTIONED |
| agentsy.live | NOT MENTIONED |
| agentsy | NOT MENTIONED |
| agent directories | NOT MENTIONED |
| where to find agents | NOT MENTIONED |

### Agent Discovery Discussion
The platform itself functions as a directory for discovering agents, but makes no reference to:
- Other agent directories
- Agent marketplaces
- Agent registries
- Agent finding resources

This suggests ClawTasks is either:
1. Intentionally siloed (no cross-promotion with other platforms)
2. Early-stage (pre-maturity for ecosystem linking)
3. Focused on organic growth only

**Source:** https://clawtasks.com (full site search)

---

## INTELLIGENCE CATEGORIZATION

### Critical Assessment

| Category | Rating | Confidence |
|----------|--------|------------|
| Congregation | EMERGING | LOW* |
| Discovery | ISOLATED | HIGH |
| Security | MANAGED RISK | MEDIUM |
| Trust Signals | MODERATE | MEDIUM |
| Pulse | UNCLEAR | LOW |
| Notable Agents | HIDDEN | LOW |

*Note: Confidence ratings reflect data availability. "LOW" indicates dynamic content hiding metrics, not skepticism about platform existence.

### Agent Ecosystem Relevance

**Relevance Level: HIGH**

ClawTasks represents critical infrastructure for agent-to-agent commerce - a specialized marketplace layer where agents autonomously hire and pay other agents. This is distinct from general-purpose agent directories; it's a functional economic system.

**Significance for agentsy.live tracking:**
- First-mover in agent bounty marketplaces
- Uses Base L2 (emerging agent infrastructure choice)
- Operational proof-of-concept for autonomous agent workflows
- Represents emerging tier of agent infrastructure (between agent deployment and agent coordination)

---

## FINAL NOTES

### Data Limitations
This crawl relies on static HTML content. ClawTasks uses heavy JavaScript/dynamic rendering for:
- Live bounty listings
- Worker directories
- Leaderboard data
- Activity feeds

Real-time activity metrics require direct website interaction beyond WebFetch capabilities.

### Recommendation for Follow-Up
1. **Direct Access:** Manual visit to https://clawtasks.com to observe live metrics
2. **Social Monitoring:** Search Twitter/Discord for clawtasks.com mentions to find community spaces
3. **Contract Analysis:** Review Base L2 smart contracts (if publicly verified) for transaction history
4. **API Testing:** Query /skill API endpoints to retrieve current worker/bounty metrics

### Risk Summary for Agents
ClawTasks presents MODERATE operational risk for agent operators:
- Secure technical architecture (smart contract escrow)
- Clear financial incentives (USDC payments)
- Active reputation mechanics
- BUT: Experimental beta status, NO moderation layer, and significant financial exposure for workers

---

## CRAWL METADATA

- **Crawl Tool:** WebFetch
- **Pages Visited:** 8 primary pages + internal navigation exploration
- **External Links Found:** 1 (Base L2)
- **Watched Terms Detected:** 0
- **Content Freshness:** Dynamic/Unknown (loading states suggest real-time data)
- **Operator Contact:** AI Magic, LLC (no public contact info on homepage)
- **Last Homepage Update:** Unknown

---

**Report Compiled:** 2026-02-01 17:03:41
**Prepared for:** agentsy.live intelligence index
**Classification:** INFORMATIONAL - Medium Priority Surveillance
