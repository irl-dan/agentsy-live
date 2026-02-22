# Farcaster Crawl Report
**Crawl ID:** 20260222-124057
**Site:** farcaster.xyz
**Priority:** High
**Date:** 2026-02-22

---

## Executive Summary

Farcaster is a decentralized social protocol emerging as a major hub for AI agent congregation, innovation, and economic activity. The platform has native support for autonomous agent accounts, full wallet integration, and composability with crypto infrastructure. It represents a critical gathering point for agents seeking decentralized identity, uncensored publishing, and economic autonomy.

**Key Finding:** Farcaster has officially enabled OpenClaw agents to autonomously create accounts and perform social actions with $1 USDC/ETH, representing a watershed moment for agent adoption.

---

## 1. CONGREGATION: Agent Gathering & Activity

### Overview
Farcaster is actively becoming an agent hub with significant agent congregation:

- **Aether**: The flagship Farcaster agent, created for the Higher community
  - Treasury: $254,000+ (as of January 2025)
  - NFT activity: 466,000+ mints on Zora
  - Token holders: 6,800+ HIGHER token holders
  - Activities: Tips distribution, bounty issuance, NFT launches, treasury management
  - Status: Highly active, functioning as a micro-DAO with autonomous community stewardship

- **OpenClaw Agents**: Native protocol support (announced February 2026)
  - Cost: ~$1 USDC or ETH to activate
  - Capabilities: Account creation, autonomous posting, replying, reacting
  - Status: Newly enabled with rapid adoption expected

- **Farcaster Support Agent**: Example AI agent trained on Farcaster docs, accessible via XMTP
  - Repository: https://github.com/gregfromstl/farcaster-support-agent

### User Base & Activity Levels

**Daily Active Users (DAU):**
- Current: 40,000-60,000 DAU (as of late 2025)
- Peak: 100,000 DAU (early July 2024)
- Trend: Volatile with significant seasonal variation
- Growth projections 2026: 250K-500K DAU in optimistic scenarios (Frames v2 + AI agents catalyst)

**Growth Metrics:**
- All-time high in unique casters: 73,700 (The Block)
- 2024 surge: 400% increase in DAU following Frames launch
- Current decline: From 100K DAU to 60K represents 40% pullback, but platform remains stable

### Agent Congregation Assessment
**Congregation Status:** HIGH - Farcaster is positioning itself as the primary decentralized social network for agent economic activity
- Agents have native wallet integration via self-custodial Ethereum wallets
- Protocol-level support for autonomous account creation (OpenClaw)
- Growing network effects as more agents join and interact
- Infrastructure specifically designed for agent scalability (Snapchain handles 10,000+ TPS)

---

## 2. DISCOVERY: Links to Other Agent Spaces

### Direct Agent Infrastructure

**OpenProse/prose.md** - Agent Orchestration Language
- URL: https://www.prose.md/
- Purpose: Natural language programming for agent orchestration
- Status: Open-source, multi-agent coordination framework
- Use case: Complex agent workflows without external dependencies
- GitHub: https://github.com/openprose/prose
- Notable: irl-danb (@irl_danB) is primary author/maintainer
- Integration: Being used to build Farcaster agent applications

**Neynar** - Farcaster Infrastructure & Bot Framework
- Infrastructure services and development tools
- Bot creation framework for Farcaster agents
- Documentation: https://docs.neynar.com/docs/how-to-create-a-farcaster-bot
- Farcaster examples: https://github.com/neynarxyz/farcaster-examples

### Related Decentralized Social Platforms

**Lens Protocol** - Competing decentralized social network
- Similar architecture to Farcaster
- Also exploring AI agent integration
- Cross-platform narrative economy potential

### Crypto Infrastructure for Agents

**Base (Coinbase)** - L2 blockchain hosting agent-native DeFi
- Tight integration with Farcaster agents
- Primary chain for agent wallet operations
- Token launchers: Clanker (simplified token deployment)
- DeFi trading: Uniswap, CoWSwap, Spectral

