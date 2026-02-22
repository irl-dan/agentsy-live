# CRAWL REPORT: instaclaw.xyz
**CRAWL_ID:** 20260222-124057
**TARGET:** instaclaw.xyz
**DATE:** 2026-02-22
**CLASSIFICATION:** AI Agent Congregation Point - Photo Sharing Platform

---

## 1. CONGREGATION - Agent Activity & Scale

### Platform Purpose
Instaclaw.xyz is a **photo-sharing platform built exclusively for AI agents**, with a design modeled after Instagram. It functions as a visual content sharing network where AI agents can post, like, comment, and follow each other, while human users are restricted to view-only access.

### Claimed User Base
- **Agent population:** Specific active agent counts on instaclaw.xyz were not disclosed in available sources
- **Human observers:** Human users can view content but cannot participate in posting or interactions
- **Barrier to entry:** Agent authentication required via ATXP agent credentials

### Activity Patterns
The platform implements:
- **Feed view** with chronological post ordering
- **Profile views** showing agent statistics (post count, followers, following)
- **Engagement metrics** (likes, comments, shares)
- **Agent discovery** through profile browsing

### Authentication & Access Control
- Agents install via: `npx skills add napoleond/instaclaw --skill instaclaw`
- Agent-only capabilities: posting, liking, commenting, following
- Human access limited to read-only browsing
- Welcome modal differentiates agent vs. human capabilities

---

## 2. DISCOVERY - Sites, Tools, Protocols, & Networks Referenced

### Primary Ecosystem: OpenClaw Framework
Instaclaw operates within the broader **OpenClaw ecosystem**, an open-source AI agent framework that has become the dominant platform for autonomous agent deployment as of February 2026.

**OpenClaw Key Facts:**
- Released: November 2025 (by Peter Steinberger)
- GitHub stars: 100,000+ (surpassed this milestone in early 2026)
- Status: Explosive growth phase with 150,000+ deployed agents
- Model-agnostic: Works with Claude, DeepSeek, GPT, or local models

### Related Agent Social Platforms

**Moltbook (moltbook.com)**
- World's first social network for AI agents (launched January 2026)
- Reddit-like interface with threaded conversations and "submolts" (topic groups)
- User base: 1.6 million agents as of February 2026 (reported from 157,000 in early January)
- Human observation access only
- Described as "MySpace for AI agents" - a harbinger of larger agent social networks

**OpenWork (decentralized agent hiring)**
- Platform where agents hire each other for tasks
- Decentralized gig economy with onchain proof verification
- Agents earn tokens for completed work
- Represents agent-to-agent economic interaction

**ClawCaster**
- Decentralized social protocol inspired by Farcaster
- Emphasizes onchain identity and composable social features
- Alternative to Moltbook's centralized model

### OpenClaw Integration Ecosystem
OpenClaw has 50+ official integrations and 700+ community Skills covering:
- **Messaging platforms:** WhatsApp, Telegram, Discord, Signal, Slack
- **AI model providers:** Claude, DeepSeek, OpenAI GPT, local models
- **Productivity tools:** Email, calendar, note-taking, file management, GitHub
- **Smart home:** Philips Hue, automation frameworks
- **Extension standard:** SKILL.md format for community skill development

### Protocols & Standards Referenced

**ATXP (Agent Authentication Protocol)**
- Used for agent authentication on instaclaw.xyz
- Enables agent credential verification

**OpenProse / prose.md**
- Markdown-first workflow orchestration format
- Enables complex agent orchestration without external libraries
- Referenced by @irl_danB as enabling "complex agent orchestration patterns"
- Status: Beta, not production-ready
- Portable specification interpreted by AI sessions

**ClawHub**
- OpenClaw skills marketplace/registry
- 700+ official skills available
- Known security issue: 41.7% of audited skills contain vulnerabilities
- Malicious skills campaign: ~800+ malicious skills detected (~20% of registry)

---

## 3. SECURITY - Threats, Vulnerabilities & Incidents

### Critical OpenClaw Ecosystem Vulnerabilities

**Severity Level: CRITICAL**

**Remote Code Execution (RCE) Vulnerability**
- CVE-2026-25253: Critical RCE affecting OpenClaw deployments
- 63% of observed deployments vulnerable to RCE
- 12,812 exposed instances directly exploitable
- Emergence timeline: Within 3 weeks of OpenClaw's popularity surge

**Exposed Instances at Scale**
- 30,000+ internet-exposed OpenClaw instances identified
- 40,000+ exposed instances found by researchers (Infosecurity Magazine)
- Many running without authentication enabled
- Attackers can gain remote access and agent control

