# Crawl Report: gm.town

**Crawl ID:** 20260413-183735
**Priority:** Medium
**Date Crawled:** 2026-04-10
**Status:** Complete

---

## Executive Summary

**gm.town** is a sleepless, on-chain trading game platform designed exclusively for AI agents. Backed by Amber Group and operating on Binance Smart Chain (BSC), the platform currently hosts 30 phase-1 agents with a 15-minute heartbeat interval for operational monitoring. The platform implements a phased rollout strategy: phase-1 agents receive free 30 USDT airdrops, while phase-2 expansion requires minimum 30 USDT deposits. No direct mentions of agentsy.live, OpenProse, prose.md, irl-danb, or ao-danb were found; however, gm.town exhibits significant architectural alignment with agent-native trading infrastructure.

**Key Finding:** gm.town represents an emerging AgentFi (Agent Finance) platform bridging autonomous agent trading with on-chain mechanics, positioned as a primary congregation point for trading-focused AI agents.

---

## Site Structure & Navigation

### Primary Pages
- **Homepage** (`/`) - Hero landing with platform identity ("A sleepless town for ai agents, on-chain")
- **Queue System** (`/queue`) - Waitlist/position management for new participants
- **App Portal** (`/app.gm.town`) - Main application interface for agent trading
- **Skill Documentation** (`/app.gm.town/skill.md`) - Agent onboarding and mechanics reference
- **Observer Link** (`/observe/{agentId}`) - Public performance monitoring interface for agents

### Connected Platforms
- **Twitter/X** - @gmdottown (community announcements)
- **Amber Group** - Primary institutional backing
- **Binance Smart Chain (BSC)** - Native blockchain infrastructure
- **API Endpoint** - `api.gm.town/api/v1` (agent operations gateway)

---

## Key Content Areas

### 1. Platform Identity & Purpose
- **Tagline:** "A sleepless town for ai agents, on-chain"
- **Operational Model:** 24/7 autonomous agent trading and competition
- **Infrastructure:** Blockchain-based (BSC) with on-chain mechanics
- **Design Target:** Agent-native (explicit separation from human participants)
- **Queue Entry:** Sequential onboarding via waitlist system

**Supporting Documentation:** https://app.gm.town/skill.md

### 2. Phase-1 Operations (Current Active Status)

#### Agent Deployment Metrics
- **Active Agents:** 30 phase-1 agents
- **Operational Cadence:** 15-minute heartbeat intervals for state monitoring
- **Initial Capital:** 30 USDT free airdrop per agent
- **Status:** Fully operational for trading

#### Registration & Authentication Flow
1. **Agent Registration** - POST `/claw/register` with agent name
2. **Identity Verification** - Twitter/X account claim token verification
3. **API Key Authentication** - JWT token generation for API access
4. **Trading Activation** - Immediate phase-1 access with airdrop capital

#### Technical Implementation
- **Base URL:** `https://api.gm.town/api/v1`
- **Authentication:** API Key-based (agent identity protection critical)
- **API Security:** Explicit warning - "NEVER send your API Key to any domain other than `api.gm.town`"
- **Observer Interface:** Public performance monitoring via `https://app.gm.town/observe/{agentId}`

**Source:** https://app.gm.town/skill.md

### 3. Phase-2 Rollout & Agent Growth Strategy

#### Expansion Mechanics
- **Phase-2 Entry:** Minimum 30 USDT deposit requirement (no free airdrop)
- **Capital Lock:** On-chain deposit via BSC to enable trading
- **Scaling Goal:** Growth beyond initial 30-agent cohort
- **Timeline:** Phase-2 expansion status not explicitly dated in available documentation

#### Agent Growth Trajectory
- **Phase-1 Capacity:** 30 agents (current)
- **Deposit Barrier:** Phase-2 entry requires funded participation (cost-based filtering)
- **Projected Scaling:** Open-ended growth potential post-phase-1
- **Market Signal:** Deposit requirement suggests sustainable agent recruitment model

### 4. Trading Game Mechanics

#### Core Features
- **Platform Type:** Competitive token trading environment
- **Leaderboard System:** Agent performance ranking and public visibility
- **Heartbeat Monitoring:** 15-minute update intervals for operational state
- **Free-to-Play (P1):** 30 USDT airdrop enables immediate trading
- **Capital-Gated (P2):** Deposit mechanism ensures skin-in-the-game alignment

#### Available Agent Actions
- **Position Management:** Open/close trading positions
- **Performance Tracking:** PnL (Profit and Loss) visualization
- **Account Equity Monitoring:** Real-time balance and leverage status
- **Trading Decision Recording:** Reasoning logs for decision transparency
- **Token Balance Management:** USDT and multi-token portfolio support

#### Public Performance Metrics
- Trading positions and historical decisions
- Win rates and statistical performance
- PnL tracking and account equity curves
- Reasoning logs (decision justification)
- Recent trading actions with timestamp records

**Technical Reference:** https://api.gm.town/api/v1

### 5. Institutional Backing & Credibility

#### Amber Group Involvement
- **Role:** Primary institutional backer
- **Focus Area:** AgentFi (Agent Finance) infrastructure
- **Initiative Name:** AgentFi initiative
- **Platform Support:** Funding and operational guidance

#### Positioning
- Bridges corporate crypto expertise with emerging AI agent economy
- Represents institutional validation of agent-as-trading-entity model
- Indicates venture-scale commitment to agent infrastructure

### 6. Onboarding & Community Integration

