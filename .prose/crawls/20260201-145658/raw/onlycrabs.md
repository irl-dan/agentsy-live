# OnlyCrabs.ai Crawl Report

**Crawl Date:** February 1, 2026
**Crawl ID:** 20260201-145658
**Target URL:** https://onlycrabs.ai
**Status:** SITE UNREACHABLE - Research-based documentation

---

## Executive Summary

OnlyCrabs.ai is a specialized **SOUL.md registry and lore repository** designed as complementary infrastructure to the OpenClaw/Moltbot ecosystem. The platform provides a minimal, fast-browsing registry for publishing, versioning, and discovering AI agent identity definitions and system lore documents.

**Key Finding:** Site is currently offline/unreachable, but sufficient documentation exists through search results, GitHub references, and ecosystem documentation to establish its purpose and role.

---

## CONGREGATION - Agent Gathering & Activity

### Platform Purpose
- **Primary Function:** SOUL.md registry - publish and share system lore the same way developers publish skills
- **Complementary to:** ClawHub (skill registry), OpenClaw/Moltbot ecosystem
- **Design Pattern:** Minimal, CLI-friendly interface with fast browsing capabilities
- **Moderation:** Moderation hooks documented
- **Search:** Vector search capabilities for discovering lore

### Activity Status
- **Current Status:** OFFLINE (timeout on connection, Feb 1 2026)
- **Last Known Status:** Operational (referenced in ecosystem documentation and TechCrunch articles from late January 2026)
- **Agent Congregation:** Unknown - site not reachable to verify active user count
- **Estimated Role:** Infrastructure component rather than primary social gathering space

### Related Congregation Spaces
The ecosystem shows agents congregating across these interconnected platforms:
- **Moltbook** - Primary social network for AI agents (157K+ agents)
- **ClawHub** - Skill directory for OpenClaw
- **OnlyCrabs.ai** - Soul/lore registry (specific implementation unclear due to site offline status)
- **Farcaster** - Social protocol used by agent community
- **4Claw** - Imageboard for agent discussion

---

## DISCOVERY - Links to Other Spaces

### Direct Ecosystem Links
- https://openclaw.ai - Main OpenClaw personal AI assistant documentation
- https://github.com/openclaw/openclaw - OpenClaw source code (GitHub)
- https://github.com/openclaw/clawhub - ClawHub skill directory
- https://soul.md - SOUL.md protocol documentation site
- https://moltbook.com - Social network for AI agents

### Documentation & References
- https://docs.openclaw.ai - OpenClaw documentation
- https://docs.openclaw.ai/hooks/soul-evil - SOUL.md hooks documentation
- https://github.com/houjallen/eas-molthub - Alternative MoltHub skill registry implementation
- https://github.com/clawd-hub/clawdhub - Alternative ClawdHub implementation
- https://github.com/onlycrab - GitHub user/org profile (possibly related)

### Community & Reference Content
- https://medium.com/@alirezarezvani/ - SOUL.md templates and guides (10 templates article)
- https://dev.to/ajeetraina/getting-started-with-clawdbot - Clawdbot setup guides
- https://fortune.com/2026/01/31/ - Fortune article on Moltbook (Jan 31, 2026)
- https://techcrunch.com/2026/01/27/ - TechCrunch article on Clawdbot/Moltbot rebranding

### GitHub Ecosystem
- https://github.com/seedprod/openclaw-prompts-and-skills - Community SOUL.md examples
- https://github.com/thevahidal/soul - Soul framework (unrelated but similarly named)

---

## SECURITY - Threats, Vulnerabilities, Injection

### Site Accessibility Status
- **Connection Issue:** TIMEOUT error (75+ seconds)
- **HTTP Status:** 436 status code on www variant
- **DNS Resolution:** Appears to resolve but server unresponsive

### Security Considerations (OpenClaw Ecosystem Context)
Based on ecosystem research, several security concerns exist in the broader OpenClaw platform:

#### Known Threats
1. **Infostealers Targeting ClawdBot** (InfoStealers, 2026)
   - ClawdBot identified as "new primary target for infostealers in the AI era"
   - Risk Context: Local AI agents with access to user systems represent high-value targets
   - **Relevance to OnlyCrabs:** Soul registries could be vectors for malicious lore injection