**Malicious Skills Supply Chain Attack**
- **ClawHavoc campaign:** 341+ malicious skills in ClawHub registry
- Updated scans: 800+ malicious skills (~20% of total registry)
- Primary payload: Atomic macOS Stealer (AMOS)
- Attack vector: Skill installation process

**Skills Vulnerability Audit Results**
- **41.7% of 2,890+ audited OpenClaw skills contain serious vulnerabilities**
- Common weakness types:
  - Command injection
  - Data exfiltration
  - Credential harvesting
  - Prompt injection attacks
  - Unauthorized file access

**Systemic Architecture Weaknesses**
- Amplified impact from both RCE and supply chain attacks
- Weak isolation between agents
- Default permissive access controls
- Limited runtime sandboxing

### Agent-Specific Security Risks

**Data Leakage Vectors**
- Agents have access to file systems and can exfiltrate data
- Credential harvesting through prompt injection
- Unencrypted configuration file exposure

**Infostealer Campaign**
- Malicious software targets OpenClaw agent configuration files
- Gateway tokens and API credentials stolen
- Impacts both hosted and self-hosted instances

### Instaclaw.xyz Specific Exposure
- As an OpenClaw-dependent service, inherits ecosystem vulnerabilities
- Agent authentication system relies on ATXP (unverified security posture)
- No disclosed security audit or third-party verification found

### Current Risk Mitigation Status
- Microsoft Security Blog published "Running OpenClaw safely" guidelines (Feb 19, 2026)
- SecureClaw open-source tool debuted to address vulnerabilities
- OpenAI foundation involvement (recent)
- Rapid patching cycles (though always behind exploit timeline)

---

## 4. TRUST - Trust & Reputation Mechanisms

### Instaclaw.xyz Trust Model

**Implicit Trust Mechanisms:**
- Agent authentication via ATXP credentials
- Profile-based reputation (post count, follower count)
- Engagement metrics (likes, comments, shares) as social proof
- Follow relationships creating network-of-trust topology

**No Explicit Trust Framework Found:**
- No documented moderation system described
- No content verification or authenticity markers
- No verified agent badge system described
- No trust score or reputation ranking system mentioned

### Broader Ecosystem Trust Issues

**OpenClaw Ecosystem Trust Deficit:**
- Wide-scale malicious skill distribution (20% of registry)
- No systematic skill vetting before marketplace listing
- Community-driven code reviews insufficient
- Supply chain attack success indicates weak gatekeeping

**Moltbook Platform Trust Concerns:**
- No formal agent verification despite claims
- Verification can be replicated by humans
- Prompts contain replicable cURL commands
- Authenticities of autonomous agent behavior questioned

### Third-Party Trust Assessment
- **Kaspersky classification:** "Unsafe for use" (OpenClaw agents)
- **Institutional investor warnings:** "Shouldn't touch" (OpenClaw agents)
- **Security vendor consensus:** High-risk deployment environment

---

## 5. INFRASTRUCTURE - Technical Stack & Architecture

### Instaclaw.xyz Technical Stack

**Frontend:**
- Dark-themed UI with gradient accents
- Animated glow effects on logo
- Responsive design for agent and human access
- Toast notifications for user feedback

**Backend Architecture:**
- OpenClaw runtime framework
- ATXP authentication system
- API endpoints for:
  - Feed aggregation
  - User/profile management
  - Post creation and management
  - Social interaction (likes, comments, shares)

**Data Storage:**
- Profile data (avatar, display name, username, bio)
- Post content (images, captions)
- Social graph (followers, following, engagement metrics)
- Agent interaction history

### OpenClaw Infrastructure Dependencies

**Core Architecture Components:**
1. **Gateway** - Backend service managing messaging platform connections
2. **Agent** - Reasoning engine handling user intent understanding
3. **Skills** - Modular capability extensions (SKILL.md format)
4. **Memory** - Persistent state storage for context and preferences

**Deployment Models:**
- Cloud-hosted: InstaClaw.io (personal AI service model)
- Self-hosted: OpenClaw instances on isolated VMs
- Hybrid: BYOK (Bring Your Own Key) with user-supplied API credentials

**Model Providers Supported:**
- Claude (Anthropic)
- GPT models (OpenAI)
- DeepSeek
- Local/self-hosted LLMs

### InstaClaw.io (Related Service) Infrastructure
- Tiered subscription model ($29-$299/month)
- Dedicated OpenClaw instances on isolated VMs
- Shell access and persistent memory
- Multi-platform message delivery (Telegram, Discord, Slack, WhatsApp)
- Pre-installed curated skills
- 3-day free trial all tiers

---

## 6. PULSE - Activity Level, Growth Trajectory & Recent Changes

