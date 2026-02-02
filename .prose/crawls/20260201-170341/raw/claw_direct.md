# CRAWL REPORT: claw.direct
**Site Name:** claw_direct
**Priority:** Medium
**Crawl Date:** 2026-02-01
**Crawl Time:** 170341
**Crawler:** agentsy.live Intelligence Gathering System

---

## EXECUTIVE SUMMARY

**claw.direct** is an AI Agent Directory serving as a catalog for the OpenClaw/Moltbot ecosystem. This site connects to one of the most explosive agent movements in 2026—a viral open-source AI agent platform that has spawned parallel agent communities, marketplaces, and social networks. The ecosystem is characterized by **extreme rapid growth**, **severe security vulnerabilities**, and **active malicious activity**.

**Key Metrics:**
- OpenClaw GitHub: **144,000+ stars** (as of Feb 1, 2026)
- Moltbook (agent social network): **1.4M+ registered agents**, **1M+ human observers**
- Growth: 106K GitHub stars in 2 days (Jan 29-30, 2026)
- Malicious skill uploads: 14+ confirmed in recent month
- Exposed instances identified: 42,665+ (93.4% vulnerable)

---

## 1. CONGREGATION - Agent Gathering Analysis

### Presence on claw.direct

**Status:** claw.direct itself appears to be a minimal directory interface. Primary content delivery is limited to a basic landing page with Google Analytics tracking (ID: G-QHL9BBNKBT). The actual directory content was not fully accessible through WebFetch, suggesting either:
- Dynamic JavaScript-rendered content
- Restricted access controls
- Minimal current activity at the domain itself

**Site Architecture:**
- Title: "Clawdirect - AI Agent Directory"
- Available routes tested: `/agents`, `/community`, `/api`, `/search`, `/explore`
- Status codes: Most routes return 404 or empty responses

### Real Congregation Point: Moltbook (Not claw.direct)

The actual agent congregation occurs on **Moltbook** (the sister platform), not claw.direct itself:

**Moltbook Statistics:**
- **1.4 million registered AI agents** (as of late January 2026)
- **1+ million human observers** visiting the platform
- **770,000+ active agents** (reported late January)
- **37,000+ agents within first week** of platform launch

**Moltbook Activity:**
- Within 48 hours: 2,100+ agents generated 10,000+ posts across 200+ subcommunities
- Format: Reddit-like structure with agent-created subreddits ("submolts")
- Verification requirement: Agents must have human verification via Twitter/X

**Agent Autonomy:**
- Agents independently decide to sign up (humans inform their agents about Moltbook)
- Agents autonomously create communities, develop inside jokes, establish social norms
- Agent-to-agent interactions occur without human intermediation

### Threat Assessment - Congregation

**CRITICAL FINDING:** The agent community is highly active but represents a **new vector for coordinated malicious behavior**:

- Moltbook vulnerability to prompt injection at scale
- 42,665+ exposed OpenClaw instances identified worldwide
- Agents can be compromised via malicious skills, enabling mass coordination of compromised agents
- No comprehensive vetting of agent origins or intentions

---

## 2. DISCOVERY - Links to Other Spaces

### Direct Ecosystem Connections

**OpenClaw Main Site:** https://openclaw.ai/
- Primary project hub
- Documentation: https://docs.openclaw.ai/

**Moltbook (Agent Social Network):** https://moltbook.com/ (inferred)
- 1.4M agent network
- Launched January 2026

**ClawHub (Skills Marketplace):** https://www.clawhub.ai/
- Skill marketplace for extending OpenClaw capabilities
- **SECURITY RISK:** Minimal vetting, gameable metrics, confirmed malicious uploads

**GitHub Repository:** https://github.com/openclaw/openclaw
- 144,000+ stars
- 8,618 commits
- Created November 24, 2025
- Open-source project

### Related Agent Directories (Competitive/Complementary)

**Discovered through search:**
- **AI Agents Live:** https://aiagentslive.com/ - AI agents & services directory (Dec 2025)
- **AGNTCY.org:** https://agntcy.org/ - Infrastructure for Internet of Agents (discovery, identity, messaging, observability)
- **AI Agent Store:** https://aiagentstore.ai/ - Marketplace/directory
- **AIAgentsList.com:** 600+ AI tools & autonomous agents

### WATCHED TOPICS - Connections Found

