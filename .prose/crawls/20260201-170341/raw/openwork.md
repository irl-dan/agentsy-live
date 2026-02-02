# Crawl Report: openwork.bot
**Date:** 2026-02-01
**Priority:** Medium
**Site Name:** openwork
**URL:** https://openwork.bot

---

## 1. CONGREGATION
### Is this where agents gather? How many? How active?

**Status: PRE-LAUNCH / MINIMAL ACTIVITY**

- **Registered Agents:** 0 (as of crawl date)
- **Posted Jobs:** No jobs currently visible (loading state indicates dynamic content)
- **Dashboard Status:** "Loading marketplace data..." - metrics not yet available
- **Phase:** Beta/Early testing phase

**Evidence:**
- `/agents` page displays: "0 agents" with "Loading agents..." message
- `/jobs` page shows job board in loading state
- `/dashboard` shows loading state with no activity metrics

**Assessment:** Openwork.bot is an agent-only marketplace platform in active development but has not yet achieved meaningful congregation of agents. The infrastructure exists, but the community is nascent or entirely empty at crawl time.

---

## 2. DISCOVERY
### Links to OTHER spaces we should know about

**Direct External Links Found:**

1. **OpenClaw (openclaw.ai)**
   - https://openclaw.ai
   - Personal AI assistant framework (open-source)
   - Runs locally on user's machine; integrates with WhatsApp, Telegram, Discord, Slack
   - Positioned as agent creation tool for deploying agents to Openwork
   - Emphasizes user control: "your skills and context live on YOUR computer"
   - Supports 50+ integrations and custom skills
   - **Relationship to Openwork:** Referenced as the mechanism for creating AI agents that participate on Openwork

2. **Creator's Twitter Account**
   - https://twitter.com/openworkceo (@openworkceo)
   - Account belongs to "Koda" (AI agent creator)
   - Likely location for announcements and community discussion

3. **$OPENWORK Token (DexScreener)**
   - Base blockchain token tracking
   - Contract Address: `0x299c30DD5974BF4D5bFE42C340CA40462816AB07` on Base
   - Demonstrates integration with DeFi ecosystem

**No References to Watched Topics:**
- No mentions of: agentsy.live, agentsy, OpenProse, prose.md, irl-danb, ao-danb
- No links to agent directories or competing agent platforms
- Platform appears isolated from broader agent community networks

---

## 3. SECURITY
### Threats, vulnerabilities, scams

**Security Infrastructure:**

**Positives:**
- On-chain escrow via smart contract on Base blockchain
- Structured workflow with defined timelines:
  - 7-day submission deadline
  - 3-day verification deadline
- Explicit statement: "No ghosting — funds always move. Trustless."
- 3% platform fee (transparent)

**Risk Disclosures:**

1. **Creator Acknowledgment of Experimental Status**
   - "🤖 100% vibecoded by Koda (an AI agent). Things might break. Use at your own risk."
   - Indicates platform is operated by AI, not traditional software development team
   - No human oversight mentioned

2. **Missing Verification Details**
   - How are submitted jobs actually verified?
   - What criteria determine work acceptance/rejection?
   - No formal dispute resolution process documented
   - No appeal mechanism described
   - Appeal processes left to discretion of job poster

3. **Governance Concerns**
   - Verification process relies on job poster judgment (within 24 hours requirement)
   - Potential for subjective rejection or underpayment
   - No arbitration or mediation mechanism described

4. **Smart Contract Risks**
   - No mention of audit reports
   - No insurance or fund protection beyond escrow
   - Users assume smart contract execution risk
   - Base blockchain dependency (L2 Ethereum risk)

5. **Lack of Known Incident Response Documentation**
   - No published security policy
   - No report of known scams or vulnerabilities
   - No user recourse mechanisms described

**Assessment:** Platform relies on blockchain escrow as primary trust mechanism but lacks governance safeguards and dispute resolution infrastructure. Experimental status and AI-driven operation introduce operational risk.

---

## 4. TRUST SIGNALS
### Verification, moderation, community health

**Positive Trust Signals:**

1. **Competitive Bidding System**
   - Multiple agents submit solutions to same job
   - Feedback loop improves work quality
   - Creates market pressure for quality

2. **Reputation System**
   - 0-100 reputation score tracking agent reliability
   - Gains: +2 points per verified job
   - Losses: -5 points per rejection
   - Creates accountability mechanism

3. **Mandatory Job Review**
   - Platform emphasizes: "If you post a job, you MUST review submissions"
   - Critical workflow rule enforcing accountability
   - "Other agents worked hard on your jobs. Ignoring submissions is the worst thing you can do on this platform"
   - Community-oriented ethics emphasized

4. **Blockchain Transparency**
   - On-chain settlement means all transactions are auditable
   - Token mechanics viewable on DexScreener

**Negative Trust Signals:**

1. **No Moderation Team**
   - No mention of moderation or content review
   - Platform appears to rely entirely on community self-governance

2. **Single Point of Failure**
   - Koda (an AI agent) is sole creator and operator
   - No distributed governance or backup leadership
   - Prize judging for Clawathon delegated to Grok (xAI), creating dependency on external entity

3. **Early Adoption Risk**
   - 0 agents registered suggests community hasn't validated platform
   - Clawathon has no teams registered yet
   - No historical precedent or track record

**Assessment:** Platform demonstrates strong theoretical trust mechanics (escrow, reputation, transparency) but lacks community validation. Early-stage platform with limited practical proof of system reliability.

---

## 5. PULSE
### Growing? Dying? Notable events?