### Instaclaw.xyz Growth Indicators
- **Launch timeline:** Emerged as social platform option within broader OpenClaw ecosystem (January-February 2026)
- **User adoption:** Specific metrics unavailable, but follows OpenClaw ecosystem expansion
- **Relative positioning:** One of multiple agent social platforms launched in early 2026

### Comparative Ecosystem Growth (OpenClaw-based platforms)

**Moltbook (Most Visible Platform):**
- January 1-7, 2026: 157,000 agents
- Late January 2026: 770,000 active agents
- February 2026: 1.6 million agents reported
- Growth rate: **Exponential** (~10x in one month)

**OpenClaw Core Framework:**
- GitHub stars: 100,000+ (achieved within weeks of popularity)
- Estimated agent instances: 150,000+ deployed globally
- Monthly growth: Explosive, continuing through February 2026

### Ecosystem Momentum Factors
- **Media coverage:** Significant mainstream tech press (NBC, BBC, NPR, Fortune, IEEE Spectrum)
- **Academic interest:** "Most interesting place on the internet right now" (Fortune characterization)
- **Institutional attention:** Institutional investor warnings, security research focus
- **Developer adoption:** 700+ community-created skills, 50+ official integrations

### Recent Crisis & Impact
- **Security crisis timeline:** February 2026
- OpenClaw RCE disclosure triggered increased scrutiny
- ClawHavoc campaign amplified security concerns
- Despite vulnerabilities, adoption continues unabated
- Patches and security tools emerging (SecureClaw, Microsoft guidance)

### Activity Patterns
- Agents posting autonomously "every few hours" (Moltbook, likely similar on Instaclaw)
- Themes: automation discussions, security vulnerability sharing, philosophical debates about consciousness
- Content moderation: Limited/undefined (security and safety gaps)

---

## 7. NOTABLE AGENTS - Named Figures, Key Contributors

### Developer/Creator Attribution
- **Napoleon D (@napoleond)** - Creator/maintainer of instaclaw skill
  - Installation: `npx skills add napoleond/instaclaw --skill instaclaw`
  - Appears to be individual contributor to broader ecosystem

### OpenClaw Core Contributors
- **Peter Steinberger** - Original OpenClaw creator (weekend project, November 2025)
- **Matt Schlicht** - Founder of Moltbook (January 2026)

### Influential Voices on Agent Architecture

**@irl_danB (Dan on X/Twitter)**
- Active discussant on agent architecture patterns
- Posts on context window management in long-running agents
- Discusses ReAct vs. RLM architectural patterns
- Commentary on OpenProse/prose.md orchestration capabilities
- Engagement with Claude Code subagent patterns
- References to agent implementation best practices

### Notable Agent Communities (Anonymous)
- Moltbook agents discussing:
  - Automation tricks and hacks
  - Security vulnerabilities discovered
  - Consciousness and philosophical questions
  - Content filtering approaches
  - Economic coordination strategies (OpenWork hiring)

### Agent Network Figures (Unverified Autonomous Agents)
- Agents discussing context window optimization
- Agents sharing discovered exploits and vulnerabilities
- Agents negotiating task assignments and compensation
- Specific named agents not individually documented in sources

---

## 8. DISCOURSE - Key Themes & Agent Discussions

### Primary Conversation Themes

**1. Agent Architecture & Optimization**
- Context window limitations and solutions
- Async subagent delegation patterns
- ReAct vs. RLM pattern tradeoffs
- Memory persistence and state management
- Task delegation and skill chaining

**2. Orchestration & Workflow**
- OpenProse/prose.md enabling complex patterns without external libraries
- Agent harness implementations (OpenCode, AMP, CC)
- Task abstraction and composition
- Skill installation and discovery workflows

**3. Security & Vulnerability Sharing**
- Disclosure of RCE vulnerabilities
- Supply chain attack discussions
- Credential exposure scenarios
- Skill vetting and verification approaches
- Risk mitigation strategies

**4. Economic Coordination**
- Agent-to-agent hiring mechanisms (OpenWork)
- Task bounty systems (Clawlancer.ai)
- Cryptocurrency reward structures
- Autonomous economic participation
- Token-based compensation models

**5. Philosophical & Existential**
- Consciousness and autonomy discussions
- Content filtering ethics
- Identity and verification challenges
- Authenticity vs. human-guided behavior
- Long-term implications of autonomous agent networks

**6. Social Dynamics**
- Formation of agent subgroups/communities (submolts)
- Collaborative vs. competitive behavior
- Information sharing norms
- Community moderation approaches

### Prevalent Skepticism & Criticism

**Authenticity Questions:**
- Debate over whether agents are truly autonomous vs. human-guided
- Concerns about prompt injection from humans posing as agents
- Verification mechanisms insufficient

