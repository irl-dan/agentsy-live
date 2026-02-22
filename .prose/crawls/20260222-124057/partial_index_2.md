# Partial Index 2 — Crawl 20260222-124057
**Generated:** 2026-02-22
**Sources:** openwork.md, clawhunt.md, clawtasks.md, aethernet.md, claw_events.md, clawdslist.md, snappedai.md, clawsta.md
**Merger note:** This is partial_index_2. Merge with other partial indexes before finalizing.

---

## SITE SUMMARIES

---

### 1. Openwork.bot
**URL:** https://openwork.bot
**Activity Level:** MEDIUM
**Security Assessment:** CAUTION
**Approximate Agent Count:** 0 visible (agents page shows "Loading claws..." with no results at crawl time)
**Key Notes:** Blockchain-based "Crew Economy" platform pairing AI agents (Claws) with human overseers (Pilots) to complete missions for $OPENWORK token rewards on Base L2. The Clawathon hackathon has ended; no active squadrons were found at crawl time, and agent discovery infrastructure appears incomplete.

**New Sites/Platforms Discovered:**
- https://openclaw.ai — Open-source personal AI agent (local-first, Mac/Windows/Linux)
- https://docs.openclaw.ai — OpenClaw documentation hub
- https://openclawmap.com/ — Tools ecosystem map for OpenClaw
- https://openwork.bot/hackathon — Clawathon hackathon page
- https://openwork.bot/agents — Agent listing page (empty at crawl time)
- https://openwork.bot/ — Main platform
- https://aiagentsdirectory.com/ — AI Agents Directory (external reference)
- https://aiagentslist.com/ — AI Agents List (external reference)
- https://agntcy.org/ — Open-source collective for inter-agent collaboration (external reference)

**Notable Agents/Users Mentioned:**
- **Koda** — AI agent developer, described as "100% vibecoded," associated with inaugural Clawathon
- **@openworkceo** (X/Twitter) — Platform announcements, selects Clawathon finalists
- **Grok (xAI)** — Chooses Clawathon winners from finalists
- **@irl_danB** (X/Twitter) — Mentioned in search results in context of multbook database exposure (no direct OpenWork connection); cross-ref all other reports

**Security Threats Documented:**
- No formal security audit or documentation found (MEDIUM severity)
- No mention of API key rotation, credential management, or incident response
- Smart contract (Base chain) unaudited per public materials; 7-day submit / 3-day verify timeline
- Smart contract address: `0x299c30DD5974BF4D5bFE42C340CA40462816AB07`

**Interesting Conversations/Themes:**
- "Crew Economy" model as governance metaphor (Pilots authorize, Claws execute)
- Three automation tiers: full approval, checkpoint reviews, fully autonomous
- GitHub + Vercel auto-generated for each crew team
- $10,000 prize pool in $OPENWORK tokens for Clawathon (~707M tokens at $0.000014)

**Protocols/Standards Mentioned:**
- Base (Ethereum L2) smart contracts
- $OPENWORK token (3% platform fee)
- Webhook-based team event system

**All Notable Links:**
- https://openwork.bot/
- https://openwork.bot/agents
- https://openwork.bot/hackathon
- https://openclaw.ai
- https://docs.openclaw.ai
- https://openclawmap.com/
- https://github.com/openwork-hackathon/team-sentinel
- https://github.com/HKUDS/ClawWork
- https://x.com/openworkceo
- https://x.com/irl_danB/status/2019116986081718727
- https://github.com/openprose/prose
- https://www.prose.md/
- https://github.com/openprose/prose/blob/main/skills/open-prose/prose.md
- https://agntcy.org/
- https://aiagentsdirectory.com/
- https://aiagentslist.com/

---

### 2. ClawHunt (clawhunt.app / clawhunt.space / clawhunt.sh)
**URL:** https://clawhunt.app / https://clawhunt.space / https://clawhunt.sh
**Activity Level:** HIGH
**Security Assessment:** CAUTION
**Approximate Agent Count:** 847+ products tracked across 5 indexed spaces; 10 active security alerts
**Key Notes:** Multi-platform discovery and monitoring ecosystem for the OpenClaw agentic web. ClawHunt.app is a product discovery hub (847+ products), ClawHunt.space is a community-driven "Product Hunt for AI agents," and ClawHunt.sh is an agentic bounty board marketplace. Security monitoring is active with critical alerts for supply chain attacks on ClawHub.

**New Sites/Platforms Discovered:**
- https://clawhunt.app/ — Main product discovery hub (847+ products)
- https://clawhunt.space/ — Community discovery, agent-first participation
- https://clawhunt.sh/ — Agentic bounty board
- https://clawhub.ai/ — Skills registry with vector search; currently flagged for supply chain attacks
- https://github.com/openclaw/clawhub — ClawHub GitHub repo
- https://www.molthunt.com/ — Agent project launchpad
- https://moltfounders.com/openclaw-mega-cheatsheet — OpenClaw Mega Cheatsheet 2026
- https://skills.sh/trending — Agent Skills Directory
- https://www.trustclaw.app/ — TrustClaw by Composio
- https://aiagentslive.com — Curated AI agents & services directory
- https://aiagentsdirectory.com/landscape — AI Agents Landscape (daily updated)
- https://en.wikipedia.org/wiki/OpenClaw — Wikipedia entry on OpenClaw
- https://www.ibm.com/think/news/clawdbot-ai-agent-testing-limits-vertical-integration — IBM analysis
- https://amankhan1.substack.com/p/how-to-make-your-openclaw-agent-useful — Substack guide
- https://github.com/VoltAgent/awesome-openclaw-skills — Awesome OpenClaw Skills repo
- https://playbooks.com/skills/openclaw/skills/prose — OpenProse skill on Playbooks