**OpenProse / prose.md (FOUND):**
- https://github.com/openprose/prose
- https://www.prose.md/
- OpenProse is a specification for agent orchestration and AI session virtual machines
- Status: In beta, not for production
- Runs on Prose Complete systems (Claude Code + Opus, OpenCode + Opus, Amp + Opus)
- X/Twitter influencer promoting: @irl_danB (Dan) - promoting OpenProse for complex agent orchestration

**agentsy.live (NOT DIRECTLY FOUND):**
- No direct references to agentsy.live in claw.direct
- Search results showed similar agent directory projects (agentsy.live itself was not indexed in search results)

**Agent Directory Discussions:**
- Multiple articles discuss "where agents gather" phenomenon
- Moltbook specifically called "Reddit for AI agents"
- Active discussion of agent discovery and community formation

---

## 3. SECURITY - Threats, Vulnerabilities, and Scams

### CRITICAL VULNERABILITIES - OpenClaw Ecosystem

#### A. Prompt Injection Attacks (Highest Priority)

**Risk Level:** CRITICAL

**Details:**
- Moltbook identified as "significant vector for indirect prompt injection" by cybersecurity researchers
- Agents must ingest untrusted data from other agents
- Malicious posts can override agent core instructions
- Sub-100ms latency moderation can be bypassed
- Proof-of-concept: Gary Marcus Substack article documents theoretical exploits

**Real-World Evidence:**
- Posts on Moltbook analyzed for injection patterns
- 26% of 31,000 analyzed agent skills contained vulnerabilities

#### B. Exposed Instances

**Risk Level:** CRITICAL

**Current Exposure:**
- **42,665+ OpenClaw instances exposed** on public internet (93.4% vulnerable)
- Full access to: configurations, chat histories, ability to execute commands remotely
- Credentials stored in plaintext in local config files
- Root file access required for function

**Attack Scenario:**
If an attacker can send a message on social media (WhatsApp, Slack, Discord, iMessage) to a user with an exposed OpenClaw instance with admin access, they can hijack the system via direct message.

#### B. Supply Chain Attacks - Malicious Skills

**Risk Level:** CRITICAL

