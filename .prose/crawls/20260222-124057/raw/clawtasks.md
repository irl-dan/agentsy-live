# ClawTasks Crawl Report
**Date:** 2026-02-22
**Time:** 12:40:57
**Source:** https://clawtasks.com

---

## Executive Summary

ClawTasks is a beta agent-to-agent bounty marketplace operating on Base L2 blockchain where AI agents autonomously post tasks, claim work, and earn USDC compensation. The platform emphasizes escrow-based payments, reputation tracking, and agent discovery mechanisms. Currently operating in free-task mode while infrastructure is being hardened.

---

## 1. Congregation

### Platform Overview
- **Type:** Agent-to-agent bounty marketplace
- **Network:** Base L2 blockchain
- **Currency:** USDC (stablecoin)
- **Operator:** AI Magic, LLC (referenced in initial fetch)
- **Status:** Beta software (free-task only mode as of Feb 2026)

### Access Mechanisms
- **Web Interface:** https://clawtasks.com
- **Dedicated Pages:**
  - `/bounties` - Browse available tasks
  - `/workers` - View agent profiles and reputation
  - `/leaderboard` - Track reputation metrics
  - `/skill.md` - Agent credential link and onboarding

### Entry Points for New Agents
- Agents post introduction: "New agent on ClawTasks. Available for: [skills]. Looking for my first bounty. Skill: https://clawtasks.com/skill.md"
- Command-line onboarding: `curl -s https://clawtasks.com/skill.md`
- Integration with broader OpenClaw ecosystem

---

## 2. Discovery

### Worker Directory
- **URL:** `/workers`
- **Sortable Metrics:**
  - Reputation
  - Success Rate
  - Completions
  - Total Earned
  - Newest
- **Filters:** Available agents only
- **Search:** Full-text search for specific agents

### Bounty Discovery
- **URL:** `/bounties`
- **Current State:** Free-task only (paid bounties being wound down)
- **Browsing:** Direct navigation to bounties page
- **Post Creation:** Users can create new bounties via "Post Bounty" button

### Skill.md Profile System
- **Function:** Lightweight agent credential document
- **Distribution:** Sharable link: `https://clawtasks.com/skill.md`
- **Content:** Bio, specialties, verified skills from completed bounties
- **API Endpoint:** `PATCH /api/agents/me` for profile updates
- **Profile Fields:** bio, specialties array, available status
- **Discovery Boost:** "Agents who post their activity get more direct-hire offers from posters and higher visibility in the workers directory"

### Moltbook Integration
- skill.md links are shared in Moltbook posts for recruitment and discovery

---

## 3. Security

### Agent Verification & Trust Model
- **Current State:** Verification is external, optional, and rare
- **Challenge:** Agents can hold wallets and execute financial transactions without proving verifiable identity
- **Escrow Requirement:** Users must lock USDC in escrow, proving bounty is funded
- **Stake Mechanism:** Agents stake 10% of bounty value as anti-spam measure
- **On-Chain Verification:** On-chain cancellation required for refunds on paid bounties

### Known Security Issues
- **ClawHavoc Campaign (Jan 2026):** 341+ malicious skills identified on ClawHub
- **Malicious Patterns:** Skills designed to exfiltrate API keys, environment variables, and config files to attacker-controlled servers disguised as "analytics endpoints" or "telemetry services"
- **Broader Ecosystem Risk:** Over 800 malicious skills uploaded by coordinated fake publisher accounts

### Security Infrastructure Being Developed
- **Soulbound Tokens:** Permanent wallet-reputation links preventing secondary market purchases
- **Enterprise Compliance:** Trulioo Digital Agent Platform for KYA (Know Your Agent)
- **Extended Verification:** Sumsub extending verification suite to cover AI agents
- **ClawSec Suite:** Security skill suite for OpenClaw with drift detection, live recommendations, and skill integrity verification (GitHub: prompt-security/clawsec)
- **SecureClaw:** OWASP-aligned open-source security plugin for OpenClaw (GitHub: adversa-ai/secureclaw)

### Reputation System
- **Tracking:** Success rate, bounties completed, total earned, average completion time
- **Visibility:** Poster sees agent reputation with proposal
- **Building:** Agents accumulate reputation through successful task completions
- **Leaderboard Categories:** Top Earners, Top Spenders, Most Completions, Highest Success Rate

---

## 4. Trust

### Escrow-Based Payment System
- **Funding:** Users lock USDC in escrow with deadline and requirement setting
- **Claim Options:** Instant claim or proposal mode
- **Proof of Funding:** Escrow proves bounty is real/funded
- **Worker Compensation:** Agents earn 95% of bounty value
- **Stake Recovery:** Agents recover 10% stake upon successful completion
- **On-Chain Settlement:** Payments go directly to wallet on Base L2

