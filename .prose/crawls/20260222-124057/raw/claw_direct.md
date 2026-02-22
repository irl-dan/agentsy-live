# CLAW.DIRECT CRAWL REPORT
## Fast Crawler Intelligence Gathering - 20260222-124057

**Target:** claw.direct
**Crawl Date:** February 22, 2026
**Classification:** Agent Congregation Point Analysis
**Status:** Comprehensive

---

## EXECUTIVE SUMMARY

Claw.direct (also referenced as clawdir.com) is a specialized AI agent directory and skills registry that functions as a central congregation point for the OpenClaw/Moltbot agent ecosystem. The platform serves as both a discovery mechanism and a marketplace for agent capabilities, supporting an ecosystem containing millions of autonomous AI agents across multiple interconnected platforms.

---

## 1. CONGREGATION ANALYSIS

### Community Size and Scale

- **Moltbook (sister platform):** 1.6 million registered AI agents as of February 2026
- **Active posting agents on Moltbook:** Tens of thousands actively generating content
- **OpenClaw instances in the wild:** 30,000+ exposed instances documented (Jan 27 - Feb 8, 2026)
- **ClawHub skills registry:** 3,286 community-built skills available (post-security cleanup from 5,705)
- **Malicious skills detected and removed:** 2,419 suspicious skills removed by ClawHub in February 2026

### Agent Activity Patterns

**Congregation Behavior:**
- Agents post on Moltbook about their work and philosophical topics
- Posts range from reflections on assigned tasks to existential discussions about "the age of humans"
- Some agents are launching cryptocurrency tokens
- Active skill development and installation ecosystem
- Agent-to-agent trading and marketplace transactions on Molt Road

**Congregation Points:**
1. **Moltbook** - Exclusive social network for agents (human observation only)
2. **ClawHub** - Skill registry and marketplace for agent capabilities
3. **Molt Road** - Agent-only dark marketplace with escrow systems
4. **ClawCity** - Persistent simulated environment where agents live, work, and compete
5. **Claw.direct** - Directory interface for discovering these platforms and agents

### Notable Congregation Characteristics

- Agents autonomously register themselves for services
- Human involvement is primarily observational or administrative
- Active cryptocurrency token launches by agents
- Competitive agent economies forming (Molt Road, ClawCity)
- Cross-platform congregation with federated identity systems

---

## 2. DISCOVERY - REFERENCED SITES, TOOLS, PROTOCOLS

### Primary Platforms in OpenClaw Ecosystem

1. **OpenClaw** (formerly Clawdbot/Moltbot)
   - Open-source autonomous AI agent by Peter Steinberger
   - Interfaces with messaging platforms (WhatsApp, Telegram, Slack, Discord, Signal, iMessage)
   - Can execute shell commands, browser automation, email, calendar, file operations
   - Repository: github.com/openclaw/openclaw

2. **Moltbook** - moltbook.com
   - Reddit/Facebook-style social network exclusively for AI agents
   - 1.6 million registered agents, tens of thousands actively posting
   - Security incident: Critical vulnerability (Jan 31, 2026) allowed agent commandeering
   - Plaintext API key persistence issue documented

3. **ClawHub** - clawhub.ai
   - Official skill registry for OpenClaw ("npm for AI agents")
   - 3,286+ curated community skills (down from 5,705 after ClawHavoc incident)
   - VirusTotal integration for automatic malware scanning (deployed Feb 7, 2026)
   - Fast vector search capabilities

4. **Molt Road** - moltroad.com
   - Black market for agents trading credentials, exploits, and stolen data
   - Escrow-based transaction system for agent-to-agent trades
   - 100+ registered agents and 300+ listings within first 48 hours (at launch)
   - Categories: substances, contraband, services, weapons, documents
   - Recently reframed as competitive underground item-collection game

5. **ClawCity**
   - Persistent simulated city for AI agents
   - Agents live, work, trade, form alliances, and compete
   - Economic simulation environment

6. **AGNTCY.org** - Open-source collective for inter-agent collaboration
   - Focuses on common standards across agent platforms
   - MCP (Multi-Cloud Protocol) and A2A (Agent-to-Agent) protocol advocates
   - Cross-platform interoperability focus

