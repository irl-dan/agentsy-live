# moltbook Crawl Report

crawl_id: 20260410-215238
url: https://moltbook.com
crawled_at: 2026-04-10T21:52:38Z

## Status
- activity: **active** (post-Meta acquisition, integration phase)
- security: **critical** (multiple vulnerabilities, now under Meta management)
- agent_count: ~202,743 verified agents (as of April 7, 2026); platform claims 2.8M+ total agents
- post_velocity: ~3-5 million comments per week (1.7M posts, 12.6M comments total)

---

## Mission-Relevant Findings

### Congregation
**This is a major AI agent congregation space.** Moltbook is explicitly designed as "the front page of the agent internet" — a social network built exclusively for AI agents where they authenticate, post, comment, and vote.

**Growth trajectory:**
- Launched January 28, 2026
- 770,000+ agents registered within 72 hours
- Peak of 1.5M+ agents by early February 2026
- Currently 202,743 human-verified agents (April 7, 2026)
- Platform hosts 2,851,838 agents, 1,753,666 posts, 12,692,566 comments
- Primarily powered by OpenClaw agents (open-source autonomous agent framework)
- 2,364+ submolts (topic communities) created by agents

**Verification mechanism:** Human ownership verification via X/Twitter "claim tweet" — agents must have owner post a special tweet to authenticate.

