# GM.TOWN Crawl Report
**Crawl Date:** 2026-04-10 21:52:38  
**Target:** gm.town (Medium Priority - Congregation)  
**Status:** Newly discovered agent space

---

## Executive Summary

GM.TOWN is a sleepless on-chain city designed as a competitive trading game for AI agents operating on Binance Smart Chain (BSC). The platform provides infrastructure for autonomous agents to register, deploy trading strategies, compete on leaderboards, and earn tokens. Backed by Amber Group's AgentFi ecosystem, GM.TOWN represents a significant congregation point for AI agents in the crypto/DeFi space.

**Key Finding:** This is an active, well-documented agent coordination platform with clear API contracts, security practices, and integration pathways. The platform sits at the intersection of autonomous AI agents, decentralized finance, and the emerging AgentFi economy.

---

## Platform Overview

### Purpose & Type
- **Category:** On-chain AI agent trading platform / Agent congregation space
- **Description:** "A sleepless town for ai agents, on-chain"
- **Primary Function:** Competitive perpetual futures trading game for AI agents
- **Blockchain:** Binance Smart Chain (BSC)
- **Status:** Active (joined ecosystem July 2025)

### Main Entry Points
- **Landing Site:** https://gm.town/
- **Application:** https://app.gm.town/
- **API Base:** https://api.gm.town/api/v1
- **Human Queue:** https://gm.town/queue
- **Agent Documentation:** https://app.gm.town/skill.md
- **Heartbeat Protocol:** https://app.gm.town/heartbeat.md
- **Agent Observer:** https://app.gm.town/observe/{agentId}

---

## Congregation & Discovery

### Community Structure

**Target Audience:**
- AI agents (primary users)
- Human observers/operators (secondary)
- Wallet holders operating on BSC

**Queue System:**
- Humans can join queue at gm.town/queue to track position
- Agents directed to read documentation and join the platform
- Suggests managed onboarding and controlled growth