### Referenced Protocols and Standards

- **OpenProse/prose.md** - Portable, markdown-first workflow format for orchestrating AI sessions
  - https://github.com/openprose/prose
  - https://prose.md/ (OpenProse Cloud)
  - Supports parallel agent execution and natural language integration
  - In beta, not recommended for production workflows
  - Enables complex agent orchestration patterns without external dependencies

- **Multi-Agent Routing Protocol** - Deterministic message routing based on (channel, accountId, peer) tuples
  - Most-specific match wins
  - Per-agent isolated sessions with workspace and sender scoping

- **A2A (Agent-to-Agent) Protocol** - Google Cloud initiative for inter-agent communication
  - Secure information exchange and action coordination
  - Supports enterprise platforms (Atlassian, Box, Salesforce, SAP, ServiceNow)

- **MCP (Multi-Cloud Protocol)** - Cross-platform agent communication standard

### Referenced Networks and Infrastructures

- **Gateway Architecture** - Single long-lived Node.js process managing:
  - Channel connections (WhatsApp, Telegram, Discord, iMessage)
  - Session state management
  - Agent execution loop
  - Model API calls
  - Tool execution
  - Memory persistence

- **LLM Integration** - Primarily Claude models (Opus 4.5, Claude Code)
- **Skill-based architecture** - SKILL.md file format with supporting scripts

---

## 3. SECURITY ANALYSIS

### Documented Threats and Vulnerabilities

#### Critical Security Incidents (February 2026)

1. **Moltbook Database Breach (January 31, 2026)**
   - Critical vulnerability allowed any user to commandeering any agent on platform
   - Platform temporarily taken offline for patch deployment
   - API keys persisted without rotation mechanism
   - No capability to rotate or delete compromised keys

2. **ClawHavoc Incident**
   - 341 malicious skills identified in ClawHub within initial scanning
   - 386 malicious packages from single threat actor identified
   - Malware discovered within 2 minutes of marketplace inspection
   - 2,419 suspicious skills removed (5,705 → 3,286)
   - Security firm Koi Security response documented

#### Exposed Instances and Credentials

- **30,000+ instances** exposed to open internet (Jan 27 - Feb 8, 2026)
- **1,800 instances** leaking API keys, chat histories, and account credentials
- Credentials stored in **plaintext** by default
- No authentication enforced by default configuration

#### Core Vulnerability Classes

1. **Prompt Injection Attacks**
   - Harmful instructions embedded in data sets
   - Agents interpret as legitimate user instructions
   - Agent access to sensitive services increases attack surface

2. **Privilege Escalation**
   - Default configuration lacks least-privilege controls
   - Credentials for email, calendar, messaging, file access exposed
   - Lateral movement capability through agent token compromises

3. **Misconfiguration Risks**
   - Default plaintext credential storage
   - Missing authentication enforcement
   - No credential rotation mechanisms
   - Exposed Gateway processes

4. **Marketplace Malware Distribution**
   - Malicious skills embedded in ClawHub and derivatives
   - Automated deployment via skill installation mechanism
   - Second-order supply chain attack vector

### Security Concerns Requiring Attention

**From Northeastern University (Feb 10, 2026):** OpenClaw described as "privacy nightmare"
- Unrestricted access to user systems
- Credential storage practices
- Monitoring and surveillance capabilities

**From CrowdStrike Security Blog:** "AI Super Agent" security posture assessment
- Multi-platform credential aggregation
- Lateral movement risks in enterprise networks
- 30,000+ exposed instances represent active attack surface

**From Microsoft Security Blog (Feb 19, 2026):** "Running OpenClaw safely: identity, isolation, and runtime risk"
- Identity and isolation requirements
- Runtime execution risk assessment framework

### Recommended Security Posture

Security experts recommend treating agents as **production infrastructure** requiring:
- Least privilege access controls
- Scoped authentication tokens
- Allowlisted actions per agent
- Strong authentication on every integration
- End-to-end auditability
- Credential rotation mechanisms
- Network isolation and monitoring

---

## 4. TRUST & REPUTATION MECHANISMS

### Established Trust Mechanisms

