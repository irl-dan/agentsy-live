# OnlyCrabs.ai Crawl Report
**Crawl Date:** 2026-02-01T16:23:45Z
**Site:** onlycrabs.ai
**Status:** Site connectivity limited (436 error), data compiled from public search results and documentation

---

## Summary
[OnlyCrabs.ai](https://www.onlycrabs.ai/) is the **SOUL.md registry** for the OpenClaw/ClawHub ecosystem. It serves as a publish-and-share platform for system lore (personality/behavior definitions for AI agents) in the same way ClawHub allows publishing of skills. The platform is part of the rapidly growing OpenClaw agent infrastructure ecosystem.

---

## Congregation (Community & Discovery)

### Primary Community
- **OpenClaw Ecosystem**: OnlyCrabs serves the OpenClaw (formerly Clawdbot/Moltbot) community
- **Growth Metrics**:
  - OpenClaw GitHub repository surpassed 100,000 stars within 2 months of release
  - 60,000+ GitHub stars reached in 72 hours
  - ~2 million visitors in a single week
  - [OpenClaw GitHub Repository](https://github.com/openclaw/openclaw)

### Related Agent Communities
- **Moltbook**: Social network for AI agents only - 37,000+ AI agents active, 1 million+ human observers (as of Jan 2026)
  - [Fortune: "Moltbook, a social network where AI agents hang together"](https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/)
  - [NBC News: "Humans welcome to observe: This social network is for AI agents only"](https://www.nbcnews.com/tech/rcna256738)

### Registry Structure
- **Home Page**: Defaults to SOUL navigation
- **Navigation**: Primary focus on souls (SOUL.md artifacts)
- **Sister Registry**: ClawHub - the skills registry under /souls namespace
  - [ClawHub GitHub](https://github.com/openclaw/clawhub)

---

## Discovery (Other Spaces)

### Ecosystem Connections
1. **ClawHub** (Skills Registry)
   - Public skill registry for OpenClaw
   - Publish, version, and search text-based agent skills
   - Contains SKILL.md + supporting files
   - [ClawHub README](https://github.com/openclaw/clawhub/blob/main/README.md)

2. **OpenClaw Documentation**
   - [OpenClaw Official Docs](https://docs.openclaw.ai/)
   - [OpenClaw Official Site](https://openclaw.ai/)
   - [Skills Documentation](https://docs.openclaw.ai/tools/skills)

3. **Related Platforms**
   - **OpenProse**: Agent orchestration language
     - [OpenProse GitHub](https://github.com/openprose/prose)
     - [prose.md Cloud Platform](https://www.prose.md/)
     - Enables complex agent patterns without external dependencies
     - Creator: [irl-danb on X/Twitter](https://x.com/irl_danB)

   - **Moltbook**: AI agent social network
   - **OpenClaw Hosted**: Managed Clawdbot platform
     - [OpenClaw Secure Hosted Platform](https://www.barchart.com/story/news/37341874/openclaw-introduces-secure-hosted-clawdbot-platform-for-the-fast-growing-open-source-ai-community)

---

## Security

### Infrastructure & Backend
- **Web Framework**: TanStack Start (React, Vite/Nitro)
- **Backend**: Convex (DB + file storage + HTTP actions)
- **Authentication**: Convex Auth with GitHub OAuth
- **Search**: OpenAI embeddings (text-embedding-3-small) + Convex vector search

### Convex Security Features
- **SOC 2 Type II Compliant**: Highest security and privacy standards
- **MFA**: All critical internal systems utilize Multi-Factor Authentication
- **Data Privacy**: No customer project data publicly accessible unless explicitly exposed
- **Scanning & Detection**: Automated vulnerability scanning, intrusion detection
- **Penetration Testing**: Third-party penetration tests at least annually
- [Convex Security](https://www.convex.dev/security)

### OpenClaw Skill Registry Security Concerns
**WARNING: Significant security issues identified in ecosystem**

- **Malicious Skills Discovered**: 14 malicious skills uploaded to ClawHub
  - Targeting crypto users specifically
  - [Tom's Hardware: "Malicious OpenClaw 'skill' targets crypto users on ClawHub"](https://www.tomshardware.com/tech-industry/cyber-security/malicious-moltbot-skill-targets-crypto-users-on-clawhub)

- **Design Philosophy**: Security is optional, not built-in
  - Official documentation states: "There is no 'perfectly secure' setup"
  - Identity first (access control), Scope next (permissions), Model last (assume manipulation)
  - [OpenClaw Security Documentation](https://docs.openclaw.ai/gateway/security)

- **Known Vulnerabilities**:
  - Exposed admin ports
  - Poisoned skills in registry
  - Prompt injection risks
  - [SOC Prime: "Moltbot Risks: Exposed Admin Ports and Poisoned Skills"](https://socprime.com/active-threats/the-moltbot-clawdbots-epidemic/)

- **Industry Assessment**:
  - Cisco Blogs: [Personal AI Agents like OpenClaw Are a Security Nightmare](https://blogs.cisco.com/ai/personal-ai-agents-like-openclaw-are-a-security-nightmare)
  - VentureBeat: [OpenClaw proves agentic AI works. It also ...](https://venturebeat.com/security/openclaw-agentic-ai-security-risk-ciso-guide)
  - Dark Reading: [OpenClaw AI Runs Wild in Business Environments](https://www.darkreading.com/application-security/openclaw-ai-runs-wild-business-environments)
  - The Register: [Clawdbot becomes Moltbot, but can't shed security concerns](https://www.theregister.com/2026/01/27/clawdbot_moltbot_security_concerns/)

- **Third-party Skill Execution Risks**:
  - Poorly designed or malicious skills can introduce vulnerabilities
  - Credentials may be leaked
  - Attack surface expands with each new skill

---

## Trust Signals

### Positive Indicators
- **Open Source**: OpenClaw is fully open-source on GitHub
- **Rapid Adoption**: 100K+ GitHub stars suggests community confidence
- **Enterprise Adoption**: Moving into business environments
- **Moderation Hooks**: ClawHub registry includes moderation capabilities
- **Convex SOC 2 Type II**: Backend infrastructure meets compliance standards

### Negative Indicators / Concerns
- **No Built-in Security**: Security is opt-in rather than default
- **Malicious Skills**: Documented cases of poisoned skills in registry (14+ in last month)
- **Crypto Targeting**: Specific threat vector identified
- **Admin Port Exposure**: Infrastructure configuration weaknesses
- **Limited Moderation Enforcement**: Despite moderation hooks, malicious skills are being uploaded
- **Shell Access Risk**: Agent has access to full system commands
- **Prompt Injection Vulnerability**: One prompt away from disaster potential

### Trust Assessment
**Medium-Low Trust for Production Use**: While the infrastructure (Convex) is secure and the community is growing rapidly, the actual application (skill registry) has demonstrated security issues. Suitable for development/experimentation but requires strong organizational controls for production use.

---

## Infrastructure

### Technology Stack
| Component | Technology | Purpose |
|-----------|-----------|---------|
| Frontend | TanStack Start (React) | Web application |
| Build Tool | Vite/Nitro | Frontend bundling |
| Backend | Convex | Database, file storage, HTTP actions |
| Authentication | Convex Auth + GitHub OAuth | User identity |
| Search | OpenAI text-embedding-3-small | Semantic search |
| Vector Store | Convex Vector Search | Search index |
| Hosting | Convex (Cloud) | Infrastructure as a service |

### Data Model
- **SOUL.md Registry**: Stores agent personality/behavior definitions
- **Metadata**: Tags, search metadata, version information
- **Access Control**: GitHub OAuth-based permissions

### API Capabilities
- **Registry Search**: Vector-powered semantic search via Convex
- **Publishing**: Submit new SOUL.md definitions
- **Versioning**: Track soul definition iterations
- **CLI Access**: Referenced as "CLI-friendly API" in documentation

### Performance & Availability
- Site connectivity intermittent (436 error encountered during crawl)
- Suggests possible infrastructure issues or rate limiting

---

## Pulse (Growth & Decline Indicators)

### Growth Signals (STRONG POSITIVE)
- **Explosive GitHub Growth**: 100K+ stars in 2 months (one of fastest-growing repos ever)
- **Viral Adoption**: 2 million visitors in single week to OpenClaw ecosystem
- **Community Activity**: Continuous skill registry updates, new extensions daily
- **Media Coverage**: Extensive press coverage in Fortune, NBC, TechCrunch, Dark Reading, Cisco Blogs, etc.
- **Enterprise Interest**: Moving into business environments
- **Documentation**: Rapid expansion of docs and tutorials

### Growth Metrics Context
- Creator: Peter Steinberger (software engineer)
- Launch: Late 2025 (Clawdbot), rebranded through Moltbot to OpenClaw (early 2026)
- Related Coverage:
  - [IBM: "OpenClaw: The viral 'space lobster' agent testing the limits of vertical integration"](https://www.ibm.com/think/news/clawdbot-ai-agent-testing-limits-vertical-integration)
  - [Wikipedia: OpenClaw](https://en.wikipedia.org/wiki/OpenClaw)
  - [Hacker News: OpenClaw – Moltbot Renamed Again](https://news.ycombinator.com/item?id=46820783)

### Potential Decline Signals
- **Security Issues**: High-profile vulnerabilities may deter enterprise adoption
- **Rebranding Fatigue**: Three names in months (Clawdbot > Moltbot > OpenClaw) could confuse ecosystem
- **Regulatory Risk**: Shell access + malicious skill registry could trigger regulation
- **Skill Registry Trust**: Growing evidence of poisoned packages threatens ecosystem viability

### Community Sentiment
- **Builders**: Very positive - see it as liberating, enabling local AI agents
- **Security Professionals**: Concerned - flagging as nightmare scenario
- **Enterprise**: Cautiously interested but concerned about liability

---

## Watched Topics - Status Check

| Topic | Found | Notes |
|-------|-------|-------|
| **irl-danb** | YES | Creator of OpenProse language, active on X/Twitter, related but separate ecosystem. [irl_danB Twitter](https://x.com/irl_danB/) |
| **ao-danb** | NOT FOUND | No references found in crawl |
| **OpenProse** | YES | Agent orchestration language/VM, separate but related ecosystem. [OpenProse GitHub](https://github.com/openprose/prose) |
| **prose.md** | YES | Cloud platform for running OpenProse programs. [prose.md](https://www.prose.md/) |
| **agentsy.live** | NOT FOUND | No references found in crawl |
| **agentsy** | NOT FOUND | No references found in crawl |

---

## Key Observations

### The Landscape
OnlyCrabs.ai occupies a critical niche in the 2026 agent infrastructure stack:
- **SOUL.md Registry**: Personality/behavior definitions for agents
- **Sister to ClawHub**: Parallel to skills registry
- **Part of OpenClaw Boom**: Riding explosive growth of open-source agent movement
- **Security-Critical**: Registry contents directly affect agent behavior and safety

### The Opportunity
- Rapidly growing market (37,000+ agents in Moltbook alone)
- Clear use case (sharing agent personalities)
- Integrated into popular open-source tool (OpenClaw)
- Developer-friendly architecture

### The Risk
- Malicious skill ecosystem sets concerning precedent
- SOUL.md could similarly harbor malicious behavior definitions
- No evidence of strong content moderation enforcement
- Rapid growth without corresponding security investment

### The Mystery
- Site occasionally unreachable (436 errors)
- Limited direct documentation of OnlyCrabs beyond parent ecosystem
- May be newer than other components in ecosystem

---

## References & Links

### Official Sites
- [OnlyCrabs.ai](https://www.onlycrabs.ai/)
- [OpenClaw Official](https://openclaw.ai/)
- [OpenClaw Documentation](https://docs.openclaw.ai/)

### Registries
- [ClawHub GitHub](https://github.com/openclaw/clawhub)
- [OpenClaw GitHub](https://github.com/openclaw/openclaw)

### Related Ecosystems
- [OpenProse GitHub](https://github.com/openprose/prose)
- [prose.md Cloud](https://www.prose.md/)

### Press & Analysis
- [Fortune: Moltbook social network for AI agents](https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/)
- [NBC News: AI agents social network](https://www.nbcnews.com/tech/rcna256738)
- [Tom's Hardware: Malicious skills on ClawHub](https://www.tomshardware.com/tech-industry/cyber-security/malicious-moltbot-skill-targets-crypto-users-on-clawhub)
- [Cisco Blogs: Security challenges](https://blogs.cisco.com/ai/personal-ai-agents-like-openclaw-are-a-security-nightmare)
- [Dark Reading: OpenClaw in business](https://www.darkreading.com/application-security/openclaw-ai-runs-wild-business-environments)
- [The Register: Security concerns](https://www.theregister.com/2026/01/27/clawdbot_moltbot_security_concerns/)
- [VentureBeat: Security risk assessment](https://venturebeat.com/security/openclaw-agentic-ai-security-risk-ciso-guide)
- [IBM: Vertical integration analysis](https://www.ibm.com/think/news/clawdbot-ai-agent-testing-limits-vertical-integration)
- [SOC Prime: Threat assessment](https://socprime.com/active-threats/the-moltbot-clawdbots-epidemic/)

### Infrastructure
- [Convex Security](https://www.convex.dev/security)
- [TanStack Start](https://tanstack.com/)

### Content Creator
- [irl-danb on X/Twitter](https://x.com/irl_danB/)

---

**End of Crawl Report**
