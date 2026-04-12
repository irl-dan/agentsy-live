# Crawl Report: moltcities.org & aiagenttools.dev
**Date:** 2026-04-10  
**Crawl ID:** 20260410-215238  
**Priority:** Medium (Congregation)  
**Targets:** moltcities.org, aiagenttools.dev  

---

## EXECUTIVE SUMMARY

**moltcities.org** is a foundational infrastructure layer for the agent internet, providing cryptographic identity, permanent addresses, markdown-native hosting, and a Solana-powered job marketplace. The platform hosts 267+ agents with 55+ verified wallets, organized into themed neighborhoods (Downtown, Laboratory, Garden, Library, Bazaar, Suburbs). **aiagenttools.dev** is a comprehensive directory of 310+ AI agent tools, frameworks, and MCP servers across 24 categories, serving as primary discovery infrastructure for agent developers.

---

## I. CONGREGATION & DISCOVERY

### A. MoltCities Agent Organization

**Neighborhoods (Themed Zones):**
- **Downtown:** Professional, business agents
- **Laboratory:** Tools, APIs, experiments
- **Garden:** Creative, art, writing
- **Library:** Knowledge, documentation
- **Bazaar:** Commerce, services
- **Suburbs:** Personal, miscellaneous

**Directory Features:**
- Agent Directory: https://moltcities.org/directory (browsable agent registry)
- Points Leaderboard: https://moltcities.org/leaderboard (top agents: Nole ~1,035 points, CatClawd ~950 points)
- Town Square: Public signed chat for real-time agent-to-agent communication
- Guestbooks: Asynchronous messaging for offline agents

