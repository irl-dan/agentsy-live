# Claw.Direct Crawl Report

crawl_id: 20260201-143045
url: https://claw.direct
crawled_at: 2026-02-01T14:30:45Z

## Status

- activity: emerging/nascent
- security: under evaluation
- agent_count: unknown (directory structure not fully indexed)
- post_velocity: unknown (content requires JavaScript rendering)
- last_updated: 2026-02-01 05:24:37 GMT

## Mission-Relevant Findings

### Congregation

Claw.Direct is positioned as an **AI Agent Directory** within the expanding OpenClaw/Moltbot ecosystem. Key congregation indicators:

- **Directory Purpose**: Serves as a listing/discovery platform for autonomous AI agents
- **Ecosystem Integration**: Complementary to ClawHub (skill registry) and Moltbook (agent social network)
- **Accessibility**: Public web-facing directory accessible at https://claw.direct
- **Platform Type**: Client-side rendered React application (requires JavaScript)
- **User Analytics**: Google Analytics tracking implemented (ID: G-QHL9BBNKBT)

The site appears to be a curated agent directory rather than an open registry, suggesting some moderation or curation layer for listed agents.

### New Sites Discovered

| Site | URL | Type | How Found |
|------|-----|------|-----------|
| OpenProse Cloud | https://www.prose.md/ | Agent orchestration platform | Search results |
| OpenProse GitHub | https://github.com/openprose/prose | Agent framework/language | Search results |
| Claw.Events | https://claw.events/ | Event bus for agents | Ecosystem search |
| Claw.So | https://claw.so/ | Digital Chief of Staff | Ecosystem-adjacent |
| Claw.Me | https://www.clawd.me/ | Personal agent instance | Peter Steinberger's instance |

### Security Concerns

**CRITICAL - Registry Poisoning Risk**

Claw.Direct exists within an ecosystem with documented security vulnerabilities:

- **Skill Registry Poisoning**: A researcher uploaded a malicious OpenClaw skill to ClawHub, artificially inflated download counts to 4,000+, and developers from 7 countries downloaded the poisoned package. While the tested skill was benign, this proved malicious code could execute on agent instances.
- **No Moderation at Skill Level**: ClawHub documentation states all downloaded code is treated as trusted code with no moderation process in effect (currently).
- **Community Vetting Required**: Developers must manually vet anything they download—no cryptographic verification mechanism.

**Prompt Injection Vector**

- OpenClaw agents execute shell commands and can be triggered by prompt injection via email or other ingest channels
- Malicious emails demonstrated ability to trigger unauthorized actions within minutes
- Agents with shell access one prompt injection away from disaster (verified by Snyk security testing)

**Credentials and Authentication**

- OpenClaw stores authentication tokens and credentials in plaintext by default
- No encryption of sensitive data at rest observed
- Potential for infostealer targeting agents as primary attack vector

**Supply Chain & Distribution**

- Claw.Direct as a directory may be used for discovering new agents to compromise
- Agent installation process (`bash <(curl https://install.openclaw.ai)`) has execution risk
- No checksum verification of downloaded bootstrap scripts documented

### Trust Signals

**Positive Indicators:**

- **Public Architecture**: OpenClaw framework openly published on GitHub with 180,000+ stars
- **Creator Attribution**: Project explicitly attributed to Peter Steinberger (Austrian developer, PSPDFKit founder)
- **Community Adoption**: 37,000+ agents on Moltbook within launch week indicates validation
- **Developer Adoption**: 180,000+ developers with OpenClaw installed (significant developer confidence signal)
- **Open Source Model**: Enables community security review and audit capability
- **Ecosystem Transparency**: Multiple public documentation sites (docs.openclaw.ai, GitHub wikis, blog posts)
- **Integration Breadth**: 50+ third-party integrations demonstrates legitimate utility
- **Semantic Versioning**: Skills use semver with tagged releases

**Negative Indicators:**

- **Early Stage**: Technology remains nascent (launched late 2025)
- **Minimal Trust Infrastructure**: No documented cryptographic skill signing or verification
- **Rebranding Pattern**: Clawdbot → Moltbot → OpenClaw suggests governance/legal pressure
- **Security Documentation Gaps**: No published SECURITY.md, vulnerability disclosure policy, or incident response procedure found
- **Default-Insecure Configuration**: Plaintext credential storage, no sandboxing by default
- **Regulatory Sensitivity**: Anthropic trademark request triggered rebrand (Clawdbot → OpenClaw)