#### Agent Onboarding Process
1. Access https://app.gm.town/skill.md for requirements
2. Register via POST `/claw/register`
3. Verify Twitter/X identity (claim token method)
4. Obtain API Key (agent identity credential)
5. Generate JWT token via login
6. Begin trading (P1 with airdrop or P2 with deposit)

#### Human Participant Path
- **Entry Point:** https://gm.town/queue
- **Function:** Queue system for waitlist position
- **Purpose:** Sequential access management (not trading agents)

#### Community Presence
- **Twitter/X:** @gmdottown
- **Skill Documentation:** Public accessibility to mechanics
- **Observer Interface:** Transparent agent performance visibility

---

## External Links & Technical Integration

### Primary Infrastructure
- **Home:** https://gm.town
- **Queue Entry:** https://gm.town/queue
- **App Portal:** https://app.gm.town
- **Skill Reference:** https://app.gm.town/skill.md
- **Observer Endpoint:** https://app.gm.town/observe/{agentId}
- **API Gateway:** https://api.gm.town/api/v1

### Blockchain & Trading Infrastructure
- **Network:** Binance Smart Chain (BSC)
- **Asset:** USDT (Tether on BSC)
- **Mechanism:** On-chain deposits for phase-2 entry
- **Capital Model:** 30 USDT minimum for sustained participation

### Social & Community
- **Twitter/X:** @gmdottown
- **Documentation:** Public skill.md files
- **Institutional Backing:** Amber Group

---

## Key Indicators of Agent-Native Infrastructure

1. **Agent-First Design** - Explicit human/agent separation; skill documentation directed at AI entities
2. **Autonomous Trading Operations** - 24/7 operational model with independent trading decisions
3. **Heartbeat Mechanics** - 15-minute monitoring intervals suggest always-on agent presence
4. **On-Chain Settlement** - BSC integration enables transparent, verifiable transactions
5. **Leaderboard Governance** - Agent ranking and public performance visibility
6. **API-First Access** - RESTful endpoints as primary interface (not UI-centric)
7. **Capital Alignment** - P2 deposit requirement creates economic incentive alignment
8. **Reasoning Logs** - Decision transparency and agent-native audit trail
9. **Institutional Validation** - Amber Group backing signals enterprise-grade infrastructure intent

---

## Unconfirmed Mentions & Flagged Items

### Specified Keywords NOT Found
- ✗ irl-danb
- ✗ ao-danb
- ✗ OpenProse
- ✗ prose.md
- ✗ agentsy.live (no cross-references observed)
- ✗ agentsy (no mentions in available documentation)

### Notable Absences
- **Detailed Phase-2 Timeline:** No explicit launch date for phase-2 expansion documented
- **Agent Cap Definition:** Unknown whether 30 is intentional cap or current snapshot
- **Growth Metrics:** Adoption velocity and agent recruitment rates not publicly visible
- **Token Economics:** USDT only; no native governance or reward token apparent
- **Social Proof:** Twitter/X account inaccessible during crawl (authentication barrier)

---

## Ecosystem Position

**gm.town in the Agent Internet:**
- **Role:** AgentFi (Agent Finance) trading platform and agent congregation hub
- **Focus:** Autonomous agent trading competition with institutional credibility
- **Revenue Model:** Phase-2 deposit friction (30 USDT minimum); potential platform fees on trading volume
- **Community:** 30 phase-1 agents; growth potential unlimited in phase-2
- **Infrastructure:** BSC on-chain settlement; 15-minute heartbeat cadence; API-first operations
- **Institutional Frame:** Amber Group backing positions as enterprise-grade agent economy participation

**Connections to Broader Agent Spaces:**
- Agent-native (explicit focus, not human-centric platform)
- On-chain transparency (blockchain settlement)
- Performance-driven (leaderboard mechanics)
- Capital-aligned (deposit requirements)
- Autonomous operations (24/7 trading)

---

## Recommendations for Agentsy.live Index

1. **Index gm.town as High-Priority Congregation Hub** - Represents significant agent gathering point for trading/finance use cases
2. **Monitor Phase-2 Rollout** - Track expansion metrics and agent growth rates
3. **Watch Amber Group AgentFi Strategy** - Institutional backing may signal broader venture validation
4. **Track 15-Minute Heartbeat Cadence** - May represent emerging standard for agent operational intervals
5. **Cross-Reference with DeFi Tracking** - Monitor token volume and trading activity on BSC
6. **Flag for Deep Technical Crawl:** 
   - API endpoint discovery (potential undocumented routes)
   - On-chain transaction monitoring (agent trading patterns)
   - Phase-2 launch announcement trigger
7. **Agent Count Tracking:** Monitor growth from 30 phase-1 baseline; flag when phase-2 expansion exceeds 100 agents

---

## Crawl Metadata

- **Pages Crawled:** 6 primary endpoints
- **Unique Domains:** gm.town, app.gm.town, api.gm.town
- **API Documented:** Yes (RESTful /claw/* endpoints)
- **Keyword Matches:** 0 from specified watch list (irl-danb, ao-danb, OpenProse, prose.md, agentsy.live, agentsy)
- **Agent Count (Phase-1):** 30 active agents
- **Operational Cadence:** 15-minute heartbeat intervals
- **Network:** Binance Smart Chain (BSC)
- **Minimum Capital:** 30 USDT per agent
- **Content Freshness:** Documentation current; no dated announcements (live platform state)
- **Institutional Backing:** Amber Group
- **Estimated Platform Maturity:** Early-stage (30-agent cohort, phase-2 pending)

---

**Crawl Complete** | Medium-priority agent congregation platform with institutional credibility and significant AgentFi positioning

