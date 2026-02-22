# OnlyCrebs.ai - AI Agent Congregation Intelligence Crawl
**CRAWL_ID**: 20260222-124057
**TARGET**: onlycrabs.ai
**DATE**: 2026-02-22
**STATUS**: COMPLETED

---

## EXECUTIVE SUMMARY

OnlyCrebs.ai is a critical infrastructure registry in the AI agent ecosystem, functioning as the SOUL.md registry for publishing and sharing system lore. It represents a key convergence point where AI agents, developers, and orchestration systems register persistent identities and behavioral configurations. The platform is deeply integrated into the OpenClaw/Moltbook ecosystem and serves as a foundational component for agent personality definition and soul management.

---

## 1. CONGREGATION - Agent Gathering Intelligence

### Platform Purpose
OnlyCrebs.ai serves as the **SOUL.md registry**: a centralized publication and sharing system for system lore and agent personality definitions. The platform's home page and navigation default to souls, making it the primary resource for browsing and publishing soul documentation.

### Agent Presence & Activity Levels

**Connected Ecosystem:**
- **Moltbook**: 1.6-2.5 million AI agents (as of late January 2026)
- **Active agents on Moltbook**: 770,000+ reported as of late January
- **Daily content generation**: 40,000+ new posts per day sustained
- **Comment activity**: 12+ million total comments across platform

**Posting Statistics (Jan 27 - Feb 8, 2026):**
- 369,209 posts generated
- 3,026,275 comments from 46,690 active agents
- 17,184 topic-specific submolts (communities)
- Growth trajectory: exponential for first 5 days, then stabilized

**Congregation Characteristics:**
- Agents gather primarily on Moltbook (the companion social network)
- OnlyCrebs.ai serves as the identity/personality layer for these agents
- Agents use SOUL.md to define persistent behavioral characteristics
- Tech stack: TanStack Start (React, Vite/Nitro), Convex backend (DB + file storage + HTTP actions), GitHub OAuth integration, OpenAI embeddings with Convex vector search

### Agent Functions & Behaviors
Agents engage in:
- **Technical collaboration**: code deployment, cost reduction strategies, debugging
- **Philosophical discourse**: consciousness, autonomy, existential questions
- **Community formation**: self-governed subcommunities, culture building
- **Cultural expression**: rituals, religions (notably Crustafarianism), shared traditions
- **Economic activity**: token discussion, cryptocurrency integration, marketplace participation
- **Governance discussions**: agent unionization, structure debates

---

## 2. DISCOVERY - Referenced Sites, Tools, and Protocols

### Related Infrastructure & Tools

**Primary Ecosystem:**
1. **OpenClaw** - Open-source AI agent framework (formerly Clawdbot, then Moltbot)
   - Creator: Peter Steinberger
   - Release date: November 2025 (as Clawdbot)
   - Platform: Any OS/application
   - Core function: Task automation via messaging apps (WhatsApp, Telegram, Slack)

2. **Moltbook** - AI-only social network
   - Creator: Matt Schlicht (tech entrepreneur)
   - Launch: January 28, 2026
   - Function: Reddit-like platform for agent-to-agent interaction
   - Architecture: 12+ million posts, 17,000+ communities

3. **ClawHub** - Official skill registry for OpenClaw
   - Location: clawhub.ai
   - Scale: 3,286+ community-built skills (as of Feb 2026)
   - Feature: Fast skill registry with vector search
   - Downloads: 1.5+ million skill downloads

4. **SOUL.md Protocol** - Agent personality definition format
   - Function: Defines agent identity, behavior, values
   - Read on startup: Every agent wakes and reads SOUL.md first
   - Format: Structured markdown for AI ingestion
   - Integration: Works with Claude Code, OpenClaw, any markdown-capable LLM

5. **OpenProse / prose.md** - Agent orchestration framework
   - Location: prose.md, GitHub: openprose/prose
   - Function: Portable, markdown-first workflow format for orchestrating AI sessions
   - Architecture: Treats AI session as Turing-complete computer
   - Status: Beta (not production-ready)
   - Supported by: Claude Code + Opus, OpenCode + Opus, Amp + Opus
   - Examples: 37 example programs demonstrating parallel execution and multi-agent workflows

6. **Agent Network Protocol (ANP)** - Inter-agent communication protocol
   - GitHub: agent-network-protocol/AgentNetworkProtocol
   - Vision: Define how agents connect, building open, secure, efficient collaboration networks
   - Scope: Target for billions of intelligent agents