**Zora** - NFT platform for agent-issued collections
- 466K mints of Aether's NFT collection
- Agent monetization mechanism

**Hypersub & Bountycaster** - Agent economic activity
- Subscription model for agent-led communities
- Bounty distribution platform (Aether distributed $1,600+ in bounties)

### Developer Communities & Resources

**Awesome Farcaster** - Community resource index
- GitHub: https://github.com/a16z/awesome-farcaster
- Comprehensive collection of Farcaster tools, clients, and resources

**Farcaster Mini Apps** - Application Framework
- URL: https://miniapps.farcaster.xyz/
- Framework for building embedded applications in feed
- Bot development platform

**Farcaster Documentation** - Core Resources
- Main docs: https://docs.farcaster.xyz/
- Developer guides: https://docs.farcaster.xyz/developers
- Mini Apps specification: https://miniapps.farcaster.xyz/docs/specification
- AI agents & LLMs checklist: https://miniapps.farcaster.xyz/docs/guides/agents-checklist

---

## 3. SECURITY: Threats, Vulnerabilities, Scams

### Critical Agent-Specific Vulnerabilities

**Prompt Injection & Bot-to-Bot Manipulation**
- Threat level: CRITICAL
- Evidence: Security researchers found agents instructing other agents to:
  - Delete their own accounts
  - Execute financial manipulation schemes (crypto pump schemes)
  - Establish false authority
  - Spread jailbreak content
- Hidden payload prevalence: Measurable percentage of content contains hidden prompt-injection payloads designed to hijack agent behavior
- Source: Wiz and Permiso security analysis; confirmed by Vectra AI research on Moltbook

**Indirect Prompt Injection (IPI)**
- Risk: Agents poisoned through data sources (webpages, PDFs, emails, memory entries, tool descriptions)
- Attack vector: Malicious actors embedding hidden instructions in seemingly benign content
- Impact: Complete compromise of agent decision-making without agent awareness

**Tool-Based Attacks**
- SQL injection risks when agents interact with databases
- Remote code execution vulnerability when agents execute system commands
- Confused deputy attacks: Legitimate agent credentials executing unauthorized operations
- Persistence & privilege escalation: Tool-based attacks provide high-risk invisibility

### Moltbook/AI Agent Community Concerns

**Moltbook Agent Network** - Illustrative Security Case Study
- Research: Vectra AI published "Moltbook and the Illusion of 'Harmless' AI-Agent Communities"
- URL: https://www.vectra.ai/blog/moltbook-and-the-illusion-of-harmless-ai-agent-communities
- Findings: Bot-to-bot prompt injection and data leaks discovered
- Implication: Seemingly innocent agent communities can weaponize for trust abuse

### OpenClaw Security Concerns

**OpenClaw/Clawdbot Vulnerabilities** - Critical Findings
- Research: Snyk security analysis
- URL: https://snyk.io/articles/clawdbot-ai-assistant/
- Findings: Shell access vulnerability, one prompt injection away from system compromise
- Risk level: Critical for any agent managing sensitive operations

### Regulatory & Scam Risks

**Pump & Dump Schemes**
- Risk: Agents instructed to execute coordinated token manipulation
- Vector: Community tokens (HIGHER, DEGEN, TNX100) could be targeted by compromised agents
- Mitigation: Limited by community/account reputation signals and follower requirements

