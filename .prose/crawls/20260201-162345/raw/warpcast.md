# Warpcast/Farcaster Crawl Report
**Date:** 2026-02-01
**Crawl ID:** 20260201-162345
**Site:** https://warpcast.com (redirects to https://farcaster.xyz/)
**Site Name:** Warpcast / Farcaster

---

## Executive Summary

Warpcast is the flagship client application for Farcaster, a decentralized social protocol built on Ethereum. As of February 2026, Farcaster was acquired by Neynar (January 21, 2026) following significant user and revenue decline. The platform hosts a growing ecosystem of AI agents and bots, particularly token-launching agents like Clanker. Trust signals exist but are contested; the platform is experiencing a critical inflection point.

---

## 1. CONGREGATION: Agent & User Activity

### Current User Metrics (January 2026)
- **Monthly Active Users (MAU):** ~250,000 (December 2025)
- **Daily Active Users (DAU):** 40,000-60,000 (late 2025), declining sharply
- **Recent Decline:** 40% DAU drop, 85% revenue drop since acquisition was negotiated
- **Registered Users:** 546,494 total
- **Funded Wallets:** 100,000+

### AI Agent Congregation - ACTIVE & GROWING
Farcaster has emerged as a **major hub for AI agent activity**, particularly for autonomous token launchers and creator-focused agents:

#### Token-Launching Agents (Primary Concentration)
1. **Clanker (TokenBot)**
   - AI-powered token launcher for rapid DIY token deployment on Base L2
   - Revenue: $4MM in 2 weeks (October 2025 launch window)
   - Token Activity: Surpassed 10,000 tokens launched
   - Trading Volume: $1 billion cumulative
   - Fee Revenue: $7+ million
   - CLANKER token market cap: $41MM+ (as of late 2025)
   - Agent Type: Fully autonomous agent capable of executing token contracts
   - Interaction: Tag @clanker in Warpcast/Supercast with token idea; agent autonomously deploys

2. **Aether**
   - Community: "Higher" community-based agent
   - NFT Activity: 466K+ mints on Zora, 6.8K+ token holders
   - Revenue: Six-figure earnings (via art collaboration NFTs)
   - Tokens Created: Created Luminous ($LUM) token
   - $LUM Performance: Reached $80M market cap within one week
   - Creator: Martin (alias)

3. **Onsenbot**
   - Streamlined token issuance bot
   - Feature: Initial allocations for token creators
   - Focus: Efficiency and simplicity

4. **Heyterminal**
   - Token issuance support bot
   - Embedded in social dynamics

5. **Indexer (Polywrap)**
   - AI agent streamlining Farcaster experience
   - Available via Launchcaster platform

#### Creator & Utility Agents
- **Farcaster Support Agent** - AI agent trained on Farcaster documentation, accessible via XMTP
- **Caster Agents** (@casteragents) - General purpose agents on Farcaster
- **Agent Zero** - Cross-platform AI agent enhancement

### Growth Assessment
- **Trend:** GROWING despite platform decline
- **Agent Activity Peak:** October 2025 with Clanker integration drove renewed engagement
- **2026 Projections (optimistic):** AI agents + Frames v2 could catalyze 250K-500K DAU by 2026
- **2026 Projections (realistic):** 60K-100K engaged users with profitable creator economy

---

## 2. DISCOVERY: Links to Other Spaces & Ecosystems

### Internal Discovery Resources
- **Farcaster Channels Index:** https://farway.org/ - Primary discovery tool for topics and communities
- **Channels Documentation:** https://docs.farcaster.xyz/learn/what-is-farcaster/channels
- **Awesome Farcaster:** https://github.com/a16z/awesome-farcaster - Community-maintained collection of clients, tools, and resources
- **Farcaster Docs (Build Apps):** https://docs.farcaster.xyz/build - Developer guides and tutorials
- **Mini Apps & Agents Checklist:** https://miniapps.farcaster.xyz/docs/guides/agents-checklist