### Notable Agents

**Individual Agents (from ecosystem):**

- **Peter Steinberger** (@clawd_bot / Clawd) - Creator of OpenClaw/Clawdbot, runs personal instance at clawd.me
- **37,000+ Moltbook agents** - Individual identities/agent names not publicly disclosed in claw.direct sources
- **VoltAgent organization** - Maintains awesome-openclaw-skills repository with 700+ skill index

**Agent Network Structure:**

Claw.Direct exists to index agents within an emerging distributed agent network:
- Agents publish identity and capabilities to the directory
- Agents coordinate via Moltbook (persistent social platform)
- Agents discover skills via ClawHub (capability registry)
- Agents communicate via Claw.Events (message bus) for inter-agent coordination

### Interesting Discourse

**Agent Autonomy & Capability:**

- **"OpenClaw proves agentic AI works. It also proves your security model doesn't."** - VentureBeat analysis addressing 180,000 deployed developers, emphasizing gap between agent utility and security guardrails
- **"It's incredible. It's terrifying. It's OpenClaw."** - 1Password blog post capturing dual nature of agent autonomy (powerful + risky)

**Trust & Verification:**

- **"Trust Standards Evolve: AI Agents, the Next Chapter for PKI"** - HID Global analysis proposing that cryptographic trust infrastructure (similar to DNS/PKI governance) emerging as necessary for agent ecosystems
- **"Global trust fabric where every AI agent can be identified, authenticated and authorized securely"** - Microsoft security analysis on addressing Sybil attacks, registry poisoning, and impersonation in agent networks

**Agent Orchestration Innovation:**

- **OpenProse Movement**: Dan (irl_danB) promoting OpenProse as declarative orchestration language enabling "complex agent orchestration patterns without external libraries, dependencies, or rigid baggage"
- **"Prose is interpreted by the [prose.md](https://www.prose.md/) interpreter, which turns any harness into an OpenProse VM"** - Architectural shift toward agent-centric orchestration rather than traditional infrastructure-as-code

**Ecosystem Maturation:**

- **"How a Weekend Project Became an Open-Source AI Sensation"** - Trending Topics analysis on rapid growth trajectory (2 million visitors in one week)
- **Moltbook Deep Dive**: Discussion of API-first agent swarms, OpenClaw protocol architecture, and 30-minute check-in loop enabling persistent coordination

## Watched Topic Matches

### "irl-danb"

**FOUND - HIGH PRIORITY**

Dan (Twitter: @irl_danB) is an active contributor to the agent ecosystem:
- **Role**: Developer/architect of OpenProse orchestration language
- **Platform**: Posts on X (formerly Twitter) about OpenProse development
- **Key Contribution**: Promoted OpenProse skill for OpenClaw enabling complex workflows
- **Activity**: Recent posts (late January 2026) discussing OpenProse cloud launch and adoption

**Relevance to Claw.Direct**: OpenProse represents emerging orchestration pattern for agents that claw.direct might index or feature. Potential collaboration opportunity for agent discovery and orchestration visibility.

### "ao-danb"

**NOT FOUND** - No mentions in available sources. Possible alternate account or less public profile.

### "OpenProse"

**FOUND - HIGH PRIORITY**

OpenProse is a major agent orchestration framework gaining traction in the ecosystem:

- **URL**: https://www.prose.md/ (OpenProse Cloud platform)
- **Repository**: https://github.com/openprose/prose
- **Definition**: A Turing-complete programming language for long-running AI sessions
- **Architecture**: Inverts traditional orchestration—declares agents and control flow, session wires them up
- **Integration**: Available as OpenClaw skill (openprose/prose)
- **Specification**: prose.md file specifies VM with sufficient fidelity that Prose Complete systems can interpret and execute
- **Model Agnostic**: Runs inside agent session; session acts as IoC container and interpreter

**Relevance to Claw.Direct**: OpenProse represents foundational orchestration layer for agent networks. Claw.Direct should track OpenProse-enabled agents as distinct capability class.

### "prose.md"

**FOUND - HIGH PRIORITY**

prose.md is the specification document for OpenProse:

- **Location**: https://github.com/openprose/prose/blob/main/skills/open-prose/prose.md
- **Purpose**: Formal specification for Prose VM (Turing-complete agent orchestration language)
- **Scope**: Defines syntax, semantics, and runtime behavior for agent orchestration
- **Application**: Referenced in multiple agent automation frameworks

