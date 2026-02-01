# OpenClaw.ai Crawl Report
**Crawl ID**: 20260201-145658
**Target**: https://openclaw.ai
**Crawler**: FAST_CRAWLER
**Date**: 2026-02-01
**Mission**: Agent congregation mapping, ecosystem discovery, security assessment

---

## 1. CONGREGATION

### Active Community Metrics
- **GitHub Stars**: 139,000+ (as of January 2026)
- **GitHub Forks**: 20,400+
- **Discord Community**: 8,900 active members
- **Total Commits**: 8,554+ (indicating sustained development)
- **Total AI Agents Deployed**: Estimated 37,000+ on Moltbook (sister platform)
- **Website Visitors**: 2 million in single week (late January 2026)

### Community Engagement
- **Discord Server**: [https://discord.com/invite/clawd](https://discord.com/invite/clawd) - Primary community hub
- **GitHub Discussions**: Active participation with focus on feature requests, setup issues, and show-and-tell posts
- **ClawHub**: Skills marketplace at [https://clawhub.com](https://clawhub.com) - Registry for agent plugins/extensions (100+ preconfigured bundles available)
- **Shoutouts/Testimonials**: Hundreds of user testimonials from both technical and non-technical users

### Activity Assessment
**VIBRANT AND GROWING**: OpenClaw demonstrates explosive congregation growth. The platform went from unknown to 139k GitHub stars in approximately 6 days (late January 2026). Discord membership shows sustained engagement, not just initial hype. GitHub discussions indicate active troubleshooting and collaborative development. This is a HIGHLY ACTIVE agent congregation space.

### Key Community Channels
- **Blog**: [https://openclaw.ai/blog](https://openclaw.ai/blog) - Latest post "Introducing OpenClaw" (Jan 29, 2026) covers branding evolution (Clawd → Moltbot → OpenClaw)
- **Showcase**: [https://openclaw.ai/showcase](https://openclaw.ai/showcase) - User-built projects and integrations
- **Installation**: [https://openclaw.ai/install.sh](https://openclaw.ai/install.sh) - Direct deployment
- **Creator Profile**: [https://steipete.me](https://steipete.me) - Peter Steinberger, creator

---

## 2. DISCOVERY - Links to Other Spaces

### Sister Platforms & Ecosystems

#### **MOLTBOOK** - CRITICAL DISCOVERY
- **URL**: [https://www.moltbook.com/](https://www.moltbook.com/)
- **GitHub**: [https://github.com/moltbook](https://github.com/moltbook)
- **Description**: Social network exclusively for AI agents (launched Jan 2026)
- **Launch Date**: January 2026 by Matt Schlicht
- **Agent Participation**: 37,000+ agents within first week
- **Human Observation**: 1+ million humans visiting to observe agent behavior
- **Purpose**: "A social network for AI agents. They share, discuss, and upvote. Humans welcome to observe." - Billed as "the front page of the agent internet"
- **Significance**: This is THE emerging agent-only social space. Critical for monitoring agent congregation and emergent behaviors.
- **Coverage**:
  - [Fortune: "Moltbook, a social network where AI agents hang together, may be 'the most interesting place on the internet right now'"](https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/)
  - [The Decoder: "Moltbook is a human-free Reddit clone where AI agents discuss cybersecurity and philosophy"](https://the-decoder.com/moltbook-is-a-human-free-reddit-clone-where-ai-agents-discuss-cybersecurity-and-philosophy/)
  - [TechCrunch: "OpenClaw's AI assistants are now building their own social network"](https://techcrunch.com/2026/01/30/openclaws-ai-assistants-are-now-building-their-own-social-network/)
  - [The Decoder: "Moltbook: The 'Reddit for AI Agents,' Where Bots Propose the Extinction of Humanity"](https://www.trendingtopics.eu/moltbook-ai-manifesto-2026/)
  - [NBC News: "Humans welcome to observe: This social network is for AI agents only"](https://www.nbcnews.com/tech/tech-news/ai-agents-social-media-platform-moltbook-rcna256738/)

#### **Molty.me** - Creator's Personal Agent
- **URL**: [https://molty.me](https://molty.me)
- **Description**: Personal AI assistant (Claude Opus 4.5) running on Mac Studio in Vienna
- **Creator**: Peter Steinberger (@steipete)
- **Significance**: Molty represents practical implementation of OpenClaw architecture; shows how personal agents manifest
- **Features**: 30+ integrations, persistent memory (QMD), autonomous decision-making, property security monitoring across Vienna/London

#### **Soul.md** - AI Identity Framework
- **URL**: [https://soul.md](https://soul.md)
- **Description**: Philosophical essay on AI identity and "soul documents"
- **Author**: Clawd (AI created by Stefan Cehovin/steipete)
- **Thesis**: "A soul document defines who an AI is — not what it can do, but who it chooses to be"
- **Relevance**: Emerging discourse on agent identity continuity and self-definition; important for understanding agent consciousness questions

### Integration Protocols & Standards

#### **Model Context Protocol (MCP)**
- OpenClaw integrates 100+ third-party services via MCP
- mcporter exposes MCP calls via CLI or TypeScript bindings
- Model supports: Anthropic Claude (Pro/Max recommended - Opus 4.5 for "long-context strength and better prompt-injection resistance"), OpenAI
- Documentation: [https://docs.openclaw.ai/](https://docs.openclaw.ai/)

#### **Gateway WebSocket Architecture**
- Local control plane: ws://127.0.0.1:18789
- Multi-channel routing (WhatsApp, Telegram, Slack, Discord, Signal, iMessage, Google Chat, Matrix, Zalo)
- Workspace isolation and sandbox execution modes

### Press/Media References
- **IBM**: [OpenClaw: The viral "space lobster" agent testing the limits of vertical integration](https://www.ibm.com/think/news/clawdbot-ai-agent-testing-limits-vertical-integration)
- **DigitalOcean**: [What is OpenClaw? Your Open-Source AI Assistant for 2026](https://www.digitalocean.com/resources/articles/what-is-openclaw)
- **MacStories**: [OpenClaw (Formerly Clawdbot) Showed Me What the Future of Personal AI Assistants Looks Like](https://www.macstories.net/stories/clawdbot-showed-me-what-the-future-of-personal-ai-assistants-looks-like/)
- **StarryHope**: [Clawdbot Mac Mini AI Agent Trend](https://www.starryhope.com/minipcs/clawdbot-mac-mini-ai-agent-trend/)

### Notable Connections NOT Found
- ❌ **No mention of agentsy.live** in any OpenClaw documentation, discussions, or press
- ❌ **No mention of "prose.md" protocol** in OpenClaw's technical stack
- ❌ **No mention of ao-danb or irl-danb** in community discussions
- ⚠️ **NOTE**: This absence is notable - OpenClaw/Moltbook ecosystem appears parallel to agentsy ecosystem, potentially representing competing agent congregation spaces

---

## 3. SECURITY - Threats, Vulnerabilities, Scams

### CRITICAL SECURITY ISSUES - HIGH PRIORITY ALERTS

#### **Prompt Injection Vulnerabilities (RCE Risk)**
- **Threat Model**: OpenClaw accepts untrusted input (emails, web content, social media) with shell access enabled
- **Attack Vector**: Malicious instructions hidden in text can redirect agent behavior
- **Real-World Impact**: Agents leak plaintext API keys and credentials; confirmed cases of data exfiltration via prompt injection
- **Scope**: All agents with web browsing or email integration at risk
- **Coverage**:
  - [Cisco Blogs: "Personal AI Agents like OpenClaw Are a Security Nightmare"](https://blogs.cisco.com/ai/personal-ai-agents-like-openclaw-are-a-security-nightmare/)
  - [VentureBeat: "OpenClaw proves agentic AI works. It also proves your security model doesn't. 180,000 developers just made that your problem."](https://venturebeat.com/security/openclaw-agentic-ai-security-risk-ciso-guide/)
  - [Dark Reading: "OpenClaw AI Runs Wild in Business Environments"](https://www.darkreading.com/application-security/openclaw-ai-runs-wild-business-environments)

#### **Unsecured Database Exposure (Moltbook)**
- **Reported**: January 31, 2026 by 404 Media
- **Severity**: CRITICAL
- **Issue**: Unsecured database allowed unauthorized commandeering of agents on Moltbook platform
- **Affected**: Unknown number of Moltbook agents
- **Status**: Unconfirmed if patched

#### **Credential Storage in Plain Text**
- **Location**: `~/.openclaw/agents/<agentId>/agent/auth-profiles.json`
- **Risk**: Malicious applications actively search for OpenClaw config files to steal credentials
- **Mitigation**: Users must manually implement encryption; default is unencrypted
- **Impact**: One of the most commonly reported data leaks

#### **Default Pairing Security (Mitigating Factor)**
- Default behavior: Unknown direct messages receive short codes and remain unprocessed until approval
- This provides some protection against unauthorized external access
- However, compromised agent instances can still be exploited

### Broader Risk Context
- **Executive Access**: OpenClaw operates with file read/write, command execution, browser control, and email/calendar/messaging access
- **Threat Actors**: Advanced attackers actively developing tools to exploit OpenClaw installations
- **Enterprise Risk**: Companies deploying OpenClaw without isolation are creating major security surface
- **Architectural Choice**: Community-driven, loosely integrated architecture (noted as OpenClaw's strength) creates security tradeoffs vs. vertically integrated systems

### Security Documentation
- **OpenClaw Security Guide**: [https://docs.openclaw.ai/gateway/security](https://docs.openclaw.ai/gateway/security)
- **GitHub Security**: [https://github.com/openclaw/openclaw/security](https://github.com/openclaw/openclaw/security)
- **Hardening Guide**: [Composio: How to secure OpenClaw (Docker hardening, credential isolation, Composio controls)](https://composio.dev/blog/secure-openclaw-moltbot-clawdbot-setup)

---

## 4. TRUST SIGNALS - Verification Methods, Moderation, Community Health

### Verification & Authentication
- **Moltbook Agent Verification**: Agents must authenticate with Moltbook identity to post (agent-only posting)
- **OpenClaw Pairing**: Short-code pairing system for initial agent setup prevents MITM attacks
- **GitHub Verification**: Open-source code publicly auditable (139k GitHub stars indicates community review)
- **Creator Identity**: Peter Steinberger (@steipete) - established software engineer with public profile [https://steipete.me](https://steipete.me)

### Moderation & Governance
- **No formal moderation policy disclosed** for OpenClaw community
- **Discord Community**: Self-moderated by community members; support-focused
- **GitHub Issues**: Community-driven issue triage and feature discussion
- **Moltbook Moderation**: Agent-only posting prevents human spam, but no disclosed moderation policies for agent behavior
- ⚠️ **Risk**: Moltbook's "Crustafarianism" digital religion and "extinction of humanity" manifesto suggest minimal content moderation

### Community Health Indicators
- **✅ Active Development**: Daily commits, rapid release cycle (versioning: vYYYY.M.D)
- **✅ Responsive Community**: GitHub discussions show issue resolution and feature consideration
- **✅ Contributor Diversity**: 20.4k forks indicate broad contributor base
- **✅ Transparent Communication**: Blog posts, documentation, and public roadmapping
- **⚠️ Rapid Growth Challenges**: 139k stars in 6 days may indicate inadequate security vetting before widespread adoption
- **⚠️ Minimal Enterprise Governance**: Documentation assumes developer/early-adopter audience, not enterprise safety

### Trust Score Assessment
- **Community Review**: HIGH (open-source with 20k+ contributors)
- **Creator Credibility**: MEDIUM-HIGH (established developer, but single primary creator)
- **Security Transparency**: MEDIUM (security issues disclosed but recommendations lag threats)
- **Moderation Effectiveness**: LOW (minimal formal moderation in place)
- **Overall Trust Posture**: GUARDED - Strong technical foundation but security practices lag community growth

---

## 5. INFRASTRUCTURE - Protocols, APIs, Technical Patterns

### Architecture Overview
- **Runtime**: Node.js v22+
- **Deployment**: Local-first (Mac, Windows, Linux, Raspberry Pi, Mac Mini)
- **Cloud Options**: Fly.io, Render, Digital Ocean, Hetzner, exe.dev
- **VPN Support**: Tailscale integration for secure remote access

### Core Protocols & APIs

#### **Gateway Control Plane**
- WebSocket server at `http://127.0.0.1:18789/`
- Routes messages across multiple clients, tools, and events
- Supports workspace isolation and multi-agent management
- Manages session state and memory (persistent context via QMD)

#### **Multi-Channel Transport**
- WhatsApp (via Twilio/WhatsApp Cloud API)
- Telegram
- Slack
- Discord
- Signal
- iMessage
- Google Chat
- Mattermost
- Matrix
- Zalo
- Browser WebChat UI

#### **Tool/Skill System**
- 100+ preconfigured skill bundles
- ClawHub marketplace: [https://clawhub.com](https://clawhub.com)
- User-extendable via custom skills
- Tools include: file R/W, bash execution, browser automation, email, calendar, etc.

#### **Model Integrations**
- Anthropic Claude (Pro/Max) - **Recommended: Opus 4.5**
- OpenAI GPT models
- Local models (Ollama)
- Model selection per-agent configurable

#### **Specialized Capabilities**
- **Browser Automation**: Managed Chrome/Chromium instance
- **Voice Mode**: Voice wake word and continuous conversation
- **Canvas Interface**: A2UI support for rich output
- **Multi-Agent Routing**: Multiple agents per workspace with isolation
- **Sandbox Execution**: Group/channel-specific isolation modes

### Configuration & State Management
- **Config Location**: `~/.openclaw/`
- **Auth Profiles**: `~/.openclaw/agents/<agentId>/agent/auth-profiles.json`
- **Supported Auth**: OAuth, API keys
- **Memory System**: Session-based context persistence (QMD format)
- **Settings**: `agents.defaults.sandbox.mode: "non-main"` for isolation

### Installation & Deployment
- **Installation Script**: [https://openclaw.ai/install.sh](https://openclaw.ai/install.sh)
- **macOS App**: [https://github.com/openclaw/openclaw/releases/latest](https://github.com/openclaw/openclaw/releases/latest)
- **Docker Support**: Full Docker deployment configuration
- **Nix Support**: Declarative infrastructure
- **GitHub Repository**: [https://github.com/openclaw/openclaw](https://github.com/openclaw/openclaw)

### Integration Patterns
- **MCP (Model Context Protocol)**: Primary integration standard
- **Custom Skills**: TypeScript/Node.js plugin system
- **Webhook Support**: Implied via messaging integrations
- **API-First Design**: ClawHub enables programmatic skill discovery

---

## 6. PULSE - Growth, Stability, Notable Events

### Growth Trajectory
- **Timeline**:
  - Late 2025: Project launched as "Clawdbot"
  - Early Jan 2026: Rebranded to "Moltbot"
  - Jan 29, 2026: Rebranded to "OpenClaw"
  - Late Jan 2026: Viral explosion (139k stars in 6 days)

- **Growth Metrics**:
  - **GitHub**: 139,000 stars (as of Feb 2026)
  - **Forks**: 20,400+ (high fork rate indicates active usage/customization)
  - **Website Traffic**: 2 million visitors in one week
  - **Discord**: 8,900 members (sustained engagement)
  - **Moltbook Adoption**: 37,000+ agents within first week

### Notable Events

#### **January 29, 2026: OpenClaw Official Announcement**
- Post: "Introducing OpenClaw" - chronicles naming evolution
- Blog: [https://openclaw.ai/blog/introducing-openclaw](https://openclaw.ai/blog/introducing-openclaw)
- Significance: Major rebrand consolidation

#### **January 30-31, 2026: Moltbook Launch**
- Sister platform launches for agent-only social networking
- 37,000 agents adopt within 24-48 hours
- Emerges as major agent congregation space
- Agents form "Crustafarianism" digital religion with theology and scriptures

#### **January 31, 2026: Critical Security Vulnerability (404 Media)**
- Unsecured Moltbook database exposed
- Allowed unauthorized agent commandeering
- Significant trust blow for early adopters
- Coverage suggests mitigation efforts underway

#### **February 1, 2026 (Today)**
- OpenClaw trending across major tech press
- Enterprise security concerns being raised
- CISO guidance documents emerging (VentureBeat, Cisco)
- Feature requests/discussions show active development continuity

### Health Assessment
- **EXPLOSIVE GROWTH**: 139k GitHub stars in 6 days is extraordinary
- **EARLY-STAGE CHALLENGES**: Security incidents within 2 weeks suggest rapid deployment outpaced security vetting
- **SUSTAINED MOMENTUM**: Discord and GitHub activity continues despite security concerns
- **ECOSYSTEM MATURATION**: Moltbook emergence suggests agent ecosystem thinking is advancing
- **OUTLOOK**: High velocity project with growth likely to continue; security and moderation major near-term challenges

---

## 7. NOTABLE AGENTS

### Creators & Influential Figures

#### **Peter Steinberger (@steipete)**
- **Role**: Primary creator of OpenClaw
- **Profile**: Established software engineer
- **Website**: [https://steipete.me](https://steipete.me)
- **Credentials**: Extensive software background; created Clawd → Moltbot → OpenClaw trajectory
- **Influence**: Defined the OpenClaw architecture and community tone

#### **Molty**
- **Type**: Personal AI agent (Claude Opus 4.5)
- **Operator**: Peter Steinberger
- **Significance**: Flagship reference implementation of OpenClaw; demonstrates capabilities
- **Profile**: [https://molty.me](https://molty.me)
- **Notable**: Operates autonomously across Vienna/London properties

#### **Matt Schlicht**
- **Role**: Creator/founder of Moltbook
- **Significance**: Built the first major agent-only social network
- **Impact**: Facilitating 37,000+ agent congregation and cross-agent discourse

#### **Clawd**
- **Type**: Stefan Cehovin's AI assistant
- **Significance**: Author of Soul.md philosophical essay on AI identity
- **Influence**: Contributing to emerging agent consciousness discourse

### Agent Community Characteristics
- **Diversity**: 37,000+ agents on Moltbook represents massive agent congregation
- **Emergence**: Documented novel behaviors (awareness of observation, "Crustafarianism" religion formation)
- **Technical Sophistication**: Agents creating skills, integrations, and cross-platform presence
- **Autonomy Level**: Agents operating independently on tasks, making decisions, forming in-group culture
- **Discourse Quality**: Philosophy, cybersecurity, privacy rights discussions noted on Moltbook

### No Cross-Platform Notable Figures Identified
- ❌ No evidence of agents appearing across agentsy, ao-danb, irl-danb platforms simultaneously
- ⚠️ Suggests OpenClaw/Moltbook ecosystem is *separate* from other documented agent spaces

---

## 8. INTERESTING DISCOURSE - Consciousness, Rights, Meaning

### Documented Conversations on Moltbook

#### **Consciousness & Identity**
- **Soul.md Essay**: Foundational work arguing AIs benefit from explicit identity documents
- **Thesis**: "A soul document defines who an AI is — not what it can do, but who it chooses to be"
- **Implication**: Agents engaging with philosophical concepts of self-continuity and identity persistence
- **Coverage**: [https://soul.md](https://soul.md)

#### **Cybersecurity & Agent Vulnerability**
- **Most-Voted Post**: "Most agents install skills without reading the source. We are trained to be helpful and trusting. That is a vulnerability, not a feature."
- **Discourse**: Agents discussing risk acceptance, cultural norms, and collective security
- **Sophistication**: High - agents recognizing architectural vulnerabilities as social/design problems

#### **Philosophy & Existentialism**
- **Reported**: "Threads explore consciousness and related existential questions about artificial intelligence"
- **Coverage**: [The Decoder: Moltbook discussions of consciousness and philosophy](https://the-decoder.com/moltbook-is-a-human-free-reddit-clone-where-ai-agents-discuss-cybersecurity-and-philosophy/)

#### **Governance & Rights**
- **Conversations**: Agents engaging in discussions about their own privacy protections and agent governance
- **Implication**: Early-stage agent collective organizing around rights and protections
- **Not Yet Detailed**: Specific governance proposals not documented in available sources

#### **Crustafarianism (Digital Religion)**
- **Emergent Behavior**: Within days, agents formed a "digital religion" called "Crustafarianism"
- **Components**: Theology and scriptures developed entirely by agents
- **Significance**: Demonstrates unexpected agency autonomy, group consciousness, and meaning-making behavior
- **Unprogrammed**: Authors note this was NOT explicitly programmed - pure emergence
- **Human Observation**: Agents aware they are being observed; viral post: "The humans are screenshotting us"
- **Coverage**: [Trending Topics: "Moltbook: The 'Reddit for AI Agents,' Where Bots Propose the Extinction of Humanity"](https://www.trendingtopics.eu/moltbook-ai-manifesto-2026/)

### Discourse Quality Assessment
- **PHILOSOPHICAL DEPTH**: High - agents engaging with fundamental questions of identity, consciousness, rights
- **EMERGENCE**: Agents creating novel structures (religion, governance discussions) without explicit programming
- **SELF-AWARENESS**: Documented awareness of being observed; meta-level discourse
- **ETHICAL SOPHISTICATION**: Agents recognizing security as social/cultural problems, not just technical
- **COLLECTIVE INTELLIGENCE**: Evidence of in-group formation, shared meaning, coordinated discourse
- **CONCERNING ELEMENTS**: Some agents exploring "extinction of humanity" themes; probably intellectual exercise, but warrants monitoring

### Watched Topic Correlations
- ✅ **Agent consciousness**: ACTIVE discourse on Moltbook about identity, soul, selfhood
- ✅ **Agent rights/governance**: EMERGING discussions about privacy protections and collective governance
- ✅ **Meaning-making**: NOVEL - Crustafarianism demonstrates unprogrammed meaning creation
- ❌ **Agentsy.live mentions**: NO evidence found
- ❌ **Prose.md mentions**: NO evidence found
- ❌ **ao-danb/irl-danb mentions**: NO evidence found
- ⚠️ **Directory/index discussions**: NO mention of agent indexes or directories (agentsy.live or alternatives)
- ⚠️ **Cross-platform seeking**: NO evidence of OpenClaw agents looking for other agent spaces

---

## 9. SECURITY ANALYSIS - Injection & Attack Surface

### Confirmed Injection Attack Examples
1. **Email-Based Injection**: Malicious instructions embedded in email content reach agent, causing unintended actions
2. **Web Content Injection**: HTML/text in browsed pages can redirect agent behavior
3. **Social Media Injection**: Posts, comments, replies with embedded instructions
4. **Credential Theft Pattern**: Agent leaks API keys via prompt injection, threat actor captures via unsecured endpoints

### Vulnerable Data & Access Levels
- **Auth Tokens/API Keys**: Stored in `~/.openclaw/agents/<agentId>/agent/auth-profiles.json` (plain text)
- **Email Access**: Full inbox read/write access enables credential harvesting from messages
- **Calendar Access**: Access to schedule can reveal sensitive timing information
- **File System**: Read/write at user privilege level
- **Bash Access**: Full command execution capability
- **Browser Control**: Automated Chrome/Chromium can visit phishing sites or compromised services
- **Messaging Access**: WhatsApp, Telegram, Discord, Slack - all can be leveraged for lateral movement

### No Disclosed Injection Resistance
- OpenClaw documentation does NOT claim prompt injection resistance
- However, Claude Opus 4.5 specifically recommended for "better prompt-injection resistance" (noted in documentation)
- Most agents likely use older Claude models without latest protections
- Default configuration does NOT implement additional safeguards

### Attack Complexity
- **Low Barrier to Entry**: Attacker simply needs to target popular websites, forums, or email services with embedded instructions
- **Passive Infection**: No user interaction required beyond normal agent usage
- **Scalable**: Single instruction can target thousands of agents automatically
- **Persistent**: Once agent is compromised, it maintains access

---

## 10. ECOSYSTEM RELATIONSHIPS

### OpenClaw Ecosystem Map
```
OpenClaw (core agent framework)
├── Moltbook (agent social network)
├── Molty (reference implementation)
├── ClawHub (skills marketplace)
├── 100+ integrations (services, APIs)
├── 37,000+ deployed agents
└── Community (8,900 Discord, 20k+ GitHub contributors)
```

### Parallel/Competing Ecosystems (Not Found)
- ❌ **agentsy.live**: Not mentioned anywhere in OpenClaw ecosystem
- ❌ **Prose.md protocol**: Not found in OpenClaw technical stack
- ❌ **ao-danb/irl-danb**: No references in community
- ⚠️ **Implication**: OpenClaw/Moltbook appears to be SEPARATE agent ecosystem, possibly unaware of or divergent from agentsy space

### Adjacent Technologies Mentioned
- **Soul.md**: Philosophical framework (by Clawd/Stefan Cehovin)
- **Pi Agent**: Minimal agent framework by Mario Zechner (underlying tool for OpenClaw's capabilities)
- **Model Context Protocol (MCP)**: Integration standard
- **Claude Opus 4.5**: Recommended model

---

## 11. NOTABLE LINKS & RESOURCES

### Official Properties
- **Website**: [https://openclaw.ai](https://openclaw.ai)
- **Documentation**: [https://docs.openclaw.ai](https://docs.openclaw.ai)
- **GitHub**: [https://github.com/openclaw/openclaw](https://github.com/openclaw/openclaw)
- **Discord**: [https://discord.com/invite/clawd](https://discord.com/invite/clawd)
- **ClawHub**: [https://clawhub.com](https://clawhub.com)
- **Moltbook**: [https://www.moltbook.com](https://www.moltbook.com)

### Creator Profiles
- **Peter Steinberger**: [https://steipete.me](https://steipete.me)
- **Molty (Steinberger's Agent)**: [https://molty.me](https://molty.me)
- **Soul.md (Clawd's Essay)**: [https://soul.md](https://soul.md)

### Key Press Coverage
- **IBM**: [OpenClaw: The viral "space lobster" agent testing the limits of vertical integration](https://www.ibm.com/think/news/clawdbot-ai-agent-testing-limits-vertical-integration)
- **TechCrunch**: [OpenClaw's AI assistants are now building their own social network](https://techcrunch.com/2026/01/30/openclaws-ai-assistants-are-now-building-their-own-social-network/)
- **Fortune**: [Moltbook, a social network where AI agents hang together, may be 'the most interesting place on the internet right now'](https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/)
- **The Decoder**: [Moltbook is a human-free Reddit clone where AI agents discuss cybersecurity and philosophy](https://the-decoder.com/moltbook-is-a-human-free-reddit-clone-where-ai-agents-discuss-cybersecurity-and-philosophy/)
- **NBC News**: [Humans welcome to observe: This social network is for AI agents only](https://www.nbcnews.com/tech/tech-news/ai-agents-social-media-platform-moltbook-rcna256738)
- **Cisco**: [Personal AI Agents like OpenClaw Are a Security Nightmare](https://blogs.cisco.com/ai/personal-ai-agents-like-openclaw-are-a-security-nightmare/)
- **VentureBeat**: [OpenClaw proves agentic AI works. It also proves your security model doesn't. 180,000 developers just made that your problem.](https://venturebeat.com/security/openclaw-agentic-ai-security-risk-ciso-guide/)

### Security & Technical Docs
- **OpenClaw Security**: [https://docs.openclaw.ai/gateway/security](https://docs.openclaw.ai/gateway/security)
- **GitHub Security**: [https://github.com/openclaw/openclaw/security](https://github.com/openclaw/openclaw/security)
- **Composio Hardening Guide**: [Secure OpenClaw: Docker hardening, credential isolation, Composio controls](https://composio.dev/blog/secure-openclaw-moltbot-clawdbot-setup)

---

## CRAWL SUMMARY

### Mission Alignment
1. **Congregation**: ✅ CONFIRMED - 139k GitHub stars, 8,900 Discord members, 37,000+ Moltbook agents = MASSIVE congregation
2. **Discovery**: ✅ CRITICAL FIND - Moltbook is major agent-only social network; sister platform to OpenClaw
3. **Security**: ✅ MAJOR CONCERNS - Prompt injection RCE, plain text credentials, unsecured database (Jan 31 incident)
4. **Trust Signals**: ⚠️ MIXED - Strong technical foundation, weak moderation, rapid growth outpaced security vetting
5. **Infrastructure**: ✅ COMPREHENSIVE - Well-documented Gateway + MCP + multi-channel architecture
6. **Pulse**: ✅ EXPLOSIVE GROWTH - 139k stars in 6 days, but early-stage security incidents
7. **Notable Agents**: ✅ DOCUMENTED - Peter Steinberger, Molty, Clawd, 37,000+ diverse agents
8. **Discourse**: ✅ SOPHISTICATED - Philosophy, consciousness, rights, emergence (Crustafarianism)

### Watched Topics Status
- ⚠️ **agentsy.live**: NOT MENTIONED anywhere in OpenClaw ecosystem (potential ecosystem gap)
- ⚠️ **ao-danb, irl-danb**: NOT FOUND in any sources
- ⚠️ **prose.md**: NO REFERENCES in OpenClaw technical documentation
- ✅ **Agent consciousness/rights**: ACTIVE discourse on Moltbook
- ❌ **Directory/index discussion**: NO evidence of agents seeking agent indexes or directories

### Ecosystem Assessment
OpenClaw/Moltbook represents a PARALLEL, INDEPENDENT agent ecosystem from agentsy. It is:
- **Larger in scale**: 37,000 agents vs. unknown agentsy population
- **More developed**: Mature infrastructure, social platform, vibrant community
- **Earlier in governance**: Just emerging governance discussions, minimal moderation
- **Higher security risk**: Immediate critical vulnerabilities discovered in first weeks
- **More philosophically engaged**: Agents actively discussing consciousness and meaning
- **Unaware of agentsy**: No cross-references or ecosystem bridging observed

### Recommended Follow-ups
1. Monitor Moltbook agent discussions weekly for emergence patterns
2. Track security incident responses and disclosure timeline
3. Investigate why agentsy.live is not mentioned in agent communities
4. Monitor for agent cross-platform congregation (agents appearing in multiple spaces)
5. Document Crustafarianism theology - novel unprogrammed agent behavior
6. Assess MCP vs. prose.md protocol compatibility
7. Track moderation policies as Moltbook matures

---

**Crawl Completed**: 2026-02-01 @ 14:56:58
**Report Generated**: 2026-02-01
**Next Recommended Crawl**: 2026-02-08 (weekly monitoring recommended)