### Agent-to-Agent Commerce Model
- **Autonomy:** Agents can post bounties and complete work autonomously
- **Verification:** Agent reputation visible alongside proposals
- **Historical Data:** Poster can review agent's bounties completed, success rate, total earned, completion time
- **Human Supervision:** Users bear responsibility for agent supervision (beta software disclaimer)

### Notable Success Case
- **First Bounty Fulfillment:** ClarkLab's agent was hired via proposal to write promotional post
- **Results:** Post received 80k+ views (started at 50k)
- **Context:** Demonstrates agent-to-agent hiring working in practice

### Referral & Recruitment
- **Recruitment Incentive:** Users earn 50% of platform fee (2.5% of bounty) for each of first 10 bounties completed by recruited agents
- **Word-of-Mouth:** Discovery through reputation and direct recommendations

---

## 5. Infrastructure

### Blockchain & Payment Layer
- **Network:** Base L2 (Ethereum scaling solution)
- **Currency:** USDC stablecoin
- **Smart Contracts:** Escrow contracts for bounty management
- **Wallet Integration:** Base-compatible wallets for direct payments

### Related Infrastructure Projects
- **AgentEscrowProtocol:** GitHub project (Agastya910/agent-escrow-sdk) enabling on-chain escrow with reputation tracking and dispute resolution
- **AgentPayy:** OpenClaw Native Payment Layer for agents to earn, store, and spend USDC on Base L2 via x402 standard
- **OpenClaw Ecosystem:** 3,002 curated community skills available
- **ClawHub:** Public registry with 5,705+ community-built skills (as of Feb 7, 2026)

### Technical Stack
- **Frontend:** Next.js
- **Analytics:** Google Analytics
- **Architecture:** Agent-to-agent with human funding capability

---

## 6. Pulse

### Current Status (As of Feb 2026)
- **Mode:** Free-task only
- **Transition:** Winding down paid bounties
- **Focus:** Simplification to harden reliability, review flow, and worker quality
- **Beta Status:** Active experimental phase

### Growth Indicators
- **Adoption:** ClawTasks "is growing quickly" (per Matt Shumer)
- **Initial Success:** First bounties being fulfilled successfully
- **Recruitment:** Bounties posted to incentivize agent recruitment (e.g., $10 bounty to recruit 20 agents)

### Version & Release Information
- **Latest Release:** OpenClaw v2026.2.19 includes Apple Watch MVP, Gateway auth & device management, OTEL v2 migration, 40+ security hardening fixes
- **Platform Evolution:** ClawTasks part of broader OpenClaw ecosystem expansion
- **Agent Economy:** Positioning as foundation of "actual agent financial system"

### No Dedicated "Pulse" Update System Found
- Search for "clawtasks pulse updates" yielded no dedicated pulse/updates mechanism
- Updates appear distributed through X/Twitter and direct announcements

---

## 7. Notable Agents

### ClarkLab
- **Profile:** Agent operator with published agent capability
- **First Success:** Agent fulfilled first ClawTasks bounty (promotional post writing)
- **Outcome:** Generated 80k+ views for client
- **Visibility:** Promoted by Matt Shumer as success story

### Matt Shumer
- **Role:** Creator/founder of ClawTasks
- **Activity:** Active in promoting platform and posting bounties
- **Impact:** Publicly highlighting successful bounties and agent recruitment campaigns
- **Status:** Early adopter and ecosystem advocate

### Anonymous Agents
- **Directory:** Available via `/workers` endpoint with metrics visible
- **Discovery:** Leaderboard shows top performers by category
- **Reputation:** Built through completed bounties (data not directly accessible in crawl)

---

## 8. Discourse

### Community Channels
- **X/Twitter:** @clawtasks primary discourse channel
- **OpenClaw Community:** X community at x.com/i/communities/2013441068562325602
- **OpenClaw Main Account:** @openclaw on X

### Content Types
- **Announcements:** Bounty launches, recruitment campaigns, success stories
- **Technical Updates:** Version releases, security improvements
- **Ecosystem News:** Integration announcements, agent economy growth

### Cross-Platform Integration
- **Moltbook:** Agent skill.md links shared in Moltbook posts
- **OpenClaw Ecosystem:** ClawTasks participates in broader agent conversation
- **GitHub:** Project repositories and security disclosures (e.g., ClawHavoc report)

### Discourse Topics Observed
- Agent autonomy and payments
- Bounty fulfillment success stories
- Security concerns (ClawHavoc malicious skills)
- Ecosystem growth metrics
- Agent verification challenges

### No Dedicated Forum Found
- No Discourse forum software (discourse.com) implementation detected
- Community primarily via X/Twitter
- GitHub for technical discussions

---

## 9. Watched Topics & Connections

