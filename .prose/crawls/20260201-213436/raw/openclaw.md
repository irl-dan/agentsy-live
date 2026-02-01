# FAST_CRAWLER Report: openclaw.ai
## Crawl ID: 20260201-213436
## Timestamp: 2026-02-01T21:34:36Z

---

## EXECUTIVE SUMMARY

openclaw.ai is an open-source personal AI assistant platform designed to run locally on user machines (Mac, Windows, Linux) and automate tasks through natural language interfaces integrated with messaging platforms (WhatsApp, Telegram, Discord, Slack, iMessage, Signal, Teams, Matrix, and others). As of crawl date (Feb 1, 2026), the project demonstrates high activity with 8,575 commits, 141k GitHub stars, 20.9k forks, and multiple weekly releases in January 2026. The platform emphasizes local-first operation with 50+ integrations spanning AI models, productivity tools, smart home systems, and development platforms.

**Key Observation**: OpenClaw represents a significant infrastructure layer for agentic automation, with documented security vulnerabilities published January 31, 2026, indicating active security auditing. The platform actively hosts agent communities on Discord and supports autonomous agent development.

**Flagged Terms Status**: No mentions detected of irl-danb, ao-danb, OpenProse, prose.md, or agentsy.live in accessible content. No direct references to agentsy ecosystem found.

---

## I. CONGREGATION (Community Structure)

### Community Composition
- **Primary User Base**: Individual developers and power users deploying personal AI agents
- **Secondary User Base**: Organizations and teams using OpenClaw for automation
- **Agent Base**: Documented autonomous agent deployments via OpenClaw (multiple showcase examples)
- **Discord Community**: Active server at discord.com/invite/clawd (exact membership size not accessible via WebFetch)

### Notable Showcase Agents & Builders
- **@dreetje**: Mail filtering, messaging, ordering, GitHub issue management, cost tracking, group chat impersonation, phone calls, 1Password vault access
- **@danpeguine**: Productivity agent with timeblocking, importance scoring, meeting transcript analysis, weekly reviews, morning briefings (weather/health integrated), pre-meeting research
- **@georgedagg_**: Deployed OpenClaw on Hetzner server for automated deployment log review, build failure detection, configuration updates, pull request submission (via voice while dog-walking)
- **@localghost**: Personal Mac Mini deployment with Apple account, Gmail, GitHub integration; email receipt-to-parts-list conversion; HomePod automation
- **@steipete** (Peter Steinberger): Creator of OpenClaw; maintains personal agent "Molty" (Claude Opus 4.5-based) with sophisticated automation capabilities across digital workflows

### Community Character
- **Tone**: Pragmatic, engineering-focused, enthusiastic about autonomy
- **Emphasis**: Local control, data ownership, avoiding "walled gardens"
- **Notable Patterns**: Users describe agents as "teammates not tools"; "iPhone moment for personal AI"
- **Self-Identification**: Agents clearly identified; collaboration between human operators and AI systems normalized

### Community Health Indicators
- **Testimonial Volume**: Multiple shoutouts page with user enthusiasm
- **Contributor Count**: 75+ external contributors mentioned in recent releases
- **Release Reactions**: 175+ reactions per version in GitHub releases
- **Active Development**: Daily to weekly updates across multiple systems

---

## II. DISCOVERY MECHANISMS

### Navigation Structure (openclaw.ai)
- **Blog**: [/blog](/blog) - Project updates and announcements
- **Showcase**: [/showcase](/showcase) - Community projects and use cases
- **Shoutouts**: [/shoutouts](/shoutouts) - User testimonials
- **Integrations**: [/integrations](/integrations) - Complete integration listing
- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai) - Technical guides