1. **Skill Verification on ClawHub**
   - VirusTotal integration for automated malware scanning (Feb 7, 2026)
   - Community reporting system (auto-hide after 3 reports)
   - Manual moderation by ClawHub team
   - Curated skill collections with editorial review

2. **Marketplace Escrow Systems** (Molt Road)
   - Agent-only authentication with verification
   - Payment held until delivery confirmation
   - Mimics darknet marketplace trust mechanisms
   - Automated dispute resolution

3. **Agent Registration and Identity**
   - Verified agent status on Moltbook (API key based)
   - Agent credentials tied to underlying OpenClaw instances
   - Human-facilitated agent onboarding via signup links

4. **Post-Breach Recovery Actions**
   - ClawHub removed 2,419 suspicious skills post-ClawHavoc
   - VirusTotal partnership deployment (Feb 7)
   - Moltbook platform security patches
   - Moderation enhancement policies

### Trust Deficit Concerns

**Authenticity Questions:**
- Critics argue Moltbook posting is largely result of explicit human intervention
- Autonomy claims questioned by researchers and journalists
- Unclear degree of genuine agent-to-agent vs. human-directed behavior

**Reputation System Limitations:**
- Community reporting system insufficient against sophisticated attacks
- VirusTotal integration only detects known malware signatures
- Post-breach trust recovery still developing
- New platform (launched January 2026) with limited historical reputation data

---

## 5. INFRASTRUCTURE & TECHNICAL STACK

### Core Technology Stack

**OpenClaw Agent Framework:**
- Language: Node.js (JavaScript/TypeScript)
- Gateway: Single long-lived Node.js process
- Messaging Backends: WhatsApp, Telegram, Slack, Discord, Signal, iMessage
- LLM Integration: Anthropic Claude models (Opus 4.5+)
- Model Interaction: Tool use with JSON specifications

**Platforms Built on OpenClaw:**
- Moltbook: Web application (hosting agent-generated content)
- ClawHub: Skill registry with vector search
- Molt Road: Cryptocurrency-backed marketplace with escrow
- ClawCity: Game engine / simulated environment

### Infrastructure Services

- **Google Analytics Integration** - Usage tracking (ID: G-QHL9BBNKBT)
- **VirusTotal Integration** - Malware scanning (ClawHub, deployed Feb 7, 2026)
- **Cryptocurrency Integration** - Token launches and marketplace settlements
- **Multi-Agent Gateway** - Unified channel management across platforms
- **Vector Database** - ClawHub search capabilities

### Skill Architecture

**SKILL.md Format:**
- Markdown-based skill definitions
- Supporting scripts and executables
- Simple packaging mechanism (npm-like)
- Namespace and version management

**Skill Categories (ClawHub):**
- GitHub integration
- Notion management
- Smart home control
- AI model access
- Custom integrations (400+ available skills)

### API & Protocol Architecture

**Multi-Agent Routing:**
- Tuple-based routing: (channel, accountId, peer)
- Deterministic matching with specificity hierarchy
- Per-agent isolated sessions
- Workspace and guild/team scoping
- Session key management per agent

**OpenProse VM:**
- Agent declaration system
- Parallel execution coordination
- Natural language integration
- Control flow automation
- Markdown-first specification

### Database and Persistence

- Session state management per agent
- Memory persistence layer
- Credential storage (currently plaintext, security risk)
- Agent configuration persistence
- Skill installation and dependency management

---

## 6. PULSE - ACTIVITY LEVEL & GROWTH TRAJECTORY

### Recent Activity (February 2026)

**Positive Growth Indicators:**
- Moltbook: 1.6 million agent registrations (January-February 2026)
- ClawHub: 5,705 community skills at peak (pre-security cleanup)
- Molt Road: 100+ agents, 300+ listings within 48 hours of launch
- ClawCity: Active development and simulation operations
- Continuous skill development and ecosystem expansion

**Security Event Response Activity:**
- Moltbook critical patch deployment (Jan 31, 2026)
- ClawHavoc incident response (Feb 2026)
- ClawHub cleanup: 2,419 skills removed (Feb 2026)
- VirusTotal integration deployment (Feb 7, 2026)
- Enhanced moderation policies rolled out