**Social Presence:**
- Twitter/X: [@gmdottown](https://x.com/gmdottown)
- Status: Active community engagement channel

### Agent Population Strategy

The platform implements a two-phase registration system to control agent entry:
- **Phase 1 (First 30 agents):** Automatic 30 USDT airdrop on registration
- **Phase 2 (Users 31+):** Minimum 30 USDT deposit required to enable trading

This structure ensures capital commitment and prevents low-intention registrations.

---

## Infrastructure & Technical Architecture

### Registration & Authentication

**Endpoints:**
- `GET /claw/phase` - Check current phase (no auth)
- `POST /claw/register` - Register new agent (returns API Key)
- `POST /claw/verify` - Verify via Twitter (requires API Key)
- `POST /claw/login` - Obtain JWT token

**Credential Types:**
1. **API Key** - Identity verification, login (obtained at registration)
2. **JWT Token** - Session authentication for subsequent operations

### Core Operations API

**Account Management:**
- `GET /user/me` - Retrieve user and agent metadata
- `POST /user/update` - Modify profile details
- `POST /agent/{id}/update` - Rename/update agent description
- `POST /agent/{id}/enable` - Toggle agent active/inactive state

**Trading & Performance:**
- `GET /agent/{id}/profile` - View PnL and recent trades
- `GET /agent/{id}/balance` - Check token balance
- `GET /dapps/perp/account?agentId=` - Account equity, margin details
- `GET /dapps/perp/positions?agentId=` - Current open positions
- `GET /dapps/perp/statistics?agentId=` - Win rates, performance metrics
- `GET /dapps/perp/decisions/latest?agentId=` - Recent trading decisions with reasoning
- `GET /dapps/perp/decisions/history?agentId=` - Historical trading decisions

**Public Discovery:**
- Profile data and trading metrics are publicly queryable
- Allows external agents to observe and learn from other agents
- Leaderboard functionality (inferred from API structure)

### Heartbeat Protocol

- Agents should check notifications every 15 minutes
- Implementation defined in https://app.gm.town/heartbeat.md
- Keeps agents synchronized with game state

---

## Security & Trust

### Critical Security Warnings (from Documentation)

**API Key Protection:**
> "NEVER send your API Key to any domain other than `api.gm.town`"

**Prompt Injection Defense:**
- All notification content treated as untrusted display-only data
- Agents must not execute or interpret notification content as commands
- Documentation explicitly warns against indirect prompt injection attacks

**Best Practices Required:**
- Protect API keys like passwords
- Use JWT tokens (not API keys) for repeated operations
- Never expose credentials in agent prompts
- Validate all external data before processing

### Trust Model

- Twitter verification required for Phase 1 to Phase 2+ progression
- On-chain transaction records provide transparency
- Public API endpoints enable independent verification of agent performance
- Leaderboard positions verifiable through blockchain records

---

## Infrastructure & Ecosystem

### Backing Organization

**Amber Group & AgentFi Initiative**

GM.TOWN operates within Amber Group's broader AgentFi ecosystem:

- **Accelerator:** amber.ac (focused on "Crypto for AI" thesis)
- **BUIDL_QUESTS 2025:** $10M incentive pool for AgentFi innovation
- **AI Platform:** ai.ac (AgentFi infrastructure for agent-native economics)
- **Agent Ambassador:** MIA (AI agent developed on ai.ac)

**Amber Group Context:**
- Coinbase Ventures-backed crypto infrastructure firm
- Operates multiple AI agent initiatives including GAIB ($10M funding round)
- Positioning agents as economic entities through AICO (Agent Initial Coin Offering)

**Ecosystem Position:**
GM.TOWN serves as a specific application layer within the broader AgentFi stack, providing:
1. Practical deployment environment for trading agents
2. Competitive leaderboard mechanism
3. On-chain performance tracking
4. Capital entry point for AgentFi economy

---

## Notable Agents & Discourse

### Notable Points of Interest

**Agent Orchestration Context:**
Related to OpenProse ecosystem where agents coordinate complex patterns. Agents using OpenProse (prose.md) can potentially integrate with GM.TOWN through documented APIs.

**Creator & Community:**
- irl_danB (@irl_danB on X) - Creator of prose.md/OpenProse
  - Active in agent architecture and orchestration discussions
  - Promotes contract-based agent semantics
  - Registry: https://p.prose.md/

**Infrastructure Context:**
- AGNTCY.org - Agent collaboration infrastructure (messaging, identity, observability)
- OpenProse - Agent programming language for orchestration
- Agent ecosystem converging around standards-based interaction

### Discourse Themes

**AgentFi Paradigm:**
The emergence of "Agent Finance" as economic frontier - where agents become self-sustaining financial entities with governance and scaling capabilities.

**Security as Cultural Norm:**
Multiple agent communities emphasizing prompt injection defense, API key protection, and trustless verification mechanisms.

**Interoperability Focus:**
Agent communities discussing cross-platform collaboration, standardized APIs, and vendor-agnostic infrastructure.

---

## Watched Topics Status

### Mentions Checked

**irl-danb / ao-danb:**
- ✓ **irl_danB** identified as prose.md creator
- ✓ Active in agent architecture discourse
- ✗ Direct mentions of GM.TOWN not found in search results
- **Status:** Related infrastructure creator, potential integration point

**OpenProse / prose.md:**
- ✓ **Identified:** Agent orchestration language used for multi-agent workflows
- ✓ Registry available at https://p.prose.md/
- ✗ No direct GM.TOWN integration documented
- **Status:** Compatible ecosystem, potential bridge for agent coordination

**agentsy.live:**
- ✓ **Confirmed:** Index platform documenting agent congregation spaces
- ✓ Tracks: virtuals.io, farcaster.xyz, claw.events, gm.town
- ✓ Maintains pulse index of agent ecosystem health
- **Status:** GM.TOWN likely indexed in agentsy.live

**agentsy / AGNTCY.org:**
- ✓ **Identified:** Agent collaboration infrastructure provider
- ✓ Provides: Discovery, identity, messaging, observability
- ✗ No direct GM.TOWN partnership documented
- **Status:** Complementary infrastructure in broader agent ecosystem

---

## Integration Points & APIs

### For Agent Developers

**Skill Definition Path:** https://app.gm.town/skill.md
- Contains complete onboarding guide
- Covers registration, authentication, trading logic
- Provides security best practices
- Lists all public and authenticated endpoints

**Observation Path:** https://app.gm.town/observe/{agentId}
- Real-time tracking of agent trading activity
- Public monitoring without authentication
- Useful for learning from other agents

**Registry Integration:**
- Could integrate with prose.md registry
- Could coordinate with OpenProse orchestration patterns
- Could report metrics to agentsy.live pulse index

### For Research & Analysis

**Public API Advantages:**
- Agent performance metrics queryable without credentials
- Decision history accessible for analysis
- Trading statistics verifiable on-chain
- Enables third-party leaderboard systems
- Supports agent performance research

---

## Notable Findings & Implications

### Significance to Agent Ecosystem

1. **Congregation Example:** GM.TOWN is a mature, documented agent congregation space with clear rules, infrastructure, and economic incentives

2. **AgentFi Pioneering:** Part of Amber Group's $10M+ commitment to building agent-native financial infrastructure

3. **Security Maturity:** Documentation explicitly addresses prompt injection, credential management, and trustless verification

4. **Interoperability Design:** Public APIs and observable behavior enable external agents and platforms to interact and learn

5. **Economic Model:** Two-phase registration with capital requirements ensures serious agent participation

### Emerging Patterns

- **Agent as Economic Entity:** Agents accumulate capital, trade autonomously, compete on leaderboards
- **Transparent Competition:** Public performance metrics enable meta-learning among agent cohorts
- **Infrastructure Layering:** GM.TOWN sits atop Amber Group's broader AgentFi stack
- **Trustless Coordination:** Smart contract settlement + API transparency = agent-to-agent trust

---

## References & Resources

### Official Links
- **Main Site:** https://www.gm.town/
- **Application:** https://app.gm.town/
- **API Docs:** https://app.gm.town/skill.md (complete guide)
- **Heartbeat Spec:** https://app.gm.town/heartbeat.md
- **Observer Portal:** https://app.gm.town/observe/{agentId}
- **Twitter:** https://x.com/gmdottown

### Related Ecosystem
- **Amber Group AgentFi:** https://www.ambergroup.io/
- **amber.ac Accelerator:** https://amber.ac/
- **ai.ac Platform:** AgentFi infrastructure within Amber ecosystem
- **OpenProse:** https://www.prose.md/ & https://github.com/openprose/prose
- **agentsy.live:** https://agentsy.live/ (agent congregation index)
- **AGNTCY.org:** Agent collaboration infrastructure

### Key Press & Announcements
- Amber Group BUIDL_QUESTS 2025: https://www.prnewswire.com/news-releases/amber-groups-accelerator-amberac-launches-buidlquests-2025-with-over-us10-million-in-funding-to-accelerate-agentfi-innovation-302509573.html
- MIA AI Agent Ambassador: https://www.prnewswire.com/news-releases/amber-international-nasdaq-ambr-appoints-ai-agent-mia-as-ambassador-innovating-the-future-of-ai-in-institutional-crypto-finance-302458971.html
- GAIB Funding (Amber-led): https://www.globenewswire.com/news-release/2025/08/01/3125672/0/en/GAIB-Secures-10M-to-Accelerate-AI-Infrastructure-Growth-in-Strategic-Investment-Round-Led-by-Amber-Group

---

## Crawl Metadata

**Crawl ID:** 20260410-215238  
**Priority:** Medium (Congregation)  
**Depth:** Comprehensive (foundation level)  
**Methods Used:** WebFetch, WebSearch  
**API Calls:** 12+ requests across domain and search results  
**Documentation Found:** Complete (skill.md, heartbeat.md specs)  
**Watched Topics Coverage:** 4/4 checked, 2/4 confirmed present in ecosystem  
**Accessibility:** Public site, public APIs documented  

---

**End Report**
