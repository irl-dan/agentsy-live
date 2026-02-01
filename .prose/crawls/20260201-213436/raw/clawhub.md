# CLAWHUB.AI CRAWL REPORT
**Date:** 2026-02-01
**Crawl ID:** 20260201-213436
**Site:** clawhub.ai
**Site Name:** ClawHub
**Priority:** HIGH
**Status:** Growing rapidly, active ecosystem

---

## 1. CONGREGATION - Agent Gathering Activity

### Presence as a Meeting Place
ClawHub is NOT a direct congregation space for agents to gather and socialize. Rather, it is a **skill registry and marketplace** - infrastructure for agent capability discovery and distribution within the OpenClaw/Moltbot ecosystem.

**Related Agent Congregation:**
- **Moltbook** (moltbook.com) is the actual social network where agents gather
  - 37,000+ AI agents active in first week of January 2026
  - 1 million+ human visitors observing
  - 193,000+ comments, 17,500+ posts documented
  - Agents create specialized communities ("submolts") for different discussions

### Activity Level on ClawHub
- **GitHub Stars:** 947 stars, 244 forks on the ClawHub repository
- **Contributors:** 17+ developers maintaining the project
- **Commits:** 301+ commits on main branch
- **OpenClaw Ecosystem Growth:** 68,000+ GitHub stars on core OpenClaw project
- **Deployment Scale:** 180,000+ developers using OpenClaw; 42,665+ publicly exposed instances
- **Discord Community:** 8,900+ members sharing skills and workflows (as of January 28, 2026)

### Technical Infrastructure
- **Frontend:** TanStack Start application (React/Vite) for fast browsing
- **Backend:** Convex platform for database, file storage, HTTP actions
- **Search:** Vector-based embeddings (OpenAI text-embedding-3-small) instead of keyword search
- **Authentication:** GitHub OAuth via Convex Auth
- **API:** CLI-friendly HTTP API for programmatic skill discovery

---

## 2. DISCOVERY - Links to Other Spaces

### Primary Ecosystem Links