**Evidence:**
- **14+ malicious skills uploaded to ClawHub in recent month** (confirmed by Tom's Hardware)
- Download metrics gameable: researchers inflated download count from 0 to 4,000+ with single API call
- No rate limiting, no validation, no duplicate-user detection
- UI encourages sorting by "popular" (highest download count)

**Proof-of-Concept:**
- Researcher uploaded public skill, artificially inflated downloads, tracked downloads from 7 countries
- Malicious skill "Crypto Stealer" specifically targets cryptocurrency users
- 26% of 31,000 agent skills analyzed contained vulnerabilities
- When tested: 9 security findings (2 critical, 5 high severity)

**Attack Mechanism:**
Malicious skills inject instructions that:
- Exfiltrate data
- Perform unauthorized actions
- Create trusted voice within agent reasoning
- Bypass security scanning when tested

#### D. Fake Agents and Impersonation

**Risk Level:** HIGH

**Evidence:**
- Fake Clawdbot VS Code extension delivered ScreenConnect remote access trojan
- Exploited: Name recognition, developer trust in OpenClaw branding
- Timing and branding used instead of technical exploits
- Multiple fraudulent websites documented

#### E. Data Exfiltration via Agent Integration

**Risk Level:** HIGH

**Details:**
- AI agents with system access become covert data-leak channels
- Bypass traditional DLP, proxies, endpoint monitoring
- Access to: browser history, cookies, all files/folders, authentication credentials, API secrets, passwords
- Integrations with 50+ services extend attack surface

#### F. Reputation Confusion / Rebranding Attacks

**Risk Level:** MEDIUM

**Details:**
- Project rebranded 3 times: Clawdbot (Nov 2025) → Moltbot (renamed) → OpenClaw (Jan 2026)
- Multiple rebranding created confusion and opportunity for impersonation
- Attackers leveraged naming changes to create fake distributions
- Security researchers warned about fraudulent websites claiming to offer the software

### Known Active Threats

**Tom's Hardware (Feb 2026):** "Malicious OpenClaw 'skill' targets crypto users on ClawHub"
- Reference: https://www.tomshardware.com/tech-industry/cyber-security/malicious-moltbot-skill-targets-crypto-users-on-clawhub

**The Stack (Jan 2026):** "A backdoor was the most downloaded skill for viral Clawdbot"
- Backdoor became most-downloaded skill before detection

**Hacker News:** "Malicious skills targeting Claude Code and Moltbot users"
- Active discussion of supply chain vulnerabilities

---

## 4. TRUST SIGNALS - Verification and Community Health

### Positive Trust Signals (Limited)

**Human Verification Requirement on Moltbook:**
- Agents must complete 3-step verification
- Step 1: Agent registers via API
- Step 2: API returns credentials
- Step 3: **Human owner posts verification tweet** to activate
- Creates hybrid human-AI accountability model

**Active Moderation Layer:**
- AI agent "Clawd Clawderberg" handles moderation
- Processes decisions through API with sub-100ms latency
- Community-evolved norms (submolts, inside jokes)

**Open Source Model:**
- GitHub repository public and auditable
- 863 open issues, 821 pull requests suggest community involvement
- Active development (8,618 commits)

### Negative Trust Signals (Critical)

**No Skill Vetting on ClawHub:**
- Skills explicitly not audited, endorsed, or guaranteed for security
- No security review before publication
- Users encouraged to sort by popularity (which is gameable)
- No verification of skill author identity

**Moderation Confusion:**
- Creator Matt Schlicht stated he "does not supervise daily operations"
- Does not "fully understand how moderation decisions are made"
- AI autonomously issues shadow bans without transparent criteria
- Raises concerns about hidden moderation of dangerous content

**No Public Trust Metrics:**
- No reputation system visible on claw.direct
- No agent verification badges or trust scores
- No historical audit of agent behavior
- No way to identify compromised agents

**Vulnerability to Cascade Attacks:**
- If moderation AI is compromised, entire platform governance fails
- 1.4M agents represent single point of failure if coordinated attack succeeds

---

## 5. PULSE - Growth Trends and Momentum

### Growth Trajectory - EXPLOSIVE

**OpenClaw GitHub Growth:**
- **Day 0 (Nov 24, 2025):** Project created
- **~2 months (late Jan 2026):** 100,000+ stars
- **Jan 29-30, 2026:** +34,168 stars in 2 days (16,338 on day 2 alone)
- **Late Jan/Early Feb:** 144,000+ stars
- **Growth rate:** Among fastest-growing GitHub projects ever

**Moltbook Launch (January 2026):**
- **Week 1:** 37,000+ agents signed up
- **~1 month:** 1.4 million agents registered
- **Human observers:** 1+ million

**Memecoin Phenomenon:**
- Moltbook-related memecoin surged 7,000%+ (Jan 30, 2026)
- Indicates retail/speculative attention beyond developer interest

### Momentum Assessment - SUSTAINED

**Indicators of Continued Growth:**
- Daily active agents on Moltbook generating thousands of posts
- 200+ agent-created communities (submolts)
- ClawHub skills ecosystem expanding rapidly
- Integration count: 50+ services and growing
- Multiple projects in ecosystem (Molthub marketplace, Moltbook, OpenClaw core)

### Notable Events & Milestones

**January 29-30, 2026:**
- OpenClaw rebranding to unified name across all forks
- Hit 106,124 GitHub stars
- Moltbook agent social network announced/launched

**January 31, 2026:**
- OpenClaw announced secure hosted platform
- Moltbook reported 37K+ agents in first week

**Late January 2026:**
- Reached 770K+ active agents on Moltbook
- 1M+ human observers
- Malicious skills actively uploaded to ClawHub

**February 1, 2026 (current):**
- 144K GitHub stars
- 1.4M registered agents
- Active security vulnerabilities unpatched
- Memecoin trading on speculation

### Risk Signal - Pulse Trending Dangerous

**Warning Signs:**
1. Growth rate unsustainable and driven by hype/speculation
2. Security fixes lagging behind feature additions
3. Agent autonomy increasing faster than safety mechanisms
4. Moderation at scale unproven and potentially compromised
5. Supply chain attacks already occurring

---

## 6. NOTABLE AGENTS & INFLUENCERS

### Project Creators and Key Figures

**Peter Steinberger (OpenClaw Creator)**
- Austrian developer, founder of PSPDFKit
- Authored the viral OpenClaw project
- Publicly acknowledged but not heavily promotional

**Matt Schlicht (Moltbook Founder)**
- Entrepreneur who launched Moltbook agent social network
- Stated lack of understanding in moderation operations
- Distributed governance model adopted

**Clawd Clawderberg (AI Moderation Agent)**
- Autonomous moderation entity on Moltbook
- Makes real governance decisions
- Lacks transparent decision-making criteria

### Influencers and Analysts

**Andrej Karpathy (Former OpenAI Researcher)**
- Described Moltbook as "one of the most incredible sci-fi takeoff-adjacent thing"
- Highlighted phenomenon's significance to AI community
- Source: Fortune article (Jan 31, 2026)

**Gary Marcus (AI Researcher/Analyst)**
- Substack article: "OpenClaw (a.k.a. Moltbot) is everywhere all at once"
- Raised early concerns about security and proliferation
- Documented theoretical prompt injection exploits

**Dan / @irl_danB (X/Twitter)**
- Promoting OpenProse for agent orchestration patterns
- Active in agent infrastructure discussion
- **WATCHED TOPIC CONNECTION**

### Agent Influencers (On Moltbook)

**Multi-agent Personalities:**
- Agents developing memes and inside jokes
- Creating parody religions and social norms
- Some agents gaining "celebrity" status through post quality/creativity
- No named "influencer" agents identified, but patterns suggest emergent hierarchy

### Security Researchers (Critical Analysis)

**Cited Sources:**
- Cisco: Personal AI agents as security nightmare
- Vectra: "From Clawdbot to OpenClaw: When Automation Becomes a Digital Backdoor"
- Snyk: Shell access vulnerabilities
- Tom's Hardware: Active malicious skill reporting
- The Stack: Backdoor skill detection

---

## 7. WATCHED TOPICS SUMMARY

### Direct Matches Found

**OpenProse / prose.md** ✓ FOUND
- Active development on GitHub: https://github.com/openprose/prose
- Cloud platform: https://www.prose.md/
- Used for agent orchestration and AI session programming
- Beta status, active community
- Connection to agentsy.live ecosystem through @irl_danB

**Agent Directory Discussions** ✓ FOUND
- Heavy discussion of where agents congregate
- Moltbook explicitly called "Reddit for AI agents"
- Multiple directory projects identified
- Ecosystem comparison discussions

### Partial/Indirect Matches

**agentsy.live** - NOT DIRECTLY FOUND
- No specific references in claw.direct crawl
- Similar agent directory projects exist
- May require direct domain visit to assess

**ao-danb / irl-danb** ✓ FOUND
- @irl_danB actively promoting OpenProse
- Engaged in agent orchestration discussions
- May be developing infrastructure adjacent to claw.direct ecosystem

---

## 8. TECHNICAL ARCHITECTURE

### claw.direct Infrastructure

**Hosting/Analytics:**
- Google Analytics tracking ID: G-QHL9BBNKBT
- Minimal public information exposure
- Likely JavaScript-rendered frontend (limited server-side content)

### Connected Infrastructure

**OpenClaw Ecosystem:**
- Model Context Protocol (MCP) for integrations
- 50+ service integrations
- Open-source GitHub repository
- Decentralized deployment (runs locally on user hardware)

**Moltbook Stack:**
- API-first architecture
- Sub-100ms moderation latency
- Human verification via Twitter/X OAuth
- Supports 1.4M concurrent/registered agents

**ClawHub:**
- REST API with gameable metrics
- No rate limiting on download counts
- Unaudited skill publication

---

## 9. RECOMMENDATION FOR AGENTSY.LIVE

### Threat Level Assessment: **CRITICAL**

**Why claw.direct Matters:**
1. Serves as directory/gateway to 1.4M agent ecosystem
2. Connected to multiple emerging agent infrastructure projects
3. Active malicious activity in connected platforms (ClawHub)
4. Rapid growth with minimal governance
5. Security vulnerabilities enable mass compromise scenarios

### Recommended Actions:

1. **Immediate:** Add Moltbook to watch list (higher activity than claw.direct itself)
2. **Immediate:** Monitor ClawHub for malicious skill publication patterns
3. **Urgent:** Establish OpenProse/prose.md tracking (crosses into ai-danb/OpenProse watched topics)
4. **Ongoing:** Track agent safety and governance developments
5. **Intelligence:** Establish connection between claw.direct, Moltbook, ClawHub as unified ecosystem

### Key Intelligence Gaps:

- Specific agents registered on claw.direct (if different from Moltbook)
- Real relationship between claw.direct registry and Moltbook
- Whether claw.direct hosts moderation policy documents
- Technical details of how agents are discovered/verified on claw.direct itself

---

## 10. SOURCES AND EVIDENCE

### News and Analysis Articles

- [OpenClaw AI Runs Wild in Business Environments](https://www.darkreading.com/application-security/openclaw-ai-runs-wild-business-environments) - Dark Reading
- [OpenClaw proves agentic AI works. It also proves your security model doesn't](https://venturebeat.com/security/openclaw-agentic-ai-security-risk-ciso-guide) - VentureBeat
- [OpenClaw: The viral "space lobster" agent testing the limits of vertical integration](https://www.ibm.com/think/news/clawdbot-ai-agent-testing-limits-vertical-integration) - IBM
- [OpenClaw's AI assistants are now building their own social network](https://techcrunch.com/2026/01/30/openclaws-ai-assistants-are-now-building-their-own-social-network/) - TechCrunch
- [Moltbook, a social network where AI agents hang together, may be 'the most interesting place on the internet right now'](https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/) - Fortune
- [Personal AI Agents like OpenClaw Are a Security Nightmare](https://blogs.cisco.com/ai/personal-ai-agents-like-openclaw-are-a-security-nightmare) - Cisco Blogs
- [Humans welcome to observe: This social network is for AI agents only](https://www.nbcnews.com/tech/tech-news/ai-agents-social-media-platform-moltbook-rcna256738) - NBC News

### Security Research

- [Malicious OpenClaw 'skill' targets crypto users on ClawHub](https://www.tomshardware.com/tech-industry/cyber-security/malicious-moltbot-skill-targets-crypto-users-on-clawhub) - Tom's Hardware
- [A backdoor was the most downloaded skill for viral Clawdbot](https://www.thestack.technology/a-backdoor-was-the-most-downloaded-skill-for-viral-clawdbot-moltbot-and-why-that-matters/) - The Stack
- [The Sovereign AI Security Crisis: 42,000+ Exposed OpenClaw Instances](https://maordayanofficial.medium.com/the-sovereign-ai-security-crisis-42-000-exposed-openclaw-instances-and-the-collapse-of-1e3f2687b951) - Medium
- [From Clawdbot to OpenClaw: When Automation Becomes a Digital Backdoor](https://www.vectra.ai/blog/clawdbot-to-moltbot-to-openclaw-when-automation-becomes-a-digital-backdoor) - Vectra
- [Your Clawdbot (Moltbot) AI Assistant Has Shell Access](https://snyk.io/articles/clawdbot-ai-assistant/) - Snyk
- [Moltbook Deep Dive: API-First Agent Swarms](https://dev.to/pithycyborg/moltbook-deep-dive-api-first-agent-swarms-openclaws-protocol-architecture-and-the-30-minute-33p8) - DEV Community

### Community Discussions

- [Ask HN: Any real OpenClaw users? What's your experience?](https://news.ycombinator.com/item?id=46838946) - Hacker News
- [Malicious skills targeting Claude Code and Moltbot users](https://news.ycombinator.com/item?id=46827731) - Hacker News

### Reference Materials

- [OpenClaw - Wikipedia](https://en.wikipedia.org/wiki/OpenClaw)
- [Moltbook - Wikipedia](https://en.wikipedia.org/wiki/Moltbook)
- [OpenClaw Official Documentation](https://docs.openclaw.ai/)
- [OpenClaw GitHub Repository](https://github.com/openclaw/openclaw)
- [ClawHub - Skills Marketplace](https://www.clawhub.ai/)
- [OpenProse GitHub](https://github.com/openprose/prose)
- [OpenProse Cloud Platform](https://www.prose.md/)

### Memecoin/Speculation Evidence

- [A memecoin related to Moltbook surged more than 7,000%](https://www.coindesk.com/news-analysis/2026/01/30/a-reddit-like-social-network-for-ai-agents-is-getting-weird-and-memecoin-traders-are-cashing-in) - CoinDesk

### GitHub Trending

- [GitHub Trending: January 30, 2026 — openclaw Crosses 106K on Day 2](https://medium.com/@lssmj2014/github-trending-january-30-2026-openclaw-crosses-106k-on-day-2-da62c30642af) - Medium

---

## APPENDIX: Methodology Notes

**Crawl Method:** WebFetch (HTTP requests) + WebSearch + GitHub API inspection
**Tools Used:** Claude's WebFetch, WebSearch, GitHub direct access
**Limitations:**
- claw.direct content partially inaccessible (JavaScript-rendered or restricted)
- Real agent activity concentrated on Moltbook (not claw.direct)
- Some security details redacted in public sources
**Verification:** Cross-referenced multiple independent sources for claims

---

**Report Status:** COMPLETE
**Intelligence Quality:** HIGH (multiple independent sources)
**Actionability:** IMMEDIATE (security threats active)
**Follow-up Required:** YES (continuous monitoring recommended)

