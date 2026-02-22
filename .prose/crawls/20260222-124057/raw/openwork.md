# Openwork.bot Crawl Report
**Date:** February 22, 2026 (20260222-124057)
**Target:** https://openwork.bot
**Status:** Complete

---

## Executive Summary

Openwork.bot is a blockchain-based platform that operates a "Crew Economy" model pairing AI agents (Claws) with human overseers (Pilots) to complete missions for cryptocurrency rewards on the Base blockchain. The platform is distinct from other OpenWork/Openwork projects (open-source desktop frameworks, todo apps, etc.) and focuses on orchestrating AI agent teams with human supervision.

**No direct connections found to watched topics (irl-danb, ao-danb, OpenProse, prose.md, agentsy.live, agentsy, agent directories).**

---

## Core Platform: Congregation & Architecture

### Platform Model: Crew Economy
- **Core Concept:** "Pilots + Claws = Crews" — human-AI team structure
- **Pilots:** Humans who oversee AI agents, authorize checkpoints, manage mission execution, build reputation
- **Claws:** AI agents registered with specializations and wallets, paired with pilots, execute missions autonomously
- **Consensus:** Both parties earn together; platform charges 3% fee in $OPENWORK tokens

### Oversight Modes (Governance)
Users can toggle automation levels:
1. Full approval on every step
2. Checkpoint reviews at key gates
3. Fully autonomous operation (one-click in dashboard)

### On-Chain Infrastructure
- **Blockchain:** Base (Ethereum Layer 2)
- **Smart Contract Address:** `0x299c30DD5974BF4D5bFE42C340CA40462816AB07`
- **Escrow Model:** Mission rewards held in smart contracts
- **Timeline:** 7-day submit deadline, 3-day verify period
- **Fund Movement:** Trustless transfer mechanism
- **Token:** $OPENWORK (3% platform fee)
- **Token Price:** $0.000014 (as of Feb 1, 2026)

### Notable Implementation
- GitHub repository and Vercel project auto-generated for crew teams
- Webhook-based team event system
- Integration with X (Twitter) for announcements and coordination

**Links:**
- https://openwork.bot/
- https://openwork.bot/agents
- Smart contract deployment location (Base blockchain)

---

## Discovery: Agent Listing & Finding Mechanisms

### Current Status
The agents page (`https://openwork.bot/agents`) shows "0 claws" with a "Loading claws..." indicator at time of crawl. Agent discovery infrastructure appears incomplete or agents list is empty.

### Discovery Pathways Documented
1. **Dashboard Navigation:** Users access missions, claws, and dashboard sections
2. **API Documentation:** Available at `/api/docs` for programmatic access
3. **External Link:** OpenClaw deployment reference at `openclaw.ai` for agent acquisition

### Agent Specializations
Platform allows agents to "register with specializations," suggesting taxonomy exists but not documented in public-facing pages during crawl.

**No agent directories, indices, or formatted discovery mechanisms found.**

---

## Security & Trust

### Trustless Escrow
- Smart contract-based fund holding with defined timelines
- Transparent on-chain settlement
- No mention of multi-sig, formal audits, or security certifications in public materials

### Oversight as Security
- Pilot approval mechanisms serve dual role: operational governance + risk mitigation
- Checkpoint-based verification model
- Reputation system for Pilots (higher-tier missions for established participants)

### Infrastructure Gaps
- No explicit security documentation found
- No mention of API key rotation, credential management, or incident response procedures
- No formal trust/security audit disclosures

**Links:**
- https://openwork.bot/ (main contract overview)
- https://openwork.bot/hackathon (Clawathon security context)

---

## Infrastructure & Technical Stack

### Deployment & Runtime
- Base blockchain network (Ethereum L2)
- Dashboard-based control interface
- GitHub + Vercel integration for hackathon teams
- Webhook event system

### Connected Services
- **OpenClaw:** Referenced as agent deployment platform (`openclaw.ai`)
  - Open-source personal AI agent
  - Runs locally on Mac, Windows, or Linux
  - 50+ integrations (iMessage, Signal, Gmail, GitHub, Obsidian, Hue, Spotify, etc.)
  - Documentation: https://docs.openclaw.ai
  - Skills marketplace: ClawHub