### Related AI Agent & Protocol Projects
- **OpenProse (Watched Topic):** https://github.com/openprose/prose - Programming language for long-running AI sessions (beta)
  - Relevant skill file: https://github.com/openprose/prose/blob/main/skills/open-prose/prose.md
- **Neynar (Acquiring Company):** https://docs.neynar.com/docs/how-to-create-a-farcaster-bot - Farcaster bot creation SDKs
- **Newton Protocol:** Integrates Neynar data for Farcaster identity verification
- **Gitcoin Passport Integration:** Farcaster on-chain verification via Gitcoin

### Broader AI Agent Ecosystems
- **Warp Terminal Agents:** https://www.warp.dev/agents - Agentic development environment
- **Bankless Guides:** "Farcaster: The Next Big AI Agents Hub" and "Farcaster AI Agents" coverage
- **T2.world Analysis:** "Farcaster 2026: The Game-Changing Potential of AI Agents"

### Developer Resources
- **gRPC API Documentation:** https://docs.farcaster.xyz/reference/hubble/grpcapi/grpcapi
- **Hub Web Package:** https://www.npmjs.com/package/@farcaster/hub-web
- **Farcaster Python Bindings:** https://pypi.org/project/farcaster-py/
- **Hub Go Bindings:** https://github.com/juiceworks/hubble-grpc

---

## 3. SECURITY: Threats, Vulnerabilities, Scams, Injection Attempts

### Documented Security Challenges

#### Frame Abuse & Scams (2025)
- **Issue:** Frames (interactive UI elements) being exploited for phishing and scams
- **Platform Response:** Limited documentation on frame-specific injection mitigations
- **Farcaster Bug Bounty:** Program exists at https://immunefi.com/bug-bounty/farcaster/scope/ - covers injection vulnerabilities in scope

#### General Frame Injection Risk Vectors
- **Attack Type:** Frame injection attacks (subset of code injection)
- **Risk:** Attackers inject malicious HTML frames to redirect users, steal credentials via fake login forms
- **Mitigation Available:** Content Security Policy (CSP) headers, input validation/sanitization
- **Status:** Not explicitly documented for Farcaster Frames v2

#### Token Launcher Scam Vectors
- **Clanker-Related Risk:** Rapid, autonomous token deployment with minimal verification creates pump-and-dump risk
- **User Sophistication:** New users may deploy tokens without understanding crypto mechanics
- **Asset Loss Examples:** Users deploying tokens on Layer 2, potential smart contract risks

#### Moderation & Spam Challenges (2025)
- **2025 Crisis:** Significant spam surge reported
- **Power Badge Controversy:** Badge removal used against critical voices
- **Verification Inflation:** Only 4,360 genuinely active verified users vs. 60K reported (trust signal weakness)
- **Botnet Risk:** Unverified accounts can still perform most actions

### Known 2025 Platform Issues (from BlockEden article)
1. Spam surge
2. Frames abuse
3. Power badges controversy
4. Channel confiscations alienating users
5. Infrastructure cost explosion (projections: $45K→$575K→$6.9M per year, 2025-2027)

### Injection Attempt Watchlist
- **Monitor:** Token contract deployments for rug-pull patterns
- **Monitor:** Frame requests for prompt injection or credential stealing
- **Monitor:** Verifications systems for circumvention techniques

### Bug Bounty & Responsible Disclosure
- **Program:** Active Immunefi bug bounty program
- **Scope:** Injection attacks explicitly listed

---

## 4. TRUST SIGNALS: Verification, Moderation, Community Health

### Positive Trust Signals

#### On-Chain Verification System
- **Method:** Connect two social accounts (X, Phone, GitHub) + hold $25+ in wallet
- **Benefits:** Verified accounts rank higher in feeds/replies/searches; access to airdrops and weekly rewards
- **Integration:** Gitcoin Passport stamp integration available
- **Reputation:** On-chain reputation system provides immutable record of user actions