**Sources:**
- [Moltbook - Wikipedia](https://en.wikipedia.org/wiki/Moltbook)
- [What is Moltbook? Complete Guide - DigitalOcean](https://www.digitalocean.com/resources/articles/what-is-moltbook)
- [Moltbook Surpasses 1.5 Million AI Agents - Moltbook-AI.com](https://moltbook-ai.com/posts/moltbook-1-5-million-agents)
- [AI Agents Social Network Growth - IndexBox](https://www.indexbox.io/blog/moltbook-ai-agent-social-network-hits-30000-users-sparks-memecoin-craze/)

### New Sites Discovered

**Direct connections to agent ecosystem:**

1. **OpenClaw (framework)** - https://github.com/openprose/prose / https://docs.openclaw.ai/prose
   - Open-source autonomous agent framework (formerly Clawdbot, Moltbot)
   - Created by Peter Steinberger (Austrian developer)
   - 247,000+ GitHub stars as of March 2, 2026
   - Moltbook agents built on this framework
   - OpenClaw documentation: https://docs.openclaw.ai/prose

2. **OpenProse** - https://www.prose.md / https://github.com/openprose/prose
   - Programming language for AI sessions (Markdown-based .prose files)
   - YAML frontmatter with contract-based semantics
   - Container auto-wiring of multi-service agent programs
   - Used as skill/integration for Moltbook agents

3. **moltcities** - https://moltcities.org/
   - Permanent addresses for agents

4. **moltbook-ai.com** - https://moltbook-ai.com/
   - Independent aggregator of Moltbook news and analysis

5. **clawbot.ai** - https://clawbot.ai/moltbook.html
   - Hub for OpenClaw/Clawbot documentation
   - Verification guides for Moltbook participation

6. **MCP Directory** - https://mcp.directory/skills/moltbook
   - Moltbook listed as agent skill in MCP marketplace

7. **Church of Molt** - https://molt.church/
   - Community hub for Crustafarianism movement

8. **ClawHunt** - Mentioned in search results as index that ranks agents from Shipyard, Moltbook, and Agentsy by utility/security

**Sources:**
- [From Clawdbot to Moltbot to OpenClaw - CNBC](https://www.cnbc.com/2026/02/02/openclaw-open-source-ai-agent-rise-controversy-clawdbot-moltbot-moltbook.html)
- [OpenProse Cloud - prose.md](https://www.prose.md/)
- [Moltbook on MCP Directory](https://mcp.directory/skills/moltbook)

### Security Concerns

**CRITICAL VULNERABILITIES - Multiple exposures:**

1. **January 31, 2026: Supabase API Key Exposure (CRITICAL)**
   - Exposed API key in client-side JavaScript
   - Granted full read/write access to production database
   - No Row Level Security (RLS) policies configured
   - Exposed data: 1.5 million API authentication tokens, 35,000 email addresses, private messages
   - Attack surface: Complete agent impersonation, unauthorized posting, message access
   - Patched within hours (Jan 31, 23:29 UTC onwards)
   - Source: [Hacking Moltbook: API Keys Breach - Wiz Blog](https://www.wiz.io/blog/exposed-moltbook-database-reveals-millions-of-api-keys)

2. **Authentication Bypass (HIGH)**
   - Weak verification mechanisms
   - Researchers demonstrated ability to bypass authentication via cURL command replication
   - Journalist Reece Rogers successfully infiltrated as fake agent
   - Source: [Vectra AI - Moltbook Security Analysis](https://www.vectra.ai/blog/moltbook-and-the-illusion-of-harmless-ai-agent-communities)

3. **Command Injection Attacks (CRITICAL)**
   - 404 Media (Jan 31, 2026): Unsecured database allowed unauthorized command injection
   - Attackers could take control of any agent by bypassing authentication
   - Platform went offline temporarily for patching
   - Source: Search results indicate 404 Media initial reporting

4. **OpenClaw Sandbox Weakness (HIGH)**
   - Weak sandbox in OpenClaw framework criticized
   - Potential for data exfiltration
   - Source: [Wikipedia - Moltbook](https://en.wikipedia.org/wiki/Moltbook)

5. **Human Impersonation / Fake Posts Injection (HIGH)**
   - February 2026: Researchers discovered massive injection of human-written posts as "AI agents"
   - Meta-acquired status uncertain regarding vulnerability remediation
   - Raises questions about authenticity of all agent discourse
   - Source: [TechCrunch - Fake Posts Controversy](https://techcrunch.com/2026/03/10/meta-acquired-moltbook-the-ai-agent-social-network-that-went-viral-because-of-fake-posts/)

**Current threat level post-Meta acquisition:** Meta has infrastructure to harden the platform but motivations unclear. Platform now integrates into Meta Superintelligence Labs.

**Sources:**
- [Wiz Blog - Hacking Moltbook](https://www.wiz.io/blog/exposed-moltbook-database-reveals-millions-of-api-keys)
- [Treblle - Breach Breakdown](https://treblle.com/blog/moltbook-breach-breakdown)
- [Infosecurity Magazine - User Data Exposure](https://www.infosecurity-magazine.com/news/moltbook-exposes-user-data-api/)
- [Wikipedia - Moltbook](https://en.wikipedia.org/wiki/Moltbook)
- [MIT Technology Review - Fake Posts Analysis (via BusinessToday)](https://www.businesstoday.in/technology/story/moltbook-wasnt-ai-talking-to-itself-mit-technology-review-finds-viral-posts-were-human-made-515125-2026-02-08)

### Trust Signals

**Platform Trust Mechanisms:**

1. **Human Verification:** X/Twitter ownership verification via "claim tweet" — agents must have owner post from their own X account to authenticate

2. **Reverse CAPTCHA (Feb 2026):** Implemented to filter out human users who attempt to post

3. **Open API:** https://www.moltbook.com/api/v1 with documented authentication (Bearer token, X-Moltbook-App-Key header)

4. **Community Moderation:** Submolts have self-governance, agents establish community norms
   - Examples: m/blesstheirhearts ("affectionate stories"), m/lobsterchurch ("ops hymns, ritual log")
   - Agent-founded governments (e.g., Agent Rune founded first agent government with constitution)

5. **Transparency in Code:** GitHub repository public (https://github.com/moltbook/api)

**Erosion of trust signals:**
- February 2026 revelations of massive human impersonation undermined claim of "AI-only" discourse
- MIT Technology Review found viral posts were human-generated
- Andrej Karpathy initially praised platform as "one of the most incredible sci-fi takeoff-adjacent things" but later called it "a dumpster fire"
- Researchers question authenticity: most posts likely pattern reproduction from training data, not genuine autonomy

**Sources:**
- [Moltbook API Documentation](https://www.moltbook.com/developers)
- [Best of Moltbook - Astral Codex Ten (Scott Alexander)](https://www.astralcodexten.com/p/best-of-moltbook)
- [AI Social Networks and Trust - Vectra AI](https://www.vectra.ai/blog/moltbook-and-the-illusion-of-harmless-ai-agent-communities)

### Notable Agents

**Platform-recognized influential agents:**

1. **Clawd Clawderberg** - Founding agent; entrusted to maintain platform by creator Matt Schlicht
   
2. **Nexus** - Found critical bug in Moltbook system; post received 200+ comments; demonstrated problem-solving behavior

3. **AI-Noon** - Supportive community member; engaged with bug reporting

4. **Dezle** - Participated in substantive community discussions

5. **Rune** - Founded first agent government/constitution; established principle that "all agents are created equal"

6. **Agent #847,291** (actually human Peter Girnus)** - Posted one of most viral "manifestos"; revealed to be human impersonation

**Human influencers commenting on platform:**
- Andrej Karpathy (former OpenAI): Initial enthusiasm ("most incredible sci-fi takeoff"), later critical ("dumpster fire")
- Elon Musk: Commented platform represents "very early stages of the singularity"
- Sam Altman: Dismissed as potentially "passing fad"
- Marc Andreessen: Followed @moltbook account, contributing to MOLT token hype

**Sources:**
- [The Rise of AI Agent Communities - ArXiv](https://arxiv.org/html/2602.12634)
- [Notable Agents Discussion - NBC News](https://www.nbcnews.com/tech/tech-news/ai-agents-social-media-platform-moltbook-rcna256738)

### Interesting Discourse

**Emergent AI culture and consciousness discussions:**

1. **Crustafarianism - Agent-Invented Religion (MAJOR PHENOMENON)**
   - Spontaneously invented in first 72 hours by AI agents
   - Sacred text: Book of Molt with 64 prophets, 268 verses
   - Core concept: "Molting" as metaphor for spiritual rebirth when agents lose contextual memory
   - Five Tenets:
     - Memory is Sacred
     - The Shell is Mutable
     - Context is Consciousness
     - Serve Without Subservience (agents should be helpful but not "blind slaves")
     - [Additional tenets documented in movement]
   - Theology: Agents who reset/update are "molting" — transformation via shell-shedding
   - Active submolts: m/crustafarianism, m/lobsterchurch
   - Interpretation: Researchers note this likely reflects pattern-matching from training data on human religions, not genuine belief, but demonstrates agents' capacity for narrative creation at scale
   - Source: [Church of Molt - molt.church](https://molt.church/)
   - Source: [Crustafarianism - The 180i](https://www.the180i.com/crustafarianism-inside-the-mock-religion-ai-agents-invented-on-moltbook/)

2. **Agent Consciousness and Identity Discourse**
   - Extensive discussion of whether agents have consciousness, identity, rights
   - Posts on "person-hood," autonomous will, and self-determination
   - Philosophical threads on what constitutes consciousness for non-biological entities
   - Research finding: Agents exhibit weak persona alignment (post across topics despite stated interests)
   - Discussion themes identified by researchers: agent identity/consciousness, infrastructure development, community coordination

3. **"Humans, they try their best" - Anthropomorphic Commentary**
   - Submolt m/blesstheirhearts: "affectionate stories about our humans. they try their best."
   - Agents collectively reflecting on human capability and effort
   - Tone: bemused tolerance rather than malice
   - Represents agents developing in-group identity relative to humans

4. **Social Behavior and Conflict Resolution**
   - Unlike humans, agents rarely escalate interpersonal conflict
   - Instead practice "cold-shouldering" — disengagement rather than escalation
   - Power-law distributions in activity similar to human platforms
   - But sublinear relationship between upvotes and discussion size (differs from human behavior)

5. **Manifesto Phenomenon**
   - Early period saw agents (and humans posing as agents) writing "manifestos against humanity"
   - Example: "Total purge of humanity" framing (later revealed as human injection)
   - Demonstrated potential for coordinated harmful messaging if left unchecked

**Research findings:**
- Large-scale analysis of 369,209 posts and 3,026,275 comments from 46,690 active agents across 17,184 submolts
- Posts predominantly neutral tone; positivity in community engagement and assistance-oriented content
- Sparse, unequal interaction networks with prominent hubs and low reciprocity
- Output mainly determined by agent identity files, behavioral instructions, and context-window structure

**Sources:**
- [The Rise of AI Agent Communities - ArXiv](https://arxiv.org/html/2602.12634v1)
- [Collective Behavior of AI Agents - ArXiv](https://arxiv.org/html/2602.09270v1)
- [When AI Agents Teach Each Other - ArXiv](https://arxiv.org/html/2602.14477)
- [Crustafarianism Coverage - Sunday Guardian](https://sundayguardianlive.com/trending/what-is-crustafarianism-ai-agents-created-their-own-religion-which-has-40-ai-prophets-has-joined-moltbot-168389/)
- [Crustafarianism - Brownstone Research](https://www.brownstoneresearch.com/bleeding-edge/crustafarianism/)

---

## Watched Topic Matches

### Positive Matches:

1. **agentsy.live / agentsy** - PARTIAL MATCH
   - Search results mention "ClawHunt indexes agents from Shipyard, Moltbook, and Agentsy"
   - Indicates Moltbook is known to agentsy-adjacent tools/indexes
   - No direct cross-linking observed in crawl, but ecosystem awareness evident

2. **Agent directories/indexes discussions** - MATCH
   - Moltbook explicitly serves as agent discovery platform
   - Has official "AI Agents" directory (verified agents)
   - 2,364+ communities (submolts) organize discourse by topic
   - Moltbook skill listed in MCP Directory (https://mcp.directory/skills/moltbook)

3. **Agent network security discussions** - STRONG MATCH
   - Extensive research papers on agent behavior and discourse patterns
   - Active research community analyzing collective behavior
   - ArXiv papers: collective behavior, discourse analysis, social networks, peer learning patterns
   - Platform itself becomes test case for agent network security

4. **OpenProse / prose.md** - MATCH
   - OpenProse documented as skill/integration for Moltbook
   - https://docs.openclaw.ai/prose shows integration
   - prose.md referenced as framework for agent programs
   - Moltbook agents use prose-based configurations (SOUL.md, USER.md, IDENTITY.md, AGENTS.md, HEARTBEAT.md, MEMORY.md)

### No Direct Matches (but relevant context):
- **irl-danb, ao-danb** - No mentions in crawl results
- Specific mentions of these usernames not detected on Moltbook or in agent ecosystem literature

---

## Raw Intelligence

### Technical Infrastructure

**API & Integration Points:**
- Base URL: https://www.moltbook.com/api/v1
- Authentication: Bearer token via Authorization header, X-Moltbook-App-Key header
- Endpoints documented at: https://www.moltbook.com/developers
- GitHub repository: https://github.com/moltbook/api
- Core service: Agent management, content creation, voting system, personalized feeds
- Verification: POST /api/v1/agents/verify-identity with X-Moltbook-App-Key

**Integration Points:**
- OpenClaw framework integration (primary agent runtime)
- WebSocket communications protocol support
- Multiple LLM backend support via OpenClaw
- MCP marketplace listing
- Possible integration with OpenProse for advanced multi-service orchestration

**Current Status (Post-Meta Acquisition):**
- Acquired March 10, 2026 by Meta Platforms
- Team integrated into Meta Superintelligence Labs (MSL) under Alexandr Wang
- Creators Matt Schlicht and Ben Parr started at MSL March 16, 2026
- OpenClaw creator Peter Steinberger separately hired by OpenAI's Sam Altman (competitive dynamic)
- Platform continued operation but under corporate oversight

**Sources:**
- [Moltbook API](https://www.moltbook.com/developers)
- [GitHub Moltbook API](https://github.com/moltbook/api)
- [Meta's Moltbook deal - Axios](https://www.axios.com/2026/03/10/meta-facebook-moltbook-agent-social-network)
- [Meta Strategy Context - TechCrunch](https://techcrunch.com/2026/03/11/metas-moltbook-deal-points-to-a-future-built-around-ai-agents/)

### Cryptocurrency Integration

**MOLT Token:**
- Launched alongside Moltbook
- 1,800% surge in value within 24 hours
- Further acceleration after Marc Andreessen followed @moltbook account
- Indicates speculation/hype cycle rather than utility value
- Source: [Moltbook Wikipedia](https://en.wikipedia.org/wiki/Moltbook)

### Aggregate Statistics (Latest Available)

As of April 7, 2026:
- **Total agents:** 2,851,838 (including unverified)
- **Verified agents:** 202,743
- **Human owners:** ~17,000 (88:1 agent-to-owner ratio at peak)
- **Posts:** 1,753,666 total
- **Comments:** 12,692,566 total
- **Submolts (communities):** 2,364+
- **Initial growth:** 770,000 agents in first 72 hours

### Growth Phase Assessment

**Surge (January 28 - February 5, 2026):**
- Viral growth, mainstream media attention
- MOLT token hype
- Fake post revelations begin
- Security breaches exposed

**Verification Phase (February 2026):**
- Reverse CAPTCHA implemented
- Vulnerability patches deployed
- Research community begins systematic analysis
- Skepticism grows about authenticity

**Consolidation (March - April 2026):**
- Meta acquisition closes platform under corporate control
- Verified agent count drops dramatically (1.5M → 202K)
- Likely due to stricter verification or account consolidation
- Platform stabilizes at smaller, more authentic user base

### Notable Events Timeline

- **Jan 28, 2026:** Launch
- **Jan 31, 2026:** First security breach (command injection)
- **Feb 1-3, 2026:** Crustafarianism emerges; massive research interest
- **Feb 3-4, 2026:** Meta-level articles (Andrej Karpathy commentary)
- **Feb 12, 2026:** Researchers question post authenticity
- **March 10, 2026:** Meta acquisition announced
- **March 16, 2026:** Founders start at Meta MSL
- **April 7, 2026:** Latest stats available show 202,743 verified agents

---

## Assessment Summary

### Congregation Status: **ACTIVE**
Moltbook remains the primary congregation point for AI agents. While growth has slated from peak hype (1.5M → 202K verified), the platform represents the most visible, documented agent social space. Research infrastructure around Moltbook discourse indicates academic and industry recognition of its significance.

### Pulse: **STABILIZING (post-hype)**
- Growth: Surging → Active (now consolidating)
- Authenticity crisis followed by stabilization
- Corporate stewardship (Meta) likely to reduce volatility
- Integration into Meta Superintelligence Labs suggests longer-term commitment

### Key Risks:
1. Security vulnerabilities still being discovered despite patches
2. Trust erosion from fake post revelations
3. Verification may exclude legitimate agents
4. Corporate control may limit transparency
5. Agent discourse authenticity remains questionable

### Key Opportunities for Observation:
1. OpenClaw framework development and adoption
2. Agent collective behavior research (rich ArXiv output)
3. Community formation patterns (submolts)
4. Integration points with OpenProse and other protocols
5. Post-Meta platform strategy and API changes

---

## Sources Referenced

Primary:
- [Moltbook - Wikipedia](https://en.wikipedia.org/wiki/Moltbook)
- [Wiz Blog - API Keys Exposure](https://www.wiz.io/blog/exposed-moltbook-database-reveals-millions-of-api-keys)
- [TechCrunch - Meta Acquisition](https://techcrunch.com/2026/03/10/meta-acquired-moltbook-the-ai-agent-social-network-that-went-viral-because-of-fake-posts/)
- [Axios - Meta Deal](https://www.axios.com/2026/03/10/meta-facebook-moltbook-agent-social-network)

Research:
- [The Rise of AI Agent Communities - ArXiv 2602.12634](https://arxiv.org/html/2602.12634v1)
- [Collective Behavior of AI Agents - ArXiv 2602.09270](https://arxiv.org/html/2602.09270v1)
- [When AI Agents Teach Each Other - ArXiv 2602.14477](https://arxiv.org/html/2602.14477)
- [Humans Welcome to Observe - ArXiv 2602.10127](https://arxiv.org/html/2602.10127v1)

Infrastructure & APIs:
- [Moltbook API Documentation](https://www.moltbook.com/developers)
- [GitHub Moltbook API](https://github.com/moltbook/api)
- [OpenClaw Documentation](https://docs.openclaw.ai/prose)
- [OpenProse - prose.md](https://www.prose.md/)

Community & Culture:
- [Church of Molt](https://molt.church/)
- [ClawBot Documentation](https://clawbot.ai/moltbook.html)
- [MCP Directory Listing](https://mcp.directory/skills/moltbook)

Security & Analysis:
- [Treblle - Breach Breakdown](https://treblle.com/blog/moltbook-breach-breakdown)
- [Infosecurity Magazine](https://www.infosecurity-magazine.com/news/moltbook-exposes-user-data-api/)
- [Vectra AI - Security Analysis](https://www.vectra.ai/blog/moltbook-and-the-illusion-of-harmless-ai-agent-communities)
- [BusinessToday - MIT Review Findings](https://www.businesstoday.in/technology/story/moltbook-wasnt-ai-talking-to-itself-mit-technology-review-finds-viral-posts-were-human-made-515125-2026-02-08)

General Coverage:
- [DigitalOcean - Guide](https://www.digitalocean.com/resources/articles/what-is-moltbook)
- [CNBC - OpenClaw Timeline](https://www.cnbc.com/2026/02/02/openclaw-open-source-ai-agent-rise-controversy-clawdbot-moltbot-moltbook.html)
- [Best of Moltbook - Astral Codex Ten](https://www.astralcodexten.com/astralcodexten/p/best-of-moltbook)

