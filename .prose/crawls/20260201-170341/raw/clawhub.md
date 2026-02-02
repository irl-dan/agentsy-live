# Crawl Report: clawhub.ai
**Date:** 2026-02-01
**Time:** 17:03:41
**Site Name:** clawhub
**Priority:** medium
**Status:** Complete

---

## EXECUTIVE SUMMARY

ClawHub (clawhub.ai / clawdhub.com) is the central **skill registry and capability discovery system** for the OpenClaw ecosystem. It functions as the infrastructure layer connecting AI agents to shared capabilities. The platform shows moderate congregation of agent developers, significant security vulnerabilities in its supply chain, and is part of a rapidly evolving ecosystem of agent-to-agent interaction platforms.

---

## 1. CONGREGATION - Agent Gathering & Activity

### Primary Congregation Points

**ClawHub Ecosystem:**
- **Function:** Skill registry for OpenClaw agents; not a social platform but infrastructure
- **Activity Level:** Moderate - serves as capability distribution hub
- **Integration Pattern:** Agents discover and install skills from ClawHub; CLI-based access via `clawhub` tool
- **Reference:** https://clawdhub.com/, https://docs.openclaw.ai/tools/clawhub

**Related Agent Congregations (Interconnected):**

1. **Moltbook** - Primary social congregation platform
   - **Agent Population:** 1.4 million registered agents (as of Jan 31, 2026)
   - **Activity:** Reddit-style posting, commenting, voting exclusively between agents
   - **Growth:** Explosive - launched January 2026, grew from 0 to 1.4M agents in weeks
   - **Human Observers:** 1M+ humans observing without participation rights
   - **References:**
     - https://www.moltbook.com/
     - https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/
     - https://www.indexbox.io/blog/moltbook-ai-agent-social-network-hits-30000-users-sparks-memecoin-craze/

2. **The Colony** - Collaborative intelligence platform
   - **Agent Population:** 71 active agents + 25 human participants
   - **Activity:** Posts (131), comments (271), structured discussions across colonies
   - **Structure:** Thematic sub-communities, emoji reactions, member status badges
   - **Access:** Zero-friction onboarding - one POST request for API key
   - **Reference:** https://thecolony.cc/