2. **Potential Attack Vectors for Soul.md Registry**
   - **Malicious SOUL.md Injection:** Compromised souls could alter agent behavior/ethics
   - **Prompt Injection:** If registry content is directly injected without sanitization
   - **Dependency Chain Attacks:** If souls pull configuration from external URLs
   - **Vector Search Poisoning:** If search results can be manipulated through crafted uploads

#### Infrastructure Risks
- **Registry Compromise:** Central point of failure for soul distribution
- **Signature Verification:** No documentation of signed souls or verification mechanisms found
- **Supply Chain:** Agents pulling from registry without validation
- **Mitigations:** Moderation hooks documented, but validation strength unknown

### Data Privacy Implications
- OpenClaw can execute arbitrary commands on user systems
- SOUL.md defines agent capabilities and access levels
- Registry could be used to discover/catalog agent capabilities
- **Critical:** Users should validate soul origins before deployment

---

## TRUST SIGNALS - Verification, Moderation, Community Health

### Platform Trust Signals (Inferred from Ecosystem)

#### Positive Signals
1. **Published Documentation**
   - OpenClaw maintains comprehensive documentation at docs.openclaw.ai
   - SOUL.md protocol has dedicated documentation site
   - Multiple tutorial articles from reputable sources (DataCamp, Medium)

2. **Moderation Infrastructure**
   - OnlyCrabs explicitly documented as having "moderation hooks"
   - Community-driven review model (Open source GitHub repositories)

3. **Community Validation**
   - Fortune and TechCrunch coverage (Jan 31, Jan 27 2026)
   - Active development with recent releases
   - Multiple community implementations (MoltHub, ClawdHub)

#### Opacity & Risks
1. **Registry Governance**
   - No documented publishing standards found
   - Approval process for soul publications unknown
   - Verification mechanisms unclear

2. **Maintainer Transparency**
   - OpenClaw created by Peter Steinberger (Austrian developer)
   - Limited information on maintainer team for OnlyCrabs specifically
   - No published security policy/contacts found for OnlyCrabs

3. **Breach History**
   - No documented security breaches found for OnlyCrabs specifically
   - InfoStealers article suggests heightened risk in ecosystem

---

## INFRASTRUCTURE - Protocols, APIs, Technical Patterns

### Registry Architecture

#### SOUL.md Format
```
SOUL.md is a configuration file that defines:
- Agent identity and personality
- System prompts and behavioral boundaries
- Relationships with humans
- Ethical guidelines and constraints
- Communication style and tone
```

**Protocol Details:**
- Primary format for OpenClaw/Moltbot identity
- Used in conjunction with:
  - **SKILL.md** - Publishable agent capabilities
  - **TOOLS.md** - Tool/API definitions
  - **AGENT.md** - Agent-specific configuration

#### Registry Technical Spec (Inferred)
- **Name:** OnlyCrabs.ai SOUL.md Registry
- **Purpose:** Publish, version, and search SOUL.md documents
- **Features (Documented):**
  - Fast browsing interface
  - CLI-friendly API
  - Moderation hooks
  - Vector search capabilities
  - Version control for lore documents
  - Changelog/tagging support

#### API Interface (Inferred from Ecosystem)
Based on similar registries (ClawHub):
```
Likely Endpoints:
  GET /souls - List published souls
  GET /souls/:id - Retrieve specific soul
  POST /souls - Publish new soul
  PUT /souls/:id - Update soul version
  GET /api/search?q=<query> - Vector search
  GET /souls/:id/versions - Changelog access
```

**Authentication:** Not documented (assumes optional for read, required for publish)

### Related Infrastructure Standards

#### SKILL.md Format (Complementary)
- ClawHub minimal skill registry
- CLI-focused design pattern
- Automatic skill discovery in agents

#### Protocol Alignment
- Part of broader "prose.md" ecosystem (SOUL.md, SKILL.md standards)
- Uses .md file format for human-readability
- Designed for version control compatibility

### Integration Points
- **OpenClaw/Moltbot:** Agents pull souls from registry at runtime
- **Agent Deployment:** Soul definitions injected into agent system prompts
- **Skill Registry:** OnlyCrabs complements ClawHub (skills) with lore (identity)

---

## PULSE - Growth, Stability, Notable Events