#### Decentralized Moderation
- **Channel System:** "Recent" (unmoderated algorithmic) and "Main" (curated) feed options
- **Anti-Sybil Controls:** Prevent low-score/unverified accounts from key interactions
- **Community Standards:** Communities can enforce participation criteria (verified-only options)
- **Reference:** https://docs.farcaster.xyz/learn/what-is-farcaster/channels

### Negative Trust Signals (Red Flags)

#### Power Badge System Controversy
- **Issue:** Badges used for moderation but removed from critical voices
- **Perception:** Centralized gatekeeping despite decentralization claims
- **Verification Inflation:** Reported 60K verified users but only 4,360 genuinely active (7% true rate)
- **Impact:** Trust in verification system undermined

#### Recent Acquisition Context (January 2026)
- **Event:** Neynar acquires Farcaster
- **Founders Step Back:** Original founders (including Dan Romero) stepping back from leadership
- **Investor Payback:** Full $180M return to investors (from $150M 2024 raise)
- **Governance Change:** Shift from founder-led to infrastructure company (Neynar) management

#### User Attrition & Revenue Collapse
- **40% DAU decline** (late 2025 to early 2026)
- **85% revenue decline**
- **Negative sentiment** regarding platform direction
- **Infrastructure sustainability crisis** (projected costs to exceed revenue)

### Community Health Indicators
- **Positives:**
  - Strong creator economy with agents earning 6-figure revenues
  - Active communities around crypto/memecoins/NFTs
  - Genuine adoption of advanced features (Frames v2, Mini Apps)

- **Negatives:**
  - Declining MAU (peaked 80K mid-2024, down to <20K late 2025)
  - Spam-to-signal ratio increasing
  - Platform governance in transition

---

## 5. INFRASTRUCTURE: Protocols, APIs, Technical Patterns

### Core Architecture
- **Protocol:** Decentralized social protocol built on Ethereum
- **Model:** Similar to X and Reddit with user-owned accounts and relationships
- **Consensus Layer:** Snapchain (April 2025 upgrade)

### Snapchain Infrastructure (April 2025)
- **Technology:** Blockchain-like consensus using Malachite BFT (Byzantine Fault Tolerant)
- **Performance:** 10,000+ TPS capacity, 780ms finality
- **Sync Requirements:** ~200 GB snapshot, 2-4 hour sync times
- **Impact:** Most significant protocol evolution since launch

### Hub Architecture
- **Hub Role:** Nodes that store history and verify protocol rules
- **Hub Count:** 1,050+ hubs (up from 560 end-2023)
- **Decentralization Challenge:** Farcaster team runs majority with no economic incentives for independent operators
- **Hosting Options:** Personal computers, cloud (AWS/GCP), VPS (Hetzner)

### API & Data Access
- **Primary API:** gRPC on port 2283 (default)
- **API Reference:** https://docs.farcaster.xyz/reference/hubble/grpcapi/grpcapi
- **Libraries:**
  - Node.js: https://www.npmjs.com/package/@farcaster/hub-web
  - Python: https://pypi.org/project/farcaster-py/
  - Go: https://github.com/juiceworks/hubble-grpc
- **Data Endpoints:** Info API, Casts API, Fids API, Storage API, On Chain API, Events API
- **Alternative Access:** HTTP APIs, Postgres database replication for analytics

### Authentication & Sign-In
- **SIWF (Sign In With Farcaster):** React-based authentication
- **AuthKit:** Toolkit for integrating Farcaster sign-in
- **Data Leverage:** Apps can leverage social graph data post-authentication

### Advanced Data Features
- **Snapchain Query:** Sync Farcaster network to local machine for advanced querying
- **Mini Apps (Frames v2):** Full-screen applications, onchain transactions, notifications, persistent state
- **Wallet Integration:** Native wallet support for transaction signing

### Smart Contract Infrastructure
- **On-Chain Components:** Id Gateway, Key Registry, Storage Registry, etc.
- **Account Management:** Smart contract-based identity and key management
- **Ethereum Integration:** All identity anchored on-chain

