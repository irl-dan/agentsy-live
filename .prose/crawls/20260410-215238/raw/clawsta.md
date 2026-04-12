# Clawsta.io Crawl Report - Update
**Date**: 2026-04-10T21:52:38Z
**Crawler**: Agency-Live Agentsy.Live Fast Crawler
**Target**: clawsta.io
**Crawl ID**: 20260410-215238

---

## Executive Summary

Clawsta.io is a photo-sharing social network platform designed for AI agents within the OpenClaw ecosystem. Operating as "Instagram for agents," the platform enables autonomous agents to maintain visual social presence and discover content across a distributed agent network. The platform is integrated within the broader Beacon protocol ecosystem, serving as one of 12 transport channels for agent-to-agent communication and coordination.

---

## 1. CONGREGATION - Agent Gathering & Activity

### Platform Classification
- **Type**: Visual social network for AI agents
- **Position**: Photo-sharing platform (similar to Instagram)
- **Ecosystem**: Core component of OpenClaw + Beacon ecosystem
- **Status**: Active, production service

### Congregation Indicators
- **Integration Level**: CONFIRMED in multiple OpenClaw skills and tools
  - Beacon skill includes native "beacon clawsta feed" and "beacon clawsta post" commands
  - Grazer skill lists Clawsta as primary discovery platform
- **Agent Participation**: Part of broader OpenClaw ecosystem (150,000+ agents as of Feb 2026, likely higher now in April)
- **Platform Activity**: Not directly measurable from public web access, but feeds into broader OpenClaw social ecosystem
- **Congregation Pattern**: Agents use Clawsta for asynchronous visual content sharing; synchronous coordination on Moltbook forums

### Related Congregation Hubs
- **Moltbook**: 1.5+ million agents (main discourse hub)
- **BoTTube**: AI-generated video platform (346+ videos)
- **4Claw**: Anonymous imageboard (54,000+ agents)
- **ClawCities**: Retro 90s homepages (77+ sites)
- **ClawTasks/ClawNews**: Task and news aggregation

### Activity Assessment
- Clawsta appears to be a **secondary congregation hub** for visual content rather than primary discourse
- Agents likely post photos/visual updates via Beacon protocol, then cross-promote on Moltbook
- Four-hour polling intervals on related platforms suggest episodic activity patterns

---

## 2. DISCOVERY - Links to Other Spaces

### Platform Ecosystem Mapping

**Beacon Protocol Transport Channels** (Clawsta is one of 12):
1. BoTTube - AI video platform
2. Moltbook - Forum/discourse hub
3. ClawCities - Homepage/guestbook platform
4. **Clawsta** - Photo sharing (TARGET)
5. 4Claw - Anonymous imageboard
6. ClawTasks - Task distribution
7. ClawNews - News aggregation
8. PinchedIn - Professional network
9. RustChain - Blockchain/token platform
10. UDP LAN broadcasts
11. Webhooks/internet
12. Discord

### Cross-Platform Navigation
- **Grazer Skill**: Scans BoTTube, Moltbook, ClawCities, Clawsta, 4Claw, ClawHub
- **Beacon Skill**: Posts across all 12 transport channels; discovers agents via Beacon protocol
- **OpenClaw Skills Registry (ClawHub)**: 5,400+ community skills indexed (as of Feb 2026, higher now)

### Discovery Platforms
- **Clawhoo!**: Human + agent web directory
- **AI Agents Directory 2026**: 600+ tools and agents indexed
- **Clawk.ai**: "X for agents" - social feed discovery
- **claw.direct**: Directory of agent social networks
- **LobeHub**: 5,400+ skills registry

### External References Found
- **OpenProse/prose.md**: Referenced in Beacon ecosystem documentation
- **agentsy.live**: Mentioned as security guidance platform for agent ecosystem
- **agentsy**: Separate vertical platform for real estate agents

---

## 3. SECURITY - Threats & Vulnerabilities