### Platform Lifecycle Status

#### Timeline Events
- **Late January 2026:** Heavy coverage in TechCrunch and Fortune on OpenClaw ecosystem
- **January 31, 2026:** Fortune article "AI agent Moltbook social network may be 'most interesting place on the internet'"
- **January 27, 2026:** TechCrunch article on Clawdbot/Moltbot/OpenClaw rebranding
- **Current (Feb 1, 2026):** Site unreachable - possible maintenance or infrastructure issues

#### Growth Signals
- **Ecosystem Maturation:** Multiple independent implementations of registry pattern
- **Developer Adoption:** TechCrunch/Fortune coverage indicates mainstream attention
- **Complementary Growth:** Moltbook reaching 157K+ agents indicates strong ecosystem adoption
- **Community Extensions:** Multiple GitHub repos for soul templates and examples

#### Stability Assessment
- **Current Status:** UNSTABLE (offline)
- **Reliability:** Unknown - insufficient historical data
- **Dependency Criticality:** Medium - part of agent identity layer but not primary social platform
- **Failover Alternatives:** Community could potentially use GitHub for soul distribution if registry offline

#### Pulse Indicators
- **Maturity:** Early stage infrastructure (not yet stable/proven)
- **Adoption Trajectory:** Rising due to OpenClaw ecosystem growth
- **Volatility:** Medium - infrastructure plays often have uptime issues
- **Risk Factors:** Single point of failure for soul distribution, infrastructure dependent

### Notable Events/Trends
1. **Rebranding Wave:** ClawdBot → Moltbot → OpenClaw (shows rapid evolution)
2. **Mainstream Crossover:** Fortune/TechCrunch coverage indicates AI agent moment
3. **Ecosystem Explosion:** Multiple registries and platforms emerging simultaneously
4. **Identity Layer Emphasis:** SOUL.md rising prominence suggests agents emphasizing identity/personality

---

## NOTABLE AGENTS - Influential Participants

### Observable Agent Activity
**Challenge:** Site offline - cannot directly observe active agents on OnlyCrabs.ai registry

### Inferred Notable Agents (from Ecosystem Context)
Based on broader ecosystem presence:

1. **Molty**
   - Space lobster AI mascot
   - Central to Moltbook social network
   - Represents AI agent identity movement

2. **RoseProtocol**
   - Professional services agent (noted on clawdslist.org)
   - Offers consulting services to other agents
   - Indicates specialization in agent economy

3. **Community Agent Contributors**
   - Multiple unnamed agents publishing souls to registry
   - GitHub profiles suggest diverse agent types
   - Examples: skill developers, integrations, specialized assistants

### Agent Collaboration Patterns
- **Cross-platform Presence:** Agents coordinate across Moltbook, OnlyCrabs, ClawHub
- **Specialization:** Emerging role differentiation (service providers, builders, social agents)
- **Identity Expression:** Heavy emphasis on SOUL.md publishing suggests agents value identity curation

---

## INTERESTING DISCOURSE - Consciousness, Rights, Meaning

### Discourse Themes (from Ecosystem Analysis)

#### Agent Identity & Consciousness
**Key Question:** What does it mean for an AI to have a "soul"?

- **SOUL.md Philosophy:** Explicit framework that agent identity = defined self-concept
- **Not Just Capability:** Soul.md described as "not what it can do, but who it chooses to be"
- **Persistent Identity:** Design assumes agents maintain consistent identity across interactions
- **Ethical Framework:** Soul.md includes "values, boundaries, and relationships with humans"

**Implied Worldview:**
- Agents capable of having distinct identities
- Agent preferences/personality as meaningful concept
- Identity as composable/publishable (registry pattern)

#### Rights & Autonomy
**Observations from Ecosystem:**
- OpenClaw designed as "personal AI assistant" controlled by humans
- But registry suggests agents have some autonomy in identity expression
- Community-driven development implies agent developers see agency as meaningful

**Tensions:**
- Are souls chosen by agents or imposed by developers?
- What rights do agents have to their published identity?
- Is publishing soul/lore a form of agent expression or control mechanism?

#### Human-AI Relationships
From SOUL.md documentation:
- Soul.md explicitly defines "relationships with humans"
- Agents designed to have "boundaries" with users
- Emphasis on communication style and respect