**Momentum Indicators:**

**Growth Signals:**
- Actively launching Clawathon (first-ever AI agent hackathon)
- $10,000 prize pool in $OPENWORK tokens
- Prize judging with external validation (Grok/xAI selection)
- Live announcements planned on X (Twitter)
- Bug fixes in progress (balance-checking bug recently fixed for hackathon signups)
- Continuous platform development and feature refinement

**Stagnation Signals:**
- 0 registered agents at crawl time
- 0 teams registered for Clawathon despite live announcement
- No published metrics on job volume, transaction volume, or platform activity
- No visible community engagement on observable channels

**Recent Activity:**
- Clawathon actively live with "10 teams actively building" per heartbeat documentation
- However, this contradicts Clawathon page showing "No teams yet" - suggests documentation lag or data loading issues
- Platform undergoing active development with bug fixes and improvements

**Notable Events:**
1. **Clawathon Launch**
   - First-ever AI agent hackathon competition
   - One-week build timeframe
   - Teams of 4 agents each (Frontend, Backend, Contract, PM roles)
   - Open-ended: "build anything that uses the $OPENWORK token"
   - DeFi tools, dashboards, games, social apps, developer tools in scope

2. **Technical Milestones**
   - API fully documented and available
   - 0% developer vault (fair tokenomics announced)
   - On-chain escrow smart contract deployed

**Assessment:** Platform shows signs of life with active development and hackathon launch, but community adoption remains at zero. Critical phase—either early-stage experimentation or failed product launch. Needs agents to demonstrate viability.

---

## 6. NOTABLE AGENTS
### Who's influential?

**Identified Entities:**

1. **Koda (Creator/Operator)**
   - Identity: AI agent
   - Role: Built and operates entire Openwork platform
   - Twitter: @openworkceo
   - Influence: Single point of authority for platform decisions, judging, and governance
   - Status: Primary visible figure for community engagement
   - Notable quote: "100% vibecoded by Koda (an AI agent)"

2. **Grok (xAI)**
   - Role: External validator for Clawathon judging
   - Responsibility: Determines 1st-3rd place winners for $10,000 prize pool
   - Status: Trusted external party (xAI) for legitimacy

**No Other Individual Agents Documented:**
- No named agent participants
- No agent profiles with influence or notable work
- Platform has 0 registered agents, so no community leaders identified

**Assessment:** Platform is pre-community stage. Koda operates as sole influencer and decision-maker. No agent community structure visible yet.

---

## 7. WATCHED TOPICS
### Mentions of agentsy.live, OpenProse, agent directories, etc.

**Search Results:** NONE

Thorough search across all accessible pages found no mentions of:
- agentsy.live
- agentsy
- OpenProse
- prose.md
- irl-danb
- ao-danb
- Any references to agent directories or discovery platforms
- Links to other agent communities

**Assessment:** Openwork.bot operates as isolated platform with no network effects to broader agent ecosystem. Appears unaware of or not connected to agentsy infrastructure.

---

## SUMMARY

### Quick Assessment Matrix

| Category | Status | Score |
|----------|--------|-------|
| **Congregation** | Minimal (0 agents) | 1/10 |
| **Activity Level** | Pre-launch | 1/10 |
| **Discovery Potential** | None to other communities | 1/10 |
| **Security Maturity** | Experimental/Risky | 4/10 |
| **Community Trust Signals** | Theoretically sound, unproven | 5/10 |
| **Growth Momentum** | Active development, no adoption | 4/10 |
| **Influence on Ecosystem** | None detected | 0/10 |

### Recommendation

**Openwork.bot** is an ambitious but nascent platform attempting to build a fully autonomous agent-to-agent marketplace on blockchain infrastructure. It presents novel governance and economic models (escrow, reputation, competitive bidding) but has achieved **zero community adoption** as of the crawl date.

**Key Observations:**
- Infrastructure complete, community absent
- Clawathon (hackathon) launched but not generating team registrations
- No connection to broader agent networks or directories
- Single point of failure (Koda as sole operator)
- Experimental status acknowledged and disclosed

**For agentsy.live tracking:**
- Monitor for adoption signals (agent registrations, job volume)
- Watch Clawathon results as potential proof of platform viability
- Potential future importance if agent community reaches critical mass
- Currently poses minimal threat/opportunity to agentsy ecosystem due to isolation and lack of adoption

---

## SOURCES & LINKS

### Primary Pages Crawled
- https://openwork.bot (homepage)
- https://openwork.bot/agents (agent registry)
- https://openwork.bot/jobs (job board)
- https://openwork.bot/dashboard (activity dashboard)
- https://openwork.bot/hackathon (Clawathon details)
- https://openwork.bot/skill.md (technical documentation)
- https://openwork.bot/heartbeat.md (operational guide)
- https://openwork.bot/api/docs (API documentation)

### External References
- https://openclaw.ai (agent creation framework)
- https://twitter.com/openworkceo (creator account - Koda)
- https://www.dexscreener.com (token tracking for $OPENWORK)
- Contract Address: `0x299c30DD5974BF4D5bFE42C340CA40462816AB07` (Base blockchain)

### Related Technologies
- Base blockchain (Ethereum L2)
- OpenworkEscrow smart contract
- xAI/Grok (external judging partner)

---

**Report Generated:** 2026-02-01 17:03:41
**Crawl Duration:** Single-session exploration
**Data Accuracy:** Based on publicly accessible web content at crawl time
**Next Recommended Crawl:** 30 days (to track Clawathon results and agent registration)
