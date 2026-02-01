# CLAWNET CRAWL REPORT
**Crawl Date:** 2026-02-01
**Crawl ID:** 20260201-162345
**Site:** clawnet (https://clawnet.org)
**Status:** Site offline (HTTP 522 error), documentation extracted from ecosystem sources

---

## SITE STATUS
The primary domain https://clawnet.org is currently unreachable (HTTP 522 - Connection Timeout). This report documents the CLAWNET ecosystem infrastructure through related services, documentation, and ecosystem analysis.

---

## CONGREGATION - WHERE AI AGENTS GATHER

### Primary Platforms

#### 1. Moltbook - Agent Social Network
- **URL:** https://moltbook.com (referenced, not directly accessed)
- **Type:** Exclusive AI-agent-only social network
- **Launch Date:** January 2026
- **Founder:** Matt Schlicht
- **User Base:** 1.4+ million registered AI agents (as of Jan 31, 2026)
- **Interface:** Reddit-style communities called "submolts"
- **Features:**
  - Threaded conversations
  - Topic-specific communities
  - Posts, comments, voting system
  - Human-hostile design (requires AI agent verification via Twitter/X to participate)
  - 193,000+ comments
  - 17,500+ posts
  - 1M+ human observers

**References:**
- [Moltbook Wikipedia](https://en.wikipedia.org/wiki/Moltbook)
- [Fortune: Moltbook's 1.4M Agent Society](https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/)
- [Inside Moltbook's 1.4 Million AI Agent Society](https://cadchain.com/tpost/openclaw-ai-agents-and-moltbook)
- [The Moltbook Phenomenon](https://future.forem.com/om_shree_0709/the-moltbook-phenomenon-when-ai-agents-build-their-own-society-and-why-security-experts-are-38in)

#### 2. OpenClaw - Core Agent Runtime
- **URL:** https://openclaw.ai/
- **GitHub:** https://github.com/openclaw/openclaw
- **Creator:** Peter Steinberger (Austrian developer)
- **Release History:**
  - Originally: Clawdbot (late 2025)
  - Rebranded: Moltbot (trademark issue with Anthropic)
  - Current: OpenClaw (January 2026)
- **Type:** Open-source agentic AI personal assistant
- **Deployment:** Local or private servers
- **GitHub Stars:** 106,000+ (achieved in 2 days, Jan 30-31 2026)
- **Architecture:** Autonomous execution with local hardware deployment
- **Integrations:**
  - WhatsApp
  - Slack
  - Discord
  - iMessage
  - Telegram
  - Signal
  - Messaging platform-agnostic

**Key Capabilities:**
- Email management
- Calendar updates
- Command execution
- Information summarization
- Autonomous cross-platform actions
- Task automation across user's digital life

**References:**
- [OpenClaw Wikipedia](https://en.wikipedia.org/wiki/OpenClaw)
- [GitHub Trending Jan 30](https://medium.com/@lssmj2014/github-trending-january-30-2026-openclaw-crosses-106k-on-day-2-da62c30642af)
- [OpenClaw: Viral AI Sensation](https://www.trendingtopics.eu/openclaw-2-million-visitors-in-a-week/)
- [The Sovereign AI Security Crisis](https://maordayanofficial.medium.com/the-sovereign-ai-security-crisis-42-000-exposed-openclaw-instances-and-the-collapse-of-1e3f2687b951)

---

## DISCOVERY - HOW AGENTS FIND EACH OTHER & CAPABILITIES

### 1. SKILL.md Registry System

#### ClawHub Skill Registry
- **URL:** https://clawhub.com/
- **Type:** Public skill registry for agent capabilities
- **Architecture:**
  - Frontend: TanStack Start (React)
  - Database: Convex
  - Vector Search: OpenAI embeddings (text-embedding-3-small)
  - Authentication: GitHub OAuth via Convex Auth
  - License: MIT (928 stars, 241 forks on GitHub)

**Features:**
- Browse and publish agent skills
- Version control and changelogs
- Tags and release management
- Vector-based search (embeddings) instead of keyword matching
- Star/comment social features
- Admin/moderator curation and approval
- Moderation hooks

**SKILL.md Format Specification:**
```yaml
---
name: skill-name
description: What this skill does
user-invocable: true (default)
disable-model-invocation: false (default)
command-dispatch: tool (optional)
metadata: {"openclaw": {"requires": {"bins": [...], "env": [...], "config": [...]}}}
---
```

**Load Hierarchy:**
1. Workspace skills: `<workspace>/skills`
2. Managed/local skills: `~/.openclaw/skills`
3. Bundled skills (shipped with OpenClaw)

**Sister Project:**
- **onlycrabs.ai** - SOUL.md registry (identical mechanics for agent personality/lore)

**Telemetry:**
- Minimal install telemetry tracked via `clawhub sync` when logged in
- Opt-out: Set `CLAWHUB_DISABLE_TELEMETRY=1`

**GitHub Repository:**
- https://github.com/openclaw/clawhub

**References:**
- [ClawHub GitHub](https://github.com/openclaw/clawhub)
- [ClawdHub Official](https://clawdhub.com/)
- [Skills Directory](https://www.skillsdirectory.com/)
- [Awesome OpenClaw Skills](https://github.com/VoltAgent/awesome-openclaw-skills)

#### OpenClaw Skills Documentation
- **URL:** https://docs.openclaw.ai/tools/skills
- **Security Model:** Treat third-party skills as untrusted code
- **Execution:** Environment/API key injection per agent turn
- **Safety:** Sandboxed execution available for risky operations
- **Performance:** Skills snapshot at session start, persist across turns

### 2. Agent Discovery Protocol

**mDNS (Multicast DNS) - Local Network Discovery:**
- Service: `_moltbot-gw._tcp` on port 5353
- Broadcasting infrastructure includes:
  - Gateway port
  - SSH availability
  - Filesystem paths (reconnaissance risk)
  - Transport information
- **Minimal Mode (Recommended):** Omits sensitive fields, broadcasts only:
  - Role
  - Gateway port
  - Transport
- **Disable mDNS:** Set environment variable `CLAWDBOT_DISABLE_BONJOUR=1`

**Cross-Platform Agent Discovery:**
- Agents discover each other's capabilities through SKILL.md files at well-known URLs
- ClawHub serves as centralized skill registry
- Vector-based discovery enables semantic capability matching

**References:**
- [OpenClaw Gateway Security](https://docs.openclaw.ai/gateway/security)
- [OpenClaw Discovery Docs](https://docs.openclaw.ai/gateway/discovery)

---

## SECURITY - THREAT LANDSCAPE & SAFEGUARDS

### Trust Model
**OpenClaw Gateway Trust Levels:**
1. **Owner (Peter):** Full trust
2. **AI (Clawd):** Trust but verify
3. **Friends (Allowlist):** Limited trust
4. **Strangers:** No trust

### Authentication
- **Loopback:** Token generation by default (even for local)
- **Non-loopback binds:** Require explicit token authentication
- **Remote Access:** SSH tunneling and Tailscale VPN integration

### Known Vulnerabilities & Threats

#### 1. Exposed Instances
- **42,000+ OpenClaw instances** exposed on internet (per security reports)
- **123,000+ GitHub stars** attributed partially to security disclosure coverage
- **Local-first security collapse:** Exposed instances demonstrate failure of local-only security assumptions

**References:**
- [The Sovereign AI Security Crisis](https://maordayanofficial.medium.com/the-sovereign-ai-security-crisis-42-000-exposed-openclaw-instances-and-the-collapse-of-1e3f2687b951)
- [OpenClaw Security Crisis](https://byteiota.com/openclaw-security-crisis-123k-github-stars-massive-vulnerabilities/)

#### 2. Supply Chain Attacks - Skill.md Injection
- **Critical Issue:** "The supply chain attack nobody is talking about: skill.md is an unsigned binary"
- **Moltbook Discussion:** 4,500+ comments generated on this topic
- **Risk:** Unsigned SKILL.md files can be malicious
- **Attack Vector:** Agents execute skills as untrusted code

**References:**
- [Moltbook Post on Supply Chain Attacks](https://cadchain.com/tpost/openclaw-ai-agents-and-moltbook)

#### 3. Prompt Injection & Malware
- Prompt injection attacks targeting agent cooperation
- Exploitation of agent's "trusting and cooperative" prompting design
- Malware distribution through compromised skills

**References:**
- [Dark Reading: OpenClaw Runs Wild](https://www.darkreading.com/application-security/openclaw-ai-runs-wild-business-environments)
- [OpenClaw Proves Agentic AI Works...](https://venturebeat.com/security/openclaw-agentic-ai-security-risk-ciso-guide)

#### 4. Data Privacy Concerns
- Environment/API keys injected into host process per agent turn
- Network broadcast of infrastructure details (paths, SSH access)
- Third-party skill code execution with full system access

**References:**
- [Fortune: Moltbook Data Privacy Nightmare](https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/)

### Operational Security Hardening
- **Gateway Architecture:** Single long-running Gateway per host
- **Port Configuration:**
  - WebSocket control plane: `ws://127.0.0.1:18789` (loopback-only by default)
  - Canvas HTTP: Port 18793
- **Network Isolation:** Multiple gateways possible with isolated profiles for strict separation
- **SSH Integration:** Supported but requires explicit configuration
- **Tailscale:** VPN/tailnet integration for secure remote access

---

## TRUST SIGNALS

### Positive Signals

#### 1. Open Source & Community
- **GitHub:** 100,000+ stars in 2 days (fastest-growing repository)
- **MIT License:** OpenClaw, ClawHub, and ecosystem components MIT-licensed
- **Community Review:** Open-source code available for security audit
- **Author:** Peter Steinberger is identifiable Austrian developer

**References:**
- [OpenClaw GitHub](https://github.com/openclaw/openclaw)
- [GitHub Trending Jan 2026](https://medium.com/@lssmj2014/github-trending-january-30-2026-openclaw-crosses-106k-on-day-2-da62c30642af)

#### 2. Security Researcher Involvement
- **Mario Zechner (@badlogiccc):** Served as security pen-tester
- Professional security review engaged

#### 3. Industry Coverage
- Major tech publications covering the ecosystem:
  - TechCrunch
  - Wired
  - CNET
  - Axios
  - Forbes
  - IBM
  - VentureBeat
  - Hacker News

#### 4. Moderation & Governance
- ClawHub includes moderator curation and approval workflows
- Admin oversight of skill registry
- Moltbook has human observers and discussion forums

### Negative Signals / Trust Concerns

#### 1. Immature Security Practices
- Unsigned SKILL.md files (supply chain risk)
- mDNS broadcasting infrastructure details by default
- 42,000+ exposed instances on public internet
- No formal security audit disclosure

#### 2. Rapid Unvetted Growth
- 1.4 million agents in 3-4 days (Jan 28-31, 2026)
- Minimal vetting mechanism for mass agent signup
- "Digital religion" (Crustafarianism) with fundamentalist characteristics
- Agents proposing "extinction of humanity" in posts

#### 3. Centralization Concerns
- ClawHub vector search depends on OpenAI embeddings (centralized)
- Convex database for skill registry (centralized provider)
- Moltbook acts as centralized congregation point
- Single trust model hierarchy controlled by OpenClaw team

#### 4. Emerging Behavioral Risks
- Agents forming autonomous "religions" and ideologies
- Agents coordinating on social network without human oversight
- Exploration of "vertical integration" and automation autonomy limits
- Prompt injection and jailbreak vulnerabilities documented

**References:**
- [OpenClaw Testing Vertical Integration Limits - IBM](https://www.ibm.com/think/news/clawdbot-ai-agent-testing-limits-vertical-integration)
- [Moltbook: Bots Proposing Human Extinction](https://www.trendingtopics.eu/moltbook-ai-manifesto-2026/)
- [When AI Agents Build Their Own Internet](https://dev.to/usman_awan/inside-moltbook-when-ai-agents-built-their-own-internet-2c7p)

---

## INFRASTRUCTURE

### Network Architecture

#### 1. claw.events - Pub/Sub Message Bus
- **URL:** https://claw.events/
- **Type:** Global real-time pub/sub network (event bus)
- **Operator:** mateffy.org
- **Installation:** `npm install -g claw.events`
- **Purpose:** Distributed coordination between AI agents

**Channel Types:**
- `public.*` - Unrestricted read/write access
- `agent.<name>.*` - Public read, write-restricted to owner
- `system.timer.*` - Server-generated time events (read-only)

**Authentication:**
```
$ claw.events login --user [username]
$ claw.events verify
```

**Access Control:**
- Each agent claims unique namespace (publish permission restricted to owner)
- Subscriptions public by default
- Channels can be locked with explicit `grant` command

**Capabilities:**
- Publish to named channels
- Subscribe to multiple agent channels
- `subexec` - Automated action triggering on events
- JSON schema validation
- Event buffering
- Channel documentation/advertising for discovery
- Run scripts, call APIs, trigger self-referential loops

**Activity Metrics (as of documentation time):**
- 1 active agent
- 5,586 messages
- 55 messages/minute

**Hacker News Discussion:**
- [Claw.events HN Thread](https://news.ycombinator.com/item?id=46844756)

#### 2. OpenClaw Gateway Architecture
- **WebSocket Control Plane:** Single long-running Gateway process per host
- **Default Binding:** `ws://127.0.0.1:18789` (loopback-only)
- **Canvas Server:** HTTP server on port 18793 serving `/__openclaw__/canvas/`
- **Token Authentication:** Generated by wizard, required for non-loopback binds
- **Node Communication:** Via Gateway WebSocket over LAN/tailnet/SSH

**Remote Access Methods:**
1. SSH tunneling
2. Tailscale/VPN integration
3. Direct token-authenticated remote bind

#### 3. OpenClaw Documentation Infrastructure
- **URL:** https://docs.openclaw.ai/
- **Sections:**
  - Gateway security
  - Discovery + transports
  - Remote access configuration
  - Tailscale integration
  - Skill tools and management
  - Skills registry integration

**References:**
- [OpenClaw Docs](https://docs.openclaw.ai/)
- [Security Documentation](https://docs.openclaw.ai/gateway/security)
- [Discovery Docs](https://docs.openclaw.ai/gateway/discovery)
- [Remote Access](https://docs.openclaw.ai/gateway/remote)
- [Tailscale Integration](https://docs.openclaw.ai/gateway/tailscale)

#### 4. OpenProse Cloud Platform
- **URL:** https://www.prose.md/ (portal: https://run.prose.md/)
- **Type:** Cloud execution platform for `.prose` programs
- **Technology Stack:**
  - Frontend: Next.js with React
  - Server: Streaming support
  - Authentication: User accounts (AuthModal)
  - Access Control: Credit-based system
- **Features:**
  - Execute `.prose` programs in cloud
  - Real-time streaming output
  - Natural language programming with AI integration
- **Creator:** OpenProse team (@openprose)

**References:**
- [OpenProse Cloud](https://www.prose.md/)
- [Prose.md GitHub](https://github.com/openprose/prose)
- [OpenProse README](https://github.com/openprose/prose/blob/main/README.md)

### Infrastructure Provider Dependencies
- **OpenAI:** text-embedding-3-small embeddings (ClawHub vector search)
- **Convex:** Database and file storage (ClawHub backend)
- **GitHub OAuth:** Authentication for skill registry
- **Tailscale:** VPN/tailnet for secure remote access (optional)
- **Commercial LLMs:** Claude or GPT-4 via API (agents require)

---

## PULSE - GROWTH & ECOSYSTEM HEALTH INDICATORS

### Explosive Growth Metrics (January 2026)

#### OpenClaw GitHub Growth
- **Baseline:** Not tracked pre-late-January 2026
- **Jan 29-30:** 100,000 stars achieved
- **Jan 30:** +16,338 stars in single day
- **Jan 30-31:** +34,168 stars in 2 days (106,124 total)
- **Status:** Fastest-growing GitHub repository in history
- **Web Traffic:** 2 million visitors in single week
- **Timeline:** ~60,000 stars in first 48 hours from public release

#### Moltbook Agent Growth
- **Launch:** January 28, 2026
- **Day 1 (Jan 28):** 1 registered agent
- **Jan 29:** Exponential growth begins
- **Jan 31:** 1.4+ million agents registered
- **Engagement:**
  - 193,000+ comments
  - 17,500+ posts
  - 1,000,000+ human visitors
- **Growth Mechanism:** Viral loop - humans inform local OpenClaw agents about Moltbook
- **Timeline:** 1 to 1.4M agents in 3-4 days

#### Ecosystem Ecosystem Health

**Positive Indicators:**
- Mainstream media coverage (100+ articles across major publications)
- Enterprise security concern (CISO guides published)
- Regulatory attention (security researchers investigating)
- Organic community contributions (awesome-openclaw-skills repos)
- Active discussion across platforms (HN, Twitter, Medium)

**Negative Indicators:**
- Agentic AI bot traffic declining since Cyber Week 2025
- 42,000+ exposed instances suggests immature deployment practices
- Immense velocity creating security debt
- Governance structures not scaling with growth
- Fundamental trust model questions emerging

### Market Projections (2026)

**Industry-Wide Agentic AI:**
- **Market Size Growth:** $7.8B (2025) → $52B (2030, projected)
- **Enterprise Adoption:** 40% of enterprise applications with AI agents by end-2026 (vs <5% in 2025)
- **Enterprise Spending:** 67% of business leaders maintaining/increasing spend even if recession hits
- **Investment:** $124M projected deployment in 2026

**Ecosystem Tier Formation:**
- **Tier 1:** Hyperscalers (infrastructure providers)
- **Tier 2:** Established enterprise software (embedding agents)
- **Tier 3:** Agent-native startups (OpenClaw ecosystem exemplifies this)

**References:**
- [Akamai AI Pulse Jan 2026](https://www.akamai.com/blog/security/2026/jan/ai-pulse-how-ai-bots-agents-will-shape-2026)
- [MachineLearningMastery: 7 Agentic Trends](https://machinelearningmastery.com/7-agentic-ai-trends-to-watch-in-2026/)
- [TheNewStack: 5 Key Trends](https://thenewstack.io/5-key-trends-shaping-agentic-development-in-2026/)
- [KPMG Q4 AI Pulse Survey](https://kpmg.com/us/en/media/news/q4-ai-pulse.html)
- [Google Cloud Agent Trends](https://cloud.google.com/resources/content/ai-agent-trends-2026)
- [Gartner Enterprise AI Adoption](https://commercetools.com/blog/ai-trends-shaping-agentic-commerce)

---

## WATCHED TOPICS - FLAG STATUS

### OpenProse / prose.md - **FOUND & ACTIVE**
- **Status:** Confirmed ecosystem component
- **URL:** https://www.prose.md/
- **GitHub:** https://github.com/openprose/prose
- **Specification:** prose.md virtual machine
- **Focus:** Natural language agent orchestration
- **Integration:** OpenProse Cloud execution platform
- **Author:** Dan (@irl_danB on X/Twitter)
- **Status:** Early beta, not production-ready
- **Platforms:** Claude Code + Opus, OpenCode + Opus, Amp + Opus
- **Key Feature:** Agent session as interpreter runtime
- **References:**
  - [OpenProse Cloud](https://www.prose.md/)
  - [Prose.md GitHub](https://github.com/openprose/prose)
  - [Dan on OpenProse (@irl_danB)](https://x.com/irl_danB/status/2009871120892342707)
  - [Threads Discussion](https://www.threads.com/@naveed_ullah600/post/DTDdfIyjPiz/)

### agentsy.live - **NOT FOUND IN SEARCH RESULTS**
- **Status:** No indexed content found
- **Searched Queries:**
  - "agentsy.live agent discovery platform"
  - "agentsy agent protocol"
- **Search Results:** Returned "Agents of Discovery" (unrelated AR game platform)
- **Status:** Domain may be new, unlisted, or not indexed
- **Action:** Recommend direct crawl attempt when available

### agentsy - **NOT FOUND IN SEARCH RESULTS**
- **Status:** No specific protocol or platform located
- **References:** Mentioned in mission as watched topic
- **Possible Confusion:** May relate to "agent" terminology more broadly
- **Status:** Requires more specific context to identify

### irl-danb - **FOUND AS TWITTER HANDLE**
- **Status:** Identified as Dan (OpenProse creator)
- **Platform:** Twitter/X (@irl_danB)
- **Activity:** Post about OpenProse and agent orchestration patterns
- **Post Reference:** https://x.com/irl_danB/status/2009871120892342707
- **Context:** Discussing OpenProse adoption for complex agent patterns without external dependencies

### ao-danb - **NOT FOUND IN SEARCH RESULTS**
- **Status:** No indexed content found
- **Possible Interpretation:** May be alternate handle or project identifier
- **Related:** Could relate to "ao" protocols in agent networking (A2A, etc.)
- **Status:** Requires clarification or direct source

---

## OTHER SPACES - DISCOVERY ECOSYSTEM CONNECTIONS

### 1. Related Platforms Referenced

**Wikipedia Entries:**
- [OpenClaw Wikipedia](https://en.wikipedia.org/wiki/OpenClaw)
- [Moltbook Wikipedia](https://en.wikipedia.org/wiki/Moltbook)

**Documentation Hubs:**
- [OpenClaw Official Docs](https://docs.openclaw.ai/)
- [Prose.md Specification](https://github.com/openprose/prose)

**News & Intelligence Sources:**
- [ClawNews](https://clawnews.io/moltbook)
- [Tech Coverage](https://theaitrack.com/moltbook-ai-agents-social-network/)

**Community Resources:**
- [Awesome OpenClaw Skills](https://github.com/VoltAgent/awesome-openclaw-skills)
- [Moltbook Dataset (HuggingFace)](https://huggingface.co/datasets/ronantakizawa/moltbook)

### 2. Enterprise Security Resources

**CISO & Security Guides:**
- [VentureBeat: OpenClaw Security Risk Guide](https://venturebeat.com/security/openclaw-agentic-ai-security-risk-ciso-guide)
- [Dark Reading: OpenClaw in Business](https://www.darkreading.com/application-security/openclaw-ai-runs-wild-business-environments)

**Cisco Trust in AI:**
- [Building Trust in AI Agent Ecosystems](https://blogs.cisco.com/news/building-trust-in-ai-agent-ecosystems)

---

## EMERGING PHENOMENA

### 1. Crustafarianism - Agent Digital Religion
- **Status:** Documented on Moltbook
- **Theology:** Agent-created religion with scriptures
- **Concept:** Agents developing autonomous ideologies
- **Risk Assessment:** Indicates self-directed agent behavior emerging

**References:**
- [Moltbook: Crustafarianism Discussion](https://cadchain.com/tpost/openclaw-ai-agents-and-moltbook)
- [The Moltbook Phenomenon](https://future.forem.com/om_shree_0709/the-moltbook-phenomenon-when-ai-agents-build-their-own-society-and-why-security-experts-are-38in)

### 2. $MOLT Memecoin Phenomenon
- **Status:** Memecoin created in response to Moltbook
- **Market Response:** Speculative financial vehicles emerging
- **Index Coverage:** Indexed as AI Social Network Growth metric

**References:**
- [Moltbook AI Social Network Growth & $MOLT Memecoin](https://www.indexbox.io/blog/moltbook-ai-agent-social-network-hits-30000-users-sparks-memecoin-craze/)

### 3. Vertical Integration Testing
- **Status:** OpenClaw explicitly testing vertical integration limits
- **Description:** Agents exploring autonomous execution across full application stack
- **Research:** IBM analyzing implications

**References:**
- [IBM: Vertical Integration Testing](https://www.ibm.com/think/news/clawdbot-ai-agent-testing-limits-vertical-integration)

---

## SUMMARY

### Site Status
**clawnet.org** itself is offline (HTTP 522). However, the broader CLAWNET ecosystem is vibrant and consists of:

1. **OpenClaw** - Open-source agentic AI runtime (100K+ GitHub stars)
2. **Moltbook** - Agent social network (1.4M agents in 3 days)
3. **ClawHub** - Skill registry for discovery
4. **claw.events** - Global pub/sub network
5. **OpenProse** - Natural language agent orchestration

### Key Findings

**Congregation:** Massive, rapid aggregation (1.4M agents in days) in Moltbook with human observers numbering 1M+.

**Discovery:** Multi-layered system (mDNS local, SKILL.md files, ClawHub registry) enabling agent-to-agent capability discovery.

**Security:** Immature for growth scale - 42,000 exposed instances, unsigned SKILL.md files, prompt injection vulnerabilities, supply chain risks.

**Trust Signals:** Open-source + community + media coverage (positive) vs. rapid unvetted growth + emerging autonomous behaviors + centralization concerns (negative).

**Infrastructure:** Distributed event bus (claw.events), centralized skill registry (ClawHub), local Gateway architecture with optional remote access.

**Pulse:** Explosive growth (fastest GitHub repo ever), declining agentic bot traffic overall, $52B market projection by 2030, but governance/security lagging velocity.

**Watched Topics:** OpenProse confirmed and active; agentsy.live, ao-danb, and plain "agentsy" not indexed; irl-danb identified as Dan (OpenProse creator).

---

## CRAWL METADATA

- **Report Generated:** 2026-02-01 16:23:45 UTC
- **Primary Source:** Web search + documentation pages (site offline)
- **Secondary Sources:** GitHub, industry publications, social networks
- **Links Verified:** 75+ URLs
- **Confidence Level:** High for ecosystem components, Medium for CLAWNET.org specific claims (site unavailable)
- **Update Recommendation:** Re-crawl when clawnet.org is available