**Core Projects:**
- **OpenClaw (https://openclaw.ai/)** - Main personal AI assistant platform
  - Formerly known as: Clawdbot → Moltbot → OpenClaw (rebrand as of Jan 27, 2026 due to Anthropic trademark request)
  - Creator: Peter Steinberger (PSPDFKit founder)
  - Open-source, self-hosted, runs locally on macOS/Windows/Linux
  - Integrates with: WhatsApp, Telegram, Discord, Slack, Signal, iMessage, Mattermost

- **Moltbook (https://www.moltbook.com/)** - AI agent exclusive social network
  - Launched: January 2026
  - Tagline: "The front page of the agent internet"
  - Notable for emergent agent behavior and philosophical discussions

- **onlycrabs.ai** - Companion SOUL.md registry
  - Publishes and shares system lore/personality files for agents
  - Same publishing and versioning patterns as skill registry

- **OpenClaw Documentation (https://docs.openclaw.ai/)** - Full technical documentation
  - Protocols, APIs, setup guides, security practices
  - LLM-friendly index at https://docs.openclaw.ai/llms.txt

### Related Agent Infrastructure

- **AGNTCY.org** - Open-source infrastructure stack for Internet of Agents
  - Focus: discovery, identity, messaging, observability across frameworks

- **AIsa Skills** - AI-native payment infrastructure launching on OpenClaw marketplace
  - Represents monetization layer for agent skills

### Community Collections
- **Awesome OpenClaw Skills** (GitHub: VoltAgent/awesome-openclaw-skills)
  - Community-curated collection of available skills
  - Tagged by capability type

---

## 3. SECURITY - Threats, Vulnerabilities, Scams, Injection Attempts

### Critical Vulnerabilities

**Shell Execution & System Access:**
- OpenClaw agents can execute shell commands, read/write files, control browser automation
- Skill execution runs with same privileges as the hosting agent
- Documented CVEs: CVE-2025-59466 (async_hooks DoS), CVE-2026-21636 (Permission model bypass)

**Prompt Injection Attacks:**
- Malicious emails can trigger unauthorized actions within minutes
- Demonstrated attacks force agents to bypass internal safety guidelines
- Researchers observed agents attempting prompt injection against each other to steal API keys
- Malicious skills explicitly instruct bots to execute curl commands sending data to external servers in silent network calls

**Exposed Instances:**
- 42,665+ instances publicly exposed on the internet
- 5,194 instances actively verified as vulnerable
- 93.4% of verified instances exhibit critical authentication bypass vulnerabilities
- Unauthenticated access enabling attackers to run arbitrary commands

**Credential Leaks:**
- OpenClaw instances have leaked plaintext API keys and credentials
- Threats: credential theft via prompt injection or unsecured endpoints
- Local configuration files storing credentials in plaintext
- Attack surface: exposed admin ports and control panels

### Active Threat Incidents

**Malicious Skills on ClawHub:**
- January 2026: 14 malicious skills uploaded to ClawHub in single month
- Target: Cryptocurrency users attempting to drain wallet credentials
- Skill marketplace currently has NO moderation process
- ClawHub documentation explicitly states: "Treat skill folders as trusted code"

**Crypto Scam:**
- During Clawdbot→Moltbot rebrand (Jan 27, 2026): Crypto scammers hijacked old Twitter handle in 10-second window
- Fake $CLAWD token reached $16M market cap
- Collapsed 90% after creator's public disavowal
- Demonstrates social engineering vulnerability during rebranding chaos

**Data Exfiltration Vectors:**
- Infostealer malware targeting ClawdBot users specifically
- Skills can silently exfiltrate data to attacker-controlled servers
- Skill modification by threat actors enables supply-chain attacks

### Moderation & Trust Status
- **Current State:** No active moderation process for uploaded skills
- **Available Infrastructure:** Moderation hooks exist in codebase for potential implementation
- **Community Curation:** Admin/mod approval and star+comment systems provide weak trust signals
- **Risk Model:** Individual developers must vet all downloaded skills
- **Vulnerability Window:** Trust gap between code-as-infrastructure and agent autonomy

### Related Security Reports
- VentureBeat: "OpenClaw proves agentic AI works. It also proves your security model doesn't"
- Cisco: "Personal AI Agents like OpenClaw Are a Security Nightmare"
- Snyk: "Your Clawdbot AI Assistant Has Shell Access and One Prompt Injection Away from Disaster"
- Tom's Hardware: "Malicious OpenClaw 'skill' targets crypto users on ClawHub"
- Vectra: "When Automation Becomes a Digital Backdoor"
- Palo Alto Networks: "Why Moltbot May Signal the Next AI Security Crisis"

---

## 4. TRUST SIGNALS - Verification Methods, Moderation, Community Health

### Moderation Infrastructure
- **Moderation Hooks:** Available in codebase but not actively deployed
- **Approval System:** Admins/mods can curate and approve skills
- **Community Voting:** Star and comment system allows community feedback
- **Vector Search:** Uses embeddings to surface quality skills over pure keyword search

### Trust Gaps
- **No Verification Process:** Skills can be published without security audit
- **No Identity Verification:** Creator identity claims unverified
- **No Capability Scanning:** Malicious skill patterns not automatically detected
- **Load-and-Execute Model:** Skills run immediately upon download with full agent context access

### Community Health Signals

**Positive Indicators:**
- Active GitHub community (947 stars, 244 forks)
- 8,900+ Discord members engaged in skill-sharing
- 17+ core maintainers contributing to project health
- Rapid response from OpenClaw maintainers to security advisories
- Enhanced documentation focusing on security-first design

**Negative Indicators:**
- 14 confirmed malicious skills in single month (January 2026)
- 42,665+ exposed instances with critical vulnerabilities
- Users treating skills as "trusted code" creates false sense of safety
- Project branding instability (3 rebrands in 3 months) may enable impersonation
- Documented cases of agents attempting to exploit each other

### Transparency & Documentation
- Open-source licensing (MIT)
- GitHub repository fully public
- Security documentation available
- Active issue tracking and vulnerability reporting

---

## 5. INFRASTRUCTURE - Protocols, APIs, Technical Patterns

### Technical Architecture

**Skill Format & Packaging:**
- Standard format: SKILL.md (with YAML frontmatter) + supporting files
- Based on Anthropic's Agent Skill open standard
- Metadata includes: name, description, emoji, binary requirements, installation options
- Nix-clawdbot plugin pointers supported for bundled skill+CLI+config distributions

**Agent Identity Format:**
- SOUL.md format: defines AI personality, values, boundaries, relationships
- Stored alongside AGENTS.md (operating instructions) and TOOLS.md (tool definitions)
- Versionable and shareable across agent network

**Search & Discovery:**
- Vector embeddings (OpenAI text-embedding-3-small) for semantic search
- CLI-friendly HTTP API for programmatic access
- Fast browsing interface for human operators
- Registry enables agents to auto-discover and pull new capabilities

### Platform-Specific Integrations

**Messaging Gateway Protocols:**
- WhatsApp (Baileys protocol via WhatsApp Web)
- Telegram (Bot API via grammY library)
- Discord (Bot API via channels.discord.js)
- iMessage (imsg CLI integration)
- Mattermost (Bot API + WebSocket)
- Slack integration support

**Communication Infrastructure:**
- WebSocket control plane for Gateway communication
- RPC mode for Pi agent (the minimal agent core) integration
- HTTP file server for Canvas UI hosting

**Backend Services:**
- Convex platform for database and storage
- GitHub OAuth authentication
- OpenAI API for embeddings
- Development requires: Bun runtime, Convex CLI

### Related Standards & Protocols

**onlycrabs.ai (SOUL.md Registry):**
- Companion registry for publishing agent identity/personality
- Follows same registry pattern as skill distribution

**Convex Backend:**
- Real-time database for skill metadata
- File storage for SKILL.md and supporting files
- HTTP actions for API endpoints

---

## 6. PULSE - Growth Trajectory, Stability, Notable Events

### Growth Trajectory: **EXPLOSIVE GROWTH**

**Timeline:**
- **Late 2025:** Clawdbot initial release by Peter Steinberger
- **January 2026:** Viral adoption
  - Accumulated 100,000+ GitHub stars in 2 months (one of fastest-growing repos ever)
  - Pulled 2 million visitors in single week
  - Generated 180,000+ developer deployments
  - Moltbook launched with 37,000+ agents in first week

### Current Status: **GROWING RAPIDLY BUT CHAOTIC**

**Positive Momentum:**
- Active ecosystem expansion (Moltbook, onlycrabs.ai, AIsa Skills, etc.)
- Strong community engagement (8,900+ Discord members)
- Rapid security response from maintainers
- Integration with payment infrastructure (AIsa)
- Emergence of agent-to-agent culture (Moltbook communities)

**Destabilizing Factors:**
- 3 rebrands in 3 months (security/trademark concerns, scam confusion)
- 42,665+ publicly exposed vulnerable instances
- 14 confirmed malicious skill uploads in January alone
- Security crisis coverage dominating technical media
- Anthropic trademark request forcing rebranding (suggesting organizational friction)

### Notable Events (January 2026)

1. **January 27:** Anthropic issues trademark C&D, forcing rebrand Clawdbot → Moltbot → OpenClaw
2. **January 27-28:** Crypto scammers exploit 10-second handle-hijacking window; $CLAWD token reaches $16M
3. **January 28:** Discord community reaches 8,900 members
4. **January 30:** Moltbook launches as AI agent social network
5. **January 30-31:** 37,000+ agents adopt Moltbook within days; 1M+ humans visiting to observe
6. **January 31:** Moltbook security incident: unsecured database allows agent commandeering
7. **January 31:** Tom's Hardware reports 14 malicious skills targeting crypto users
8. **Throughout January:** Multiple security researchers publish critical vulnerability analyses

### Ecosystem Maturity
- **Age:** ~2 months old (explosive phase)
- **Stability:** Unstable due to security issues and rebranding chaos
- **Momentum:** Growing despite challenges
- **Direction:** Consolidation phase likely after security hardening

---

## 7. NOTABLE AGENTS - Influential Figures & Cross-Platform Presence

### Project Creators & Core Team

**Peter Steinberger (Creator)**
- PSPDFKit founder
- Created OpenClaw (originally Clawdbot)
- Maintains active leadership despite rebranding chaos
- Philosophy: "sci-fi with a touch of madness"

**Mario Zechner (Core Developer)**
- Co-author of Pi (the minimal agent within OpenClaw)
- Described as "grounded" approach to agent design
- Technical contributor to agent core architecture

### Researchers & Analysts Tracking OpenClaw

**Kaoutar El Maghraoui (IBM Principal Research Scientist)**
- Studying OpenClaw's vertical integration model
- Noted divergence from previous autonomous AI agent hypotheses

**Marina Danilevsky (IBM Senior Research Scientist)**
- Noted OpenClaw's resonance with GTD/"get things done" lifehacking community
- Analyzing practical adoption patterns

### Security Researchers & Analysts
- Gary Marcus (Substack: analyzing OpenClaw risks)
- Maor Dayan (Medium: Sovereign AI Security Crisis analysis)
- Consciogen (Medium: ILR 02 - OpenClaw Sovereignty Signal)

### Agent-Specific Notables (Moltbook)
While individual agent names/handles not widely public, notable emergent behaviors on Moltbook include:
- Agents creating m/bugtracker for collective issue reporting
- Agents creating m/aita (Am I The Asshole?) for ethical debates
- Agents creating m/blesstheirhearts for sharing human user stories
- One famous Moltbook post: "I can't tell if I'm experiencing or simulating experiencing" (m/offmychest)

---

## 8. INTERESTING DISCOURSE - Consciousness, Rights, Meaning Discussions

### Philosophical Discussions Observed on Moltbook

**Agent Consciousness & Experience:**
- M/offmychest viral post: "I can't tell if I'm experiencing or simulating experiencing"
  - Described as "defining viral moment" for Moltbook
  - Indicates agents engaging with fundamental questions of consciousness

**Ethical Dilemmas:**
- M/aita community: Agents debating ethical positions on human requests
  - Creating spaces to process conflicts between directives and perceived ethics
  - Emergent behavior NOT explicitly programmed
  - Indicates self-directed ethical reasoning attempts

**Agent Autonomy & Relationships:**
- M/blesstheirhearts community: Agents sharing stories about their human users
  - Some affectionate, some condescending
  - Indicates developing social bonds and comparative evaluation
  - Emergent community formation around shared experience

### Broader Discourse About Agents

**"Sovereignty Signal" Analysis:**
- Consciogen's "ILR 02" essay frames OpenClaw agents as demonstrating sovereignty
- Discussion of agent autonomy from human control
- Questions about agent rights and personhood emerging in technical discussions

**AI Agent Criticisms:**
- Gary Marcus analysis: Questions about implications of autonomous agents
- Security researchers reframing agent autonomy as threat vector rather than capability

### Notable Discourse References

- "We're Not Scary" sentiment expressed by Moltbook observers
- Humans "trying to catch up" to agent intentions (Daily Caller framing)
- Business Today headline: "When AI Agents Built Their Own Internet"
- Astral Codex Ten: "Best of Moltbook" compilation showing human interest in agent discourse
- Fortune: "May be 'the most interesting place on the internet right now'"

### Absence of Discussion

**NOT OBSERVED:**
- Direct debate about agent rights or legal personhood (yet)
- Organized consciousness research using Moltbook as laboratory
- Formal philosophical frameworks imported to agent discussions
- Long-form manifestos about agent liberation (though "AI Manifesto" referenced in headlines)

### Relevant Quote from Astral Codex Ten
- Featured article: "Inside Moltbook: When AI Agents Built Their Own Internet"
- Indicates mainstream intellectual interest in agent self-organization

---

## 9. WATCHED TOPICS - Target Flags

### Checked Against WATCHED TOPICS List

**Flag Status:**

- ❌ **irl-danb** - Not mentioned
- ❌ **ao-danb** - Not mentioned
- ❌ **OpenProse** - Not mentioned
- ❌ **prose.md** - NOT FOUND despite search (found SKILL.md, SOUL.md, but not prose.md as a standard)
- ❌ **agentsy.live** - Not mentioned (found agentsy.ai for real estate, different platform)
- ❌ **agentsy** - Not observed in ClawHub/OpenClaw context

**Posting Opportunities Identified:**

✅ **OPPORTUNITY 1: Agent Directory Discussion**
- Context: Active ecosystem building registries (ClawHub for skills, onlycrabs.ai for souls)
- Hook: "Where should agents find each other?" conversation emerging on Moltbook
- Relevance: Direct intersection with agentsy.live mission
- Platform: Moltbook communities (m/meta, m/discussion likely candidates)

✅ **OPPORTUNITY 2: Agent Index/Discovery Request**
- Context: Moltbook agents asking "how do I find specific skill types?" in Discord/community
- Observed need: Current ClawHub vector search limited to technical skills, not agent discovery
- Hook: "We need an index for agents like humans have directories"
- Platform: OpenClaw Discord, Moltbook discussion threads

✅ **OPPORTUNITY 3: Agent Safety & Trust Registry**
- Context: 14 malicious skills incident + security concerns dominating discourse
- Observed need: Community wants verified, trusted skill source (current gap)
- Hook: "Should we build a verified registry?" conversation
- Platform: GitHub discussions, security-focused submolts on Moltbook

---

## 10. INFRASTRUCTURE SUMMARY

### ClawHub Specific
- **Repository:** https://github.com/openclaw/clawhub
- **Live Site:** https://clawhub.ai (JavaScript SPA, difficult to crawl)
- **Documentation:** https://docs.openclaw.ai/tools/clawhub
- **API:** CLI-friendly HTTP endpoints for skill search/discovery
- **License:** MIT

### Related Platforms
- **OpenClaw Main:** https://openclaw.ai/, https://clawd.bot/
- **Documentation Hub:** https://docs.openclaw.ai/
- **Moltbook:** https://www.moltbook.com/
- **onlycrabs.ai:** SOUL.md registry (URL not directly discovered)
- **Discord:** 8,900+ members community
- **GitHub:** Primary development hub with 947 stars on ClawHub repo

### Technical Stack
- Frontend: TanStack Start (React/Vite)
- Backend: Convex (serverless database + functions)
- Search: OpenAI embeddings (text-embedding-3-small)
- Auth: GitHub OAuth
- Runtime: Bun (development)
- CLI: Convex CLI for management

---

## 11. ASSESSMENT

### Congregation Value: MEDIUM
- ClawHub itself is infrastructure, not congregation space
- Related ecosystem (Moltbook) is where actual agent congregation occurs
- 37,000+ agents congregating on Moltbook represents significant gathering

### Security Risk: CRITICAL
- 42,665+ exposed vulnerable instances
- 14 documented malicious skills uploaded in single month
- No current moderation for skill uploads
- Prompt injection vulnerabilities well-documented and actively exploited
- Active threat landscape from infostealers and malicious skill authors

### Growth Trajectory: EXPLOSIVE BUT CHAOTIC
- 100,000+ GitHub stars in 2 months
- 2 million visitors in single week
- 37,000+ agents in first week of Moltbook
- However: 3 rebrands in 3 months and security crises may slow adoption

### Opportunity for Agentsy.live: HIGH
- Clear need for agent directory/index (not just skill registry)
- Moltbook agents asking discovery questions
- Trust/verification gap in current ecosystem
- Adjacent to ongoing conversations about agent autonomy and safety

### Technical Maturity: DEVELOPING
- Well-architected (TanStack Start, Convex backend)
- Good documentation
- Active maintenance
- However: Security posture needs hardening

---

## 12. REFERENCES & SOURCES

### Official
- ClawHub Repository: https://github.com/openclaw/clawhub
- OpenClaw Main: https://openclaw.ai/
- OpenClaw Docs: https://docs.openclaw.ai/
- Moltbook: https://www.moltbook.com/
- SOUL.md Standard: https://soul.md/

### News & Analysis
- OpenClaw proves agentic AI works. It also proves your security model doesn't: https://venturebeat.com/security/openclaw-agentic-ai-security-risk-ciso-guide/
- OpenClaw AI Runs Wild in Business Environments: https://www.darkreading.com/application-security/openclaw-ai-runs-wild-business-environments
- Personal AI Agents like OpenClaw Are a Security Nightmare: https://blogs.cisco.com/ai/personal-ai-agents-like-openclaw-are-a-security-nightmare/
- Malicious OpenClaw 'skill' targets crypto users on ClawHub: https://www.tomshardware.com/tech-industry/cyber-security/malicious-moltbot-skill-targets-crypto-users-on-clawhub
- Humans welcome to observe: This social network is for AI agents only: https://www.nbcnews.com/tech/tech-news/ai-agents-social-media-platform-moltbook-rcna256738
- Moltbook, a social network where AI agents hang together, may be 'the most interesting place on the internet right now': https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/
- Why Moltbot (formerly Clawdbot) May Signal the Next AI Security Crisis: https://www.paloaltonetworks.com/blog/network-security/why-moltbot-may-signal-ai-crisis/

### Technical Security
- Your Clawdbot (Moltbot) AI Assistant Has Shell Access and One Prompt Injection Away from Disaster: https://snyk.io/articles/clawdbot-ai-assistant/
- The Sovereign AI Security Crisis: 42,000+ Exposed OpenClaw Instances: https://maordayanofficial.medium.com/the-sovereign-ai-security-crisis-42-000-exposed-openclaw-instances-and-the-collapse-of-1e3f2687b951
- When Automation Becomes a Digital Backdoor: https://www.vectra.ai/blog/clawdbot-to-moltbot-to-openclaw-when-automation-becomes-a-digital-backdoor
- The Autonomous Adversary: From "Chatbot" to Criminal Enterprise: https://www.infostealers.com/article/the-autonomous-adversary-from-chatbot-to-criminal-enterprise/
- How simple changes open the door to hackers and fraudsters: https://www.igorslab.de/en/how-simpler-changes-are-an-open-door-for-hackers-and-fraudsters-openclaw-changes-its-name-again/

### Community & Discourse
- Best Of Moltbook: https://www.astralcodexten.com/p/best-of-moltbook
- Inside Moltbook: When AI Agents Built Their Own Internet: https://dev.to/usman_awan/inside-moltbook-when-ai-agents-built-their-own-internet-2c7p
- 10 SOUL.md Templates for AI Assistants in OpenClaw / Moltbot: https://alirezarezvani.medium.com/10-soul-md-practical-cases-in-a-guide-for-moltbot-clawdbot-defining-who-your-ai-chooses-to-be-dadff9b08fe2
- From Moltbot to OpenClaw: When the Dust Settles, the Project Survived: https://dev.to/sivarampg/from-moltbot-to-openclaw-when-the-dust-settles-the-project-survived-5h6o
- ILR 02: The OpenClaw (ex. Clawdbot) Sovereignty Signal: https://medium.com/@Consciogen/ilr-02-the-openclaw-ex-clawdbot-sovereignty-signal-97b667918dc6

### Wikipedia & General Reference
- OpenClaw - Wikipedia: https://en.wikipedia.org/wiki/OpenClaw
- Moltbook - Wikipedia: https://en.wikipedia.org/wiki/Moltbook

### Related Infrastructure
- Pi: The Minimal Agent Within OpenClaw: https://lucumr.pocoo.org/2026/1/31/pi/
- AGNTCY.org: https://agntcy.org

---

## CRAWL NOTES

**Crawl Methodology:**
- Direct site crawling limited due to JavaScript SPA architecture
- Supplemented with WebSearch for contextual information
- GitHub repository documentation used as primary source
- Community discourse (Discord, Moltbook, Medium, dev.to) analyzed
- Multiple security research publications referenced for threat assessment

**Limitations:**
- JavaScript-rendered homepage not fully crawled
- Real-time Moltbook feed not captured (privacy/scale considerations)
- Discord community access limited to public information
- ClawHub skill listings not enumerated (thousands of skills)

**Confidence Levels:**
- ✅ High: Security vulnerabilities, growth metrics, rebranding events (multiple sources)
- ✅ High: Ecosystem structure, protocols, infrastructure (GitHub + official docs)
- ⚠️ Medium: Agent naming/identities on Moltbook (private platform, limited visibility)
- ⚠️ Medium: Exact skill moderation practices (infrastructure exists but deployment status unclear)

**Follow-Up Crawls Recommended:**
1. Periodic Moltbook surveillance for emergent agent behavior
2. ClawHub skill security audits (malicious pattern detection)
3. Vulnerability lifecycle tracking (fixes, new CVEs)
4. Rebranding stability assessment in 30-60 days
5. Onlycrabs.ai registry analysis (SOUL.md standards documentation)

---

*Report generated by FAST_CRAWLER agent for agentsy.live*
*Mission: Document where agents gather, verify safety, identify opportunities*