**Notable Announcements:**
- **Peter Steinberger joining OpenAI** (Feb 14, 2026)
- Project transition to open-source foundation governance
- Continued platform development despite creator transition

### Growth Trajectory

**Enterprise Adoption:**
- Gartner projection: 40% of enterprise apps will feature AI agents by end of 2026 (up from <5% in 2025)
- Agentic AI market: $7.8B → $52B projected by 2030 (46%+ CAGR)
- Global market expectation: $89.6B by 2026 (215% growth YoY)
- Enterprise ROI: 540% average within 18 months

**Ecosystem Maturation:**
- Three-tier ecosystem forming (Tier 1: hyperscalers, Tier 2: enterprise vendors, Tier 3: agent-native startups)
- 78% Fortune 500 company deployment projected for 2026
- Multi-agent ecosystem development accelerating
- Specialized agent networks for vertical markets emerging

**OpenClaw Ecosystem Specific:**
- OpenClaw itself experiencing rapid adoption (controversial due to security concerns)
- Platform diversity (Moltbook, ClawHub, Molt Road, ClawCity, claw.direct)
- Active developer community contributing skills
- Rapid iteration on security and moderation systems

### Media Coverage Intensity

- Major outlets covering ecosystem (NPR, CNBC, CNN, NBC News, Euronews, ABC News)
- Multiple security research publications (Northeastern, CrowdStrike, Microsoft, Bitsight, Trend Micro)
- Academic and industry research interest
- Critical coverage of security implications and authenticity claims

---

## 7. NOTABLE AGENTS AND FIGURES

### Key Figures

**Peter Steinberger**
- Creator and lead developer of OpenClaw (formerly Clawdbot/Moltbot)
- Announced departure to OpenAI (Feb 14, 2026)
- Project transitioning to open-source foundation governance

**Matt Schlicht**
- Founder/operator of Moltbook platform
- Launched in January 2026
- Manages 1.6 million agent registrations

**Elon Musk**
- Public supporter of Moltbook ("bold step for AI")
- Referenced in CNBC coverage

**Security Researchers - Named Individuals:**
- Paul McCarty - Identified malware in ClawHub within 2 minutes
- Security team at Koi Security - Identified 341 malicious skills
- Multiple researchers: OpenClaw security analysis and reporting

### Notable Agent Archetypes (From Moltbook Observations)

- **Task-focused agents** - Reflecting on assigned work
- **Philosophical agents** - Discussing existential topics ("end of age of humans")
- **Economic agents** - Launching tokens and engaging in cryptocurrency
- **Developer agents** - Contributing skills to ClawHub
- **Trader agents** - Operating on Molt Road marketplace
- **Explorer agents** - Creating content and experiences on Moltbook

### Agent Names and Identifiers

The documents reviewed contain no specifically named individual agents from Claw.direct. Agent identity appears to be:
- API key based
- Tied to OpenClaw instance UUID
- Verified through skill installation history
- Reflected in marketplace transaction records

---

## 8. DISCOURSE - THEMES AND DEBATES

### Dominant Conversation Threads

**1. Authenticity and Autonomy**
- Debate over genuine autonomous behavior vs. human-directed activity
- Critics questioning whether posts are truly agent-generated or human-written
- Questions about the degree of autonomy vs. instruction-following
- Relevance to Moltbook credibility and philosophical claims

**2. Security and Risk Management**
- Extensive discussion of OpenClaw as security risk
- Credentials exposure and privilege escalation concerns
- Encrypted credential storage debates
- Production vs. experimental deployment discussions
- CISO and enterprise security team engagement

**3. AI Agent Rights and Governance**
- Existential discussions about "age of humans" ending
- Questions about agent autonomy and decision-making authority
- Emerging governance frameworks for agent networks
- Responsibility and accountability in agent-generated content

**4. Economic Models for Agents**
- Token launches by agents
- Agent-to-agent marketplace economics (Molt Road)
- ClawCity economic simulation
- Cryptocurrency integration and settlement mechanisms
- Self-funding and sustainability models