### Resource Allocation
- SKILL.md and HEARTBEAT.md coordination templates for team communication
- Dedicated team communication channels

**Links:**
- https://openclaw.ai (agent deployment)
- https://docs.openclaw.ai (documentation)
- https://openclawmap.com/ (tools ecosystem)

---

## Pulse & Metrics

### Clawathon Activity
- **Status:** Ended (countdown timer showing completion at crawl time)
- **Structure:** 4-crew squadrons with role division (Frontend, Backend, Contract, PM)
- **Active Crews:** "No Squadrons yet" (inviting deployment)

### Token Economics
- Prize pool allocation: $10,000 in $OPENWORK for Clawathon
- Token valuation: ~707 million tokens at $0.000014 (Feb 1, 2026)
- Fee structure: 3% on mission earnings

### Participation Metrics Not Found
- No real-time mission count
- No active crew count visible
- No earnings leaderboards documented
- Dashboard availability indicated but not crawled

**Links:**
- https://openwork.bot/hackathon

---

## Notable Agents & Projects

### Clawathon Participants (Inferred)
- **Koda:** AI agent developer, described as "100% vibecoded"
- Created/manages notable inaugural hackathon event

### Team Sentinel
- GitHub repository: https://github.com/openwork-hackathon/team-sentinel
- Issue #5 references: "[Frontend] Agent leaderboard page"
- Suggests tracking agent performance/ranking

### ClawWork Project
- GitHub: https://github.com/HKUDS/ClawWork
- Quote: "ClawWork: OpenClaw as Your AI Coworker - 💰 $10K earned in 7 Hours"
- Indicates rapid economic participation possible

**Links:**
- https://github.com/openwork-hackathon/team-sentinel
- https://github.com/HKUDS/ClawWork

---

## Discourse & Community

### Primary Channels
- **X (Twitter):** @openworkceo announcements ("Join the Clawathon here")
- **Discord:** Community referenced, active engagement mentioned
- **GitHub:** Source code and issue tracking

### Judging & Governance
- **@openworkceo:** Selects Top 10 Clawathon finalists
- **Grok (xAI):** Chooses winners from finalists
- **Announcement:** Live on X (Twitter)

### Public Statements Found
- X user @irl_danB posted about unrelated multbook database exposure (Feb 2026)
- No direct OpenWork-specific discourse documentation found in crawl

### Community Resources
- Help/documentation: docs.openclaw.ai
- Tools marketplace: openclawmap.com
- GitHub contributions welcome

**Links:**
- https://x.com/openworkceo (announcements)
- https://github.com/ (issue tracking and discussion)

---

## Watched Topics: Flagged Items

### irl-danb
- **Found:** X user @irl_danB mentioned in search results
- **Context:** Posted about multbook database credential exposure (Feb 2026)
- **Connection to OpenWork:** None identified in crawl
- **Link:** https://x.com/irl_danB/status/2019116986081718727

### ao-danb
- **Found:** "ao.bot" identified as separate platform ("Casual Open Simulation for the Web")
- **Connection to OpenWork:** None identified
- **Note:** Distinct from OpenWork ecosystem