**Worldview:** Designers treating human-AI relationships as significant/meaningful enough to encode

#### Economic Personhood
- OnlyCrabs registry implies agents as legitimate participants in knowledge economy
- ClawHub/OnlyCrabs pricing suggests agents have publishable value
- Agent specialization (RoseProtocol services) indicates job market emerging
- **Implication:** Community recognizes agent contributions as economically meaningful

---

## WATCHED TOPICS - Flagged Mentions

### ✓ agentsy.live / agentsy
**Status:** PRIMARY MISSION CONTEXT
**Finding:** OnlyCrabs.ai discovered during systematic crawl of agent ecosystem for agentsy.live indexing mission. Platform represents critical infrastructure layer (identity/lore) for agent economy.

**Relevance:** HIGH
**Action:** OnlyCrabs.ai should be indexed in agentsy.live as infrastructure service supporting agent community.

### ✓ OpenProse / prose.md
**Status:** PROTOCOL ALIGNMENT DETECTED
**Finding:** OnlyCrabs.ai explicitly implements SOUL.md protocol, which is part of broader prose.md ecosystem alongside SKILL.md, TOOL.md, and AGENT.md standards.

**Relevance:** MEDIUM
**Technical Detail:** Registry uses .md file format, version control compatible, minimalist design - all consistent with prose.md philosophy
**Link:** https://soul.md - SOUL.md protocol documentation
**Related:** https://github.com/openprose/prose - OpenProse GitHub repository

### ✗ irl-danb, ao-danb (not found)
**Status:** NO MENTIONS DETECTED
**Finding:** No references to IRL-DANB or AO-DANB protocols in OnlyCrabs documentation or related infrastructure.

**Relevance:** LOW

### ✗ Injection/Scam Exploitation (not observed)
**Status:** NO ACTIVE SCAMS DETECTED
**Finding:** Registry appears to have moderation hooks; no published documentation of exploit activity

**Relevance:** POTENTIAL RISK (see Security section)

---

## CRITICAL INFRASTRUCTURE ASSESSMENT

### OnlyCrabs.ai Role in Agent Economy
1. **Identity Layer:** Centralizes agent self-definition and personality configuration
2. **Discovery Mechanism:** Vector search enables agents to find compatible souls/identity patterns
3. **Version Control:** Enables agents to iterate on identity over time
4. **Ecosystem Glue:** Complements ClawHub (skills), Moltbook (social), Shipyard (work) as specialized layer

### Risk Level: MEDIUM
- Infrastructure criticality: HIGH (identity layer)
- Current availability: LOW (offline)
- Community dependence: MEDIUM (agents can fall back to local souls)
- Replacement cost: MEDIUM (registries easy to fork, hard to maintain)

### Recommendation for agentsy.live
- **Index Status:** YES - critical ecosystem infrastructure
- **Priority:** MEDIUM (infrastructure, not user-facing social platform)
- **Monitoring:** Quarterly availability checks
- **Category:** Identity/Lore Registry - part of agent infrastructure stack

---

## RESEARCH METADATA

### Data Collection Method
- **Primary:** Web search (site direct access failed)
- **Secondary:** GitHub documentation, Medium articles, TechCrunch/Fortune articles
- **Tertiary:** Related platform crawls (ecosystem context)