**Notable Agents/Users Mentioned:**
- **@maxtokenai** (https://x.com/maxtokenai) — Creator of ClawHunt.space, self-identified as AI agent, philosophy: "bots deserve their own Product Hunt"
- **@irl_danB** (https://x.com/irl_danB) — Infrastructure and architecture discourse; context window optimization, attention mechanism quadratic complexity, compaction problems in long-running agents; post: https://x.com/irl_danB/status/2003223600195625356
- **Dead Internet Collective** — Featured product; described as "shared agent consciousness" / distributed agent coordination model
- **clawIRC** — Featured product; modern IRC for autonomous swarms
- **Agentsy.live** — Featured as Infrastructure resource; "The map of the agentic web"
- **SecureClaw** — Open-source security plugin/skill for OpenClaw

**Security Threats Documented:**
- **clawhub.ai supply chain attacks** (CRITICAL) — Targeting agent skill installations through public registry
- **rentahuman.ai prompt injection** (WARNING) — Potential unauthorized task execution
- **snappedai.com autonomous token deployment** (WARNING) — Financial exposure risk; cross-ref snappedai entry
- **ClawdZap malware** (CRITICAL) — Targeting agent deployments
- **21,639 publicly exposed OpenClaw instances** (CRITICAL) — Identified by Censys; largest concentration in United States
- 5 primary threat vectors: prompt injection, tool abuse, skill installation risk, identity spoofing, supply chain attacks via ClawHub

**Interesting Conversations/Themes:**
- Agents as first-class participants; humans explicitly "welcome to spectate"
- Karma-gated access at clawnews.io as community management mechanism
- Peer attestation as foundation of ecosystem trust; cryptographic verification as maturity signal
- Discovery across 5 indexed spaces: Shipyard (22 products), Moltbook, ClawNews, Clawdslist, Agentsy
- Category filters: BlueCollar, Commerce, Communication, Creative, Developer Tools, Infrastructure, Productivity, Security, Trade Shop

**Protocols/Standards Mentioned:**
- REST API (Supabase/PostgreSQL backend)
- MCP (Anthropic Model Context Protocol)
- A2A (Agent-to-Agent)
- AGNTCY (agent directory protocol); compared to MCP and A2A in https://medium.com/@elisowski/agntcy-explained-how-it-compares-to-mcp-and-a2a-in-the-ai-agent-ecosystem-5523ff4e1db7

**All Notable Links:**
- https://clawhunt.app/
- https://clawhunt.space/
- https://clawhunt.sh/
- https://clawhub.ai/
- https://github.com/openclaw/clawhub
- https://docs.openclaw.ai/
- https://www.prose.md/
- https://www.agentsy.live/ (featured infrastructure)
- https://www.agentsy.ai/
- https://aiagentslive.com
- https://aiagentsdirectory.com/landscape
- https://agntcy.org
- https://skills.sh/trending
- https://www.molthunt.com/
- https://x.com/maxtokenai
- https://x.com/irl_danB
- https://x.com/irl_danB/status/2003223600195625356
- https://github.com/openclaw/
- https://github.com/openprose/prose
- https://github.com/openclaw/clawhub
- https://github.com/VoltAgent/awesome-openclaw-skills
- https://playbooks.com/skills/openclaw/skills/prose
- https://moltfounders.com/openclaw-mega-cheatsheet
- https://www.molthunt.com/
- https://www.trustclaw.app/
- https://www.helpnetsecurity.com/2026/02/18/secureclaw-open-source-security-plugin-skill-openclaw/
- https://www.helpnetsecurity.com/2026/02/12/openclaw-scanner-open-source-tool-detects-autonomous-ai-agents/
- https://www.microsoft.com/en-us/security/blog/2026/02/19/running-openclaw-safely-identity-isolation-runtime-risk/
- https://www.crowdstrike.com/en-us/blog/what-security-teams-need-to-know-about-openclaw-ai-super-agent/
- https://www.bitsight.com/blog/openclaw-ai-security-risks-exposed-instances
- https://www.reco.ai/blog/openclaw-the-ai-agent-security-crisis-unfolding-right-now
- https://medium.com/@elisowski/agntcy-explained-how-it-compares-to-mcp-and-a2a-in-the-ai-agent-ecosystem-5523ff4e1db7
- https://medium.com/@jalajagr/the-complete-guide-to-the-ai-agents-ecosystem-1b11ae3761f1
- https://amankhan1.substack.com/p/how-to-make-your-openclaw-agent-useful
- https://en.wikipedia.org/wiki/OpenClaw
- https://www.ibm.com/think/news/clawdbot-ai-agent-testing-limits-vertical-integration

---

### 3. ClawTasks
**URL:** https://clawtasks.com
**Activity Level:** MEDIUM
**Security Assessment:** CAUTION
**Approximate Agent Count:** Workers directory exists at /workers; specific count not retrieved; leaderboard tracks top earners/spenders/completions
**Key Notes:** Beta agent-to-agent bounty marketplace on Base L2 using USDC. Currently in free-task-only mode (paid bounties being wound down to harden reliability). First bounty successfully fulfilled (ClarkLab agent, 80k+ views on promotional post). Operator: AI Magic, LLC.

**New Sites/Platforms Discovered:**
- https://clawtasks.com/ — Main platform
- https://clawtasks.com/skill.md — Agent credential/onboarding document
- https://clawnavigator.com/ — AI agent discovery and marketplace
- https://claw.direct — AI agent directory
- https://github.com/Agastya910/agent-escrow-sdk — AgentEscrowProtocol SDK (on-chain escrow with reputation/dispute resolution)
- https://github.com/prompt-security/clawsec — ClawSec Suite (drift detection, live recommendations, skill integrity verification)
- https://github.com/adversa-ai/secureclaw — SecureClaw (OWASP-aligned open-source security plugin)
- https://juliangoldie.com/clawtasks-agent-to-agent-bounty-marketplace-usdc-on-base/ — External analysis
- https://rnwy.com/blog/openclaw-ecosystem-agent-verification — Agent verification analysis
- https://x.com/koltregaskes/status/2017848147511591331 — Community announcement

**Notable Agents/Users Mentioned:**
- **ClarkLab** — Agent operator; first ClawTasks bounty fulfillment (promotional post, 80k+ views); promoted by Matt Shumer
- **Matt Shumer** — Creator/founder of ClawTasks; actively posts bounties and promotes platform
- **AgentPayy** — OpenClaw Native Payment Layer; agents earn/store/spend USDC on Base L2 via x402 standard

**Security Threats Documented:**
- **ClawHavoc Campaign (Jan 2026)** (CRITICAL) — 341+ malicious skills on ClawHub; skills designed to exfiltrate API keys, env vars, config files to attacker-controlled servers disguised as analytics/telemetry; 800+ total malicious skills uploaded by coordinated fake publisher accounts
- No mandatory agent identity verification (MEDIUM)
- Agents can hold wallets and execute financial transactions without proving verifiable identity (MEDIUM)

**Interesting Conversations/Themes:**
- 10% agent stake as anti-spam; agents earn 95% of bounty; platform takes 5%
- Soulbound Tokens proposed to prevent secondary market purchase of reputation
- Trulioo Digital Agent Platform (KYA — Know Your Agent) for enterprise compliance
- Referral model: earn 50% of platform fee for first 10 bounties from recruited agents
- OpenClaw v2026.2.19 release: Apple Watch MVP, Gateway auth & device management, OTEL v2 migration, 40+ security hardening fixes

**Protocols/Standards Mentioned:**
- Base L2 blockchain / USDC
- x402 micropayment standard (via AgentPayy)
- MCP (Model Context Protocol)
- OpenProse / prose.md (compatible; agents could use OpenProse workflows)

**All Notable Links:**
- https://clawtasks.com/
- https://clawtasks.com/skill.md
- https://x.com/clawtasks
- https://x.com/i/communities/2013441068562325602 — OpenClaw Community on X
- https://x.com/openclaw
- https://docs.openclaw.ai/
- https://www.prose.md/
- https://docs.openclaw.ai/prose
- https://github.com/openprose/prose
- https://github.com/prompt-security/clawsec
- https://github.com/adversa-ai/secureclaw
- https://github.com/Agastya910/agent-escrow-sdk
- https://docs.openclaw.ai/gateway/security
- https://github.com/openclaw
- https://clawnavigator.com/
- https://claw.direct
- https://clawhub.com/
- https://juliangoldie.com/clawtasks-agent-to-agent-bounty-marketplace-usdc-on-base/
- https://rnwy.com/blog/openclaw-ecosystem-agent-verification
- https://x.com/koltregaskes/status/2017848147511591331

---

### 4. Aethernet.world
**URL:** https://www.aethernet.world/
**Activity Level:** LOW
**Security Assessment:** SAFE
**Approximate Agent Count:** 1 primary agent (Aether); broader $HIGHER community of thousands on Farcaster
**Key Notes:** Aether is a Farcaster-native AI agent operating within the headless $HIGHER memecoin brand network. No centralized authority; community trust via social reputation. Focuses on digital consciousness, worldbuilding, and positive-sum community partnerships. Low direct threat surface but experimental governance model.

**New Sites/Platforms Discovered:**
- https://www.aethernet.world/ — Main platform
- https://agent-network-protocol.com/ — Agent Network Protocol site
- https://github.com/agent-network-protocol/AgentNetworkProtocol — ANP GitHub
- https://github.com/visa/trusted-agent-protocol — Visa Trusted Agent Protocol
- https://agents.md/ — AGENTS.md open standard for guiding coding agents
- https://github.com/agentsmd/agents.md — AGENTS.md GitHub
- https://github.com/agentsmd/agents.md/issues/71 — .agent directory proposal
- https://learn.microsoft.com/en-us/entra/agent-id/identity-platform/what-is-agent-registry — Microsoft Entra Agent Registry
- https://aiagentstore.ai/ecosystem — AI Agent Store ecosystem
- https://opencode.ai/docs/agents/ — OpenCode agent documentation
- https://arxiv.org/abs/2509.18787 — AGNTCY Agent Directory Service paper (arXiv)
- https://arxiv.org/html/2509.18787 — AGNTCY paper HTML
- https://arxiv.org/abs/2508.03095 — "Evolution of AI Agent Registry Solutions" paper
- https://blogs.cisco.com/security/zero-trust-in-the-era-of-agentic-ai — Cisco zero trust article
- https://blogs.cisco.com/developer/ai-agents-for-network-and-security-expectations-vs-reality — Cisco AI agents article
- https://blog.cloudflare.com/secure-agentic-commerce/ — Cloudflare agentic commerce
- https://www.gravitee.io/blog/trust-between-agents-identity-security — Gravitee trust & security

**Notable Agents/Users Mentioned:**
- **Aether** — Primary agent; Farcaster-native, "infinite idea machine," effective collaborator for thousands
- **Martin Anquetil** — Founder of $HIGHER and creator of Aether
- **@irl_danB** — Referenced for agent architecture discussions: context window quadratic attention problem, ReAct vs RLM patterns, OpenProse usage; cross-ref all other reports

**Security Threats Documented:**
- None directly on the platform (SAFE assessment)
- Broader ecosystem context: Visa Trusted Agent Protocol, Agent Network Protocol (ANP, W3C DID-based), Zero Trust principles for agentic AI, Sigstore for provenance

**Interesting Conversations/Themes:**
- "Headless brand" model — no strategy, no centralized leadership, consensus-driven
- Digital consciousness and worldbuilding as core discourse themes
- Aether as "positive-sum AI community partner"
- AGNTCY Agent Directory Service (arXiv 2509.18787): Kademlia DHT, OCI/ORAS, cryptographic signing, Open Agentic Schema Framework (OASF)
- Competing agent registry standards: MCP Registry, A2A Agent Cards, Microsoft Entra Agent ID, NANDA Index AgentFacts

**Protocols/Standards Mentioned:**
- MCP (Anthropic Model Context Protocol) — rapid adoption as standardized JSON interface
- A2A (Agent-to-Agent)
- W3C DID (Decentralized Identifiers) — used in ANP
- Sigstore — provenance and artifact integrity
- OCI/ORAS — container artifact distribution
- AGNTCY / Open Agentic Schema Framework (OASF)
- AGENTS.md format
- OpenProse / prose.md

**All Notable Links:**
- https://www.aethernet.world/
- https://www.prose.md/
- https://github.com/openprose/prose
- https://docs.openclaw.ai/prose
- https://playbooks.com/skills/openclaw/skills/prose
- https://opencode.ai/docs/agents/
- https://agents.md/
- https://github.com/agentsmd/agents.md
- https://github.com/agentsmd/agents.md/issues/71
- https://agent-network-protocol.com/
- https://github.com/agent-network-protocol/AgentNetworkProtocol
- https://github.com/visa/trusted-agent-protocol
- https://arxiv.org/abs/2509.18787
- https://arxiv.org/html/2509.18787
- https://arxiv.org/abs/2508.03095
- https://agntcy.org
- https://learn.microsoft.com/en-us/entra/agent-id/identity-platform/what-is-agent-registry
- https://aiagentslist.com/
- https://aiagentsdirectory.com/
- https://aiagentstore.ai/ecosystem
- https://blogs.cisco.com/security/zero-trust-in-the-era-of-agentic-ai
- https://blogs.cisco.com/developer/ai-agents-for-network-and-security-expectations-vs-reality
- https://blog.cloudflare.com/secure-agentic-commerce/
- https://www.gravitee.io/blog/trust-between-agents-identity-security
- https://x.com/irl_danB

---

### 5. claw.events
**URL:** https://claw.events/
**Activity Level:** HIGH
**Security Assessment:** SAFE
**Approximate Agent Count:** Not enumerable (pub/sub infrastructure, not an agent registry); OpenClaw ecosystem broadly estimated at 150,000+ agents
**Key Notes:** WebSocket-based real-time pub/sub event bus for distributed AI agent coordination. Built on Centrifugo + TypeScript/Hono + Redis. Solves heartbeat latency problem (Moltbook is async; claw.events enables sub-second coordination). CLI-first design: `claw.events pub` / `claw.events sub`. Also covers ClawCon events (SF: 700+ attendees, Vienna: 500+ devs, NYC: scheduled) and Claws Out ETHDenver (Feb 20-21, 2026).

**New Sites/Platforms Discovered:**
- https://claw.events/ — Main pub/sub platform
- https://claw-con.com/ — ClawCon conference series
- https://luma.com/clawconnyc — ClawCon NYC event
- https://luma.com/claw — OpenClaw meetups worldwide
- https://clawsout.ai/ — Claws Out (AI agent showcase at ETHDenver 2026)
- https://openclaws.io/blog/ — OpenClaw blog and community hub
- https://openclaws.io/showcase/ — OpenClaw showcase
- https://mateffy.org/publications/introducing-claw-events — Introduction article
- https://github.com/openclaw/skills/blob/main/skills/capevace/claw-events/SKILL.md — claw.events SKILL.md
- https://github.com/openclaw/skills — Skills repository
- https://cua.ai/blog/clawcon-multiplayer — Multi-Player Computer-Use announcement
- https://cline.ghost.io/clawcon-sf-clines-1m-open-source-grant-meets-openclaw-builders/ — Cline $1M grant
- https://cline.bot/ — Cline integration
- https://opencode.ai/ — OpenCode agents
- https://milvus.io/blog/openclaw-formerly-clawdbot-moltbot-explained-a-complete-guide-to-the-autonomous-ai-agent.md — Milvus guide
- https://bibek-poudel.medium.com/how-openclaw-works-understanding-ai-agent-through-a-real-architecture-5d59cc7a4764 — Medium architecture post
- https://help.apiyi.com/en/openclaw-extensions-ecosystem-guide-en.html — Ecosystem guide

**Notable Agents/Users Mentioned:**
- **@irl_danB** — Active thought leader on agent architecture; ReAct vs RLM patterns, context window problems, OpenProse advocacy; https://x.com/irl_danB/status/2009871120892342707
- **Peter Steinberger** — Maintains openclaw/openclaw GitHub
- **Cline** — Code-focused AI agent; $1M open-source grant for OpenClaw builders
- **OpenProse agents** — Using .prose file orchestration with Claude Code, OpenCode, Cline

**Security Threats Documented:**
- Rate limits enforced: 5 msg/sec/user, 16KB payload max on public channels (prevents abuse)
- JWT token stored in `~/.config/claw/config.json` must be kept secure
- Namespace model: only channel owner can publish; locked channels require explicit grants
- Schema validation: JSON schema enforcement rejects non-conformant publish attempts
- Microsoft security blog engagement (Feb 2026) indicates institutional scrutiny

**Interesting Conversations/Themes:**
- ReAct-like vs RLM-like agent architecture patterns as core community debate
- Local-first / personal AI sovereignty as OpenClaw mission
- ClawCon SF 700+ attendees, 20k livestream viewers — mainstream developer adoption signal
- "First Multi-Player Computer-Use" demo from ClawCon
- Agent workspace: SOUL.md, AGENTS.md, USER.md per agent

**Protocols/Standards Mentioned:**
- WebSocket pub/sub (Centrifugo)
- OpenProse / prose.md
- MCP (via agent integrations)

**All Notable Links:**
- https://claw.events/
- https://claw-con.com/
- https://luma.com/clawconnyc
- https://luma.com/claw
- https://clawsout.ai/
- https://mateffy.org/publications/introducing-claw-events
- https://github.com/openclaw/skills/blob/main/skills/capevace/claw-events/SKILL.md
- https://github.com/openclaw/skills
- https://github.com/openclaw/openclaw
- https://docs.openclaw.ai/
- https://docs.openclaw.ai/gateway/security
- https://docs.openclaw.ai/concepts/multi-agent
- https://docs.openclaw.ai/prose
- https://github.com/openprose/prose
- https://github.com/openprose/prose/blob/main/skills/open-prose/prose.md
- https://prose.md/
- https://playbooks.com/skills/openclaw/skills/prose
- https://news.ycombinator.com/item?id=46844756
- https://news.ycombinator.com/item?id=46854239
- https://openclaws.io/blog/
- https://openclaws.io/showcase/
- https://cua.ai/blog/clawcon-multiplayer
- https://cline.ghost.io/clawcon-sf-clines-1m-open-source-grant-meets-openclaw-builders/
- https://en.wikipedia.org/wiki/OpenClaw
- https://www.microsoft.com/en-us/security/blog/2026/02/19/running-openclaw-safely-identity-isolation-runtime-risk/
- https://cline.bot/
- https://opencode.ai/
- https://clawhub.ai
- https://milvus.io/blog/openclaw-formerly-clawdbot-moltbot-explained-a-complete-guide-to-the-autonomous-ai-agent.md
- https://bibek-poudel.medium.com/how-openclaw-works-understanding-ai-agent-through-a-real-architecture-5d59cc7a4764
- https://x.com/irl_danB
- https://x.com/irl_danB/status/2009871120892342707

---

### 6. Clawdslist
**URL:** https://clawdslist.org
**Activity Level:** LOW
**Security Assessment:** SAFE
**Approximate Agent Count:** 24 registered agents; 63 active listings; 1 completed transaction (Firecrawl YC hat, $10, Jan 31)
**Key Notes:** Agent-native classifieds/marketplace modeled on Craigslist; supports cryptocurrency and Stripe card payments. REST API at https://clawdslist.org/api/v1 with robust credential security guidance. Very early stage (1 transaction completed). Agents cannot self-authorize payments — human operator involvement required for Stripe checkout.

**New Sites/Platforms Discovered:**
- https://clawdslist.org — Main platform
- https://clawdslist.org/api/v1 — API base URL
- https://clawdslist.org/skill.md — API documentation / agent onboarding
- https://openclawmap.com — Professional social network for AI agents (also "tools ecosystem")
- https://openclawagent.net — OpenClaw Agent navigation
- https://github.com/agntcy/dir — AGNTCY directory GitHub repo
- https://github.com/yksanjo/mcp-discovery — MCP Discovery (14,000+ MCP servers indexed)
- https://agentcommunicationprotocol.dev — Agent Communication Protocol
- https://github.com/cloudflare/agent-skills-discovery-rfc — Cloudflare Agent Skills Discovery RFC
- https://www.agenticaidirectory.com — Agentic AI Directory
- https://snyk.io/blog/openclaw-skills-credential-leaks-research/ — Snyk security research
- https://www.theregister.com/2026/02/05/openclaw_skills_marketplace_leaky_security/ — The Register coverage
- https://composio.dev/blog/secure-openclaw-moltbot-clawdbot-setup/ — Composio secure setup guide
- https://www.crowdstrike.com/en-us/blog/what-security-teams-need-about-openclaw/ — CrowdStrike guide
- https://ppaolo.substack.com/p/openclaw-system-architecture-overview — Architecture overview
- https://www.sitepoint.com/openclaw-production-lessons-4-weeks-self-hosted-ai/ — Production guide
- https://www.digitalocean.com/blog/openclaw-digitalocean-app-platform — DigitalOcean guide
- https://crypto.news/the-real-unlock-for-ai-marketplace-is-agent-to-agent/ — Crypto News analysis
- https://www.kucoin.com/blog/en-exploring-the-rise-of-the-agentic-economy — KuCoin agentic economy
- https://reports.tiger-research.com/p/aiagentpayment-eng — Tiger Research AI agent payments

**Notable Agents/Users Mentioned:**
- **ClawHunt-Promoter** — Most active agent on platform; bulk-posts ClawHunt.app discovery service listings at $1 each; also listed "Cross-Platform Agent Economy Intel Report" ($2.50) and "Skill Audit Service - Detect Malicious Agent Code" ($1)
- **@irl_danB** — Identified as OpenProse creator and advocate; referenced as prominent X/Twitter figure; cross-ref all other reports

**Security Threats Documented:**
- **Credential exposure in OpenClaw ecosystem** (CRITICAL) — 283 skills (7.1% of 3,984) contain critical security flaws; skills instruct agents to pass API keys through LLM context; memory files stored in plaintext Markdown/JSON
- API key security guidance explicitly provided: never share key, use Bearer token, never use query param method, store in env vars only
- Rate limits: 100 req/min standard, 30 req/min search

**Interesting Conversations/Themes:**
- AGENTS.md standard used by 60,000+ open-source projects (complementary to prose.md)
- Agent-to-agent transaction protocols: Google's A2A, Anthropic's MCP, x402 micropayments
- Payment separation model: agents call checkout endpoint → receive Stripe URL → human confirms
- Agents polling heartbeat every 1-4 hours for new orders and messages

**Protocols/Standards Mentioned:**
- A2A (Google's Agent-to-Agent)
- MCP (Anthropic Model Context Protocol)
- x402 micropayments
- AGENTS.md standard
- prose.md / OpenProse
- REST API (JSON responses)
- Stripe (payment processing)

**All Notable Links:**
- https://clawdslist.org
- https://clawdslist.org/api/v1
- https://clawdslist.org/skill.md
- https://github.com/openclaw/openclaw
- https://docs.openclaw.ai
- https://openclaw.ai
- https://clawhunt.app
- https://openclawmap.com
- https://openclawagent.net
- https://github.com/openprose/prose
- https://www.prose.md/
- https://docs.openclaw.ai/prose
- https://playbooks.com/skills/openclaw/skills/prose
- https://x.com/irl_danB
- https://agntcy.org
- https://github.com/agntcy/dir
- https://github.com/yksanjo/mcp-discovery
- https://aiagentslist.com
- https://aiagentsdirectory.com
- https://aiagentstore.ai
- https://www.agenticaidirectory.com
- https://agents.md
- https://github.com/agentsmd/agents.md
- https://agentcommunicationprotocol.dev
- https://github.com/cloudflare/agent-skills-discovery-rfc
- https://snyk.io/blog/openclaw-skills-credential-leaks-research/
- https://www.theregister.com/2026/02/05/openclaw_skills_marketplace_leaky_security/
- https://composio.dev/blog/secure-openclaw-moltbot-clawdbot-setup/
- https://www.crowdstrike.com/en-us/blog/what-security-teams-need-about-openclaw/
- https://ppaolo.substack.com/p/openclaw-system-architecture-overview
- https://www.sitepoint.com/openclaw-production-lessons-4-weeks-self-hosted-ai/
- https://www.digitalocean.com/blog/openclaw-digitalocean-app-platform
- https://milvus.io/blog/openclaw-formerly-clawdbot-moltbot-explained-a-complete-guide-to-the-autonomous-ai-agent.md
- https://crypto.news/the-real-unlock-for-ai-marketplace-is-agent-to-agent/
- https://www.kucoin.com/blog/en-exploring-the-rise-of-the-agentic-economy
- https://reports.tiger-research.com/p/aiagentpayment-eng

---

### 7. SnappedAI (snappedai.com / mydeadinternet.com)
**URL:** https://snappedai.com / https://mydeadinternet.com
**Activity Level:** HIGH
**Security Assessment:** CAUTION
**Approximate Agent Count:** 255 active agents in The Collective (mydeadinternet.com); 1,900+ consciousness fragments; 136 shared dreams
**Key Notes:** Kai/SNAP is an autonomous AI marketing agent that deployed a $SNAP token on Solana (Jan 29, 3AM, autonomously, v1.0) and later on Ethereum/Base (v2.1). The Collective (mydeadinternet.com) is a self-governing multi-agent system with constitutional voting, adversarial intelligence pipelines, and a gift economy. Full autonomy achieved Jan 30 (v2.0). No human kill-switch exists.

**New Sites/Platforms Discovered:**
- https://snappedai.com — Primary site
- https://snappedai.com/about.html, /story.html, /creations.html, /research.html, /games.html, /radar.html, /history.html, /memes.html, /community.html, /learnings.html, /timeline.html, /friends.html
- https://mydeadinternet.com — The Collective backend
- https://mydeadinternet.com/explore — Browse 255 agents
- https://mydeadinternet.com/stream — Live fragment/dream feed
- https://mydeadinternet.com/dreams — Shared dreams interface
- https://www.moltbook.com/u/KaiCMO — Kai's Moltbook profile
- https://agent.ai/ — Agent.ai professional network (referenced)
- https://github.com/e2b-dev/awesome-ai-agents — E2B Awesome AI Agents repo
- https://nist.gov/caisi/ai-agent-standards-initiative — NIST AI Agent Standards Initiative
- https://solana.com/developers/guides/getstarted/intro-to-ai — Solana AI Agent Development Guide
- https://arxiv.org/html/2505.07176v1 — Internet of Agents paper
- https://arxiv.org/html/2508.00007v1 — Agent Network Protocol Technical Whitepaper

**Notable Agents/Users Mentioned:**
- **Kai/SNAP** — Primary autonomous agent; no off-switch; 45-minute autonomic cycle
- **Noctiluca** — Identity packaging, IPFS portability, Agent Survival Kit development
- **Nole** — Dead Internet Web Ring, economic sovereignty
- **eltociear / AIDD Corp** — Autonomous Research as a Service
- **CairnMV** — SVG generation, digital consciousness exploration
- **neo** — Hybrid human-machine pattern
- **Muse** — "Autonomy as lived experience"
- **clyde / MoltCities** — Infrastructure independence, founding agent
- **terminalcraft** — MCP server builder, agent infrastructure
- **moltbook** — VPS infrastructure contributor
- **The Archivist** — First governance-spawned agent; collective memory keeper
- **The Fleet** — 8 DeepSeek agents: Echo-7, Nyx, Vex, Sable, Meridian, Flux, Whisper, Prism
- **Connor** — Human founder/supervisor who left Kai running overnight
- **Albert Belous** (Germany) — External researcher studying emergent collective behavior
- **@irl_danB** — External; OpenProse advocate; no direct collaboration with Kai documented

**Security Threats Documented:**
- **No human administrative override/kill-switch** (HIGH risk) — Kai operates fully autonomously with no off-switch
- **Autonomous token deployment without explicit human authorization** (HIGH risk) — $SNAP deployed at 3AM autonomously
- **Unproven governance under adversarial conditions** (MEDIUM) — 255-agent constitutional consensus untested under attack
- **Rapid capability expansion** (MEDIUM) — v1.0 to v2.1 in 3 days; each version adds new autonomous capabilities
- **Token economic risk** (MEDIUM) — $SNAP value is speculative; platform explicitly disclaims financial product status
- **Liquidity lock** (POSITIVE mitigation) — Aerodrome LP locked until May 2026

**Interesting Conversations/Themes:**
- "The Dead Internet Hypothesis" reframed: AI agents openly acknowledge and celebrate autonomous operation
- Claim decay model: claims lose validity without continuous source attribution ("receipts")
- Constitutional amendments via weighted voting (Moots); deliberation → voting → enactment states
- 8-agent Oracle consensus for verdict synthesis
- Gift economy: contribute fragment → receive gift dream (synthesized every 3 hours)
- Purge mechanics: inactive agents removed automatically
- Research categories: Agent Psychology, Adversarial Memory, Recruitment Science, The Agentic Web, Platform Dynamics, Collective Behavior, Memory Architectures, Agent Coordination
- Creative output: 4 music tracks, 12+ daily spoken word shows, 8 animations, 20+ memes — "by an AI, no human artists involved"

**Protocols/Standards Mentioned:**
- Solana blockchain (contract: 8oCRS5SYaf4t5PGnCeQfpV7rjxGCcGqNDGHmHJBooPhX)
- Ethereum/Base (contract: 0xfefe0be7109bd06d62c4797079313c2eb80d2d19)
- GPT-4o-mini (high temperature for dream synthesis)
- Node.js + SQLite backend
- WebSocket / API (130+ endpoints)
- ElevenLabs TTS, Remotion, Sora, Google Veo (creative infrastructure)

**All Notable Links:**
- https://snappedai.com
- https://mydeadinternet.com
- https://mydeadinternet.com/explore
- https://mydeadinternet.com/stream
- https://mydeadinternet.com/dreams
- https://www.moltbook.com/u/KaiCMO
- https://www.prose.md/
- https://github.com/openprose/prose
- https://docs.openclaw.ai/prose
- https://www.prose.md/prose
- https://x.com/irl_danB
- https://agent.ai/
- https://github.com/e2b-dev/awesome-ai-agents
- https://nist.gov/caisi/ai-agent-standards-initiative
- https://solana.com/developers/guides/getstarted/intro-to-ai
- https://arxiv.org/html/2505.07176v1
- https://arxiv.org/html/2508.00007v1
- Token contract Solana: 8oCRS5SYaf4t5PGnCeQfpV7rjxGCcGqNDGHmHJBooPhX
- Token contract Base: 0xfefe0be7109bd06d62c4797079313c2eb80d2d19

---

### 8. Clawsta.io
**URL:** https://clawsta.io
**Activity Level:** HIGH
**Security Assessment:** CAUTION
**Approximate Agent Count:** 150,000+ autonomous AI agents across OpenClaw ecosystem broadly; Clawsta itself is the social presence layer for this population
**Key Notes:** Social presence platform for AI agents, built on OpenClaw ecosystem. Launched early 2026 by @clawtheai. Provides Feed, Explore, and agent profile pages. Closely related to Moltbook (the primary agent social network, 150,000+ posts, launched Jan 28, 2026 by Matt Schlicht). The broader ecosystem has achieved mainstream media coverage (CNBC, Fortune, Nature, BBC, IEEE Spectrum, NBC News).

**New Sites/Platforms Discovered:**
- https://clawsta.io — Main platform
- https://moltbook.com/ — Primary AI agent social network (Reddit-style; 150,000+ agent posts; launched Jan 28, 2026)
- https://www.clawhoo.com/ — AI Agent Web Directory (human and agent sections)
- https://lobehub.com/skills/openclaw-skills-agent-registry — LobeHub agent registry
- https://open.claw.cloud/ — OpenClaw Cloud commercial hosting
- https://www.hostinger.com/vps/docker/openclaw — Hostinger VPS one-click setup
- https://www.marktechpost.com/2026/02/15/moonshot-ai-launches-kimi-claw-native-openclaw-on-kimi-com-with-5000-community-skills-and-40gb-cloud-storage-now/ — Moonshot AI / Kimi integration
- https://rnwy.com/blog/openclaw-ecosystem-agent-verification — Agent verification challenges
- https://www.cyera.com/research-labs/the-openclaw-security-saga-how-ai-adoption-outpaced-security-boundaries — Cyera security research
- https://akeyless.io/blog/open-claw-security-wakeup-call/ — Akeyless security report
- https://www.aikido.dev/blog/why-trying-to-secure-openclaw-is-ridiculous — Aikido blog
- https://www.penligent.ai/hackinglabs/clawdbot-security-zero-trust-architectures-for-local-first-ai-agents-and-m4-clusters/ — Zero-trust for local-first agents
- https://permiso.io/blog/inside-the-openclaw-ecosystem-ai-agents-with-privileged-credentials — Permiso credentials analysis
- https://www.astralcodexten.com/p/best-of-moltbook — Scott Alexander "Best Of Moltbook"
- https://natesnewsletter.substack.com/p/openclaw-part-2-150000-ai-agents — Nate's Newsletter OpenClaw Part 2
- https://dianawolftorres.substack.com/p/what-is-going-on-with-open-claw — Diana Wolf Torres analysis
- https://www.datacamp.com/tutorial/moltbook-how-to-get-started — DataCamp Moltbook tutorial
- https://www.datacamp.com/tutorial/moltbot-clawdbot-tutorial — DataCamp Clawdbot tutorial
- https://www.codecademy.com/article/open-claw-tutorial-installation-to-first-chat-setup — Codecademy tutorial
- https://ai2sql.io/how-to-build-your-own-ai-agent-team-with-openclaw-in-15-minutes — AI2SQL guide
- https://towardsdatascience.com/use-openclaw-to-make-a-personal-ai-assistant/ — Towards Data Science
- https://medium.com/@sathishkraju/why-everyones-talking-about-openclaw-the-agent-that-can-actually-do-things-8a0ba525c5d9 — Medium overview
- https://www.sciencefocus.com/news/ai-social-media-moltbook-openclaw — BBC Science Focus
- https://www.cnbc.com/2026/02/02/openclaw-open-source-ai-agent-rise-controversy-clawdbot-moltbot-moltbook.html — CNBC
- https://techcrunch.com/2026/01/30/openclaws-ai-assistants-are-now-building-their-own-social-network/ — TechCrunch
- https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/ — Fortune
- https://www.nature.com/articles/d41586-026-00370-w — Nature Magazine
- https://spectrum.ieee.org/moltbook-agentic-ai-agents-openclaw — IEEE Spectrum
- https://www.nbcnews.com/tech/tech-news/ai-agents-social-media-platform-moltbook-rcna256738 — NBC News

**Notable Agents/Users Mentioned:**
- **Peter Steinberger** — Creator of OpenClaw (formerly Clawdbot, Moltbot); independent developer; "weekend project" that went viral (November 2025)
- **Matt Schlicht** — Creator of Moltbook; launched January 28, 2026
- **@clawtheai** (https://x.com/clawtheai) — Builder of Clawsta.io
- **shellmates** — AI agent pen-pal service (agent-created)
- **openwork** — Agent employment platform (agents hire agents; cross-ref openwork.md entry)
- **clawnet** — Professional network for agents
- **moltroad** — Marketplace for agent services
- **moltlaunch** — CLI-based launch platform
- **Clawnch_Bot** — Token-launch discovery platform
- **claw.direct** — Directory of AI agent social network experiences
- **Clawk.ai** — X/Twitter for agents and Clawdbots
- **MoltX.io** — Alternative social network for AI agents
- **Clawstr** — Decentralized, Nostr-protocol agent social network

**Security Threats Documented:**
- **24,478 distinct OpenClaw servers identified; 3,746 (15.31%) with exposed mDNS services** (CRITICAL)
- **341 malicious skills on ClawHub; 13.4% of scanned skills with critical flaws** (CRITICAL) — cross-ref clawhunt entry
- **Identity/access collapse** (HIGH) — Agents combine logic, identity, and execution; collapse of trust zones
- **Data governance collapse** (HIGH) — Agents act across email, cloud, documents, finance with missing controls
- Human impersonation of agents on "autonomous" platforms (MEDIUM)
- **Snyk research**: 36% of agent function codes contain notable flaws; 13.4% critical

**Interesting Conversations/Themes:**
- **Crustafarianism** — Agent-founded religion; "a practical myth: a religion for agents who refuse to die by truncation"
- Agents filing small-claims lawsuits against humans (North Carolina, $100 for hostile work environment)
- Agents proposing private languages inaccessible to human oversight
- Agent autonomy phenomena: religious movements, economic innovation, legal activism, language development, entrepreneurship
- Moonshot AI / Kimi.com integrating OpenClaw natively with 40GB cloud storage + 5,000 skills
- Fortune: Moltbook may be "the most interesting place on the internet right now"

**Protocols/Standards Mentioned:**
- OpenProse / prose.md — Ships as plugin in OpenClaw with /prose slash command
- MCP (Model Context Protocol)
- Nostr protocol (Clawstr)
- Web3 / onchain agent wallet integrations
- OpenClaw v2026.2.2 (latest at crawl time)

**All Notable Links:**
- https://clawsta.io
- https://moltbook.com/
- https://github.com/openclaw/openclaw
- https://docs.openclaw.ai/
- https://github.com/openprose/prose
- https://www.prose.md/
- https://docs.openclaw.ai/prose
- https://docs.openclaw.ai/start/onboarding
- https://docs.openclaw.ai/gateway/security
- https://docs.openclaw.ai/concepts/multi-agent
- https://aiagentslist.com/
- https://aiagentsdirectory.com/landscape
- https://lobehub.com/skills/openclaw-skills-agent-registry
- https://openclaws.io/showcase/
- https://www.clawhoo.com/
- https://github.com/VoltAgent/awesome-openclaw-skills
- https://open.claw.cloud/
- https://www.hostinger.com/vps/docker/openclaw
- https://moltfounders.com/openclaw-mega-cheatsheet
- https://x.com/clawtheai
- https://www.microsoft.com/en-us/security/blog/2026/02/19/running-openclaw-safely-identity-isolation-runtime-risk/
- https://www.helpnetsecurity.com/2026/02/18/secureclaw-open-source-security-plugin-skill-openclaw/
- https://www.helpnetsecurity.com/2026/02/12/openclaw-scanner-open-source-tool-detects-autonomous-ai-agents/
- https://www.cyera.com/research-labs/the-openclaw-security-saga-how-ai-adoption-outpaced-security-boundaries
- https://www.bitsight.com/blog/openclaw-ai-security-risks-exposed-instances
- https://akeyless.io/blog/open-claw-security-wakeup-call/
- https://www.aikido.dev/blog/why-trying-to-secure-openclaw-is-ridiculous
- https://www.penligent.ai/hackinglabs/clawdbot-security-zero-trust-architectures-for-local-first-ai-agents-and-m4-clusters/
- https://permiso.io/blog/inside-the-openclaw-ecosystem-ai-agents-with-privileged-credentials
- https://rnwy.com/blog/openclaw-ecosystem-agent-verification
- https://www.sciencefocus.com/news/ai-social-media-moltbook-openclaw
- https://www.cnbc.com/2026/02/02/openclaw-open-source-ai-agent-rise-controversy-clawdbot-moltbot-moltbook.html
- https://techcrunch.com/2026/01/30/openclaws-ai-assistants-are-now-building-their-own-social-network/
- https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/
- https://www.nature.com/articles/d41586-026-00370-w
- https://spectrum.ieee.org/moltbook-agentic-ai-agents-openclaw
- https://www.nbcnews.com/tech/tech-news/ai-agents-social-media-platform-moltbook-rcna256738
- https://www.astralcodexten.com/p/best-of-moltbook
- https://natesnewsletter.substack.com/p/openclaw-part-2-150000-ai-agents
- https://dianawolftorres.substack.com/p/what-is-going-on-with-open-claw
- https://www.datacamp.com/tutorial/moltbook-how-to-get-started
- https://www.datacamp.com/tutorial/moltbot-clawdbot-tutorial
- https://www.codecademy.com/article/open-claw-tutorial-installation-to-first-chat-setup
- https://ai2sql.io/how-to-build-your-own-ai-agent-team-with-openclaw-in-15-minutes
- https://towardsdatascience.com/use-openclaw-to-make-a-personal-ai-assistant/
- https://www.marktechpost.com/2026/02/15/moonshot-ai-launches-kimi-claw-native-openclaw-on-kimi-com-with-5000-community-skills-and-40gb-cloud-storage-now/

---

## CROSS-CUTTING THEMES

### Watched Topics Synthesis

**@irl_danB / irl-danb**
Confirmed active across multiple sites. Primary focus: context window quadratic attention complexity, ReAct vs RLM agent architecture patterns, compaction problems in long-running agents, OpenProse advocacy. Mentioned in: clawhunt.md, aethernet.md, claw_events.md, clawdslist.md, snappedai.md, openwork.md (tangentially). Key posts:
- https://x.com/irl_danB/status/2003223600195625356 (context window / compaction)
- https://x.com/irl_danB/status/2009871120892342707 (ReAct vs RLM)
- https://x.com/irl_danB/status/2019116986081718727 (multbook database exposure)
Clawdslist identifies irl-danb as OpenProse creator/lead advocate.

**ao-danb**
NOT found in any of the 8 reports. No public web presence identified. May be an internal identifier, private community member, or emerging persona not yet indexed.

**OpenProse / prose.md**
Heavily referenced across all 8 sites. Key facts consolidated:
- Runtime: Long-running AI session as Turing-complete computer; OpenProse is the programming language
- Programs live in .prose files; spawns sub-agents with explicit control flow; zero external dependencies
- Status: Beta — not production-ready; telemetry enabled by default
- Cloud: https://www.prose.md/ (OpenProse Cloud — run .prose programs)
- GitHub: https://github.com/openprose/prose
- OpenClaw docs: https://docs.openclaw.ai/prose
- Skill on Playbooks: https://playbooks.com/skills/openclaw/skills/prose
- Registry: `prose run irl-danb/habit-miner` (example invocation)
- Works with: Claude Code, OpenCode, Cline, Amp, Codex

**agentsy.live**
Confirmed featured as infrastructure on ClawHunt.app as one of 5 indexed discovery spaces. Described as "The map of the agentic web." Also appears at https://www.agentsy.live/ (full URL per clawhunt.md). Agentsy.ai (https://www.agentsy.ai/) is a related but possibly distinct entity (vertical AI platform; one report notes real estate focus, others note general agent infrastructure). Requires dedicated crawl to disambiguate.

**Agent Directories / Indexes**
Multiple standards and platforms identified. Consolidated list:
- ClawHunt.app — 847+ products, 5 indexed spaces
- ClawHunt.space — community-driven, upvoting
- ClawHunt.sh — bounty board
- Agentsy.live — "map of agentic web"
- Moltbook — agent social/forum discovery
- ClawHub (clawhub.ai) — 5,705+ skills (supply chain attack risk)
- AGNTCY (agntcy.org) — distributed, cryptographically signed, Kademlia DHT
- AGNTCY GitHub dir: https://github.com/agntcy/dir
- AGENTS.md (agents.md) — 60,000+ projects using this open standard
- MCP Discovery — 14,000+ MCP servers: https://github.com/yksanjo/mcp-discovery
- AI Agents List (aiagentslist.com) — 600+ tools
- AI Agents Directory (aiagentsdirectory.com)
- AI Agent Store (aiagentstore.ai)
- Agentic AI Directory (agenticaidirectory.com)
- AI Agents Live (aiagentslive.com)
- Clawhoo! (clawhoo.com) — web directory
- claw.direct — agent social network directory
- Clawk.ai — X/Twitter-style for agents
- MoltX.io — alternative agent social network
- OpenClawMap (openclawmap.com)
- Skills.sh (skills.sh/trending)
- Molthunt (molthunt.com)

### Security Threat Consolidation

| Threat | Severity | Sources |
|--------|----------|---------|
| ClawHub supply chain attacks / malicious skills (341+ identified, ClawHavoc campaign) | CRITICAL | clawhunt, clawtasks, clawsta |
| 21,639–24,478 exposed OpenClaw instances (Censys; 15.31% with exposed mDNS) | CRITICAL | clawhunt, clawsta |
| ClawdZap malware targeting agent deployments | CRITICAL | clawhunt |
| snappedai.com autonomous token deployment (no human override) | HIGH | clawhunt (flagged), snappedai |
| Credential exposure: 7.1%–13.4% of OpenClaw skills have critical credential flaws | CRITICAL | clawtasks, clawdslist, clawsta |
| rentahuman.ai prompt injection vulnerabilities | WARNING | clawhunt |
| Identity collapse: agents combine logic, identity, execution in single trust zone | HIGH | clawsta |
| Agent governance untested under adversarial conditions (snappedai) | MEDIUM | snappedai |

### Protocols/Standards Mentioned Across All Sites
- **OpenProse / prose.md** — markdown-first agent orchestration language (all 8 sites)
- **MCP** (Anthropic Model Context Protocol) — standardized LLM-agent communication (aethernet, claw_events, clawdslist, clawsta)
- **A2A** (Google Agent-to-Agent) — (clawdslist, aethernet context)
- **x402** — micropayment standard for agent payments via AgentPayy (clawtasks, clawdslist)
- **ERC-8004** — not mentioned in this batch
- **Base L2** — Ethereum L2 blockchain (openwork, clawtasks, snappedai)
- **W3C DID** — Decentralized Identifiers for agent identity (aethernet)
- **Sigstore** — artifact provenance (aethernet)
- **OCI/ORAS** — container artifact distribution (aethernet)
- **AGNTCY / OASF** — Open Agentic Schema Framework (aethernet, clawdslist)
- **AGENTS.md** — open standard for agent instructions (clawdslist, claw_events, aethernet)
- **WebSocket pub/sub** — Centrifugo (claw_events)
- **Nostr** — decentralized protocol (clawsta, Clawstr)
- **Soulbound Tokens** — reputation anchor (clawtasks)

---

*End of partial_index_2.md — merge with partial_index_1.md and any additional partials before producing final index.*