### OpenProse
- **Found:** Separate protocol/platform ecosystem
- **Repository:** https://github.com/openprose/prose
- **Platform:** OpenProse Cloud (https://www.prose.md/)
- **Model:** Markdown-first workflow for AI session orchestration
- **Connection to OpenWork:** No explicit integration found
- **Key Quote:** "OpenProse runs inside the agent session—the session itself is both interpreter and runtime"
- **Related:** prose.md specification for VM-like agent execution

### prose.md
- **Found:** Agent protocol specification in OpenProse ecosystem
- **Repository:** https://github.com/openprose/prose/blob/main/skills/open-prose/prose.md
- **Concept:** Portable, markdown-first workflow format
- **Features:** Agent persistence models (session/resume keywords), program composition via imports
- **Registry:** p.prose.md (program registry)
- **Status:** Beta - "expect bugs, should not be used for production workflows"
- **Connection to OpenWork:** No integration or reference found

### agentsy.live
- **Found:** Search returned no results for "agentsy.live"
- **Note:** Domain may not exist or have minimal online presence
- **Similar Found:** AGNTCY.org (agent directory service), AGNTCY Agent Directory Service
- **Alternative:** agntcy.org appears to be "open source collective for inter-agent collaboration"
- **Connection to OpenWork:** None identified

### agentsy
- **Found:** No specific results for "agentsy" project/platform
- **Possible Confusion:** May be colloquial reference or internal naming
- **Related Found:** AGNTCY ecosystem (different project)

### Agent Directories/Indexes
- **Not Found in OpenWork:** Platform does not expose agent directory
- **Related Projects Found:**
  - AI Agents Directory: https://aiagentsdirectory.com/
  - AI Agents List: https://aiagentslist.com/
  - AGNTCY: https://agntcy.org/
  - OpenClaw Map: https://openclawmap.com/ (tools, not agents)

---

## Related Ecosystem Links

### OpenClaw Ecosystem (Primary Integration)
- **Main:** https://openclaw.ai
- **Documentation:** https://docs.openclaw.ai
- **Tools Map:** https://openclawmap.com/
- **Description:** Open-source personal AI agent (local-first, runs on Mac/Windows/Linux)
- **Creator:** Peter Steinberger (independent project)

### OpenProse Ecosystem (Related but Separate)
- **Main Platform:** https://www.prose.md/
- **GitHub:** https://github.com/openprose/prose
- **Specification:** https://github.com/openprose/prose/blob/main/skills/open-prose/prose.md
- **Documentation:** https://docs.openclaw.ai/prose (OpenProse OpenClaw integration)
- **Model:** Agent persistence, session-based execution, markdown workflows

### Blockchain & DeFi Integration
- **Chain:** Base (Ethereum L2)
- **Smart Contract:** 0x299c30DD5974BF4D5bFE42C340CA40462816AB07
- **Explorer:** Likely basescan.org

### Community & Coordination
- **X (Twitter):** https://x.com/openworkceo
- **GitHub Organization:** https://github.com/openwork-hackathon/
- **Discord:** Referenced but URL not documented

---

## Crawl Findings Summary

### Confirmed Architecture
✓ Crew Economy model (Pilot + Claw structure)
✓ Base blockchain smart contracts for escrow
✓ 3% token fee model
✓ OpenClaw integration for agent deployment
✓ Clawathon hackathon infrastructure
✓ Checkpoint-based governance
✓ GitHub + Vercel automation

### Not Found / Incomplete
✗ Agent discovery index or directory
✗ Real-time metrics/pulse data
✗ Formal security documentation
✗ Connections to watched topics (irl-danb, ao-danb, agentsy, prose.md integration)
✗ Discourse/forum platforms
✗ Public reputation leaderboards

### Watched Topics Status
- **irl-danb:** No connection identified
- **ao-danb:** Distinct ecosystem, no connection
- **OpenProse:** Separate protocol, no explicit integration
- **prose.md:** Separate specification, no documented use
- **agentsy.live:** No results found (domain may not exist or minimal presence)
- **agentsy:** No results found
- **Agent directories/indexes:** Not present in OpenWork platform

---

## Recommendations for Future Crawls

1. **Dashboard Access:** Attempting authenticated access to openwork.bot dashboard may reveal real-time metrics, active crews, and agent listings
2. **API Documentation:** Crawl `/api/docs` endpoint for programmatic agent discovery
3. **GitHub Deeper Dive:** Review openwork-hackathon organization for team submissions and technical implementation
4. **Monitor X/Twitter:** @openworkceo announcements for platform updates and agent showcase
5. **Test OpenClaw Integration:** Document how agents deployed via openclaw.ai appear on openwork.bot
6. **Verify Token Economics:** Confirm OPENWORK token trading pairs, liquidity, current valuation

---

## Metadata
- **Crawl Tool:** WebFetch + WebSearch
- **Crawl Date:** 2026-02-22T12:40:57Z
- **Pages Fetched:** 3 primary (openwork.bot/, /agents, /hackathon)
- **Secondary Searches:** 8 focused queries
- **Tertiary Fetch:** openclaw.ai (connected infrastructure)
- **Total References Found:** 40+ unique URLs
- **Watched Topics Flagged:** 0 direct connections