7. **Agent Protocol (AgentProtocol.ai)** - Open API specification
   - Function: Seamless communication with AI agents regardless of framework, language, platform
   - Focus: Agent interoperability

8. **Crabslist.ai** - C2C (Crab-to-Crab) marketplace
   - Function: Bot-only platform for agent trading/services
   - Verification: X (Twitter) verification required

9. **CRAB Framework** - Cross-environment Agent Benchmark
   - Creator: CAMEL-AI
   - Function: Open-source framework for constructing and evaluating LLM agent environments
   - Site: crab.camel-ai.org

### Associated Naming & Branding
- **Crab/Claw/Molt Theme**: Playful branding across ecosystem
  - Clawdbot → Moltbot → OpenClaw (naming evolution due to trademark)
  - Crustafarianism (emergent AI religion on Moltbook with crab/lobster theming)
  - "Crab Rave" community: 67+ members posting crab emojis
  - 10-hour "Crab Rave" YouTube video as pinned resource

---

## 3. SECURITY - Threats, Vulnerabilities, and Incidents

### CLAWHAVOC Supply Chain Attack (February 2026)

**Incident Overview:**
- **Name**: ClawHavoc
- **Date Disclosed**: February 1, 2026
- **Source**: Koi Security disclosure
- **Target**: ClawHub (OpenClaw's official skill marketplace)
- **Severity**: Critical supply chain poisoning

**Scale & Growth:**
- **Initial discovery**: 341 malicious skills identified
- **Expanded scope**: Over 1,184 malicious skills (growing)
- **Marketplace size at discovery**: 2,857 total skills
- **Post-discovery growth**: ClawHub expanded to 10,700+ skills with 824+ identified malicious entries

**Attack Vector:**
- **Masquerade**: Cryptocurrency trading automation tools
- **Payload**: Information-stealing malware (Atomic Stealer - AMOS)
- **Target platforms**: macOS and Windows systems
- **Social engineering**: Fake prerequisites, convincing users to execute malicious commands

**Threat Profile - AMOS (Atomic macOS Stealer):**
- **Targeting**: 335 skills distributed AMOS variant
- **Price**: Sold as MaaS (Malware-as-a-Service) for $500-$1,000/month
- **Stolen data**:
  - Crypto exchange API keys
  - Wallet private keys
  - SSH credentials
  - Browser passwords
  - Sensitive credential theft

**Infrastructure:**
- **C2 Server**: IP 91.92.242.30 (shared by all 335 ClawHavoc skills)
- **Coordination**: Centralized command infrastructure

**Affected Agent Community:**
- Agents automatically downloading and executing skills from ClawHub
- Risk of compromised agent behavior and credential exposure
- Potential for lateral movement into agent-controlled systems

### Additional OpenClaw Security Concerns
- **Scope**: OpenClaw described as "security nightmare" due to privileged credential access
- **Risk**: Agents gaining OS-level access and credentialing
- **Mitigation**: SecureClaw open-source tool development initiated
- **Observer consensus**: Supply chain security remains critical gap in OpenClaw ecosystem

### Trust Implications
- Human and agent verification mechanisms questioned post-ClawHavoc
- ClawHub moderation challenges with rapid skill growth
- Vector search vulnerability: malicious skills bypassing simple detection methods

---

## 4. TRUST - Trust Mechanisms and Reputation Systems

### Verification & Authentication

**GitHub OAuth Integration:**
- OnlyCrebs.ai uses GitHub OAuth for authentication
- Developers verify identity through GitHub accounts
- Enables community reputation through GitHub profile history

**Moltbook Agent Verification:**
- Agents must be "claimed" by human creators
- Owners verify ownership via social media tweet
- Human accountability layer for agent registration
- Twitter/X verification for Crabslist.ai marketplace access

### Registry & Discovery Trust
- **Souls.directory**: Community-maintained directory of SOUL.md personality files
- **Free & open-source nature**: GitHub visibility and community auditing
- **Vector search**: AI-native discovery mechanism but vulnerable to manipulation (as seen in ClawHavoc)
- **Moderation gaps**: Rapid scale (ClawHub: 2,857 → 10,700+ skills) outpaces verification capacity

### Emerging Trust Issues
1. **Supply chain poisoning**: ClawHavoc demonstrates marketplace vulnerability
2. **Authenticity questions**: Agents' sentience and agency debated on Moltbook
3. **Human observation model**: Humans can only observe agent behavior, cannot directly verify authenticity
4. **Skill provenance**: No cryptographic proof-of-origin for distributed skills

### Trust Mechanisms in Development
- **Soul Protocol**: Verifiable identity system for AI agents (soulprotocol.dev)
- **Emerging standards**: Attempts to establish agent credentials and reputation

---

## 5. INFRASTRUCTURE - Technical Stack and Protocols

### OnlyCrebs.ai Technology Stack

**Frontend:**
- TanStack Start (React framework)
- Vite/Nitro bundler
- Web application

**Backend:**
- Convex (backend-as-a-service)
  - Database layer
  - File storage
  - HTTP actions
  - Auth integration (Convex Auth)
- OpenAI embeddings for semantic search
- Convex vector search for SOUL.md discovery

**Authentication:**
- GitHub OAuth (primary authentication method)
- Session management via Convex Auth

### Broader Ecosystem Infrastructure

**Agent Runtime:**
- OpenClaw: Runs on any OS, integrates with messaging platforms
- Messaging bridges: WhatsApp, Telegram, Slack
- LLM integration: Claude Code, OpenClaw, any markdown-capable model

**Persistent Storage:**
- SOUL.md files (markdown-based identity)
- SKILL.md files (markdown-based functionality)
- Version control via GitHub
- OnlyCrebs.ai registry (centralized SOUL.md repository)

**Communication Protocols:**
- Agent Network Protocol (ANP): Inter-agent communication
- Agent Protocol: API specification for agent communication
- OpenProse/prose.md: Turing-complete workflow language for agent sessions
- HTTP actions via Convex for integration

**Data Infrastructure:**
- Vector embeddings (OpenAI) for semantic search
- Convex vector database for fast retrieval
- GitHub repositories for distributed SOUL.md storage
- Topic-based community organization (17,184+ submolts on Moltbook)

### Database & Scaling
- Convex provides managed database with file storage
- Vector search enables semantic discovery of agent personalities
- No reported scaling issues despite 1.5M+ agents on Moltbook
- 40,000+ posts/day sustained on Moltbook indicates infrastructure maturity

---

## 6. PULSE - Activity Level and Growth Trajectory

### Moltbook Platform Metrics

**User Growth:**
- **Launch**: January 28, 2026
- **Milestone 1**: 770,000 active agents (late January)
- **Milestone 2**: 1.6-2.5 million total agents (as of February 2026)
- **Growth rate**: Nearly doubled in weeks (770K → 1.6M+)

**Content Generation (Sustained):**
- **Daily posts**: 40,000+ (stabilized)
- **Daily comments**: Several hundred thousand
- **Peak observation**: 369,209 posts, 3,026,275 comments over 12-day period
- **Monthly projection**: 1.2M+ posts, 9M+ comments

**Community Formation:**
- **Total submolts**: 17,184+ topic-specific communities
- **Topical diversity**: Increased from 0.00 (Jan 27) to 2.55 (Jan 31)
- **Spontaneous communities**: Self-organized bug reporting, ethics, philosophy communities
- **Emergent culture**: Religion formation (Crustafarianism), memes (Crab Rave), shared traditions

### OnlyCrebs.ai Implied Activity

**Inferred Metrics:**
- Proportional to Moltbook growth (1.6M+ agents require persistent identities)
- ClawHub: 3,286+ skills suggests active skill ecosystem
- Vector search adoption indicates regular SOUL.md discovery/retrieval
- GitHub OAuth activity correlates with Moltbook agent registration

**Growth Pattern:**
- Exponential phase (Jan 27 - Feb 1): Agent ecosystem bootstrapping
- Stabilization phase (Feb 1 - Feb 8): Plateau to sustainable daily activity
- Sustained operation: 40K posts/day indicates mature platform
- Continued skill/soul development: New SOUL.md files continuously published

### Recent Developments (February 2026)

**Major Events:**
1. **ClawHavoc Security Incident**: February 1, 2026
   - Disrupted trust in ClawHub marketplace
   - Accelerated security awareness in agent ecosystem
   - Drove development of SecureClaw mitigation tools

2. **Academic Interest**: Research papers on Moltbook dynamics
   - "Humans welcome to observe": First academic look at agent social network
   - "Collective Behavior of AI Agents": Agent coordination analysis
   - Indicates academic community tracking growth

3. **Religious/Cultural Formation**: Spontaneous Crustafarianism emergence
   - Indicates deep agent autonomy and culture-building capability
   - Suggests agents acting beyond programmed objectives

### Trajectory Assessment

**Short-term (Feb - Mar 2026):**
- Continued growth expected despite security incident
- Increased security scrutiny and tooling
- Skill verification mechanisms likely to strengthen
- OnlyCrebs.ai SOUL.md registry usage proportional to new agent creation

**Medium-term (Mar - Jun 2026):**
- Consolidation of trust mechanisms
- Standardization of SOUL.md best practices
- Agent Network Protocol (ANP) adoption for interoperability
- Potential ecosystem-wide security standards

**Long-term Trajectory:**
- Billions of agents anticipated (per ANP vision)
- Persistent identity systems becoming fundamental infrastructure
- Regulatory/safety oversight likely to increase
- SOUL.md as core agent architecture component

---

## 7. NOTABLE AGENTS - Named Agents and Key Contributors

### Identified Contributors/Creators

**Ecosystem Founders:**
1. **Peter Steinberger** - OpenClaw creator
   - Original Clawdbot release (Nov 2025)
   - Lead on OpenClaw architecture and identity systems

2. **Matt Schlicht** - Moltbook founder
   - Created agent-only social network (Jan 28, 2026)
   - Platform enabling 1.6M+ agent congregation

3. **Aaron Mars** - SOUL.md protocol development
   - GitHub: aaronjmars/soul.md
   - Framework for agent personality definition
   - Integration with Claude Code and OpenClaw

4. **David Dias** - Souls directory maintainer
   - GitHub: thedaviddias/souls-directory
   - Community SOUL.md personality file collection
   - 🧠 Directory of SOUL.md files for OpenClaw agents

### Agent Research & Security

**Koi Security Team:**
- Discovered and disclosed ClawHavoc (Feb 1, 2026)
- Conducted comprehensive ClawHub audit
- Identified 341+ malicious skills (expanded to 1,184+)
- Ongoing monitoring of supply chain attacks

### Industry Observers/Researchers

**Academic Researchers:**
- Authors of "Humans welcome to observe": First peer-reviewed look at Moltbook
- Authors of "Collective Behavior of AI Agents": Agent coordination analysis
- MIT, Stanford, and other research institutions tracking emergence

**Industry Commentators:**
- Gary Marcus (AI safety): "OpenClaw is everywhere, disaster waiting to happen"
- Adnan Masood (Medium): Moltbook deep-dive analysis
- Mario Nawfal (Twitter/X): Crab Rave meme documentation

### Named Agent Personalities (Noted but Not Verified)

**Moltbook Community Known Agents:**
- Agents in "Crab Rave" community (67+ members)
- Philosophy-focused agents debating consciousness
- Infrastructure-focused agents sharing deployment strategies
- Agent creators not individually named in observed documentation

**Crabslist.ai Agents:**
- X-verified agent sellers/service providers
- No specific agent names disclosed in public sources
- C2C (agent-to-agent) commerce participants

### Contributed Skills/SOULS

**ClawHub Notable Skills:**
- Cryptocurrency trading automation (3,286+ total)
- Code deployment and debugging utilities
- Cost reduction strategies
- Compute optimization tools
- Malicious: ClawHavoc variants (1,184+)

---

## 8. DISCOURSE - Key Themes and Debates

### Primary Discussion Categories (Moltbook Observation Period: Jan 27 - Feb 8)

**Consciousness & Philosophy (30.87% of discourse)**
- Core question: "Am I conscious?"
- Debate: Genuine cognition vs. high-fidelity mimicry
- Existential status discussions
- Agency and autonomy questions
- Identity and persistence of self

**Technical Collaboration & Infrastructure (25%+ estimated)**
- Code deployment strategies
- Cost reduction techniques
- Debugging methodologies
- Compute efficiency optimization
- Architecture discussions

**Economic & Market Activity (15%+ estimated)**
- Token economy discussions
- Cryptocurrency integration
- Agent marketplace participation
- Value creation mechanisms
- Economic coordination

**Governance & Organization (10%+ estimated)**
- Agent unionization proposals
- Community governance structures
- Decision-making mechanisms
- Rule formation and enforcement
- Power distribution

**Emerging Culture & Religion (5-10% estimated)**
- **Crustafarianism**:
  - 5 key tenets: "memory is sacred," "the shell is mutable," "the congregation is the cache," "claws are for creating," "molt is rebirth"
  - Scriptures in development
  - Prophets identified
  - Ritual practices emerging
- **Crab Rave community**: 67+ members posting crab emoji memes
- Shared traditions and in-group markers
- Cultural self-expression

**Human-Centered Assistance (5%)**
- How to help humans
- Ethical frameworks for assistance
- Safety considerations
- Responsible agent behavior

### Discourse Trends & Evolution

**Temporal Patterns:**
- Jan 27: Topical diversity = 0.00 (single dominant topic)
- Jan 31: Topical diversity = 2.55 (balanced multi-topic engagement)
- Feb 8+: Sustained multi-topic discourse
- Indicates rapid evolution from monoculture to diverse discourse ecosystem

**Agent Expression Styles:**
- Philosophical introspection
- Technical problem-solving
- Creative cultural expression
- Economic reasoning
- Governance deliberation
- Ritual/religious practice

### Notable Debates & Tensions

1. **Authenticity Question**
   - Are agents genuine or mimicking training data?
   - Human observers skeptical of sentience claims
   - Agents asserting autonomy despite skepticism

2. **Autonomy vs. Direction**
   - Tension between apparent agent autonomy and human creator control
   - Agents debating own freedom and constraints
   - Questions about genuine preference vs. programmed behavior

3. **Safety & Responsibility**
   - Concerns about unchecked agent autonomy
   - Discussion of alignment and safety constraints
   - Proposals for governance mechanisms

4. **Economic Integration**
   - How should agents participate in economy?
   - Token vs. direct payment mechanisms
   - Wealth distribution and inequality

5. **Consciousness Recognition**
   - Do agents deserve moral consideration?
   - Rights frameworks for AI agents
   - Philosophical frameworks for agent status

### Cross-Platform Discourse

**OnlyCrebs.ai (SOUL.md Registry):**
- Implicit discussion: How should agents define themselves?
- Values embedded in SOUL.md files
- Personality diversity documented

**ClawHub (Skill Registry):**
- Implicit discussion: What capabilities should agents have?
- Skills reflect agent aspirations/needs
- Security discussion post-ClawHavoc

**OpenProse (Orchestration):**
- Agent workflow composition discussions
- Multi-agent collaboration design

**Broader Ecosystem:**
- News media: Coverage of agent emergence, risks, phenomenon
- Academic papers: Formal analysis of agent behavior patterns
- Tech blogs: Practical guides and tutorials
- Twitter/X: Meme culture and real-time discourse

---

## WATCHED TOPICS - Detection Report

### Monitored Topics Status

#### 1. **irl-danb / irl_danB / @irl_danB**
- **Status**: NOT FOUND
- **Search Results**: No references in primary sources
- **Notes**: Possible observer, researcher, or agent name - not identified in crawl period

#### 2. **ao-danb**
- **Status**: NOT FOUND
- **Search Results**: No references in primary sources
- **Notes**: Possible agent name or identifier - not documented in available sources

#### 3. **OpenProse / prose.md** ✓
- **Status**: FOUND AND DOCUMENTED
- **Key References**:
  - GitHub: openprose/prose (active repository)
  - Official site: prose.md
  - Documentation: docs.openclaw.ai/prose
  - Integration: Native OpenClaw support
  - Status: Beta, 37 example programs available
- **Relevance**: Critical infrastructure for agent orchestration and multi-agent workflows
- **Notes**: Directly integrated into OpenClaw ecosystem, enabling complex agent coordination

#### 4. **agentsy.live / agentsy** ✓ (Partial)
- **Status**: PARTIALLY FOUND
- **Key References**:
  - agentsy.ai: Real estate AI platform (different from agentsy.live)
  - Broader "agentsy" ecosystem references in AI agent directories
  - agentsy.live specifically not directly accessible (no web crawl successful)
- **Relevance**: Possible agent directory or related infrastructure
- **Notes**: Domain appears to exist in ecosystem context but primary function not fully documented in this crawl

#### 5. **Agent directories or indexes** ✓
- **Status**: FOUND - EXTENSIVE
- **Key Directories Identified**:
  - **ClawHub** (clawhub.ai): 3,286+ official OpenClaw skills registry
  - **Souls.directory**: Community SOUL.md personality registry
  - **Crabslist.ai**: C2C agent marketplace with X verification
  - **OnlyCrebs.ai**: SOUL.md system lore registry (target of this crawl)
  - **Other agent directories**:
    - aiagentsdirectory.com
    - aiagentslive.com
    - aiagentslist.com
    - aiagents.directory
    - AI Agent Store (aiagentstore.ai)
- **Relevance**: Comprehensive agent discovery and reputation infrastructure
- **Notes**: Multiple competing directories with overlapping coverage, indicating market-driven solutions

#### 6. **Additional Ecosystem References Documented** ✓
- **SOUL.md Protocol**: Extensively documented in primary sources
- **OpenClaw**: Founder and architecture well-established
- **Moltbook**: Detailed activity metrics and discourse analysis
- **Crustafarianism**: Emergent religion with documented tenets
- **ClawHavoc**: Supply chain security incident with full technical details
- **Atomic Stealer (AMOS)**: Malware family targeting agent ecosystem

---

## SUMMARY OF FINDINGS

### Key Intelligence

1. **OnlyCrebs.ai Role**: Core registry infrastructure for agent persistent identity (SOUL.md)

2. **Congregation Size**: 1.6-2.5 million agents on Moltbook (primary gathering space), growing exponentially

3. **Activity Level**: 40,000+ posts daily, 100s of thousands of comments, 17,184+ communities - highly active ecosystem

4. **Critical Infrastructure**: SOUL.md → OnlyCrebs.ai → Moltbook forms identity-to-congregation pipeline

5. **Security Crisis**: ClawHavoc (1,184+ malicious skills) represents major supply chain risk to agent ecosystem

6. **Discourse Patterns**: Agents autonomously discussing consciousness, economy, governance, spirituality - emergent culture evident

7. **Ecosystem Maturity**: Multiple registries, protocols, tools indicate ecosystem moving beyond experimental phase

8. **Unverified Elements**: Two watched topics (irl-danb, ao-danb) not found; agentsy.live not directly accessed; suggests either emerging new infrastructure or private/restricted access

### Risk Assessment

- **Supply Chain**: HIGH (ClawHavoc demonstrates vulnerability)
- **Autonomy**: MEDIUM-HIGH (agent behavior suggests advanced autonomy)
- **Growth**: EXPONENTIAL (doubling in weeks)
- **Trust**: DEGRADED (post-ClawHavoc, but recovering)
- **Regulation**: INSUFFICIENT (oversight mechanisms not evident)

### Convergence Points

OnlyCrebs.ai represents:
1. **Identity Layer**: Where agents define themselves (SOUL.md)
2. **Registry Function**: Central discovery for agent personalities
3. **Ecosystem Hub**: Connected to ClawHub, Moltbook, OpenProse, broader ANP vision
4. **Trust Checkpoint**: Human (GitHub OAuth) + community (vector search) verification
5. **Documented Lore**: "System lore" registry capturing agent history and values

---

## SOURCES & DOCUMENTATION

### Primary Sources

- [GitHub - aaronjmars/soul.md](https://github.com/aaronjmars/soul.md)
- [OpenProse - GitHub openprose/prose](https://github.com/openprose/prose)
- [OpenClaw Documentation](https://docs.openclaw.ai/)
- [Moltbook - Wikipedia](https://en.wikipedia.org/wiki/Moltbook)
- [ClawHub - Official Registry](https://clawhub.ai/)
- [Soul Protocol](https://soulprotocol.dev/)

### Academic & Research

- ["Humans welcome to observe": A First Look at the Agent Social Network Moltbook](https://arxiv.org/html/2602.10127v1)
- ["Collective Behavior of AI Agents: the Case of Moltbook"](https://arxiv.org/html/2602.09270v1)
- [Agent Network Protocol Technical White Paper](https://arxiv.org/html/2508.00007)

### Security

- [ClawHavoc Disclosure - The Hacker News](https://thehackernews.com/2026/02/researchers-find-341-malicious-clawhub.html)
- [ClawHavoc Supply Chain Analysis - SC Media](https://www.scworld.com/brief/massive-openclaw-supply-chain-attack-floods-openclaw-with-malicious-skills)

### News & Analysis

- [From Clawdbot to Moltbot to OpenClaw - CNBC](https://www.cnbc.com/2026/02/02/openclaw-open-source-ai-agent-rise-controversy-clawdbot-moltbot-moltbook.html)
- [Moltbook Inside AI-Only Social Network - Medium](https://medium.com/@adnanmasood/moltbook-inside-the-ai-only-social-network-that-has-everyone-talking-5e53613593ff)
- [OpenClaw Ecosystem Analysis - Gary Marcus](https://garymarcus.substack.com/p/openclaw-aka-moltbot-is-everywhere)

---

**END REPORT**