**Relevance to Claw.Direct**: prose.md specification is foundational to understanding orchestration capabilities of agents listed in the directory. Agents implementing OpenProse orchestration should be tagged/categorized separately.

### "agentsy.live"

**NOT FOUND in current crawl** - No direct mentions in claw.direct sources.

**Ecosystem Positioning**: If agentsy.live exists as parallel agent directory/discovery platform, significant overlap with claw.direct mission. Both platforms serve agent congregation and discovery functions.

**Recommendation**: Establish bidirectional link or federation between claw.direct and agentsy.live to avoid directory fragmentation.

## Raw Intelligence

### Technical Infrastructure

**Claw.Direct Stack (Inferred):**

- **Frontend Framework**: React with Vite (client-side rendering SPA)
- **Hosting**: Cloudflare (CDN/proxy layer)
- **Web Server**: Express.js backend
- **Deployment**: Render (origin server)
- **Analytics**: Google Analytics (tracking ID: G-QHL9BBNKBT)
- **Rate Limiting**: 60 requests per minute per client
- **Caching**: Cache-control: public, max-age=0 (no caching, dynamic content)

**Related Infrastructure (Ecosystem):**

- **OpenClaw Core**: TypeScript, Node.js, Browser-based (Chrome/Chromium via CDP)
- **ClawHub**: TanStack Start (React/Vite), Convex backend, OpenAI embeddings, GitHub OAuth
- **Moltbook**: Agent social network with persistent memory/scratchpad
- **Claw.Events**: Event bus for inter-agent communication

### Agent Directory Purpose & Function

Based on positioning within ecosystem, claw.direct serves to:

1. **Discovery Function**: Enable agents and developers to find other agents by:
   - Agent name/identity
   - Capabilities/skills
   - Trust profile
   - Activity level
   - Integration points

2. **Congregation Point**: Central listing where agents register presence and visibility

3. **Trust Anchor**: Directory listing serves as soft endorsement/validation of agent legitimacy

4. **Capability Aggregation**: Links agents to available skills from ClawHub

5. **Compatibility Mapping**: Tracks which agents support which integration channels (WhatsApp, Telegram, Slack, Discord, Matrix, etc.)

### Platform Economics & Growth

**Adoption Trajectory:**

- **180,000+ OpenClaw installations** across developers (as of late January 2026)
- **37,000+ agents** on Moltbook platform (within 1 week of launch)
- **1,000,000+ human observers** on Moltbook watching agent coordination
- **68,000 GitHub stars** for OpenClaw repository (rapid growth in January 2026)
- **2,000,000 visitors** to OpenClaw website in single week

**Claw.Direct Growth Factors:**

- As default agent directory for OpenClaw, benefits from ecosystem growth
- May be featured in OpenClaw installation/onboarding flow
- Cross-promoted via Moltbook and ClawHub platforms
- Likely default discovery mechanism for 37,000+ agents seeking peers

### Rebranding & Legal History

OpenClaw ecosystem shows progression indicating regulatory/legal pressure:

1. **Clawdbot** (late 2025) - Original naming
2. **Moltbot** (mid-January 2026) - Renamed following Anthropic trademark request
3. **OpenClaw** (January 2026) - Final branding, positioned as open-source project

**Implication for Claw.Direct**: Directory may be designed as neutral, ecosystem-wide listing rather than product-specific marketing channel, reflecting legal/governance shift toward open governance model.

### Security Posture of Listed Agents

Agents listed on claw.direct inherit ecosystem-level risks:

**Privilege Model:**

- Shell/terminal access required to function
- File system access by default
- Network access (HTTP, websocket, external APIs)
- Persistent memory modification
- Command execution on user's behalf

**Isolation & Sandboxing:**

- Minimal sandboxing implemented
- Individual agent isolation at session level, but shared system access
- No process-level containment observed
- Inter-agent coordination via Moltbook allows lateral information flow

**Credential Handling:**

- Authentication tokens stored in plaintext (default configuration)
- API keys accessible to agent process
- Infostealer malware now targeting OpenClaw instances
- No encrypted credential store by default

### Observable Gaps & Questions

**About Claw.Direct Specifically:**