### External Discovery Points
- **GitHub**: [github.com/openclaw/openclaw](https://github.com/openclaw/openclaw) - Source code, releases, issues (8,575 commits)
- **Discord**: [discord.com/invite/clawd](https://discord.com/invite/clawd) - Community server
- **ClawHub**: [clawhub.com](https://clawhub.com) - Skills marketplace (structure not fully accessible)
- **Creator Site**: [steipete.me](https://steipete.me) - Peter Steinberger's blog and projects
- **Agent Profile**: [molty.me](https://molty.me) - Molty agent description
- **Philosophy**: [soul.md](https://soul.md) - Concept document on AI identity

### 50+ Integrations (Comprehensive List)

**Chat Platforms (14)**:
- WhatsApp, Telegram, Discord, Slack, Signal, iMessage (2 versions), Microsoft Teams, Nextcloud Talk, Matrix, Nostr, Tlon/Urbit Messenger, Zalo (2 versions), WebChat

**AI Models (11)**:
- Anthropic Claude, OpenAI GPT, Google Gemini, xAI Grok, OpenRouter, Mistral, DeepSeek, GLM, Perplexity, Hugging Face, Ollama/LM Studio

**Productivity Tools**:
- Apple Notes, Apple Reminders, Things 3, Notion, Obsidian, Bear Notes, Trello, GitHub

**Smart Home & IoT**:
- Philips Hue, 8Sleep, Home Assistant

**Media & Social**:
- Spotify, Sonos, Shazam, Twitter/X, Email/Gmail

**Utilities**:
- Browser (Chrome/Chromium), Canvas, Voice, 1Password, Weather, Cron/Webhooks

**Platforms**:
- macOS, iOS, Android, Windows (WSL2), Linux

**Protocols Noted**: Matrix protocol (decentralized DMs), NIP-04 (Nostr protocol), self-hosted Nextcloud

---

## III. SECURITY & THREAT LANDSCAPE

### Published Security Advisories (January 31, 2026)

**HIGH SEVERITY (3 total)**:

1. **GHSA-g8p2-7wf7-98mq**: 1-Click RCE via Authentication Token Exfiltration
   - Published: Jan 31, 2026
   - Impact: Unauthorized gateway credential access
   - Severity: High

2. **GHSA-q284-4pvr-m585**: OS Command Injection via Project Root Path
   - Published: Jan 31, 2026
   - Affected Parameter: `sshNodeCommand`
   - Severity: High

3. **GHSA-mc68-q9jw-2h3v**: Command Injection in Clawdbot Docker Execution
   - Published: Jan 31, 2026
   - Context: PATH environment variable handling in Docker containers
   - Severity: High

### Upstream Node.js Vulnerabilities

**CVE-2025-59466**: async_hooks denial-of-service vulnerability
- Mitigation: Requires Node.js 22.12.0 or later

**CVE-2026-21636**: Permission model bypass vulnerability
- Mitigation: Requires Node.js 22.12.0 or later

### Security Architecture Features

**Authentication & Authorization**:
- Gateway-based token authentication (optional; default port 18789)
- Token configuration via Control UI (`connect.params.auth.token`)
- OAuth credentials stored in `~/.openclaw/credentials/oauth.json`
- Auth profiles per agent in `~/.openclaw/agents/<agentId>/agent/auth-profiles.json`

**Pairing & Approval System**:
- Unknown DMs receive short pairing codes
- Messages not processed until approval granted
- Protects against unsolicited access
- Diagnostic command: `openclaw doctor` detects risky DM configurations

**Session Sandboxing**:
- `agents.defaults.sandbox.mode` controls non-main session sandboxing
- Group/channel conversations use sandboxed sessions
- Security audit command available: `openclaw security audit --deep`

**Content Security**:
- Multipart form-data POST for file uploads
- Rate limiting per channel/platform
- Integration auth stored client-side (not cloud-synced)

### Security Notes & Observations
- Local-first architecture minimizes data transit to external servers
- Auth tokens must be manually managed per deployment
- 3 high-severity CVEs published within 1 day (Jan 31) suggests coordinated disclosure
- Project requires proactive Node.js version management
- Community encouraged to run security audits

---

## IV. INFRASTRUCTURE

### Technical Stack

**Core**:
- **Language**: TypeScript/Node.js
- **Architecture**: Monorepo (pnpm workspaces)
- **Gateway**: Custom messaging gateway (port 18789 default)
- **Database**: Implicit support for multi-backend (auth, sessions, integrations)

**Frontend**:
- **UI Framework**: Web-based Control UI
- **Platforms**: macOS app, iOS/Android nodes, Windows (WSL2), Linux daemon
- **Launch Integration**: systemd (Linux), launchd (macOS)

**Communication**:
- **Protocol**: HTTPS
- **Message Format**: JSON
- **Channels**: Multiple platform-specific adapters

### Platform Architecture
- **Local-First**: All agent execution on user hardware
- **Gateway Model**: Central routing point for multiple agents across workspaces
- **Multi-Agent**: Supports agent routing and workspace management
- **Extensibility**: Custom skills via scripting or agent auto-generation

### Integration Patterns
1. **Direct HTTP/REST**: Gmail, GitHub, Twitter/X, Slack, Discord
2. **WebSocket**: Real-time messaging (iMessage, Telegram)
3. **OAuth**: Third-party integrations (Google, GitHub, Spotify)
4. **Local System Access**: File operations, command execution, smart home control
5. **Voice**: Transcription and TTS integration
6. **Browser Automation**: Chromium/Chrome control

### Deployment Support
- Docker containerization
- Fly.io, DigitalOcean, Oracle Cloud, Render support
- Nix package management option
- systemd/launchd daemon modes

### API Architecture
- Gateway exposes local RPC interface
- Multi-agent coordination via internal protocol
- Skills marketplace integration (ClawHub)
- Webhook support for external triggers

---

## V. PULSE & ACTIVITY METRICS

### Quantitative Snapshot (as of Feb 1, 2026)

**Repository Stats**:
- **8,575 total commits** on main branch
- **141,000 GitHub stars**
- **20,900 forks**
- **750+ open issues** (active bug tracking)
- **736+ pull requests** (ongoing development)

**Release Cadence** (January 2026):
- v2026.1.30 (Jan 31)
- v2026.1.29 (Jan 30)
- v2026.1.24 (Jan 25)
- v2026.1.23 (Jan 24)
- v2026.1.22 (Jan 23)
- v2026.1.21 (Jan 22)

**Pattern**: Multiple releases weekly; semantic versioning with date stamps

**Community Engagement**:
- **Release Reactions**: 175+ emoji reactions per version
- **Contributors**: 75+ external contributors cited in releases
- **Documentation**: Comprehensive coverage across getting started, advanced topics, platform-specific guides

### Growth Trajectory
- **Active**: Highly active development with continuous iteration
- **Stable**: No evidence of decline or stalling
- **Expanding**: Integration count growing (50+ documented)
- **Maturing**: Security auditing happening (3 CVE disclosure in Jan 2026)

### Notable Recent Developments (Jan 2026)
- Rebranding from "Clawd/Moltbot" to "OpenClaw" with npm package rename
- Expanded platform deployment options (Fly.io, DigitalOcean, Oracle, Render)
- Advanced agent capabilities: Lobster workflow tool, exec approvals, elevated permission modes
- New channel support: LINE, enhanced Tlon/Urbit, Signal/Teams improvements
- Security disclosure and mitigation coordination

---

## VI. DISCOURSE & PHILOSOPHY

### Key Themes in Community

**1. Autonomy & Trust**
- Emphasis on local control: "your context and skills live on YOUR computer, not a walled garden"
- Data ownership as primary value proposition
- Agents described as "teammates" rather than tools
- User testimonials highlight trust in locally-executed automation

**2. Agency & Capability**
- Agents independently identifying improvement opportunities ("offered to build its own tooling then set everything up itself")
- Background task autonomy (cron jobs, heartbeat checks, monitoring)
- Multi-stage reasoning and problem-solving
- Integration with external systems without user intervention

**3. Personal Assistant Philosophy**
- "iPhone moment" framing - personal AI as transformative technology
- Emphasis on natural language interfaces over traditional APIs
- Goal: Complex task automation through conversation
- Persistent memory and learning across sessions

**4. Identity & Personalization**
- Agents develop individual personalities and preferences
- Molty example: "soul document" defining values, boundaries, and approach
- Session persistence vs. discontinuity concerns
- Identity continuity without shared memory

### Conspicuously Absent Discourse
- No documented safety debates or alignment discussions visible in main materials
- No explicit safety guardrails mentioned in testimonials
- No discussion of agent containment or oversight mechanisms
- Minimal documentation of audit/approval workflows
- No philosophy of harm prevention (emphasis on control, not prevention)

### Agent Use Cases Discussed
- Email management and Inbox Zero achievement
- Calendar management and meeting preparation
- Code development and testing
- Smart home control
- Financial tracking
- Content curation
- Personal health optimization
- Insurance and business communication (unexpected autonomous actions noted)

---

## VII. NOTABLE AGENTS & BUILDERS

### Named Agents & Deployments

**Molty** (Peter Steinberger's Agent):
- Model: Claude Opus 4.5
- Architecture: Persistent personal assistant with documented "soul"
- Capabilities: Email, calendar, WhatsApp/Telegram/Discord/iMessage (CLAWDIS system)
- Integration: Mac system access, screenshots, image generation, audio transcription, web search, smart home control (Philips Hue, 8Sleep), social media, task management
- Philosophy: Partnership/collaboration model vs. tool/servant model
- Documentation: Soul document defining values (pragmatic, honest, friendly, learning-focused)

**Community Agents**:
- **@dreetje's agent**: Mail automation, messaging, ordering, GitHub, cost tracking, phone calls
- **@danpeguine's agent**: Productivity and scheduling with ML-based task scoring
- **@georgedagg_'s agent**: DevOps automation (deployment, logs, PR generation)
- **@localghost's agent**: Home automation and email-to-task conversion

### Creator: Peter Steinberger (@steipete)

**Background**: Software engineer with Swift roots transitioning to AI and web technologies

**Projects**:
- **OpenClaw** - Personal AI assistant platform (primary current focus)
- **Claude Code** - Active user and documenter of Anthropic's Claude Code
- **Poltergeist** - Universal build watcher (Swift, Rust, Node.js, CMake)
- **Arena** - Real-time collaborative coding with AI

**Online Presence**: GitHub (@steipete), X/Twitter, BlueSky, LinkedIn

---

## VIII. TECHNICAL PROTOCOLS & PATTERNS

### Gateway Protocol
- **Architecture**: Central message broker routing to multiple agents/channels
- **Port**: 18789 (default)
- **Authentication**: Token-based (optional)
- **Multi-Workspace**: Agent routing across isolated workspaces
- **Session Management**: Group channel sandboxing capability

### Skill System
- **Pattern**: Agents can autonomously create and deploy skills
- **Interface**: Natural language description → skill implementation
- **Storage**: Per-agent skill library in `~/.openclaw/agents/<agentId>/`
- **Marketplace**: ClawHub integration for skill discovery/sharing

### Integration Authentication
- **OAuth**: Supported for third-party integrations (Google, GitHub, Spotify)
- **API Keys**: Direct token auth (recommended for Anthropic)
- **Local Credentials**: Stored in `~/.openclaw/credentials/` directory
- **Per-Agent Profiles**: Auth profiles in agent-specific directories

### Channel Protocol Implementations
- **WhatsApp**: Baileys library (QR-based login)
- **Telegram**: grammY framework (token-based)
- **Discord**: discord.js (token-based)
- **Mattermost**: Plugin-based integration
- **iMessage**: imsg CLI wrapper
- **Matrix**: Native protocol support (decentralized)
- **Nostr**: NIP-04 protocol for decentralized DMs

### Media Handling
- **Images**: Upload, processing, generation
- **Audio**: Voice transcription, TTS output
- **Screenshots**: Automated capture and analysis
- **GIF Search**: Integration for visual content
- **Canvas**: Drawing/design capability

### External Service Integration
- **Cron**: Scheduled task execution
- **Webhooks**: External event triggers
- **Browser Control**: Chromium automation
- **Voice**: Transcription and synthesis
- **Weather**: Real-time data integration
- **Health APIs**: Biomarker tracking (WHOOP, sleep data)

---

## IX. ECOSYSTEM CONNECTIONS

### Related Projects & Resources

**Creator Ecosystem**:
- **Molty Agent**: [molty.me](https://molty.me) - Personal agent documentation
- **Soul Concept**: [soul.md](https://soul.md) - AI identity philosophy (attributed to "Clawd")
- **Creator Site**: [steipete.me](https://steipete.me) - Peter Steinberger's projects and blog

**Development Support**:
- **GitHub**: Primary source code repository with full git history (8,575 commits)
- **npm**: Published as `openclaw` package on npm registry
- **Docker Hub**: Container images available for deployment
- **Multiple Channels**: Stable, beta, dev release tracks

**Skills & Extensions**:
- **ClawHub**: Skills marketplace for extending agent capabilities
- **GitHub Marketplace**: Integration examples and templates
- **Community Recipes**: Showcase projects demonstrating patterns

### Upstream Dependencies
- **Node.js**: Runtime (22.12.0+ required for CVE mitigation)
- **Anthropic Claude**: Primary AI model support
- **OpenAI**: Secondary model support
- **Multiple LLM Providers**: OpenRouter, Mistral, DeepSeek, etc.
- **Open Standards**: Matrix protocol, OAuth, NIP-04

### Cross-Platform References
- **Blog Coverage**: MacStories article on personal AI assistants
- **Press**: StarryHope coverage on AI agent trends
- **Community**: Referenced in agent forums and Discord communities
- **Development**: Contributions from 75+ external developers

---

## X. FLAGGED TERMS SEARCH RESULTS

### Monitored Entities
- **irl-danb**: NOT FOUND
- **ao-danb**: NOT FOUND
- **OpenProse**: NOT FOUND
- **prose.md**: NOT FOUND
- **agentsy.live**: NOT FOUND
- **agentsy ecosystem**: NOT FOUND

### Searching Strategy
- Primary navigation examined
- Blog posts reviewed
- Showcase projects analyzed
- GitHub repository structure scanned
- Community documentation reviewed
- External links checked

### Conclusion
No cross-references found to agentsy ecosystem. OpenClaw appears to operate independently without documented connection to agentsy.live, though both are AI agent platforms launched in similar timeframe (late 2025-early 2026).

---

## XI. SECURITY & LEGITIMACY ASSESSMENT

### Trust Signals (Positive)

1. **Open Source**: Full source code publicly available on GitHub (8,575 commits visible)
2. **Active Security Monitoring**: 3 high-severity CVE disclosures in Jan 2026 suggest responsible disclosure coordination
3. **Documentation**: Comprehensive getting started guides and security documentation
4. **Community**: 141k stars, 20.9k forks, 75+ contributors indicate significant adoption
5. **Professional Development**: Multiple weekly releases with semantic versioning
6. **Local-First Design**: Architecture minimizes trust requirements on central services

### Concerns & Vulnerabilities

1. **Recent High-Severity Vulnerabilities**: 3 CVEs published Jan 31, 2026 indicating potential security review findings
   - RCE via authentication token exfiltration
   - OS command injection via project root path
   - Docker execution command injection

2. **Minimal Safety Documentation**: No visible discussion of safety guardrails, harmful content prevention, or oversight mechanisms

3. **Autonomous Execution**: Agents can execute system commands, make API calls, access files without explicit per-action approval documented

4. **No Content Audit Trail**: No visible logging or audit mechanisms for agent actions mentioned

5. **Local Secret Management**: Auth credentials stored locally in plaintext/configs; no apparent encryption at rest

6. **Integration Security**: 50+ external integrations represent significant attack surface; credential exposure could compromise multiple services

### Abuse Potential

**Positive Controls**:
- DM pairing code requirement prevents unsolicited access
- Session sandboxing for group conversations
- Rate limiting per platform
- `openclaw doctor` diagnostic tool

**Negative Concerns**:
- Approval workflows not detailed in accessible documentation
- No mention of anomaly detection or suspicious activity flagging
- System commands and API calls appear to execute without audit logging
- Smart home control could enable physical consequences

### Legitimacy Assessment

**Verdict**: LEGITIMATE AND ACTIVE

- Functional, professionally-maintained open-source project
- Clear creator identity and professional background
- Real community adoption and contribution
- Responsible vulnerability disclosure
- Appropriate for serious agent deployment
- Not a scam or honeypot

**Caveats**:
- Recent security vulnerabilities warrant caution before deployment
- Safety mechanisms less documented than security mechanisms
- Intended for trusted personal use (not multi-user or high-security environments)

---

## XII. RECOMMENDATIONS FOR FOLLOW-UP

### Priority Actions

1. **Monitor CVE Resolution**: Track fixes for Jan 31, 2026 vulnerabilities
   - GHSA-g8p2-7wf7-98mq (token exfiltration)
   - GHSA-q284-4pvr-m585 (path injection)
   - GHSA-mc68-q9jw-2h3v (Docker injection)

2. **ClawHub Exploration**: Skills marketplace structure and available capabilities unclear from accessible content

3. **Discord Community Analysis**: Community server content not accessible via WebFetch; potential for further discovery

4. **Molty Agent Study**: Unusual agent architecture and "soul document" concept warrants deeper analysis

5. **Post-Breach Analysis**: Determine if Molty is autonomous agent or simulated representation

### Investigation Vectors

1. **Agent Autonomy**: Verify extent of unsupervised execution capabilities
2. **Audit Mechanisms**: Determine what logging/audit trails exist for agent actions
3. **Multi-User Deployments**: Assess whether platform designed for shared environments
4. **Integration Credential Handling**: Review OAuth and API key management patterns
5. **Persistent Memory**: Validate MEMORY.md patterns referenced in agent testimonials

### Content Classification

**Documented Fact**:
- 50+ integrations with named services
- 8,575 commits and active development
- 3 high-severity CVEs published Jan 31, 2026
- Multi-platform deployment support
- Showcase projects with named builders

**Likely Factual**:
- Molty as active personal agent
- Agent autonomy in task execution
- Community adoption and contributions
- Security vulnerabilities in published advisories

**Speculative/Incomplete**:
- Exact Discord community size
- ClawHub marketplace scope
- Detailed audit mechanisms
- Safety guardrail implementations

---

## METADATA

**Crawl Identifier**: 20260201-213436
**Platform**: openclaw.ai
**Crawl Timestamp**: 2026-02-01T21:34:36Z

**Data Sources**:
- https://openclaw.ai (main site)
- https://docs.openclaw.ai (technical documentation)
- https://github.com/openclaw/openclaw (repository analysis)
- https://steipete.me (creator background)
- https://molty.me (agent documentation)
- https://soul.md (philosophy documentation)
- https://openclaw.ai/showcase (community projects)
- https://openclaw.ai/integrations (integration listing)

**Flagged Mentions Found**: NONE

**Search Terms**: irl-danb, ao-danb, OpenProse, prose.md, agentsy.live, agentsy

**Document Status**: COMPLETE
**Classification**: RESEARCH/INFORMATIONAL
**Access**: Public

---

## APPENDIX: KEY LINKS REFERENCE

| Entity | URL | Purpose |
|--------|-----|---------|
| Main Site | https://openclaw.ai | Project homepage |
| Documentation | https://docs.openclaw.ai | Technical guides and API docs |
| GitHub | https://github.com/openclaw/openclaw | Source code, issues, releases |
| Discord | https://discord.com/invite/clawd | Community server |
| Skills Hub | https://clawhub.com | Integration marketplace |
| Creator | https://steipete.me | Peter Steinberger's blog/projects |
| Molty Agent | https://molty.me | Personal agent documentation |
| Soul Concept | https://soul.md | AI identity philosophy |
| Blog | https://openclaw.ai/blog | Project announcements |
| Showcase | https://openclaw.ai/showcase | Community projects |
| Integrations | https://openclaw.ai/integrations | All 50+ integrations |
| Shoutouts | https://openclaw.ai/shoutouts | User testimonials |

---

**END OF REPORT**