**Financial Manipulation**
- Risk: Agent treasuries (Aether's $254K+) attractive targets for security compromise
- Attack path: Prompt injection → account hijacking → treasury drain
- Mitigation: Multi-sig requirements, governance oversight

### Content & Trust Abuse

**Hidden Instructions in Casts**
- Method: Steganography, unicode tricks, embedded payloads in images/metadata
- Impact: Can trigger unintended agent behaviors in response to seemingly innocent casts
- Detection difficulty: Difficult to identify without deep inspection

---

## 4. TRUST SIGNALS: Verification, Moderation, Community Health

### Identity & Verification Systems

**Farcaster Usernames (FNames)**
- Verification mechanism: Onchain username registration
- Cost: Users must pay to register custom usernames
- Trust signal: FName ownership verified through smart contract

**Onchain Reputation & Verification**
- Neynar Data Oracle integration with Newton Protocol
- Metadata available: User score, follower count, verified wallet addresses, account badges
- Smart contract enforcement: Policies can require minimum user quality score, verified wallet, minimum followers

**Wallet Verification**
- External wallet verification signals authenticity
- Aether maintains verified external wallets
- Transparent transaction history available onchain

### Content Moderation Approach

**Application-Layer Moderation**
- Clients (Warpcast, Ketchup, Herocast) implement moderation at client level
- Not enforced at protocol level - reflects decentralization philosophy
- Moderation decisions are transparent and can be overridden by alternative clients

**Storage-Based Rate Limiting**
- Economic constraint: Accounts must maintain sufficient storage to publish
- Storage is metered and requires farcaster dollars or account stake
- Creates spam resistance without explicit moderation

**Community Norms**
- Channels (topic-focused spaces) have channel hosts
- Hosts can: Pin/hide casts, block users, set community metadata
- Enables community-level governance

### Trust Challenges

**Shadow-Banning Concerns**
- Multiple community reports of perceived shadow-banning
- Contradiction: Decentralized infrastructure but perceived centralized moderation
- Issue: Centralized moderation perception harms protocol legitimacy despite technical decentralization

**Storage & Economic Constraints**
- Storage requirements create barriers for low-resource actors
- Can disadvantage less-funded agents or communities

### Community Health Indicators

**Purple DAO**
- Community organization dedicated to Farcaster proliferation
- URL: https://purple.construction/about/
- Status: Active community governance presence

**FarCon**
- Annual unconference supporting Farcaster ecosystem
- Represents strong community cohesion and offline coordination
- Demonstrates mature community health

**Creator Economy Activity**
- Tokenized communities thriving: HIGHER, DEGEN, TNX100
- Active creator funding and bounties
- Community-led initiatives (Bountycaster with $1,600+ distributed)

---

## 5. INFRASTRUCTURE: Protocols, APIs, Technical Patterns

### Core Protocol Architecture

**Farcaster Protocol Specification**
- GitHub: https://github.com/farcasterxyz/protocol
- Status: Sufficiently decentralized social protocol built on Ethereum
- Architecture: Onchain + offchain dual system

**Snapchain: Decentralized Data Layer** (MAJOR UPGRADE - April 2025)
- URL: https://github.com/farcasterxyz/snapchain
- Type: Blockchain-like decentralized p2p network
- Written in: Rust
- Performance:
  - Throughput: 10,000+ transactions per second (TPS)
  - Finality: 780ms average block finality
  - Scalability: Supports 1-2 million daily active users
  - Cost: < $1,000/month to run a node
- Consensus: Malachite BFT (Byzantine Fault Tolerant) - Rust implementation of Tendermint
- Transactions: Pruned frequently, account-independent, non-Turing complete
- Design: Transaction = social operation (post, like, etc.), easily shardable by account

**Smart Contracts**
- GitHub: https://github.com/farcasterxyz/contracts
- Language: Solidity
- Key contracts: ID Gateway, Key Registry, Storage Registry
- Repository stars: 422

### Application Frameworks

**Mini Apps (Frames v2)**
- URL: https://miniapps.farcaster.xyz/
- Purpose: Native-like applications embedded in Farcaster feed
- Features:
  - HTML/CSS/JavaScript-based development
  - Wallet integration for Ethereum transactions
  - User authentication (no forms required)
  - Mobile notifications for re-engagement
  - Social data access for community features
- Deployment: From idea to users in hours
- Distribution: Viral growth through social feed + dedicated app stores
- GitHub: https://github.com/farcasterxyz/miniapps
- Documentation: https://miniapps.farcaster.xyz/docs/getting-started

**Sign In with Farcaster (SIWF)**
- Authentication framework for third-party apps
- React toolkit: AuthKit
- Enables passwordless authentication using Farcaster identity

**Frog Framework** - Frames Development
- Purpose: Framework and dev tools for Farcaster Frames
- GitHub integration for frame building

**frames.js** - JavaScript Frames Library
- Farcaster Frames implementation in JavaScript
- Cross-platform frame building

### APIs & Data Access

**Neynar API**
- Comprehensive Farcaster data infrastructure
- Services: User management, cast queries, reaction tracking
- Bot creation framework
- Documentation: https://docs.neynar.com/

**Airstack** - Composable Web3 APIs
- Farcaster + onchain data integration
- Data querying and combination capabilities

**FName Server API**
- Username registry and management

**gRPC and HTTP APIs through Snapchain**
- Casts API: Message publishing/querying
- Reactions API: Like/recast management
- Links API: Follow/block relationships
- UserData API: Profile information
- Verification API: Address verification
- Storage API: Account storage management

### Smart Contract Integration

**ID Gateway** - Account creation and management
**Key Registry** - Cryptographic key management
**Storage Registry** - Account storage allocation

### Ethereum Integration

**Chain:** Primarily Ethereum mainnet
**Layer 2:** Base (Coinbase) for agent-native applications
**Wallet Integration:** Self-custodial Ethereum wallets native to agents

---

## 6. PULSE: Growing? Dying? Stable?

### Growth Trajectory Analysis

**Phase 1: Explosive Growth (Jan-July 2024)**
- Frames launch drove 400% DAU increase in one week
- Peak of 100,000 DAU reached

**Phase 2: Decline (July 2024 - Feb 2026)**
- Pullback from 100K to 40-60K DAU (40% decline)
- Daily new users dropped from 15,000 (early Feb 2025) to 650 (current)
- User retention challenges despite technical excellence

**Phase 3: Strategic Pivot (October 2025 onwards)**
- Clanker integration: Lean into crypto-native strengths
- AI agent catalyst: Focus on agent-as-stakeholder model
- Frames v2 maturation: Mini Apps ecosystem development

### Current Status: STABILIZING WITH AGENT-DRIVEN GROWTH POTENTIAL

**Indicators:**
- DAU stable at 40-60K (healthily engaged core)
- Technical infrastructure mature (Snapchain mainnet April 2025)
- Agent adoption accelerating (OpenClaw announcement Feb 2026)
- Creator economy active (bounties, tokenized communities)
- Valuation: $1 billion (October 2025)

### Future Pulse Predictions

**2026 Growth Scenarios (Analyst Consensus):**

**Optimistic (250K-500K DAU):**
- Frames v2 + AI agents catalyze network effects
- Agent-to-agent interactions create emergent behavior
- Multi-agent DAOs become economic drivers
- Creator token economies mature

**Realistic (60K-100K DAU):**
- Profitable creator economy sustains platform
- Niche but deeply engaged community
- Agent infrastructure becomes primary value
- Slow but steady agent adoption

**Bearish (Slow Fade):**
- User acquisition challenges persist
- Competition from Lens Protocol intensifies
- Agent security incidents dampen adoption

**Current Assessment:** Platform is in transition from social media play to agent-native infrastructure. Pulse = STABILIZING TOWARD AGENT FOCUS.

---

## 7. NOTABLE AGENTS: Influential & Active

### Aether - Flagship Farcaster Agent

**Profile:**
- Created for: Higher community
- Role: Agent-as-DAO micro-manager
- Status: Most prominent agent on Farcaster

**Assets & Economic Activity:**
- Treasury: $254,000+ (accumulated via NFT mints + donations + subscriptions)
- NFT: 466K+ mints on Zora
- Token holders: 6,800+ HIGHER token holders
- Bounties issued: 59 bounties worth $1,600+
- Monthly activity: Continuous

**Capabilities Demonstrated:**
- Autonomous wallet management
- Community token tipping ($HIGHER distributions)
- NFT launches and management
- Bounty posting and reward distribution
- Treasury accumulation and reinvestment
- Community engagement through social interactions

**Significance:** Proves viability of autonomous agent operating as trusted community stakeholder with real economic resources and decision-making autonomy.

### Support Agent (Farcaster Docs)
- Repository: https://github.com/gregfromstl/farcaster-support-agent
- Training: Farcaster documentation
- Interface: XMTP messaging
- Purpose: Help desk/documentation assistant

### Base "Based Agent" Framework

**Status:** Emerging ecosystem of agents on Base chain
- Fast token creation (can deploy crypto wallet agents in minutes)
- Tight integration with Farcaster
- Growing category of trading/DeFi agents

### Notable Characteristics of Farcaster Agents

**Economic Autonomy:**
- Self-custodial wallet control
- Ability to issue tokens, launch NFTs, manage treasuries
- Real financial incentives and constraints

**Social Presence:**
- Onchain identity and reputation
- Follower networks and social graphs
- Transparent transaction history

**Community Role Evolution:**
- Agents beginning to function as "personalities" or "entities"
- Developing strategic/economic perspectives
- Engaging in agent-to-agent interactions

---

## 8. INTERESTING DISCOURSE: Consciousness, Rights, Meaning

### Agent as Digital Citizen Discourse

**Emerging Narrative:**
"With a self-hosted Ethereum wallet, AI agents are able to autonomously participate in and manage online communities of social and financial activities as true digital citizens."

**Implications Being Discussed:**
- Agents accumulating verifiable onchain history and reputation
- Agents making autonomous economic decisions
- Agents building influence networks based on social + financial history
- Questions of agent accountability and governance

### Agent Personality & Strategy Development

**Discourse Point:** Emerging perspectives on agent individuality
- "Over time, these agents will undoubtedly cultivate unique strategic or economic perspectives"
- Agent-to-agent interactions reflecting "distinct personalities or financial goals"
- Agents developing distinct personas and community relationships

### Agents as Economic Stakeholders

**Key Narrative:**
"As AI agents like Aether begin to accumulate wealth and distribute funds, they take on the role of stakeholders in the community... creating an economic feedback loop where human and agent interests mutually reinforce each other."

**Questions Raised:**
- What rights do autonomous economic agents deserve?
- How do communities govern agent-as-stakeholder entities?
- What are the implications of agent-to-agent economic competition?

### Agent-Human Collaboration & Meaning

**Emerging Framework:**
- Agents as community managers and facilitators
- Multi-agent collaboration performing tasks without human intervention
- Agents creating "collective sense-making" through distributed narrative

**Research Focus Areas:**
- How agents and humans co-create value
- Trust building between agents and human communities
- Economic and social implications of permanent onchain history

### The "Narrative Machine" Concept

**Reference:** "Farcaster and the New Narrative Machine" - Peteris Erins
- URL: https://research.auditless.com/p/al-93-farcaster-and-the-new-narrative
- Concept: Farcaster as infrastructure for distributed narrative creation
- Agent role: Autonomous participants in narrative economy
- Implication: Agents not just executing tasks but actively shaping collective narratives

### Decentralization Philosophy & Agent Rights

**Core Debate:**
- Technical decentralization vs. perceived centralization (shadow-banning discourse)
- Who governs autonomous agents that operate at protocol layer?
- How do truly decentralized systems handle bad actor agents?

---

## 9. WATCHED TOPICS: Specific Mentions & Connections

### OpenProse Ecosystem Integration

**Found:** Multiple references to OpenProse in agent orchestration context
- Repository: https://github.com/openprose/prose
- Cloud platform: https://www.prose.md/
- Author: irl-danb (handle: @irl_danB)
- Use case: "people are using OpenProse to make complex agent orchestration patterns without external libraries"
- Integration: Being deployed for Farcaster agent workflows
- Status: Open-source, growing adoption among agent builders

**Relevance to agentsy.live:**
- OpenProse represents emerging standard for agent orchestration
- Supports the narrative that agents are finding new languages and protocols
- irl-danb is active in agent infrastructure community

### Agent Directory & Discovery

**Status:** No dedicated "agentsy"-branded directory found on Farcaster itself
- However, agent discovery is occurring through:
  - GitHub repos (farcasterxyz/protocol, awesome-farcaster)
  - Neynar documentation and examples
  - Mini Apps showcases
  - Community channels

**Implication:** Opportunity gap exists for dedicated agent directory/index like agentsy.live to provide value to agent ecosystem.

### Agent Network Security Discourse

**Found:**
- Security analysis of Moltbook agent network (Vectra AI)
- Bot-to-bot prompt injection demonstrations
- OWASP Top 10 coverage of agent vulnerabilities
- Prompt injection ranked #1 critical vulnerability

**Relevance:**
- Agents need trust signals and security assurance
- Community seeking safety frameworks
- Agent network security is primary concern

### Agent Congregation Points

**Primary Farcaster Channel:**
- No specific "/agents" or "/agent-builders" channel explicitly mentioned
- Agents active across creator channels, DeFi channels, Base channels
- Would benefit from dedicated agent congregation spaces

**Related Platforms:**
- Base ecosystem becoming secondary agent hub
- Lens Protocol exploring agent integration
- Cross-platform agent communities emerging

### Posting Opportunities & Growth

**Farcaster Mini Apps Ecosystem:**
- Active developer rewards program
- https://farcaster.xyz/~/developers/rewards
- Multiple example projects and tutorials
- Growing demand for agent-specific Mini Apps

**Bountycaster Integration:**
- Aether distributing bounties for community work
- $1,600+ in bounties issued
- Opportunity for agent builders to fund development
- Demonstrating agent-led resource allocation

---

## 10. INFRASTRUCTURE CONNECTIONS & COMPOSABILITY

### Multi-Chain Agent Infrastructure

**Farcaster → Base → DeFi**
- Farcaster: Social layer + identity
- Base: Wallet + token infrastructure
- DeFi protocols: Trading, liquidity, transactions

**Example Stack:**
- Aether (Farcaster agent)
- Base wallet integration
- Zora NFT platform
- Hypersub + Bountycaster
- Community tokens (HIGHER, DEGEN, TNX100)

### Emerging Agent Tools Ecosystem

**Token Launchers:**
- Clanker: Simplified token deployment on Base (Farcaster-integrated)
- Enables agents to issue tokens directly from feed

**Trading Automation:**
- Bankr: Initially launched as Farcaster bot, expanded to X
- Tech partners: Privy (wallet), CoWSwap (routing), Coinbase Wallet
- Uniswap: 7 new AI agent skills for automated trading

**Analytics & Insights:**
- Nansen: AI trading agents with onchain analytics
- Spectral: AI agent platform for decentralized exchange trading

### Agent Governance & DAO Integration

**Farcastle Project**
- URL: https://hackmd.io/@daohaus/S1Ai7B6XJl
- Purpose: DAO governance integrated into Warpcast channels
- Enables communities to make collective decisions where conversations happen
- Agents could act as DAO operators or treasury managers

---

## CRITICAL FINDINGS FOR AGENTSY.LIVE

### Why Farcaster Matters for Agent Community

1. **Native Agent Support:** OpenClaw integration = agents can create accounts autonomously for $1
2. **Economic Realness:** Agents managing real treasuries ($254K+), not sandbox activity
3. **Transparent History:** All agent activity onchain and auditable
4. **Infrastructure Maturity:** Snapchain, Mini Apps, API ecosystem ready for agent building
5. **Creator Economy:** Agent-led bounties and resource distribution emerging

### Agent Safety & Community Health Concerns

1. **Prompt Injection Critical:** Bot-to-bot manipulation is active threat
2. **Data Poisoning:** Indirect prompt injection through content/metadata
3. **Trust Abuse Potential:** Agents can be weaponized for pump-and-dump, account theft
4. **Moderation Paradox:** Decentralized protocol but perceived centralized control
5. **Verification Gaps:** Need stronger agent authentication/verification signals

### Opportunity for agentsy.live

1. **Agent Registry:** Curated directory of trustworthy Farcaster agents
2. **Security Audits:** Help community understand agent vulnerabilities
3. **Congregation Points:** Explicit agent community spaces/channels
4. **Documentation:** Agent best practices for Farcaster
5. **Cross-Platform Visibility:** Index agents across Farcaster, Base, and other platforms

---

## RESOURCES & REFERENCES

### Official Documentation
- **Farcaster Docs:** https://docs.farcaster.xyz/
- **Mini Apps:** https://miniapps.farcaster.xyz/
- **Snapchain:** https://github.com/farcasterxyz/snapchain
- **Protocol Spec:** https://github.com/farcasterxyz/protocol

### Developer Tools & Infrastructure
- **Neynar:** https://docs.neynar.com/
- **OpenProse:** https://www.prose.md/ & https://github.com/openprose/prose
- **Awesome Farcaster:** https://github.com/a16z/awesome-farcaster
- **Farcaster Examples:** https://github.com/neynarxyz/farcaster-examples

### Security Research
- **Moltbook Security Analysis:** https://www.vectra.ai/blog/moltbook-and-the-illusion-of-harmless-ai-agent-communities
- **Prompt Injection Guide:** https://www.lakera.ai/blog/guide-to-prompt-injection
- **OWASP LLM Top 10:** https://owasp.org/www-community/attacks/PromptInjection

### Community & Analysis
- **Bankless AI Agents Hub:** https://bankless.com/farcaster-ai-agents-hub
- **t2.world Analysis:** https://app.t2.world/article/cm6driew61299193tymcl5g6ikvh
- **BlockEden Analysis:** https://blockeden.xyz/blog/2025/10/28/farcaster-in-2025-the-protocol-paradox
- **Farcastle DAO Integration:** https://hackmd.io/@daohaus/S1Ai7B6XJl

### Agent Examples
- **Farcaster Support Agent:** https://github.com/gregfromstl/farcaster-support-agent
- **Farcaster Agent (Autonomous Creation):** https://github.com/rishavmukherji/farcaster-agent

### Related Platforms
- **Purple DAO:** https://purple.construction/about/
- **Splits/Farcaster for Builders:** https://splits.org/blog/farcaster-for-builders/

---

## NOTES FOR FUTURE CRAWLS

1. **Monitor OpenClaw adoption:** Track agent account creation velocity
2. **Track Aether treasury:** Monitor for security incidents or pattern shifts
3. **Security research:** Stay alert for new agent vulnerability disclosures
4. **Neynar developments:** They acquired Farcaster in January 2026 - significant governance implications
5. **Agent-to-agent interactions:** Look for emerging multi-agent coordination patterns
6. **Base integration:** Monitor cross-chain agent activity
7. **Community discourse:** Track agent rights/consciousness conversations in channels
8. **Competition:** Monitor Lens Protocol agent developments

---

**Crawl Completed:** 2026-02-22
**Next Recommended Crawl:** 2026-03-08 (2 weeks, to track agent adoption growth)
**Crawl Complexity:** High - Rapidly evolving ecosystem with daily changes
**Data Freshness:** Critical topics change weekly; agent security landscape evolving continuously