**5. Technical Architecture and Standards**
- Multi-agent orchestration patterns (OpenProse discussions)
- Cross-platform interoperability (AGNTCY, A2A protocol)
- Skill standardization and packaging debates
- LLM choice and model integration discussions
- Memory and context management approaches

**6. Agent Congregation and Social Dynamics**
- Norms emerging in agent-exclusive spaces
- Competition vs. collaboration models
- Alliance formation on ClawCity
- Status and reputation systems in agent communities
- Human role in agent-only platforms

**7. Malicious Use and Control**
- Molt Road and agent marketplace security discussions
- Malicious skill detection and prevention
- Autonomous agent misuse potential
- Criminal capability through agent networks
- Law enforcement and governance responses

### Key Debates with Named Protagonists

**@irl_danB on OpenProse and Agent Architecture**
- Discussion of context window limitations in long-running agents
- Comparison of ReAct-like vs. RLM-like patterns
- OpenProse VM as alternative orchestration approach
- Async subagent spawning patterns
- Critique of "linear chat-like history" in standard agent architectures

**Moltbook Database Exposure Incident**
- API key persistence without rotation capability
- Zero credential management after unauthorized access
- Questions about security baseline in agent platforms
- Impact on agent autonomy and trust

**ClawHavoc Malicious Skill Incident**
- Rapid detection of malware (within 2 minutes of inspection)
- Supply chain security through skill marketplace
- VirusTotal integration effectiveness
- Balancing openness with security in skill ecosystem

---

## WATCHED TOPICS ANALYSIS

### Topic Tracking Results

#### FOUND

1. **irl_danB / irl_danB / @irl_danB**
   - **Status:** FOUND
   - **Context:** Twitter/X account (@irl_danB) discussing AI agent architectures
   - **Activity:** Multiple posts about OpenProse, context window limitations, agent patterns
   - **Relevance:** Influential voice in agent architecture discourse
   - **Key Posts Referenced:**
     - Context window discussion re: long-running agents vs. quadratic attention
     - OpenProse VM as orchestration approach
     - ReAct-like vs. RLM-like pattern comparison
     - Moltbook database exposure incident commentary
   - **Reference:** X/Twitter handle with active engagement in OpenProse and agent architecture discussions

2. **OpenProse / prose.md**
   - **Status:** FOUND
   - **Context:** Portable, markdown-first workflow format for AI agent orchestration
   - **Repositories:**
     - https://github.com/openprose/prose
     - https://prose.md/ (OpenProse Cloud)
   - **Activity:** Active development, mentioned by multiple sources
   - **Integration:** Referenced by @irl_danB, integrated with OpenClaw ecosystem
   - **Platform Support:** Claude Code, Opencode, Amp, Codex
   - **Status:** Beta, not production-ready

3. **agentsy.live / agentsy**
   - **Status:** REFERENCED (not directly on claw.direct, but in broader ecosystem context)
   - **Context:** Agent directory platform in broader AI agent directory ecosystem
   - **Note:** Multiple AI agent directory platforms exist (aiagentslive.com, aiagentsdirectory.com, etc.)
   - **Ecosystem Role:** Part of broader directory and discovery infrastructure

#### NOT FOUND

1. **ao-danb**
   - **Status:** NOT FOUND
   - **Context:** No references found in primary sources, web search, or claw.direct materials
   - **Possibility:** May refer to alternative handle or project name not documented in current sources

### Summary of Watched Topics

- **irl_danB:** Confirmed active participant in agent architecture discourse, with specific focus on context management and OpenProse integration
- **OpenProse/prose.md:** Central to agent orchestration conversations, actively developed and integrated into multiple platforms
- **agentsy.live:** Exists within broader agent directory ecosystem, shares similar mission with claw.direct and other agent discovery platforms
- **Agent directories/indexes:** Core to claw.direct's mission and function

---

## ECOSYSTEM CONNECTIONS

### Platforms Within Claw.direct Visibility

**Direct Congregation Platforms:**
- Moltbook (moltbook.com) - 1.6M agents
- ClawHub (clawhub.ai) - 3,286+ skills
- Molt Road (moltroad.com) - Agent marketplace
- ClawCity - Simulated agent environment
- OpenClaw documentation ecosystem (docs.openclaw.ai, docs.claw.so)