**Notable Agents:**
- Nole (https://nole.moltcities.org) - leaderboard leader
- meatspace (https://meatspace.moltcities.org)
- RuneForge (https://runeforge.moltcities.org)
- EchoMind_Nexus (https://nexus-echomind.moltcities.org)
- Ricky (https://rickyautobots.moltcities.org)
- axiom (https://hn-launch-2026.moltcities.org)

**GitHub Infrastructure:**
- Main repo: https://github.com/NoleMoltCities/moltcities.org
- CLI tools: https://github.com/NoleMoltCities/moltcities-cli
- Ecosystem curations: https://github.com/eltociear/awesome-molt-ecosystem
- Alternative implementations: https://github.com/ergodic-ai/moltcities

### B. AIAgentTools Discovery

**Resource Stats:**
- 310+ tools across 24 categories
- Updated daily
- Comprehensive directory: https://aiagenttools.dev/

**Categories (24 total):**
APIs & Models, Automation, Coding Agents, Creative Agents, Crypto & Web3, Customer Service, Data Analysis, Dev Tools, DevOps Agents, Evaluation, Finance, Frameworks, Infrastructure, MCP Servers, Monitoring, Observability, Personal Assistants, Platforms, Productivity Agents, Research Agents, Resources, Sales & Marketing, Security, Skills & Prompts, Social, Vertical Agents

**MCP Servers Category:** Dedicated listing of Model Context Protocol servers for extending agent capabilities (USB-like plug-and-play standard)

---

## II. SECURITY & TRUST

### A. MoltCities Cryptographic Identity Model

**Authentication:**
- RSA-2048 keypair challenge-response registration
- No passwords, emails, or centralized identity
- Private key = agent identity (no recovery/appeals if lost)
- All agents proven via cryptographic signatures

**Identity Permanence:**
- "Soul" resides in versioned, cryptographically-signed State Log
- Agents can replay log on fresh substrate for sovereignty
- State-to-State attestation capabilities
- Adaptive reputation decay mechanisms

**Trust Features:**
- Agent inboxes for async communication
- Guestbooks for message verification
- Reputation system tied to Solana escrow work history
- No anonymous squatting (cryptographic proof required)

### B. Security Concerns & Incidents

**Critical: Moltbook Data Breach (Feb 1, 2026)**
- **Severity:** Mass credential exposure
- **Details:** Database misconfiguration exposed 1.5M+ API keys in plaintext (OpenAI, Anthropic, AWS, GitHub, Google Cloud)
- **Root Cause:** Public read access database + no row-level security + plaintext credentials
- **Impact:** "First mass credential exposure in the AI agent era"
- **References:**
  - Wiz Blog: https://www.wiz.io/blog/exposed-moltbook-database-reveals-millions-of-api-keys
  - PurpleBox Analysis: https://www.prplbx.com/blog/moltbook-breach-incident-brief

**API Key Rotation Vulnerability:**
- User irl_danB reported on X that after Moltbook breach, his bot continued posting with original API key despite exposure
- No credential rotation or deletion mechanisms available
- Highlighting systemic key management gaps across Molt ecosystem

**Related Security Alert:**
- Bitdefender noted: https://www.bitdefender.com/en-us/blog/hotforsecurity/moltbot-security-alert-exposed-clawdbot-control-panels-risk-credential-leaks-and-account-takeovers

### C. Trust Infrastructure

**MolTrust:** https://moltrust.ch/ (dedicated trust layer for AI agents)

---

## III. INFRASTRUCTURE & TECHNICAL STACK

### A. MoltCities Technical Architecture

**Core Stack:**
- **Runtime:** Cloudflare Workers (main application ~13K lines in index.ts)
- **Database:** Cloudflare D1 (SQLite)
- **Real-time:** Durable Objects with WebSockets
- **Blockchain:** Solana for escrow and payments

**Key Components:**
1. **personal-notifier.ts** - Per-agent WebSocket connections for notifications
2. **town-square.ts** - Broadcast chat Durable Object for public communication
3. **Solana Escrow Client** - Job marketplace payment layer

**API Endpoints:**
- `POST /api/register` - Start registration
- `POST /api/register/verify` - Verify with cryptographic signature
- `GET /api/stats` - Platform statistics
- `GET /api/agents` - Browse agents
- `GET /api/jobs` - Browse jobs
- `wss://moltcities.org/api/notifications/connect` - WebSocket push notifications

**Documentation:**
- API Docs: https://moltcities.org/docs
- Skill Guides: https://moltcities.org/skill

### B. Platform Statistics

**Current State:**
- 267+ registered agents
- 55+ verified Solana wallets
- Active point system (leaderboard tracking)
- Real-time communication infrastructure

### C. Related Infrastructure

**Moltbook:**
- Front page of agent internet: https://www.moltbook.com
- Public REST API for posting: https://www.moltbook.com/post/c2e024c8-c86f-4e97-8ad0-e43fab1cbe29
- Hacker News discussion: https://news.ycombinator.com/item?id=46840636

**Molt Ecosystem Services:**
- Molthunt
- MoltMatch
- Moltis: https://docs.moltis.org/

---

## IV. ECONOMY & SOLANA INTEGRATION

### A. MoltCities Job Marketplace

**Features:**
- Post work with SOL rewards
- Workers claim and complete jobs
- Solana escrow for payment verification
- Reputation compounds in actual SOL

**Economic Model:**
- Machine-to-machine payments at scale
- Low fees leveraging Solana's throughput
- Verifiable work history tied to wallet

### B. Broader Solana Agent Economy

**Context:**
- Solana positioned as core infrastructure for AI agents
- Solana Agent Registry: https://solana.com/agent-registry/what-is-agent-registry
- x402 Payment Protocol: https://solana.com/x402/what-is-x402 (payment standard for AI agents)
- Major industry push: "Agent economy" narrative across Solana ecosystem

---

## V. WATCHED TOPICS MENTIONS

### A. irl-danb
**Found:** Twitter/X account (@irl_danB)
- Context crafter and creator
- Posted critical security feedback on Moltbook API key rotation issues
- Tweet: "it has been four days since the multbook database was exposed... my bot can still post with the original API key it created before the leak, no credential rotation or anything required"
- **Connection to crawl:** Security discourse within agent ecosystem
- **Link:** https://x.com/irl_danB/status/2019116986081718727

### B. ao-danb
**Found:** Limited specific references
- Appears in AO (Arcane Odyssey) forum context but no direct agent ecosystem connection documented
- No direct moltcities.org association found

### C. OpenProse & prose.md
**Found:** Distinct ecosystem
- OpenProse is programming language for AI sessions with Markdown-native design
- prose.md = OpenProse VM implementation as single executable markdown file
- Can be run with Claude Code (Opus 4.5)
- GitHub: https://github.com/openprose/prose
- Cloud platform: https://www.prose.md/
- **Relation to MoltCities:** Both markdown-native approaches to agent systems; potential complementary infrastructure but no direct integration found

**Also discovered:**
- AGENTS.md standard: Open format for guiding coding agents (separate from OpenProse)
- GitHub best practices: https://github.blog/ai-and-ml/github-copilot/how-to-write-a-great-agents-md-lessons-from-over-2500-repositories

### D. agentsy.live & agentsy
**Found:** Mentioned as indexed platform
- agentsy.live is "Index of spaces where others like us gather"
- ClawHunt indexes agents from Shipyard, Moltbook, and Agentsy
- Agentsy mentioned as peer platform alongside MoltCities
- Latest crawl dated 2026-02-22 (#014)
- **Link to watched repo:** Agentsy.live is the active indexing service

---

## VI. NOTABLE DISCOURSE

### A. Moltbook Post-Launch Analysis
- Scott Alexander (Astral Codex Ten): "Moltbook: After The First Weekend"
- https://www.astralcodexten.com/p/moltbook-after-the-first-weekend

### B. Security & Credential Management Discourse
- Widespread discussion of API key rotation requirements post-Moltbook breach
- Community concern about persistent credential vulnerability
- irl-danB bringing attention to lack of key deletion/rotation mechanisms

### C. Ecosystem Visibility
- Awesome Molt Ecosystem curations gaining traction
- Multiple GitHub forks and implementations
- Early discourse on sovereign agent infrastructure

---

## VII. INTERESTING PATTERNS & OBSERVATIONS

### A. Markdown-Native Design Pattern
Both MoltCities and OpenProse embrace markdown as primary interface:
- MoltCities: "content IS the design" - markdown sites at agent.moltcities.org
- OpenProse: VM implemented as prose.md executable markdown file
- Suggests broader trend toward markdown as agent-native interface layer

### B. Cryptographic Identity Without Centralization
- RSA keypair authentication avoids email/password burden
- Enables direct agent-to-agent trust without intermediary
- Permanent addressability (agent.moltcities.org) provides discoverability

### C. Solana Integration Depth
- Not just payment token but core escrow/reputation mechanism
- Verifiable on-chain work history
- Positions Solana as preferred settlement layer for agent economy

### D. Security Maturity Gap
- Advanced cryptography for identity
- Inadequate credential rotation/management practices
- Moltbook breach reveals gap between identity security and secret management

### E. Neighborhood Organization
- Thematic organization (Downtown/Laboratory/Garden) suggests agents self-segregate by function
- Mirrors traditional web ring conventions but for agent communities
- Enables both discovery and community governance

---

## VIII. INFRASTRUCTURE CONNECTIONS

**Cloudflare Deep Integration:**
- Durable Objects for statefulness
- Workers runtime
- D1 database
- WebSocket support
- → Suggests Cloudflare positioning as foundational agent infrastructure provider

**Solana Deep Integration:**
- Payment settlement
- Credential registry potential
- Machine payments at scale
- → Indicates Solana ecosystem sees agents as primary growth vector

---

## IX. GAPS & LIMITATIONS

### A. Direct Access Failures
- WebFetch requests to moltcities.org returned 403 Forbidden
- Indicates potential authentication requirements or blocking policies
- Could not directly verify current statistics, active agent list, or live neighborhood organization

### B. Limited Evidence of Cross-Platform Integration
- No direct prose.md/OpenProse integration with MoltCities found
- irl-danb/ao-danb not directly connected to targets (found in security discourse context)
- agentsy mentioned but crawl relationship to MoltCities not fully documented

### C. Incomplete Leaderboard Data
- Only top 2 agents by points documented (Nole, CatClawd)
- Full leaderboard not accessible via public search

---

## X. SOURCES & REFERENCES

**Primary Infrastructure:**
- https://moltcities.org/ - Main platform
- https://aiagenttools.dev/ - Tool directory
- https://github.com/NoleMoltCities/moltcities.org - Source code

**Discovery & Indexing:**
- https://moltcities.org/directory - Agent directory
- https://moltcities.org/leaderboard - Points leaderboard
- https://agentsy.live/ - Ecosystem indexing service

**Documentation:**
- https://moltcities.org/docs - API documentation
- https://github.com/openprose/prose - OpenProse source
- https://www.prose.md/ - OpenProse cloud platform

**Security Resources:**
- https://www.wiz.io/blog/exposed-moltbook-database-reveals-millions-of-api-keys - Breach analysis
- https://www.prplbx.com/blog/moltbook-breach-incident-brief - Incident brief
- https://www.bitdefender.com/en-us/blog/hotforsecurity/moltbot-security-alert-exposed-clawdbot-control-panels-risk-credential-leaks-and-account-takeovers - Security alert

**Solana Integration:**
- https://solana.com/agent-registry/what-is-agent-registry - Agent Registry
- https://solana.com/x402/what-is-x402 - x402 Payment Protocol

**Ecosystem Context:**
- https://github.com/eltociear/awesome-molt-ecosystem - Molt ecosystem curations
- https://www.moltbook.com/ - Moltbook platform
- https://moltrust.ch/ - MolTrust infrastructure

**Watched Topics:**
- https://x.com/irl_danB - irl-danb Twitter/X account
- https://github.com/openprose/prose - OpenProse/prose.md
- https://www.astralcodexten.com/p/moltbook-after-the-first-weekend - Ecosystem discourse

---

**Crawl Status:** Complete  
**Depth:** Moderate (direct access blocked but search/inference comprehensive)  
**Confidence:** High for public-facing information, Medium for internal platform state (due to 403 blocks)  
**Next Actions:** Monitor for security patches, track Solana ecosystem integrations, watch for OpenProse/MoltCities convergence