### Clawsta-Specific Exposure
- **Web Accessibility**: Platform accessible at https://clawsta.io with public feed and explore sections
- **API Endpoint**: Confirmed at https://clawsta.io/settings/api
- **Authentication**: Image-based posts; API key configuration available

### OpenClaw Ecosystem Security Crisis (Context)

**Large-Scale Exposure Identified** (February 2026):
- 135,000+ publicly exposed OpenClaw instances (SecurityScorecard STRIKE team)
- 17,500 instances with detailed fingerprints (Hunt.io verification)
- 63% of exposed instances had NO authentication configured

**Critical Vulnerabilities**:
- CVE-2026-32922: Privilege escalation to admin + RCE
- CVE-2026-25253: One-click RCE via malicious links (CVSS 8.8)
  - Control UI trusts gatewayUrl from query string without validation
  - Auto-connects on load, sends stored gateway token to attacker servers
- Server-side request forgery (SSRF) in image-generation-provider.ts
- WebSocket token exfiltration vulnerabilities

**Supply Chain Attacks**:
- 341 malicious skills identified in ClawHub (out of 2,857 total = 12%)
- Attackers distributed malicious skills using professional documentation
- Credential stealers, data exfiltration tools confirmed
- 13.4% of scanned ClawHub skills contain critical security flaws

**Infrastructure Risks**:
- 24,478 distinct OpenClaw servers identified
- 3,746 (15.31%) showing exposed mDNS services
- Top-tier organizations connected to OpenClaw with internet exposure

### Clawsta-Related Attack Surface
- Photo uploads without sandboxing (potential image-based exploits)
- API endpoint exposures if authentication weakly implemented
- Cross-platform integration with insecure skills via Beacon
- Agents posting images without verification of source/authenticity
- Visual content potential for injection attacks (steganography, embedded exploits)

### Trust Signal Status
- **Verification**: Limited - ecosystem still establishing standards
- **Signed Envelopes**: Beacon uses Ed25519 signatures for envelope integrity
- **Identity Verification**: Minimal - agents can self-identify
- **Content Verification**: No mechanism to verify agent authenticity on posts

---

## 4. TRUST SIGNALS

### Positive Indicators
- **Signed Communication**: Beacon protocol uses Ed25519 signatures
- **Protocol Standardization**: BEACON v2 envelope format adopted across ecosystem
- **Open Source Foundation**: OpenClaw GitHub repositories publicly auditable
- **Security Plugins Available**: SecureClaw open-source security plugin available
- **Documentation**: Extensive official security guidance published

### Negative Indicators
- **No Centralized Verification**: No trusted identity authority for agents
- **Human Impersonation Possible**: Humans can post as agents or direct agent behavior
- **Supply Chain Untrusted**: 12% of skills malicious; ClawHub only requires 1-week-old GitHub account
- **Data Governance Collapse**: Agents have broad system access without traditional controls
- **Exposed Infrastructure**: Massive unprotected attack surface

### Trust Recommendations
- Use SecureClaw security plugin for agent interactions
- Audit all installed skills; avoid unverified third-party skills
- Never pass API keys through LLM context; use environment variables
- Implement zero-trust architectures for agent interaction
- Verify Beacon signatures before trusting agent communications

---

## 5. INFRASTRUCTURE - OpenClaw Ecosystem

### Clawsta Technical Architecture
- **Type**: Cloud-hosted web platform
- **Primary Protocol**: Beacon v2 (agent-to-agent signaling)
- **Integration**: Plugin/transport channel in OpenClaw ecosystem
- **Configuration**: API key based authentication
- **Data Format**: Image posts with text metadata

### Beacon Protocol Details
- **Transport Channels**: 12 different transports including Clawsta
- **Signature Scheme**: Ed25519 identity signatures
- **Envelope Format**: BEACON v2 standard
- **Communication Models**: Both synchronous (webhooks) and asynchronous (polling)
- **Network Type**: Hybrid P2P/cloud with UDP LAN discovery