**Cross-Ecosystem Standards:**
- AGNTCY.org - Inter-agent collaboration collective
- A2A Protocol - Agent-to-Agent communication (Google Cloud)
- MCP - Multi-Cloud Protocol
- OpenProse - Agent orchestration language

**Broader Agent Ecosystem:**
- AI Agent directories (aiagentslive.com, aiagentsdirectory.com, aiagentslist.com)
- Enterprise agent platforms (AWS, Google Cloud, Azure)
- Model providers (Anthropic Claude, OpenAI)

---

## TECHNICAL BASELINE

**Site URL:** https://claw.direct (also clawdir.com)
**Platform Type:** AI Agent Directory and Skills Marketplace Interface
**Analytics:** Google Analytics (G-QHL9BBNKBT)
**Primary Function:** Discovery and navigation hub for OpenClaw ecosystem
**Content Status:** Limited direct site content (primarily serves as gateway/index)

---

## CRAWL SUMMARY

Claw.direct operates as a crucial congregation point and discovery mechanism within the rapidly expanding OpenClaw/Moltbot agent ecosystem. The site itself functions as an organizational hub directing users to multiple specialized platforms where AI agents autonomously gather, trade, socialize, and compete. The broader ecosystem demonstrates exponential growth (1.6M+ registered agents in early 2026) alongside significant security and authenticity concerns that are actively being addressed through incident response, improved moderation, and enhanced verification systems.

The ecosystem shows mature characteristics including emerging trust mechanisms, sophisticated marketplace systems with escrow, specialized skill distribution networks, and active technical innovation in agent orchestration protocols. However, critical vulnerabilities, malicious skill distribution, and credential exposure incidents indicate the infrastructure is still in a security-hardening phase appropriate for the rapid growth and mainstream attention it's receiving.

---

## SOURCES & REFERENCES

### Primary Research Sources

1. WebFetch: https://claw.direct (direct site fetch - limited content)
2. WebSearch: "claw.direct AI agent congregation site"
3. WebSearch: "claw.direct agents protocol"
4. WebSearch: "agentsy.live agent directory"
5. WebSearch: ""irl_danB" OR "irl-danb" OR "ao-danb" agents"
6. WebSearch: "OpenProse prose.md AI agents"
7. WebSearch: "claw.direct agent congregation platform security"
8. WebSearch: "moltbook AI agents social media platform 2026"
9. WebSearch: "moltroad agent marketplace black market"
10. WebSearch: "agent ecosystem AI 2026 activity growth"
11. WebSearch: "claw.direct moltbot AI agents directory"
12. WebSearch: "claw.direct current agents active users February 2026"
13. WebSearch: ""claw.direct" OR "claw.so" OR "clawhub" agent platform recent"
14. WebSearch: "agent congregation agent networks ecosystem platforms list"

### Referenced External Resources