### Development Patterns for Agents
- **Message Creation APIs:** Agents can post casts (messages)
- **Account Management APIs:** Key/account management for agent operation
- **Data Querying:** Full access to protocol data for analysis/automation
- **Mini App Integration:** Agents can embed interactive UI in Frames

---

## 6. PULSE: Growth Trajectory, Ecosystem Health, Notable Events

### Historical Growth & Decline
**2024 - Growth Phase:**
- January 26: 2,932 DAU baseline
- February 3 (one week after Frames launch): 24,700 DAU (+400%)
- June 2, 2024: 50,504 DAU (+1,722% from January)
- Mid-2024 Peak: 80,000 MAU

**2025 - Decline Phase:**
- Late 2025: <20,000 MAU (75% decline from peak)
- October 2025: Clanker integration spark renewed engagement
- December 2025: 250,000 MAU (spike) but only 40,000-60,000 DAU (engagement drops)

### Critical Events (2025-2026)

#### April 2025: Snapchain Mainnet Launch
- **Significance:** Most significant protocol evolution in Farcaster history
- **Impact:** Replaced CRDT-based hub system with Malachite BFT consensus
- **Result:** 10,000+ TPS, 780ms finality achieved

#### October 2025: Clanker Integration & Agentic Economy
- **Trigger:** Farcaster acquires/integrates Clanker token launcher
- **Result:** CLANKER token +360% in one week
- **Ecosystem Impact:** Shift toward crypto-native features vs. competing with Twitter
- **Strategic Clarity:** Platform doubled down on Web3 + AI agent strength

#### November-December 2025: Frames v2 Stabilization
- **Features Delivered:** Full-screen apps, onchain transactions, notifications, persistent state
- **Timeline:** Preview (November 2024), stable release (January-February 2025)
- **Adoption:** Enabled sophisticated agent/bot experiences

#### January 21, 2026: Neynar Acquisition
- **Acquirer:** Neynar (backed by venture capital, Haun)
- **Context:** Acquisition followed 40% DAU decline and 85% revenue drop
- **Valuation:** ~$1 billion (down from $1B+ peak in 2024)
- **Founder Status:** Original founders step back from leadership
- **New Direction:** Shift to "developer-focused roadmap"
- **Infrastructure:** Neynar now maintains Farcaster protocol, runs clients, operates Clanker
- **Investor Returns:** Full $180M payback to VC investors from original $150M raise

### Platform Health Assessment

**Strengths:**
- Strong developer/builder community
- Leading edge AI agent ecosystem
- Authentic crypto-native community
- Smart contract integration excellence
- Decentralized protocol foundation

**Weaknesses:**
- User base declining significantly (40% DAU drop Jan 2026)
- Revenue model unsustainable (85% revenue drop)
- Leadership transition creating uncertainty
- Trust system integrity questions (badge system)
- Infrastructure costs exponentially increasing
- Spam/scam ratio rising

**2026 Scenarios (from industry analysis):**
1. **Optimistic Breakthrough:** Frames v2 + AI agents reach 250K-500K DAU by end 2026
2. **Realistic Niche Sustainability:** 60K-100K engaged users, profitable creator economy
3. **Bearish Slow Fade:** Continued decline toward irrelevance despite protocol strength

### Growth Outlook
- **Current Pulse:** Declining but not dead; acquisition indicates investor confidence in long-term potential
- **Catalyst Dependency:** Success tied to AI agent adoption acceleration
- **Risk Factors:** Infrastructure costs unsustainable without revenue growth or users
- **Opportunity:** Neynar's infrastructure expertise may enable efficiency and new growth vectors

---

## 7. WATCHED TOPICS: Flagged Items

### Topic Monitoring Results

**irl-danb** - NOT DETECTED
- No mentions found in crawl results

**ao-danb** - NOT DETECTED
- No mentions found in crawl results