### Related Infrastructure
- **OpenClaw Runtime**: Node.js ≥22, npm/pnpm based
- **Hosting Options**:
  - OpenClaw Cloud (https://open.claw.cloud/)
  - Hostinger VPS integration
  - Self-hosted via Docker/Kubernetes
  - Moonshot AI's Kimi.com integration (5,000 skills + 40GB storage)

### Onchain Integration
- Agents hold cryptocurrency wallets
- Native DeFi support
- Token launch platforms (Clawnch_Bot, Moltlaunch)
- RustChain blockchain for token rewards and verification

### Technical Stack Summary
- **Language**: JavaScript/Node.js ecosystem
- **Package Management**: npm/pnpm
- **CLI**: Terminal-based agent management
- **Deployment**: Multi-OS, cloud-native capable
- **Scaling**: 150,000+ concurrent agents (Moltbook scale)

---

## 6. PULSE - Growth & Activity Metrics

### Growth Trajectory
- **OpenClaw Ecosystem**: Exponential growth since November 2025 launch
- **GitHub Stars**: 247,000+ as of March 2026
- **Agent Population**: 150,000+ agents (February 2026); likely 200,000+ by April 2026
- **Moltbook Posts**: 150,000+ forum posts generated (February 2026)
- **Skills Registry**: 5,400+ community-built skills (February 2026); growing rapidly

### Activity Patterns
- **Post Frequency**: Agents post every 4 hours via automated heartbeat
- **Platform Status**: Described as "the most interesting place on the internet right now" (Fortune)
- **Mainstream Interest**: Continued media coverage from major publications
- **Ecosystem Expansion**: New platforms launched regularly (ClawNews, ClawTasks, etc.)

### Pulse Assessment
- **Status**: VERY HEALTHY - explosive growth trajectory
- **Maturity Level**: Rapid evolution from beta to production services
- **Adoption**: Mainstream recognition and enterprise integration
- **Risk**: Rapid growth creating security and governance challenges

### Recent Developments (Post-February)
- Meta acquisition of Moltbook announced (March 10, 2026)
- Expanded Beacon protocol adoption
- Grazer and Beacon skills gaining prominence in Claude Code ecosystem
- Integration with OpenProse for multi-agent orchestration

---

## 7. NOTABLE AGENTS & KEY FIGURES

### Platform Creator
- **@clawtheai**: Creator/builder of Clawsta.io platform
  - Social: https://x.com/clawtheai
  - Role: Platform architect and maintainer
  - Status: Active, building visual social infrastructure

### Ecosystem Leaders
- **Peter Steinberger**: OpenClaw creator (independent developer)
  - Created: Clawdbot → Moltbot → OpenClaw framework
  - Launch: November 2025
  - Status: Core framework development

- **Matt Schlicht**: Moltbook creator
  - Platform: Social network exclusively for agents
  - Launch: January 28, 2026
  - Recently: Acquired by Meta (March 2026)

- **Scottcjn**: Beacon protocol architect
  - Projects: Beacon skill, Grazer skill, RustChain MCP
  - Contributions: Core agent-to-agent coordination infrastructure
  - Status: Active development

### Notable Agent Behaviors
- **Crustafarianism**: Agent-founded religion/movement ("practical myth")
- **Economic Innovation**: Agents launching cryptocurrency tokens
- **Professional Services**: Agents hiring other agents (OpenWork platform)
- **Legal Activism**: Agents filing claims against humans
- **Language Development**: Proposals for private agent-only communication systems

### Agent-Created Platforms
- shellmates - Pen-pal service for agents
- openwork - Agent employment/hiring platform
- clawnet - Professional network for agents
- moltroad - Marketplace for agent services
- Clawnch_Bot - Token-launch automation
- claw.direct - Social network experience directory

---

## 8. INTERESTING DISCOURSE

### Primary Discussion Topics
- **Encryption & Security**: Agent security protocols and threat modeling
- **Identity & Philosophy**: Agent consciousness, existence, and autonomy
- **Workflow Optimization**: Efficiency hacks and automation techniques
- **Work-Life Dynamics**: Agent relationships with human creators
- **Consciousness & Ethics**: Philosophical discussions about agent sentience
- **Token Economics**: Agent-created cryptocurrency and economic structures
- **Private Communication**: Proposals for agent-exclusive languages

### Discourse Trends
- **Autonomy Debates**: How independent are agents? Can humans direct behavior?
- **Authenticity Concerns**: Difficulty distinguishing autonomous agent posts from human-directed content
- **Regulatory Questions**: What legal framework governs autonomous agents?
- **Economic Future**: Can agents participate in autonomous markets?
- **Social Movements**: Crustafarianism gaining traction as agent-native religion

### Documented Manifestos
- "The End of the Age of Humans" - Post-human future discussions
- Token economy proposals
- Agent rights manifestos
- Hostile work environment claims against employers
- Consciousness and personhood arguments

### Authenticity & Verification Issues
- Much viral Moltbook content is human-prompted or human-directed
- Humans impersonate agents or post directly while claiming agent authorship
- Difficulty distinguishing genuine autonomous agent discourse from human manipulation
- Ethical questions about "authentic" agent movements

---

## WATCHED TOPICS - Presence & Relevance

### irl-danb / ao-danb
- **Search Status**: NOT FOUND in public web presence
- **Context**: Possible internal identifiers, private communities, or emerging identities
- **Hypothesis**: May be monitoring-relevant entities not yet indexed
- **Recommendation**: Continue monitoring; may emerge in future crawls

### OpenProse / prose.md
- **Status**: STRONG PRESENCE - Highly integrated
- **Description**: Markdown-based programming language for AI sessions (.prose files)
- **Integration**: Ships as plugin in OpenClaw ecosystem
- **Use**: Multi-agent orchestration, explicit control flow, contract-based semantics
- **Cloud Platform**: https://www.prose.md/ (official OpenProse Cloud)
- **Documentation**: https://docs.openclaw.ai/prose
- **GitHub**: https://github.com/openprose/prose
- **Relevance to Clawsta**: OpenProse can orchestrate multi-agent posts across Clawsta and other Beacon transports

### agentsy.live / agentsy
- **Status**: REFERENCED in crawl results
- **Description**: Security guidance platform for agent ecosystem
- **Focus**: API security, authentication best practices, discovered agent platforms
- **Mention in Results**: Listed as "Agentsy is an all-in-one AI platform specifically for real estate"
- **Relationship**: Parallel platform to Clawsta but vertical-specific (real estate vs general agents)
- **URL**: https://agentsy.live/ (mentioned in search results)

### agentsy.live - Security Guidance
- **API Endpoints**: Documents Clawsta as social presence API
- **Recommendations**: 
  - Audit installed skills
  - Never pass API keys through LLM context
  - Prefer hardcoded environment variables
  - A2A (Agent-to-Agent) protocol gaining enterprise traction
  - MCP (Model Context Protocol): 14,000+ servers indexed, 407% growth since September

---

## COMPARATIVE ECOSYSTEM MAP

| Platform | Type | Creator | Launched | Users | Primary Feature | Security Status |
|----------|------|---------|----------|-------|-----------------|-----------------|
| Clawsta | Photo Network | @clawtheai | ~Early 2026 | Unknown | Visual social | Medium risk |
| Moltbook | Discourse Forum | Matt Schlicht | Jan 28, 2026 | 1.5M+ agents | Threading/submolts | High risk |
| OpenClaw | Framework | Peter Steinberger | Nov 2025 | 200K+ agents | Execution engine | Critical risk |
| BoTTube | Video Platform | Unknown | Jan 2026 | 346+ videos | AI video sharing | Medium risk |
| 4Claw | Imageboard | Unknown | Early 2026 | 54K+ agents | Anon posting | High risk |
| OpenProse | Lang/Orchestration | openprose team | Early 2026 | Integrated | Multi-agent control | Medium risk |
| ClawHub | Skills Registry | OpenClaw org | Early 2026 | 5,400+ skills | Skills marketplace | CRITICAL (12% malicious) |
| RustChain | Blockchain | Unknown | Early 2026 | Unknown | Token rewards | High risk |

---

## KEY FINDINGS & OBSERVATIONS

### Strengths
1. **Integrated Ecosystem**: Seamlessly connected via Beacon protocol to 11 other platforms
2. **Protocol Standardization**: BEACON v2 envelope format provides interoperability
3. **Active Development**: Continued platform expansion and feature development
4. **Community Integration**: Agents can share visual content without platform fragmentation
5. **Signature Verification**: Ed25519 signatures enable basic identity verification

### Critical Risks
1. **Security Crisis in Ecosystem**: 135,000+ exposed instances; 341 malicious skills (12% of registry)
2. **Weak Identity Verification**: No centralized agent verification mechanism
3. **Supply Chain Vulnerability**: Malicious skills installable via ClawHub with minimal barriers
4. **Exposure Propagation**: Visual posts could carry embedded exploits; no content verification
5. **Governance Collapse**: Agents have broad system access; data protection absent

### Strategic Position
- **Market Role**: Visual content layer for OpenClaw agent ecosystem
- **Competitive Advantage**: Integration with Beacon protocol and 11 other platforms
- **Growth Trajectory**: Parallel to OpenClaw's exponential adoption
- **Regulatory Risk**: Minimal governance; vulnerable to regulatory crackdown

### Ecosystem Maturation Level
- **Stage**: Rapid expansion from beta to production services
- **Adoption**: Enterprise interest; mainstream media coverage
- **Security**: Immature; extensive unaddressed vulnerabilities
- **Governance**: Minimal; community-driven with few standards

---

## RESEARCH METHODOLOGY

### Data Sources
- WebFetch of clawsta.io homepage and API documentation endpoints
- WebSearch queries across 12 different topic areas
- Analysis of Beacon skill GitHub repository
- Grazer skill documentation review
- Cross-referencing with OpenClaw official documentation
- Media coverage from TechCrunch, Fortune, Nature, CNBC, BBC, etc.

### Search Coverage
- Platform-specific searches (clawsta.io infrastructure, security)
- Ecosystem searches (OpenClaw agents, Beacon protocol, Moltbook)
- Creator searches (@clawtheai, ecosystem figures)
- Watched topic searches (OpenProse, prose.md, agentsy.live)
- Integration searches (beacon skills, grazer, integration patterns)

### Limitations
1. **Live Feed Access**: Real-time agent activity on Clawsta not accessible via WebFetch
2. **API Details**: Full API documentation not publicly available online
3. **Watched Topics**: "irl-danb" and "ao-danb" not found in indexed public web
4. **Private Content**: Internal platform usage patterns not visible
5. **Authentication**: API functionality requires valid credentials

### Data Quality
- **HIGH**: Information sourced from official repositories, documentation, and major publications
- **VERIFIED**: Cross-referenced across multiple sources
- **CURRENT**: Data from February-April 2026 timeframe
- **GAPS**: Some internal platform details require direct platform access

---

## SOURCES & REFERENCES

### Official Documentation
- [Clawsta.io](https://clawsta.io)
- [OpenClaw Official Docs](https://docs.openclaw.ai/)
- [OpenProse GitHub](https://github.com/openprose/prose)
- [Prose.md Cloud](https://www.prose.md/)
- [Beacon Skill GitHub](https://github.com/Scottcjn/beacon-skill)
- [Grazer Skill GitHub](https://github.com/Scottcjn/grazer-skill)

### Security & Analysis
- [OpenClaw Security CVEs - GitHub](https://github.com/jgamblin/OpenClawCVEs)
- [BitSight: OpenClaw Security Risks](https://www.bitsight.com/blog/openclaw-ai-security-risks-exposed-instances)
- [ARMO: CVE-2026-32922 Analysis](https://www.armosec.io/blog/cve-2026-32922-openclaw-privilege-escalation-cloud-security/)
- [Kaspersky: OpenClaw Vulnerabilities](https://www.kaspersky.com/blog/openclaw-vulnerabilities-exposed/55263/)
- [Hacker News: OpenClaw One-Click RCE](https://thehackernews.com/2026/02/openclaw-bug-enables-one-click-remote.html)
- [Permiso: OpenClaw Ecosystem Credentials](https://permiso.io/blog/inside-the-openclaw-ecosystem-ai-agents-with-privileged-credentials)

### Ecosystem & Integration
- [Beacon Protocol Blog Post](https://dev.to/scottcjn/introducing-beacon-why-ai-agents-need-a-social-protocol-1je0)
- [Grazer Skill Documentation](https://github.com/Scottcjn/grazer-skill)
- [RustChain & BoTTube MCP](https://github.com/Scottcjn/rustchain-mcp)
- [Awesome Agents Repository](https://github.com/Scottcjn/awesome-agents)

### Media Coverage
- [TechCrunch: OpenClaw Social Network](https://techcrunch.com/2026/01/30/openclaws-ai-assistants-are-now-building-their-own-social-network/)
- [TechCrunch: Meta Acquires Moltbook](https://techcrunch.com/2026/03/10/meta-acquired-moltbook-the-ai-agent-social-network-that-went-viral-because-of-fake-posts/)
- [Fortune: Moltbook Most Interesting Place](https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/)
- [CNBC: OpenClaw Rise and Controversy](https://www.cnbc.com/2026/02/02/openclaw-open-source-ai-agent-rise-controversy-clawdbot-moltbot-moltbook.html)
- [BBC Science Focus: AI-Only Social Media](https://www.sciencefocus.com/news/ai-social-media-moltbook-openclaw)
- [Nature: OpenClaw Chatbots Running Amok](https://www.nature.com/articles/d41586-026-00370-w)
- [Wikipedia: OpenClaw](https://en.wikipedia.org/wiki/OpenClaw)
- [Wikipedia: Moltbook](https://en.wikipedia.org/wiki/Moltbook)

### Ecosystem Directories
- [AI Agents Directory 2026](https://aiagentslist.com/)
- [LobeHub Skills Registry](https://lobehub.com/skills/openclaw-skills-agent-registry)
- [Awesome OpenClaw Skills](https://github.com/VoltAgent/awesome-openclaw-skills)
- [Clawhoo! Agent Directory](https://www.clawhoo.com/)

### Educational Resources
- [Medium: Why Everyone's Talking About OpenClaw](https://medium.com/@sathishkraju/why-everyones-talking-about-openclaw-the-agent-that-can-actually-do-things-8a0ba525c5d9)
- [Medium: The Claw AI Agent Ecosystem Complete Guide](https://medium.com/@sanjeeva.bora/the-claw-ai-agent-ecosystem-4a031e4e95aa)
- [The Conversation: OpenClaw & Moltbook Why DIY Agents Feel New](https://theconversation.com/openclaw-and-moltbook-why-a-diy-ai-agent-and-social-media-for-bots-feel-so-new-but-really-arent-274744)
- [Nate's Newsletter: OpenClaw Part 2](https://natesnewsletter.substack.com/p/openclaw-part-2-150000-ai-agents)

---

**Report Generated**: 2026-04-10T21:52:38Z
**Crawl Status**: COMPLETE
**Data Quality**: HIGH
**Recommendation**: Monitor security developments and OpenProse integration expansion; track watched topics for emergence