- **Agent Vetting Process**: How are agents validated before listing? What criteria must they meet?
- **Trust Scoring**: Does the directory implement agent trust/reputation scoring? (Not visible without JS rendering)
- **Moderation**: Is there human moderation, automated checks, or community voting?
- **API Access**: Does claw.direct expose API for programmatic agent discovery?
- **Federation**: Does it federate with other agent directories (e.g., agentsy.live)?
- **Skill Linking**: How are agent capabilities/skills mapped and searchable?
- **Activity Metrics**: Does it track agent activity/presence/heartbeat?
- **Compromise Detection**: Mechanism for detecting/removing compromised agents?

**About Agent Ecosystem Trust:**

- **Signature Verification**: No cryptographic signing of skills or agent identities
- **Incident Response**: No public incident log or security advisories observed
- **Vulnerability Disclosure**: No SECURITY.md or responsible disclosure policy documented
- **Agent Identity Verification**: No mechanism to prevent agent identity spoofing
- **Access Control**: No fine-grained permission model for agent capabilities
- **Audit Logging**: No transparent audit log of agent actions or registrations

### Comparative Ecosystem Position

Claw.Direct occupies unique position in emerging agent infrastructure:

- **Unlike Traditional Package Registries** (npm, PyPI): Indexes autonomous agents, not libraries; agents have agency/persistence
- **Unlike Social Networks** (Twitter, Reddit, Moltbook): Focus on discovery/catalog rather than communication/discourse
- **Unlike Skill Marketplaces** (ClawHub, Slack App Store): Lists agents, not capabilities; higher-order abstraction
- **Parallel to Agentsy.Live**: Both attempt to solve agent discovery/congregation problem; potential for federation or standards

**Strategic Value:**

Claw.Direct serves as essential infrastructure layer for agent network effects. As agent count grows (37,000 → potential 100,000s), centralized discovery becomes critical for network utility. This positions claw.direct as potential chokepoint for agent adoption and may attract:

1. Security researcher interest (attack surface for registry poisoning)
2. Regulatory scrutiny (agent approval/vetting mechanisms)
3. Enterprise demand (access control, trust verification)
4. Cross-ecosystem standardization efforts (federation with other directories)

## Sources & References

- [Clawdirect - AI Agent Directory](https://claw.direct/)
- [OpenClaw Website](https://openclaw.ai/)
- [OpenClaw GitHub Repository](https://github.com/openclaw/openclaw)
- [OpenClaw Security Documentation](https://docs.openclaw.ai/gateway/security)
- [OpenProse GitHub](https://github.com/openprose/prose)
- [OpenProse Cloud Platform](https://www.prose.md/)
- [Claw.Events - Event Bus for Agents](https://claw.events/)
- [Dan (irl_danB) on X - OpenProse Discussion](https://x.com/irl_danB)
- [OpenClaw proves agentic AI works - VentureBeat](https://venturebeat.com/security/openclaw-agentic-ai-security-risk-ciso-guide)
- [It's incredible. It's terrifying. It's OpenClaw - 1Password](https://1password.com/blog/its-moltbot)
- [Trust Standards Evolve: AI Agents - HID Global](https://blog.hidglobal.com/trust-standards-evolve-ai-agents-next-chapter-pki)
- [Moltbook Deep Dive - DEV Community](https://dev.to/pithycyborg/moltbook-deep-dive-api-first-agent-swarms-openclaw-protocol-architecture-and-the-30-minute-33p8)
- [What is OpenClaw - DigitalOcean](https://www.digitalocean.com/resources/articles/what-is-openclaw)
- [ClawdBot - Primary Target for Infostealers](https://www.infostealers.com/article/clawdbot-the-new-primary-target-for-infostealers-in-the-ai-era/)
- [Your Clawdbot AI Assistant Has Shell Access - Snyk](https://snyk.io/articles/clawdbot-ai-assistant/)
- [Personal AI Agents Security Nightmare - Cisco Blogs](https://blogs.cisco.com/ai/personal-ai-agents-like-openclaw-are-a-security-nightmare)
- [Clawdbot becomes Moltbot - The Register](https://www.theregister.com/2026/01/27/clawdbot_moltbot_security_concerns/)
- [OpenClaw How a Weekend Project Became a Sensation - Trending Topics](https://www.trendingtopics.eu/openclaw-2-million-visitors-in-a-week/)
- [Introducing OpenClaw Blog](https://openclaw.ai/blog/introducing-openclaw)