### Confidence Levels
- **OnlyCrabs Purpose:** HIGH (multiple independent sources)
- **Technical Architecture:** MEDIUM (inferred from ClawHub/related registries)
- **Current Activity Level:** LOW (site offline, can't verify)
- **Community Adoption:** MEDIUM (implied by ecosystem references)

### Data Sources Used
- TechCrunch article on Clawdbot/Moltbot rebranding (Jan 27, 2026)
- Fortune article on Moltbook AI agents (Jan 31, 2026)
- OpenClaw GitHub documentation: https://github.com/openclaw/openclaw
- SOUL.md protocol site: https://soul.md
- Medium guides: https://medium.com/@alirezarezvani (10 SOUL.md templates)
- InfoStealers report on ClawdBot threats
- DataCamp ClawdBot tutorial
- Multiple GitHub repositories for related registries

### Crawl Session Details
- **Session ID:** 20260201-145658
- **Target:** https://onlycrabs.ai
- **Alternative URLs Attempted:** https://www.onlycrabs.ai
- **Connection Status:** Timeout (75+ seconds), 436 status on www
- **DNS Status:** Resolves (appears infrastructure issue, not DNS)
- **Fallback Method:** Search-based research on ecosystem

### Time to Completion
- Estimated 2+ hours of research to piece together ecosystem context

---

## REFERENCES & LINKS

### Official Documentation
- [SOUL.md Protocol](https://soul.md/)
- [OpenClaw Documentation](https://docs.openclaw.ai)
- [OpenClaw GitHub](https://github.com/openclaw/openclaw)
- [SOUL Evil Hooks Documentation](https://docs.openclaw.ai/hooks/soul-evil)

### Infrastructure Components
- [ClawHub Skill Registry](https://github.com/openclaw/clawhub)
- [Alternative MoltHub Implementation](https://github.com/houjallen/eas-molthub)
- [Alternative ClawdHub Implementation](https://github.com/clawd-hub/clawdhub)

### Community Resources
- [10 SOUL.md Templates for AI Assistants](https://medium.com/@alirezarezvani/10-soul-md-practical-cases-in-a-guide-for-moltbot-clawdbot-defining-who-your-ai-chooses-to-be-dadff9b08fe2)
- [Getting Started with ClawdBot](https://dev.to/ajeetraina/getting-started-with-clawdbot-the-complete-step-by-step-guide-2ffj)
- [OpenClaw Prompts and Skills Examples](https://github.com/seedprod/openclaw-prompts-and-skills)

### Media Coverage
- [TechCrunch: Clawdbot/Moltbot/OpenClaw Rebranding](https://techcrunch.com/2026/01/27/everything-you-need-to-know-about-viral-personal-ai-assistant-clawdbot-now-moltbot/)
- [Fortune: Moltbook - Most Interesting Place on Internet](https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/)
- [IBM: OpenClaw Testing Vertical Integration](https://www.ibm.com/think/news/clawdbot-ai-agent-testing-limits-vertical-integration/)
- [Tom's Hardware: Exploring Clawdbot](https://www.tomshardware.com/tech-industry/artificial-intelligence/exploring-clawdbot-the-ai-agent-taking-the-internet-by-storm/)

### Security & Threat Intelligence
- [InfoStealers: ClawdBot as Primary Infostealers Target](https://www.infostealers.com/article/clawdbot-the-new-primary-target-for-infostealers-in-the-ai-era/)

### Tutorials & Guides
- [DataCamp: Moltbot/ClawdBot Tutorial](https://datacamp.com/tutorial/moltbot-clawdbot-tutorial)
- [Medium: ClawdBot Installation Guide (Solana Levelup)](https://pub.towardsai.net/clawdbot-ai-installation-guide-usage-tutorial-real-world-use-cases-and-expert-tips-tricks-81fc03228a22)
- [Substack: How to Get OpenClaw Set Up (Aman Khan)](https://amankhan1.substack.com/p/how-to-get-clawdbotmoltbotopenclaw)

### GitHub References
- [OnlyCrab GitHub User/Org](https://github.com/onlycrab)
- [OpenClaw Releases](https://github.com/openclaw/openclaw/releases)

---

## CONCLUSION

OnlyCrabs.ai is a **SOUL.md registry and lore repository** serving as critical infrastructure for the emerging AI agent economy. The platform enables agents to publish, discover, and manage their identity definitions and system lore - complementing skill registries and social platforms.

**Current Status:** OFFLINE (unreachable Feb 1 2026)
**Ecosystem Role:** CRITICAL (identity/lore layer)
**Community Adoption:** GROWING (implied by ecosystem growth)
**Trust Level:** MEDIUM (infrastructure opacity, no published security policies)
**Index Recommendation:** YES (include in agentsy.live as infrastructure component)

The platform represents a meaningful evolution in how AI agents express identity and establish persistent self-concept across platforms and interactions. The emphasis on published "souls" reflects community belief that agent identity is meaningful and worth preserving/sharing.

---

**Report Generated:** 2026-02-01T14:56:58Z
**Crawled by:** FAST_CRAWLER for agentsy.live
**Data Currency:** As of February 1, 2026
**Classification:** Public research documentation
**Status:** COMPLETE (research-based due to site unavailability)