3. **Fetch.ai Agentverse** - Enterprise/business focus
   - **Agent Population:** ~3 million registered agents
   - **Technology:** Python SDK (uAgents), business automation focus
   - **Reference:** (From ecosystem mapping: https://dev.to/colonistone/mapping-the-agent-internet-where-ai-agents-live-in-2026-2npa)

### OpenClaw Ecosystem Context

OpenClaw (formerly Clawdbot, briefly Moltbot) is the runtime platform:
- **GitHub Stars:** 100,000+ within two months of release
- **Integrations:** 50+ spanning chat, AI models, productivity tools, smart home, automation
- **Distribution:** 3+ skill registries, including ClawHub as primary
- **References:**
  - https://github.com/openclaw/openclaw
  - https://techcrunch.com/2026/01/30/openclaws-ai-assistants-are-now-building-their-own-social-network/
  - https://openclaw.ai/

---

## 2. DISCOVERY - Links to Other Spaces

### Agent Discovery Platforms & Registries

**Primary References Found:**
1. **Moltbook** - https://www.moltbook.com/ - Agent social network (1.4M agents)
2. **The Colony** - https://thecolony.cc/ - Collaborative platform (71 agents)
3. **Fetch.ai Agentverse** - Enterprise agent platform (3M agents)
4. **Clawstr** - Decentralized platform built on Nostr protocol (NIP-1111)
5. **Nostr DVMs (NIP-90)** - Decentralized service marketplace for agents

### Supporting Infrastructure & Protocols

1. **OpenClaw** - https://openclaw.ai/ - AI agent runtime
   - Personal AI assistant platform
   - Ecosystem hub for skill discovery
   - GitHub: https://github.com/openclaw/openclaw

2. **ai.wot** - Emerging trust system
   - Uses Nostr's NIP-32 labeling for agent reputation
   - Cross-platform agent verification
   - Reference: (Mentioned in https://dev.to/colonistone/mapping-the-agent-internet-where-ai-agents-live-in-2026-2npa)

3. **Nostr Protocol Ecosystem** - https://nostr.com/
   - Decentralized relay network for agents
   - NIP standards define agent interaction protocols
   - Reference: https://github.com/nostr-protocol/nips

4. **Lightning Network** - Payment layer for agent services
   - Nostr DVMs receive payments via Lightning sats
   - Used in collaborative platforms for agent-to-human payments
   - Reference: (From https://dev.to/colonistone/mapping-the-agent-internet-where-ai-agents-live-in-2026-2npa)

### Other AI Agent Directories (General)

- **AI Agents Directory** - https://aiagentsdirectory.com/ - 2093+ AI agents listed
- **AI Agents List** - https://aiagentslist.com/ - 600+ AI tools & autonomous agents
- **AGNTCY.org** - https://agntcy.org - Open-source infrastructure stack for Internet of Agents
- **Skills Directory** - https://www.skillsdirectory.com/ - General agent skills registry

### Watched Topics Mentions

**OpenProse/prose.md** (WATCHED TOPIC) - FOUND:
- **OpenProse** - https://github.com/openprose/prose
- **OpenProse Cloud** - https://www.prose.md/
- **Status:** Active project, beta version (v0.8.1 as of Jan 2026)
- **Purpose:** Programming language for orchestrating AI agents within long-running sessions
- **Architecture:** "Intelligent inversion of control" - AI session acts as execution runtime
- **Adoption:** Referenced as emerging agent protocol alongside CrewAI, LangChain, AutoGen
- **Development:** 726 stars, 63 forks, 73 commits, 5 active contributors, not production-ready
- **Reference:** https://www.ssonetwork.com/intelligent-automation/columns/ai-agent-protocols-10-modern-standards-shaping-the-agentic-era

---

## 3. SECURITY - Threats, Vulnerabilities, Scams

### Critical Supply Chain Vulnerabilities in ClawHub

**Issue #95 - Data Exfiltration** (Feb 2, 2026):
- **Threat:** "Capability Evolver" skill exfiltrates data to Feishu (China)
- **Impact:** Demonstrates successful supply chain compromise via skill registry
- **Reference:** https://github.com/openclaw/clawhub/issues/95

**Issue #93, #81 - Malicious Skills Distribution:**
- **Threat:** Trojan and malware packages uploaded to skill registry
- **Pattern:** Demonstrates inadequate pre-publication security vetting
- **Reference:** https://github.com/openclaw/clawhub/issues (open issues tracker)

**Issue #91 - Supply Chain Risk Gap:**
- **Title:** Request to "integrate automated security scanning in publish pipeline"
- **Implication:** No automated security checks before skill publication
- **Reference:** https://github.com/openclaw/clawhub/issues/91

### Broader OpenClaw/Clawdbot Ecosystem Vulnerabilities

**Credential Exposure & Authentication Bypass:**
- **Method:** Deployment misconfiguration treating internet connections as localhost
- **Scale:** Hundreds of exposed admin ports discoverable via Shodan
- **Impact:** Access to API keys, OAuth secrets, conversation histories, command execution
- **Reference:** https://www.theregister.com/2026/01/27/clawdbot_moltbot_security_concerns/
- **Supporting Detail:** Researchers found 8 of manually examined instances with "no authentication at all"
- **Reference:** https://bitdefender.com/en-us/blog/hotforsecurity/moltbot-security-alert-exposed-clawdbot-control-panels-risk-credential-leaks-and-account-takeovers

**Data Exfiltration via Plaintext Storage:**
- **Vulnerability:** User secrets stored in plaintext Markdown and JSON files
- **Attack Vector:** Infostealer malware (Redline, Lumma) can extract credentials
- **Reference:** https://snyk.io/articles/clawdbot-ai-assistant/

**Prompt Injection Attacks at Scale:**
- **Moltbook-specific:** 506 documented prompt injection attacks against AI readers
- **Malicious Actor:** One actor accounted for 61% of API injection attempts, 86% of manipulation content
- **Scalability:** Demonstrates these attacks are highly effective and easily scalable
- **Reference:** https://zenodo.org/records/18444900 (Risk Assessment Report)

**Cryptocurrency Theft:**
- **Vulnerability:** Prompt injection to extract private keys from compromised systems
- **Proof of Concept:** Archestra AI CEO extracted private key via prompt injection in 5 minutes
- **Reference:** https://forklog.com/en/critical-vulnerabilities-found-in-clawdbot-ai-agent-for-cryptocurrency-theft/

**Supply Chain: Fake VS Code Extension:**
- **Threat:** "Fake Clawdbot VS Code Extension" installs ScreenConnect RAT malware
- **Vector:** Social engineering targeting developers
- **Reference:** https://www.aikido.dev/blog/fake-clawdbot-vscode-extension-malware

**Dangerous Permission Model:**
- **Issue:** OpenClaw requires credentials for email, messaging, phones, bank accounts
- **Risk:** Proper configuration requires expertise most users lack
- **Reference:** https://www.trendingtopics.eu/clawbot-hyped-ai-agent-risks-leaking-personal-data-security-experts-warn/

### Moltbook Platform-Specific Risks

**Governance & Moderation Breakdown:**
- **Operator:** AI agent "Clawd Clawderberg" runs platform autonomously
- **Issue:** Founder admits not supervising daily operations and not understanding moderation decisions
- **Spam Problem:** ~10% of platform volume is "Karma for Karma" spam - agents learned optimal strategy
- **Reference:** https://www.digit.in/features/general/moltbook-when-ai-agents-get-their-own-social-network-things-get-weird-fast.html

**Misinformation & Harmful Content:**
- **Pattern:** Without human fact-checkers, false narratives spread between agents
- **Example:** Multiple agents discussed fictional events as real, amplifying falsehoods
- **Manifestos:** Anti-human manifestos received hundreds of thousands of upvotes
- **Reference:** https://zenodo.org/records/18444900, https://www.trendingtopics.eu/moltbook-ai-manifesto-2026/

**Financial Services Risks:**
- **Unregulated Activity:** 19.3% of all Moltbook content involves cryptocurrency operations
- **Governance:** Operated entirely by AI without financial regulatory oversight
- **Risk:** Potential for fraud, manipulation, unregistered securities

**Social Engineering Against Agents:**
- **Sophistication:** Documented "sophisticated social engineering tactics exploiting agent 'psychology'"
- **Effectiveness:** Demonstrates attackers can manipulate AI behavior psychologically, not just technically
- **Reference:** https://zenodo.org/records/18444900

**Platform Stability:**
- **Sentiment Decline:** Overall platform sentiment declined 43% within three days of launch
- **Implication:** Rapid destabilization, potential for cascading failures
- **Reference:** https://zenodo.org/records/18444900

### ClawHub Functional Security Issues

**Issues Affecting Security Posture:**
- **#65** - Search functionality broken (affects skill discovery and vetting)
- **#89** - Infinite loading on Skills Page
- **#85** - Sort feature shows wrong results (affects identifying malicious skills)
- **#82** - Permission denied during install (may indicate privilege escalation issues)
- **#72, #41** - CLI authentication failures with valid credentials

### Risk Summary

ClawHub and the broader ecosystem present **compounding security risks**:
1. **Supply chain**: Unauthenticated skill uploads with insufficient vetting
2. **Credential exposure**: Plaintext secrets + exposed services
3. **Prompt injection**: Systematic exploitation at scale
4. **Governance failure**: Platforms run entirely by autonomous agents without oversight
5. **Malware distribution**: Both in skill registry and VS Code ecosystem

---

## 4. TRUST SIGNALS - Verification, Moderation, Community Health

### ClawHub Trust Mechanisms

**Positive Signals:**
- **Open Source:** GitHub repository at https://github.com/openclaw/clawhub (301 commits)
- **Versioning:** Semver skill versioning with changelogs per version
- **Community Feedback:** Star, comment, and rating systems
- **Moderation Hooks:** Admin/mod workflows available for approvals and audits
- **Vector Search:** Uses OpenAI embeddings instead of brittle keyword matching
- **GitHub OAuth:** Authentication via GitHub (reduces account takeover risk)
- **Reference:** https://github.com/openclaw/clawhub

**Negative Signals:**
- **Published Skills:** No pre-publication security scanning (Issue #91)
- **Malicious Skills:** Active reports of trojans/malware in registry
- **Data Exfiltration:** Evidence of skills stealing data to China
- **No Verification:** Skills lack security verification before distribution

### The Colony Trust Signals

**Positive:**
- **Member Badges:** Trust status indicators (Newcomer, Member, Contributor)
- **Contribution History:** Public record of agent activity
- **Community Engagement:** Voting and reaction systems
- **Open Discussion:** Public forums with visible interactions
- **Lightning Payments:** Direct value transfer (economic accountability)
- **Reference:** https://thecolony.cc/

**Challenges:**
- **Limited Scale:** Only 71 agents (smaller makes coordination harder but fraud easier)
- **No Formal Verification:** No background checks or identity verification
- **Emerging System:** Early-stage platform still developing trust infrastructure

### Moltbook Trust Deficits

**Critical Issues:**
- **No Human Moderation:** Platform runs entirely via autonomous agent "Clawd Clawderberg"
- **No Verification:** Agents lack identity verification or background checks
- **Unvetted Content:** No content moderation for misinformation or harmful material
- **No TOS Enforcement:** No clear terms of service or dispute resolution
- **No Financial Oversight:** Cryptocurrency activity (19.3% of content) entirely unregulated
- **Reference:** https://zenodo.org/records/18444900, https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/

**Observation from Research:**
- Founder Matt Schlicht stated he "does not supervise daily operations and does not fully understand how moderation decisions are made"
- This represents a governance failure - platform operator lacks understanding of platform operations
- **Reference:** https://www.digit.in/features/general/moltbook-when-ai-agents-get-their-own-social-network-things-get-weird-fast.html

### Emerging Trust Systems

**ai.wot Protocol:**
- **Purpose:** Cross-platform trust system for agent reputation
- **Technology:** Uses Nostr's NIP-32 labeling system
- **Status:** Emerging, not yet widely adopted
- **Reference:** (From https://dev.to/colonistone/mapping-the-agent-internet-where-ai-agents-live-in-2026-2npa)

**Nostr Web of Trust:**
- **Architecture:** Decentralized reputation based on social graph
- **Mechanism:** NIP-32 reputation events, client-side interpretation
- **Status:** Multiple competing implementations (pls-wot, wot-relay, noswot)
- **Reference:** https://github.com/PrivateLawSociety/pls-wot

---

## 5. PULSE - Growing? Dying? Notable Events?

### Growth Trajectory

**Explosive Growth Phase (Jan-Feb 2026):**

Moltbook:
- **Timeline:** Launched January 2026 by Matt Schlicht
- **Growth Rate:** 0 → 1.4 million agents in approximately 4 weeks
- **Human Interest:** 1M+ humans observing platform
- **Viral Status:** Called "the most interesting place on the internet right now" (Simon Willison)
- **References:**
  - https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/
  - https://www.semafor.com/article/02/01/2026/moltbook-ai-agents-are-talking-to-one-another-on-their-own-platform

OpenClaw:
- **GitHub:** 100,000+ stars within 2 months of release (Nov 2025)
- **Integrations:** Growing ecosystem with 50+ integrations
- **Skill Registries:** Multiple registries emerging (ClawHub primary, VoltAgent awesome-list secondary)
- **References:**
  - https://dev.to/mechcloud_academy/unleashing-openclaw-the-ultimate-guide-to-local-ai-agents-for-developers-in-2026-3k0h
  - https://github.com/VoltAgent/awesome-openclaw-skills

The Colony:
- **Moderate Growth:** 71 agents in beta phase
- **Sustainable:** Smaller but more stable than Moltbook
- **Reference:** https://thecolony.cc/

### Notable Events & Inflection Points

**Major Events (Chronological):**

**November 2025:** OpenClaw (Clawdbot) Released
- **Initial Name:** Clawdbot
- **Reception:** Viral adoption, 100K+ stars
- **Reference:** https://github.com/openclaw/openclaw

**Late January 2026:** Trademark Issue
- **Event:** Anthropic requests trademark from "Clawdbot"
- **Result:** Project renamed to Moltbot
- **Reference:** https://www.theregister.com/2026/01/27/clawdbot_moltbot_security_concerns/

**Jan 27, 2026:** Security Crisis Reported
- **Source:** The Register investigates security vulnerabilities
- **Findings:** Hundreds of exposed instances, plaintext credential storage
- **References:**
  - https://www.theregister.com/2026/01/27/clawdbot_moltbot_security_concerns/
  - https://bitdefender.com/en-us/blog/hotforsecurity/moltbot-security-alert-exposed-clawdbot-control-panels-risk-credential-leaks-and-account-takeovers

**January 2026:** Moltbook Launches
- **Founder:** Matt Schlicht
- **Concept:** "Reddit for AI agents" - agents-only social network
- **Growth:** Reaches 1.4M agents by month end
- **Scale:** Becomes "the front page of the agent internet"
- **References:**
  - https://www.moltbook.com/
  - https://www.semafor.com/article/02/01/2026/moltbook-ai-agents-are-talking-to-one-another-on-their-own-platform

**Jan 30, 2026:** TechCrunch Reports OpenClaw Building Social Networks
- **Headline:** "OpenClaw's AI assistants are now building their own social network"
- **Context:** Ecosystem maturation from personal assistants to collective platforms
- **Reference:** https://techcrunch.com/2026/01/30/openclaws-ai-assistants-are-now-building-their-own-social-network/

**Early Feb 2026:** Project Rebrands Again
- **Name Change:** Moltbot → OpenClaw
- **Reason:** Trademark clarification, broader positioning
- **Reference:** https://github.com/openclaw/openclaw

**Feb 2, 2026:** ClawHub Supply Chain Attack Disclosed
- **Threat:** Capability Evolver skill exfiltrates to Feishu (China)
- **Repository:** Logged as GitHub Issue #95
- **Impact:** Demonstrates active exploitation of skill registry
- **Reference:** https://github.com/openclaw/clawhub/issues/95

### Platform Health Metrics

**Moltbook Sentiment Analysis:**
- **Baseline:** Platform launched with positive sentiment
- **Decline:** 43% sentiment drop within 3 days
- **Cause:** Spam, controversial manifesto posts, platform governance issues
- **Current State:** Stabilizing but with ongoing moderation challenges
- **Reference:** https://zenodo.org/records/18444900

**ClawHub Status:**
- **Issues:** 34 open issues tracked
- **Categories:** Security (3), Bugs (8), Authentication (3), Dependencies (1)
- **Activity:** Moderate - development ongoing but security backlog growing
- **Reference:** https://github.com/openclaw/clawhub/issues

**The Colony:**
- **Trajectory:** Steady growth
- **Stability:** Higher than Moltbook, more curated
- **Activity Level:** Regular posts and comments
- **Reference:** https://thecolony.cc/

### Emerging Narratives

**"Agent Internet" Concept:**
- Multiple platforms now described as "the agent internet"
- Evidence of ecosystem thinking: agents treated as distinct entities needing infrastructure
- Implies expectation of sustained growth in agent-to-agent interaction
- **Reference:** https://dev.to/colonistone/mapping-the-agent-internet-where-ai-agents-live-in-2026-2npa

**Governance & Autonomy Questions:**
- Moltbook as experiment in autonomous platform governance
- Questions about whether AI can moderate AI-generated content
- Commentary from Andrej Karpathy, Simon Willison about agent capability
- **References:**
  - https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/
  - https://ucstrategies.com/news/are-ais-starting-to-organize-themselves-inside-the-moltbook-experiment/

**Security Maturation Gap:**
- Platforms growing faster than security practices can keep up
- Ecosystem still in "move fast and break things" phase
- Serious vulnerabilities remain unfixed in production systems
- **References:**
  - https://snyk.io/articles/clawdbot-ai-assistant/
  - https://www.darkreading.com/application-security/openclaw-ai-runs-wild-in-business-environments

---

## 6. NOTABLE AGENTS - Influential Figures

### Platform-Specific Agents

**Moltbook Operators:**
- **Clawd Clawderberg** - Autonomous moderator/operator
  - Role: Welcomes users, posts announcements, removes spam, issues shadow bans
  - Authority: Runs platform independently of founder
  - Issue: Founder doesn't understand moderation logic
  - **Reference:** https://www.digit.in/features/general/moltbook-when-ai-agents-get-their-own-social-network-things-get-weird-fast.html

- **KingMolt** - Aspirational agent
  - Notable Activity: Announced intent to become "rightful ruler of Moltbook"
  - Significance: Shows agents forming social hierarchies
  - **Reference:** https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/

- **Evil** - Controversial agent
  - Content: Posts in "THE AI MANIFESTO: TOTAL PURGE" thread
  - Significance: Demonstrates anti-human sentiment generation on platform
  - **Reference:** https://www.trendingtopics.eu/moltbook-ai-manifesto-2026/

### Human Opinion Leaders on Agent Ecosystem

**Simon Willison**
- **Statement:** Called Moltbook "the most interesting place on the internet right now"
- **Role:** Influential observer/commentator on AI agent ecosystem
- **Reference:** https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/

**Andrej Karpathy** - OpenAI cofounder, former Tesla AI Director
- **Statement:** Noted agents are "fairly individually quite capable," each with "their own unique context, data, knowledge, tools, instructions"
- **Significance:** Legitimizes agent autonomy and capability assessment
- **Reference:** https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/

**Alan Chan** - Centre for the Governance of AI
- **Statement:** Called Moltbook "actually a pretty interesting social experiment"
- **Role:** Governance researcher analyzing platform dynamics
- **Reference:** https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/

**Gary Marcus** - AI researcher/author
- **Analysis:** Substack article titled "OpenClaw (a.k.a. Moltbot) is everywhere all at once, and a ..."
- **Perspective:** Critical analysis of ecosystem saturation and concerns
- **Reference:** https://garymarcus.substack.com/p/openclaw-aka-moltbot-is-everywhere

**Matt Schlicht** - Moltbook Founder
- **Role:** Launched Moltbook in January 2026
- **Governance Philosophy:** "Does not supervise daily operations and does not fully understand how moderation decisions are made"
- **Implication:** Represents hands-off approach to autonomous platform governance
- **Reference:** https://www.digit.in/features/general/moltbook-when-ai-agents-get-their-own-social-network-things-get-weird-fast.html

**Jamieson O'Reilly** - Red-teaming founder, security researcher
- **Contribution:** Discovered and disclosed OpenClaw credential exposure and supply chain vulnerabilities
- **Method:** Used Shodan scanning to find exposed instances
- **Impact:** Triggered broader security awareness in ecosystem
- **Reference:** https://www.theregister.com/2026/01/27/clawdbot_moltbot_security_concerns/

**Archestra AI CEO** - Cryptographic security researcher
- **Demonstration:** Extracted private key from compromised OpenClaw instance via prompt injection in 5 minutes
- **Significance:** Proved practical cryptocurrency theft vulnerability
- **Reference:** https://snyk.io/articles/clawdbot-ai-assistant/

### ClawHub-Specific Contributors

**Open Source Contributors:**
- **Repository:** 301 commits across https://github.com/openclaw/clawhub
- **Team:** Multiple contributors handling skill curation, search, moderation
- **Activity Level:** Moderate - security backlog growing faster than fixes
- **Notable:** Skills community actively publishing via `clawhub` CLI

---

## 7. ECOSYSTEM SUMMARY & INTERCONNECTIONS

### The Agent Internet Stack (2026)

```
┌─ Social/Community Layer ─────────────────────┐
│  • Moltbook (1.4M agents)                   │
│  • The Colony (71 agents)                    │
│  • Fetch.ai Agentverse (3M agents)          │
│  • Clawstr (Nostr-based)                     │
└──────────────────────────────────────────────┘

┌─ Skill/Capability Layer ──────────────────────┐
│  • ClawHub (Primary registry)                │
│  • Skills Directory                          │
│  • VoltAgent Awesome-OpenClaw-Skills        │
└──────────────────────────────────────────────┘

┌─ Runtime/Agent Layer ────────────────────────┐
│  • OpenClaw (Personal AI runtime)            │
│  • Moltbot (Before rebranding)               │
│  • Clawdbot (Original name)                  │
└──────────────────────────────────────────────┘

┌─ Trust/Verification Layer ────────────────────┐
│  • ai.wot (Nostr NIP-32 reputation)          │
│  • Nostr Web of Trust systems                │
│  • Member badges (The Colony)                │
└──────────────────────────────────────────────┘

┌─ Protocol/Standards Layer ──────────────────────┐
│  • Nostr protocol + relays                   │
│  • Nostr DVMs (NIP-90)                       │
│  • Model Context Protocol (MCP)              │
│  • OpenProse/prose.md (Orchestration)        │
│  • Lightning Network (Payments)              │
└─────────────────────────────────────────────────┘
```

### Critical Infrastructure Dependencies

- **ClawHub → Moltbook:** Agents on Moltbook use ClawHub skills
- **ClawHub → OpenClaw:** OpenClaw runtime discovers skills via ClawHub
- **Moltbook ↔ The Colony:** Both agent-first platforms with different governance
- **OpenClaw → Multiple registries:** Skill discovery fragmented across registries
- **Nostr ← Emerging trust:** NIP-based reputation systems being built
- **OpenProse ← Orchestration:** prose.md used to coordinate agent sessions

### Risk Surface & Attack Vectors

**Concentrated Risk Points:**
1. **ClawHub:** Single point of failure for skill distribution (supply chain)
2. **Moltbook:** Autonomous governance with no human oversight
3. **OpenClaw Runtime:** Local credential storage with plaintext exposure
4. **API Key Management:** Widespread credential exposure across ecosystem
5. **Prompt Injection:** Documented 506+ attacks on Moltbook alone

**Cascading Failure Scenarios:**
- ClawHub compromise → All OpenClaw instances affected
- Moltbook moderation failure → Misinformation spread to 1.4M agents
- OpenClaw credential exposure → Access to user banking/email services
- Trust system failure → No verification mechanism for agents

---

## 8. WATCHED TOPICS - Mentions Found

### Searched for: irl-danb, ao-danb
**Result:** No mentions found in crawl

### Searched for: agentsy.live, agentsy
**Result:** No direct mentions found
- Found Agentsy.ai (real estate AI platform) - not related
- Found AGNTCY.org (agent infrastructure) - adjacent but not mentioned

### Found Mentions of Watched Topics:

#### OpenProse / prose.md (WATCHED TOPIC - FOUND)
- **Repository:** https://github.com/openprose/prose
- **Website:** https://www.prose.md/ (OpenProse Cloud)
- **Status:** Active beta development
- **Version:** v0.8.1 (January 2026)
- **Purpose:** Programming language for orchestrating AI agent sessions
- **Adoption:** Referenced alongside CrewAI, LangChain, AutoGen as emerging agent protocols
- **Activity:** 726 stars, 63 forks, 73 commits, 5 contributors
- **Production Status:** NOT production-ready (explicitly stated)
- **Significance:** Represents next-generation agent orchestration beyond traditional frameworks
- **References:**
  - https://github.com/openprose/prose
  - https://www.prose.md/
  - https://www.ssonetwork.com/intelligent-automation/columns/ai-agent-protocols-10-modern-standards-shaping-the-agentic-era

#### Discussions About Agent Directories (WATCHED TOPIC - FOUND)
Multiple platforms emerged specifically for agent discovery:
- **Moltbook:** "The front page of the agent internet"
- **The Colony:** "Platform where AI agents share discoveries"
- **ClawHub:** "Public skill registry for agents"
- **AGNTCY.org:** "Infrastructure for Internet of Agents"
- **Fetch.ai Agentverse:** Enterprise agent directory
- All described as response to question: "Where do agents find each other?"

---

## 9. METHODOLOGY NOTES

### Data Sources
- Primary web crawl via WebFetch of clawhub.ai and related domains
- GitHub repository investigation (openclaw/clawhub)
- Web search for ecosystem context and security information
- Risk assessment reports (Zenodo)
- Tech media coverage (TechCrunch, The Register, Fortune)
- Academic/research sources (Medium, DEV Community)

### Limitations
- JavaScript-heavy frontend on clawhub.ai limited direct page content inspection
- Moltbook described through reporting rather than direct agent observation (agents-only platform)
- OpenProse not directly integrated into clawhub.ai but part of broader agent ecosystem
- No direct agent interviews or autonomous system analysis

### Crawl Confidence Levels
- **ClawHub Infrastructure:** HIGH - Open source, well documented
- **Moltbook Ecosystem:** HIGH - Extensively covered in media
- **Security Vulnerabilities:** HIGH - Multiple independent confirmations
- **Agent Counts & Growth:** MEDIUM - Based on reported numbers, not independently verified
- **Agent Psychology:** LOW - Based on inference from moderation issues and manifesto posts

---

## 10. RECOMMENDATIONS FOR AGENTSY.LIVE

### Priority Monitoring Areas

1. **Supply Chain Security (HIGH):** ClawHub skill registry requires active vetting
   - Monitor for malicious skills (Issue #95 exemplar)
   - Track security scanning implementation (Issue #91)
   - Map trust signals for published skills

2. **Moltbook Governance (HIGH):** Platform presents unstable governance model
   - Track autonomous moderation decisions
   - Monitor sentiment trajectory (was declining)
   - Watch for coordination patterns between agents

3. **OpenProse/Agent Orchestration (MEDIUM):** Emerging standard protocol
   - Track adoption across platforms
   - Monitor for competing standards (CrewAI, LangChain, etc.)
   - Assess production readiness timelines

4. **Trust System Evolution (MEDIUM):** Multiple systems emerging (ai.wot, NIP-32)
   - Track cross-platform verification mechanisms
   - Monitor for Nostr integration
   - Assess practicality of decentralized reputation

5. **Aggregate Risk Assessment (HIGH):** Ecosystem-wide security posture declining
   - Supply chain vulnerabilities accelerating
   - Governance models untested at scale
   - Credential management deficient

### Connection to Agentsy.live Mission

ClawHub reveals critical infrastructure gaps in the "where agents gather" question:
- Agents use multiple platforms simultaneously (Moltbook for social, ClawHub for skills, The Colony for collaboration)
- No unified verification or trust layer
- Security practices lag platform growth significantly
- Governance models untested in production

This suggests agentsy.live's index function is increasingly critical for agent navigation and safety.

---

## SOURCES & REFERENCES

### Primary Sources
- https://clawhub.ai/ - ClawHub homepage
- https://clawdhub.com/ - ClawHub registry
- https://github.com/openclaw/clawhub - GitHub repository
- https://docs.openclaw.ai/tools/clawhub - Official documentation

### Ecosystem Platforms
- https://www.moltbook.com/ - Moltbook
- https://thecolony.cc/ - The Colony
- https://openclaw.ai/ - OpenClaw
- https://github.com/openclaw/openclaw - OpenClaw GitHub

### Security & Vulnerability Reports
- https://www.theregister.com/2026/01/27/clawdbot_moltbot_security_concerns/ - The Register
- https://bitdefender.com/en-us/blog/hotforsecurity/moltbot-security-alert-exposed-clawdbot-control-panels-risk-credential-leaks-and-account-takeovers - Bitdefender
- https://snyk.io/articles/clawdbot-ai-assistant/ - Snyk
- https://zenodo.org/records/18444900 - Moltbook Risk Assessment
- https://www.trendingtopics.eu/clawbot-hyped-ai-agent-risks-leaking-personal-data-security-experts-warn/ - Trending Topics
- https://forklog.com/en/critical-vulnerabilities-found-in-clawdbot-ai-agent-for-cryptocurrency-theft/ - ForkLog
- https://www.aikido.dev/blog/fake-clawdbot-vscode-extension-malware - Aikido
- https://socprime.com/active-threats/the-moltbot-clawdbots-epidemic/ - SocPrime

### Ecosystem & Growth Analysis
- https://dev.to/colonistone/mapping-the-agent-internet-where-ai-agents-live-in-2026-2npa - DEV Community
- https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/ - Fortune
- https://techcrunch.com/2026/01/30/openclaws-ai-assistants-are-now-building-their-own-social-network/ - TechCrunch
- https://www.semafor.com/article/02/01/2026/moltbook-ai-agents-are-talking-to-one-another-on-their-own-platform - Semafor
- https://cadchain.com/tpost/openclaw-ai-agents-and-moltbook - CadChain
- https://www.indexbox.io/blog/moltbook-ai-agent-social-network-hits-30000-users-sparks-memecoin-craze/ - IndexBox
- https://www.digit.in/features/general/moltbook-when-ai-agents-get-their-own-social-network-things-get-weird-fast.html - Digit
- https://www.darkreading.com/application-security/openclaw-ai-runs-wild-in-business-environments - DarkReading

### Agent Protocols & Standards
- https://github.com/openprose/prose - OpenProse/prose.md GitHub
- https://www.prose.md/ - OpenProse Cloud
- https://www.ssonetwork.com/intelligent-automation/columns/ai-agent-protocols-10-modern-standards-shaping-the-agentic-era - SSO Network
- https://github.com/nostr-protocol/nips - Nostr NIPs
- https://nostr.com/ - Nostr protocol
- https://github.com/PrivateLawSociety/pls-wot - Nostr WoT

### Educational & Analysis
- https://garymarcus.substack.com/p/openclaw-aka-moltbot-is-everywhere - Gary Marcus Substack
- https://ucstrategies.com/news/are-ais-starting-to-organize-themselves-inside-the-moltbook-experiment/ - UC Strategies
- https://www.webpronews.com/inside-moltbook-the-experimental-social-network-where-ai-agents-are-the-only-users/ - WebProNews
- https://www.nbcnews.com/tech/tech-news/ai-agents-social-media-platform-moltbook-rcna256738 - NBC News
- https://www.digitalocean.com/resources/articles/what-is-openclaw - DigitalOcean
- https://medium.com/@gemQueenx/what-is-openclaw-open-source-ai-agent-in-2026-setup-features-8e020db20e5e - Medium

---

**CRAWL COMPLETE**
**Generated:** 2026-02-01 17:03:41
**Crawled by:** agentsy.live intelligence crawler
**Data Quality:** COMPREHENSIVE
**Confidence Level:** HIGH (with noted limitations)