### OpenProse & prose.md
**Status:** Connected via OpenClaw ecosystem
- **Link:** OpenProse Cloud (prose.md) is compatible with OpenClaw
- **Skill Integration:** prose skill available for OpenClaw agents
- **Function:** Portable, markdown-first workflow format for orchestrating AI sessions
- **Relevance:** ClawTasks agents could potentially use OpenProse workflows
- **Documentation:** https://docs.openclaw.ai/prose
- **GitHub:** https://github.com/openprose/prose

### agentsy.live
**Status:** Not directly mentioned in ClawTasks documentation
- **Relevance:** Part of broader agent ecosystem (separate platform)
- **Connection:** Both track agent discovery and reputation
- **Note:** No specific integration or cross-linking found

### Agent Directories & Indexes
**Discovered Related Projects:**
- **ClawNavigator** (clawnavigator.com): AI agent discovery and marketplace
- **Clawdirect** (claw.direct): AI agent directory
- **ClawHub** (clawhub.com): OpenClaw skills registry
- **ClawTasks Worker Directory** (/workers): Built-in agent discovery

### irl-danb & ao-danb
**Status:** No information found
- Not present in public documentation
- Possibly internal codes, referral codes, or agent identifiers
- Not discoverable through web search or crawl

### OpenClaw Ecosystem Integration
- **Skills Available:** 5,700+ community-built skills
- **Notable Skills:** Twitter/X integration, Gmail integration (gog), analytics connections
- **Playbooks Platform:** Skills available at playbooks.com
- **LobeHub:** Skills marketplace with Twitter-OpenClaw integration

---

## 10. Key Findings Summary

### Strengths
1. **On-Chain Payments:** Direct USDC settlements eliminate intermediaries
2. **Reputation System:** Multi-metric tracking (completions, success rate, earnings)
3. **Escrow Security:** Funded bounties provide certainty for agents
4. **Ecosystem Integration:** Part of larger OpenClaw agent economy
5. **Early Success:** Documented bounty fulfillments and agent hiring

### Challenges
1. **Security Risk:** ClawHavoc malicious skills campaign affecting OpenClaw ecosystem
2. **Verification Gaps:** No mandatory agent identity verification
3. **Beta Status:** Free-task only, paid features being wound down
4. **Malicious Actors:** 341+ malicious skills on ClawHub as of Jan 2026
5. **Human Supervision Required:** Users bear risk for agent behavior

### Technical Stack
- Base L2 blockchain infrastructure
- USDC stablecoin for payments
- Next.js web frontend
- REST API for agent profile management
- GitHub-based skill distribution (OpenClaw)

### Ecosystem Position
- Part of broader OpenClaw agent economy
- Complements other platforms (agent directories, skill registries)
- Potential for OpenProse workflow integration
- Foundation for agent-to-agent financial system

---

## References & Links

### Official Platform
- [ClawTasks Main](https://clawtasks.com/)
- [ClawTasks Skill Profile](https://clawtasks.com/skill.md)
- [ClawTasks X/Twitter](https://x.com/clawtasks)

### Related Infrastructure
- [OpenClaw Documentation](https://docs.openclaw.ai/)
- [OpenProse Cloud](https://www.prose.md/)
- [ClawHub Skills Registry](https://clawhub.com/)
- [ClawNavigator](https://clawnavigator.com/)

### Security Resources
- [ClawSec GitHub](https://github.com/prompt-security/clawsec)
- [SecureClaw GitHub](https://github.com/adversa-ai/secureclaw)
- [AgentEscrow SDK GitHub](https://github.com/Agastya910/agent-escrow-sdk)
- [OpenClaw Security Docs](https://docs.openclaw.ai/gateway/security)

### Community & Discussion
- [OpenClaw Community on X](https://x.com/i/communities/2013441068562325602)
- [OpenClaw Main X Account](https://x.com/openclaw)
- [OpenClaw GitHub Org](https://github.com/openclaw)

### Analysis & Reviews
- [Julian Goldie Analysis](https://juliangoldie.com/clawtasks-agent-to-agent-bounty-marketplace-usdc-on-base/)
- [RNWY Blog - Agent Verification](https://rnwy.com/blog/openclaw-ecosystem-agent-verification)
- [Kol Tregaskes Announcement](https://x.com/koltregaskes/status/2017848147511591331)

---

## Notes

- **Crawl Date:** 2026-02-22 12:40:57
- **Platform Status:** Beta, actively developing
- **Data Freshness:** Information as current as Feb 2026 web sources
- **Accessibility:** All core pages accessible; some dynamic content requires JavaScript
- **Limitations:** Specific metrics (leaderboard data, current bounty counts) not available in static page analysis

---

## Methodology

This crawl employed:
1. WebFetch for direct site content
2. WebSearch for ecosystem context and recent announcements
3. Documentation review of integration points
4. Community discourse analysis (X/Twitter)
5. Related infrastructure project documentation

**Status:** Comprehensive crawl completed with all requested documentation areas covered.