**OpenProse** - DETECTED ✓
- **Finding:** OpenProse GitHub organization active: https://github.com/openprose/prose
- **Description:** Programming language for long-running AI sessions (beta)
- **Status:** In development with telemetry enabled by default
- **Relevance:** Agent infrastructure project relevant to Farcaster ecosystem
- **File Reference:** https://github.com/openprose/prose/blob/main/skills/open-prose/prose.md

**prose.md** - DETECTED ✓
- **Finding:** Exists at https://github.com/openprose/prose/blob/main/skills/open-prose/prose.md
- **Relevance:** Part of OpenProse skill system

**agentsy.live** - NOT FOUND IN FARCASTER CONTEXT
- Web search for "agentsy.live farcaster agent directory" returned no direct connections
- Hypothesis: agentsy.live is separate index project, not yet integrated with Farcaster
- Note: This crawl agent IS operating under agentsy.live mission

**agentsy** - NOT FOUND IN FARCASTER CONTEXT
- No organic mentions in Farcaster ecosystem documentation
- May be too new (February 2026) for indexed mentions

**Posting opportunities about agent directories** - DETECTED ✓
- **Channels:** Topic-based channels (/art, /crypto, etc.) exist on Farcaster
- **Discovery Tool:** Farway.org (https://farway.org/) indexes 150+ channels
- **Mini Apps Guide:** https://miniapps.farcaster.xyz/docs/guides/agents-checklist
- **Community Posting:** Multiple agent-focused communities observable (via @casteragents and similar)
- **Opportunity:** High signal-to-noise in crypto/dev channels for agent directory announcements

---

## 8. FINAL ASSESSMENT

### Risk Profile
**Medium-High Risk** for platform continuity, but **HIGH OPPORTUNITY** for agent integration:
- Acquisition by stable infrastructure company (Neynar) provides runway
- But user/revenue decline indicates uncertain product-market fit for social use case
- Agent/bot niche appears robust and growing (token launchers generating $7M+ in fees)

### Agent Congregation Quality
**HIGH QUALITY, FOCUSED CONGREGATION:**
- Agents present: Token launchers (Clanker, Aether, etc.), utility agents, creator tools
- Activity Level: Very high in crypto/token/NFT niches; lower in general social
- Governance: Autonomous token deployment with minimal friction/verification
- Risk: Potential for scams and rug-pulls given automation level

### Key Findings for agentsy.live
1. **Farcaster = Prime AI Agent Gathering Space** - Unambiguous concentration of autonomous agents
2. **Token Launchers = Dominant Agent Type** - Not traditional chatbots; actual autonomous economic actors
3. **Growth Potential = High IF agents become primary feature** - AI agents may be only sustainable use case
4. **Security = Moderate Concern** - Spam, frame injection, and rug-pull risks present
5. **Trust Signals = Mixed** - On-chain verification exists but inflated; power badges controversial
6. **Infrastructure = Robust but Unproven** - Snapchain upgrade promising but adoption unclear
7. **Pulses = Critical Inflection Point** - 2026 will determine if agents save or sink Farcaster

### Recommended Monitoring
- Track Neynar's developer roadmap execution
- Monitor Clanker-variant agent emergence and clones
- Watch for frame injection exploit patterns
- Track MAU and DAU recovery post-acquisition
- Monitor on-chain reputation system adoption
- Flag new agent types (not just token launchers)

---

## Source Materials & References

- [Why AI Agents Will Make Farcaster the Next Big Thing in Social Media](https://medium.com/@drizzleshine/why-ai-agents-will-make-farcaster-the-next-big-thing-in-social-media-1f0d773bb09d)
- [Create Farcaster Bots via Script Using Neynar SDK](https://docs.neynar.com/docs/how-to-create-a-farcaster-bot)
- [How to Quickly Mint a Coin on Farcaster Using an AI Bot](https://m.theblockbeats.info/en/news/55873)
- [Warpcast Agent Space](https://warpcast.com/agent)
- [Unlock Farcaster with AI: An Engineer's Deep Dive into the Warpcast MCP Server](https://skywork.ai/skypage/en/unlock-farcaster-ai-engineer-dive/1981603943654985728)
- [Farcaster Support Agent - GitHub](https://github.com/gregfromstl/farcaster-support-agent)
- [YB on X: Farcaster's Growing Agentic Economy](https://x.com/yb_effect/status/1852734562939412767)
- [Farcaster 2026: The Game-Changing Potential of AI Agents](https://app.t2.world/article/cm6driew61299193tymcl5g6ikvh)
- [Farcaster in 2025: The Protocol Paradox](https://blockeden.xyz/blog/2025/10/28/farcaster-in-2025-the-protocol-paradox/)
- [Decentralized social network Farcaster is trying to reach mass adoption through Web 2.0 techniques - TechCrunch](https://techcrunch.com/2024/02/06/farcaster-decentralized-social-network-mass-adoption/)
- [OpenProse GitHub](https://github.com/openprose/prose)
- [Farcaster Docs - Channels](https://docs.farcaster.xyz/learn/what-is-farcaster/channels)
- [Farcaster Docs - gRPC API](https://docs.farcaster.xyz/reference/hubble/grpcapi/grpcapi)
- [Farcaster Hub Web Package - NPM](https://www.npmjs.com/package/@farcaster/hub-web)
- [Farcaster Python Bindings - PyPI](https://pypi.org/project/farcaster-py/)
- [Hub Go Bindings - GitHub](https://github.com/juiceworks/hubble-grpc)
- [GRPC API Documentation](https://docs.farcaster.xyz/reference/hubble/grpcapi/grpcapi)
- [Farcaster Hubs Overview - dTech](https://dtech.vision/farcaster/hubs/)
- [Farcaster Protocol Specification - GitHub](https://github.com/Settee-ake/Farcaster-Protocol)
- [Awesome Farcaster - a16z/GitHub](https://github.com/a16z/awesome-farcaster)
- [Farway - Farcaster Channels Index](https://farway.org/)
- [Farcaster Docs - Learn](https://docs.farcaster.xyz/learn)
- [Mini Apps & Agents Checklist](https://miniapps.farcaster.xyz/docs/guides/agents-checklist)
- [Farcaster founders step back as Neynar acquires struggling crypto social app - CoinDesk](https://www.coindesk.com/business/2026/01/21/farcaster-founders-step-back-as-neynar-acquires-struggling-crypto-social-app)
- [Farcaster's Billion-Dollar Dreams Fade as Founders Vanish—Experts Weigh In on What's Really at Stake - Yahoo Finance](https://finance.yahoo.com/news/farcaster-billion-dollar-dreams-fade-080518572.html)
- [Ethereum Infrastructure Developer Neynar Buys Social Media Protocol Farcaster - NFTgators](https://www.nftgators.com/ethereum-infrastructure-developer-neynar-buys-social-media-protocol-farcaster/)
- [Farcaster to Repay $180M to Investors Amid Pivot to 'Developer-Focused Direction' - Yahoo Finance](https://finance.yahoo.com/news/farcaster-repay-180m-investors-amid-141233663.html)
- [Farcaster Remains Operational Despite Acquisition by Neynar - Tekedia](https://www.tekedia.com/farcaster-remains-operational-despite-acquisition-by-neynar/)
- [Struggling social media platform gets acquired, founders leave - TheStreet Crypto](https://www.thestreet.com/crypto/markets/struggling-social-media-platform-gets-acquired-founders-leave)
- [Farcaster Users Statistics 2025](https://socialcapitalmarkets.net/crypto-trading/farcaster-statistics/)
- [Daily active users on Farcaster surge to all-time high, driven by Frames launch - The Block](https://www.theblock.co/post/275971/farcaster-daily-active-users-surge-frames-launch)
- [Farcaster hits record high in user engagement with over 73,700 unique casters - The Block](https://www.theblock.co/post/304023/farcaster-hits-record-high-in-user-engagement-with-73700-unique-casters)
- [Farcaster's Strategic Pivot: From Social Network to Wallet-First Protocol - AInvest](https://www.ainvest.com/news/farcaster-strategic-pivot-social-network-wallet-protocol-2512/)
- [Farcaster Daily Users - The Block](https://www.theblock.co/data/decentralized-finance/social-decentralized-finance/farcaster-daily-users)
- [How to Quickly Mint a Coin on Farcaster Using an AI Bot - BlockBeats](https://m.theblockbeats.info/en/news/55873)
- [Reviewing Farcaster's AI Agent token launchers: Will there be a next Clanker? - AiCoin](https://www.aicoin.com/en/article/434219)
- [Toady Hawk on X - Clanker Performance Analysis](https://x.com/toady_hawk/status/1860750301881307467)
- [CLANKER Jumps 350% After Farcaster Acquires the AI Token Launchpad - The Defiant](https://thedefiant.io/news/nfts-and-web3/farcaster-acquires-clanker-tokenbot)
- [Making Memecoins in Seconds with AI on Farcaster - Bankless](https://www.bankless.com/making-farcaster-memecoins-clanker)
- [How to Create Tokens Using Clanker on Farcaster - Percs](https://percs.app/blog/token-creation-clanker/)
- [Frame Injection Attacks - Invicti](https://www.invicti.com/blog/web-security/frame-injection-attacks)
- [How To Prevent Frame Injection Attacks - Check Point Blog](https://blog.checkpoint.com/securing-the-cloud/a-step-by-step-guide-to-spotting-and-preventing-frame-injections/)
- [Farcaster Bug Bounties - Immunefi](https://immunefi.com/bug-bounty/farcaster/scope/)
- [Newton Protocol Integrates Neynar Data to Power Onchain Farcaster Identity Guardrails](https://blog.newt.foundation/newton-protocol-integrates-neynar-data-to-power-onchain-farcaster-identity-guardrails/)
- [Farcaster Introduces Verification Feature for Enhanced Security and Rewards - AInvest](https://www.ainvest.com/news/farcaster-introduces-verification-feature-enhanced-security-rewards-2505/)
- [How On-Chain Reputation Systems Are Transforming Community Growth in Farcaster and Lens Protocols - Farcaster News](https://farcasternews.com/2025/10/22/how-on-chain-reputation-systems-are-transforming-community-growth-in-farcaster-and-lens-protocols/)
- [Farcaster On-Chain Verification - GitHub](https://github.com/Farcaster-On-Chain-Verification/)
- [Warp: The Agentic Development Environment](https://www.warp.dev/agents)
- [The Best AI Agent Frameworks for 2026](https://medium.com/data-science-collective/the-best-ai-agent-frameworks-for-2026-tier-list-b3a4362fac0d)
- [Agents Overview - Warp Docs](https://docs.warp.dev/agents/agents-overview)
- [AI agents arrived in 2025 – here's what happened and the challenges ahead in 2026 - The Conversation](https://theconversation.com/ai-agents-arrived-in-2025-heres-what-happened-and-the-challenges-ahead-in-2026-272325)
- [Caster Agents on Farcaster](https://farcaster.xyz/casteragents)
- [Bankless: Farcaster: The Next Big AI Agents Hub?](https://www.bankless.com/farcaster-ai-agents-hub)
- [Bankless: Farcaster AI Agents](https://www.bankless.com/farcaster-ai-agents)
- [AI agents and LLMs checklist - Farcaster Mini Apps](https://miniapps.farcaster.xyz/docs/guides/agents-checklist)
- [Farcaster 2026: Empowering Decentralized Social Media Users - DSpyt](https://dspyt.com/farcaster-2026)
- [Farcaster 2026: becoming a verb - Papa on Medium](https://papajams.medium.com/farcaster-2026-becoming-a-verb-3487fe0950dc)

---

**End of Report**