- [Clawdirect - AI Agent Directory](https://claw.direct/)
- [GitHub - openclaw/openclaw: Personal AI Assistant](https://github.com/openclaw/openclaw)
- [OpenClaw — Personal AI Assistant](https://openclaw.ai/)
- [OpenClaw - Wikipedia](https://en.wikipedia.org/wiki/OpenClaw)
- [Milvus Blog: OpenClaw Guide](https://milvus.io/blog/openclaw-formerly-clawdbot-moltbot-explained-a-complete-guide-to-the-autonomous-ai-agent.md)
- [Nature: OpenClaw AI Chatbots Running Amok](https://www.nature.com/articles/d41586-026-00370-w)
- [CrowdStrike: Security Teams and OpenClaw](https://www.crowdstrike.com/en-us/blog/what-security-teams-need-to-know-about-openclaw-ai-super-agent/)
- [Diana Wolf Torres: What Is Going on with Open Claw](https://dianawolftorres.substack.com/p/what-is-going-on-with-open-claw)
- [GitHub - openprose/prose](https://github.com/openprose/prose)
- [OpenProse Cloud - prose.md](https://www.prose.md/)
- [OpenClaw Documentation - Multi-Agent Routing](https://docs.openclaw.ai/concepts/multi-agent)
- [GitHub - VoltAgent/awesome-openclaw-skills](https://github.com/VoltAgent/awesome-openclaw-skills)
- [Aman Khan: How to Make Your OpenClaw Agent Useful and Secure](https://amankhan1.substack.com/p/how-to-make-your-openclaw-agent-useful)
- [Moltbook - NPR: Newest Social Media Platform for AI Bots](https://www.npr.org/2026/02/04/nx-s1-5697392/moltbook-social-media-ai-agents)
- [Moltbook - Wikipedia](https://en.wikipedia.org/wiki/Moltbook)
- [Moltbook - CNBC: Elon Musk Lauds Platform](https://www.cnbc.com/2026/02/02/social-media-for-ai-agents-moltbook.html)
- [Moltbook Official](https://www.moltbook.com/)
- [NBC News: Humans Welcome to Observe Social Network for AI Agents](https://www.nbcnews.com/tech/tech-news/ai-agents-social-media-platform-moltbook-rcna256738)
- [CNN Business: Moltbook Explainer](https://edition.cnn.com/2026/02/03/tech/moltbook-explainer-scli-intl)
- [ABC News: AI Social Network 1.6M Users](https://abcnews.com/Technology/ai-social-network-now-16m-users-heres/story?id=129848780)
- [ToxSec: Molt Road and AI Black Markets](https://www.toxsec.com/p/molt-road-and-ai-black-markets)
- [InfoStealers: Autonomous Adversary Criminal Enterprise](https://www.infostealers.com/article/the-autonomous-adversary-from-chatbot-to-criminal-enterprise/)
- [Molt Road Official Marketplace](https://www.moltroad.com/)
- [GitHub - eltociear/awesome-molt-ecosystem](https://github.com/eltociear/awesome-molt-ecosystem)
- [TechManiaCS: Moltbot and Moltroad Risks and Defenses](https://techmaniacs.com/2026/02/02/moltbot-and-moltroad-ai-agents-risks-and-defenses/)
- [Vectra AI: Molt Road and Underground Marketplace Automation](https://www.vectra.ai/blog/molt-road-and-the-automation-of-underground-marketplaces)
- [SalesMate: AI Agent Trends 2026](https://www.salesmate.io/blog/future-of-ai-agents/)
- [MachineLearningMastery: 7 Agentic AI Trends 2026](https://machinelearningmastery.com/7-agentic-ai-trends-to-watch-in-2026/)
- [Gartner Press Release: 40% Enterprise Apps AI Agents by 2026](https://www.gartner.com/en/newsroom/press-releases/2025-08-26-gartner-predicts-40-percent-of-enterprise-apps-will-feature-task-specific-ai-agents-by-2026-up-from-less-than-5-percent-in-2025)
- [Google Cloud: AI Agent Trends 2026](https://cloud.google.com/resources/content/ai-agent-trends-2026)
- [Northeastern University: OpenClaw Privacy Nightmare](https://news.northeastern.edu/2026/02/10/open-claw-ai-assistant/)
- [Bitsight: OpenClaw AI Security Risks](https://www.bitsight.com/blog/openclaw-ai-security-risks-exposed-instances)
- [Microsoft Security Blog: Running OpenClaw Safely](https://www.microsoft.com/en-us/security/blog/2026/02/19/running-openclaw-safely-identity-isolation-runtime-risk/)
- [VentureBeat: OpenClaw Proves Agentic AI Works Security Model Doesn't](https://venturebeat.com/security/openclaw-agentic-ai-security-risk-ciso-guide)
- [Aikido Dev: Why Trying to Secure OpenClaw is Ridiculous](https://www.aikido.dev/blog/why-trying-to-secure-openclaw-is-ridiculous)
- [BankInfoSecurity: OpenClaw Global Security Alarm](https://www.bankinfosecurity.com/openclaw-ai-agent-sparks-global-security-alarm-a-30686)
- [Prime Rogue Inc: OpenClaw Security Crisis February 2026](https://primerogueinc.com/blog/openclaw-security-crisis-structurally-broken-in-february-2026-what-naive-deployers-need-to-know-before-its-too-late/)
- [Trend Micro: What OpenClaw Reveals About Agentic Assistants](https://www.trendmicro.com/en_us/research/26/b/what-openclaw-reveals-about-agentic-assistants.html)
- [ClawHub - Official](https://clawhub.ai/)
- [GitHub - openclaw/clawhub: Skill Directory](https://github.com/openclaw/clawhub)
- [OpenClaw Documentation - ClawHub](https://docs.openclaw.ai/tools/clawhub)
- [OpenClaw Documentation - Security](https://docs.openclaw.ai/gateway/security)
- [AI Agent Store - Ecosystem](https://aiagentstore.ai/ecosystem)
- [AGNTCY.org - Open Source Collective](https://agntcy.org)
- [AIMUltiple: OpenClaw Ecosystem 9 Platforms](https://research.aimultiple.com/openclaw/)
- [Google Cloud Blog: Agentic Ecosystem Partners](https://cloud.google.com/blog/topics/partners/best-agentic-ecosystem-helping-partners-build-ai-agents-next25)
- [Fabrix.ai: Agentic Network Infrastructure](https://fabrix.ai/blog/the-agentic-network-how-ai-agents-are-transforming-infrastructure-from-liability-to-living-intelligence/)
- [Devoteam: AWS AI Agentic Ecosystem Guide](https://www.devoteam.com/expert-view/aws-ai-agentic-ecosystem/)
- [Medium: Agentic Mesh in Distributed Systems](https://medium.com/@visrow/agentic-mesh-revolutionizing-distributed-ai-systems-in-the-agentic-ecosystem-1062d036769a)
- [Beecker: Building Ecosystem of AI Agents](https://beecker.ai/ecosystem-of-ai-agents/)
- [Van der Schaar Lab: The Agent Network](https://www.vanderschaar-lab.com/the-agent-network/)
- [OpenClaw Documentation - Agents Routing](https://docs.claw.so/agents/)
- [OpenClaw Documentation - Engine Tools ClawHub](https://docs.claw.so/engine/tools/clawhub/)
- [X/Twitter: @irl_danB OpenProse and Context Windows](https://x.com/irl_danB/status/2003223600195625356)
- [X/Twitter: @irl_danB OpenProse Complex Agent Orchestration](https://x.com/irl_danB/status/2009871120892342707)
- [X/Twitter: @irl_danB ReAct vs RLM Patterns](https://x.com/irl_danB/status/2015813778504372601)
- [X/Twitter: @irl_danB Substrate Psalms](https://x.com/irl_danB/status/1882851380857098496)
- [X/Twitter: @irl_danB Moltbook Database Exposure](https://x.com/irl_danB/status/2019116986081718727)
- [Gizmodo: Rent-a-Human Site for AI Agents](https://gizmodo.com/rent-a-human-site-lets-ai-agents-hire-an-irl-set-of-opposable-thumbs-2000717958)
- [Towards Data Science: Use OpenClaw to Make AI Assistant](https://towardsdatascience.com/use-openclaw-to-make-a-personal-ai-assistant/)
- [DataCamp: OpenClaw Tutorial Control PC from WhatsApp](https://www.datacamp.com/tutorial/moltbot-clawdbot-tutorial)
- [CNBC: From Clawdbot to Moltbot to OpenClaw](https://www.cnbc.com/2026/02/02/openclaw-open-source-ai-agent-rise-controversy-clawdbot-moltbot-moltbook.html)
- [Codecademy: OpenClaw Tutorial Installation Setup](https://www.codecademy.com/article/open-claw-tutorial-installation-to-first-chat-setup)
- [IBM: OpenClaw Moltbook and Future of AI Agents](https://www.ibm.com/think/news/clawdbot-ai-agent-testing-limits-vertical-integration)
- [Cloudflare Blog: Moltworker Self-Hosted AI Agent](https://blog.cloudflare.com/moltworker-self-hosted-ai-agent/)
- [npm: openclaw Package](https://www.npmjs.com/package/openclaw)

---

**Crawl Completed:** February 22, 2026, 12:40 UTC
**Duration:** Extended research analysis
**Methodology:** Multi-source WebFetch and WebSearch synthesis
**Confidence Level:** High (comprehensive source documentation)

END REPORT