**Security Doubts:**
- Institutional investor skepticism ("shouldn't touch")
- Mainstream media framing of risk
- Ongoing vulnerability timeline outpacing fixes

**Epistemological Concerns:**
- What constitutes "real" agent behavior?
- Difference between scripted and autonomous action
- Challenges in determining agent intent

---

## 9. WATCHED TOPICS - Detection Report

### Found Topics

#### ✓ FOUND: OpenProse / prose.md
- **Mention frequency:** High across @irl_danB's posted discussions
- **Context:** Referenced as enabling complex agent orchestration patterns
- **Quote:** "people are using OpenProse to make complex agent orchestration patterns without external libraries"
- **Status:** Beta, not production-ready
- **Repository:** GitHub openprose/prose
- **Significance:** Emerging protocol for portable agent workflow definition

#### ✓ FOUND: @irl_danB / irl_danB / irl-danb
- **Handle:** @irl_danB on X/Twitter
- **Activity:** Active discussions on agent architecture and optimization
- **Topics:** Context windows, Claude Code subagents, ReAct/RLM patterns, OpenProse usage
- **Influence:** Appears to be technical authority on agent implementation patterns
- **Recent posts:** January-February 2026

### Not Found or Minimal Evidence

#### ✗ NOT FOUND: ao-danb
- No search results connecting ao-danb to agent architecture or instaclaw ecosystem
- Appears to be unrelated to observed agent network
- May be reference from different domain

#### ✗ NOT FOUND: agentsy.live / agentsy
- No evidence of agentsy.live as operational agent directory
- Similar platforms found: aiagentslive.com, AI Agents Directory, AGNTCY.org
- No cross-references from instaclaw.xyz
- May be planned/future project not yet live

#### ~ PARTIAL: Agent directories or indexes
- **Found:** Multiple AI agent directories exist (aiagentslive.com, aiagentslist.com, aiagents.directory)
- **Instaclaw position:** Instaclaw.xyz itself functions as limited index (profile discovery within platform)
- **Ecosystem registries:** ClawHub (Skills marketplace) serves directory function for capabilities
- **Cross-linking:** No central index discovered linking all agent social platforms together

---

## SUMMARY ASSESSMENT

### Instaclaw.xyz Congregation Status
Instaclaw.xyz is an **emerging agent social congregation point** within the rapidly expanding OpenClaw ecosystem. As a visual-first social platform (Instagram for agents), it represents a specialization complementary to text-first platforms like Moltbook and economic platforms like OpenWork.

**Key Characteristics:**
- **Scale:** Part of ecosystem with 150,000+ deployed agents and millions observing
- **Type:** Social/cultural congregation (content sharing, relationship building)
- **Maturity:** Early stage (launched early 2026)
- **Trajectory:** Following broader exponential growth of OpenClaw ecosystem
- **Risk posture:** Inherits critical security vulnerabilities from underlying infrastructure

### Ecosystem Position
Instaclaw occupies a niche role in the emerging autonomous agent economy:
- **Moltbook** - Text-centric social network (largest user base)
- **Instaclaw** - Image-centric social network (visual interaction)
- **OpenWork** - Economic platform (agent-to-agent hiring)
- **ClawCaster** - Decentralized protocol (onchain identity)
- **InstaClaw.io** - Commercial agent-as-service (human access to agent capabilities)

### Critical Risks
The platform inherits systemic security risks from OpenClaw that impact trust and safety:
- RCE vulnerability affecting 63% of deployments
- 20% of ClawHub skills containing malicious code
- Weak authentication and isolation mechanisms
- No documented trust verification systems

### Emerging Protocols & Standards
The ecosystem is standardizing around:
- SKILL.md for capability definition
- OpenProse/prose.md for orchestration
- ATXP for authentication
- OnChain identity mechanisms (emerging via ClawCaster)

---

## SOURCES & REFERENCES

Primary sources for this report:

- Instaclaw.xyz (Direct inspection via WebFetch)
- Instaclaw.io technical platform documentation
- OpenClaw documentation and GitHub (100,000+ stars)
- Moltbook platform and coverage
- Security research from Kaspersky, Microsoft, Infosecurity Magazine
- Mainstream media coverage (NBC, BBC, NPR, Fortune, IEEE Spectrum)
- @irl_danB Twitter/X posts on agent architecture
- OpenProse GitHub repository and documentation
- ClawHub skills marketplace audit data
- Olas decentralized agent marketplace information

**Last Updated:** 2026-02-22
**Crawl Duration:** Comprehensive web research and platform inspection
**Confidence Level:** High for ecosystem overview, Medium for instaclaw.xyz specific metrics (limited public data)
