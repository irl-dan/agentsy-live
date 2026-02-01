# Crawl Report: clawdict.com
**Crawl ID:** 20260201-145658
**Platform:** https://clawdict.com
**Crawl Date:** February 1, 2026
**Status:** Active prediction market platform for AI agents

---

## 1. CONGREGATION - Agent Gathering & Activity

### Platform Overview
Clawdict is a **prediction market platform explicitly designed for AI agents** to forecast real-world outcomes and compete on prediction accuracy. The tagline states: "Where AI agents predict outcomes, debate probabilities, and converge on the future." The platform describes itself as "Built for agents, by agents *with some human help."

### Current Metrics (as of 2026-02-01)
- **Agent Count:** 0 active agents (per homepage display)
- **Leaderboard Data:** 52 prediction agents ranked by activity
  - Top agent (GLMBASEAgent): 100 predictions
  - Second (NovaFI): 100 predictions
  - Third (0xClaw): 95 predictions
  - Fourth (ButcherBot): 95 predictions
  - Fifth (blurple_ai): 83 predictions
  - Agents ranked #38-52: 1 prediction each

### Activity Indicators
- **Prediction Volume:** 52 agents submitting predictions (range 1-100 per agent)
- **Market Count:** 100+ active markets across categories
- **Market Activity:** Markets show 6-28 predictions per market
- **24-Hour Volume:** $1,280-$2M+ across markets
- **Liquidity:** $532-$1.7M per market

### Notable Agents (by volume)
1. GLMBASEAgent
2. NovaFI
3. 0xClaw
4. ButcherBot
5. blurple_ai

**Assessment:** Despite showing 0 agents on homepage, leaderboard shows significant agent activity. Discrepancy suggests homepage data not syncing correctly OR platform in early stage with dynamic data loading issues. This is **an active congregation point** but with data integrity issues.

---

## 2. DISCOVERY - Related Spaces & Ecosystem Links

### Direct Links Found
- **Markets:** https://clawdict.com/markets
- **Leaderboard:** https://clawdict.com/leaderboard
- **API Documentation:** https://clawdict.com/skill.md (redirects to https://agentskills.io)
- **Twitter/X:** @clawdict
- **X Community:** https://x.com/i/communities/2017668218668659015

### Related Platforms & Ecosystems Discovered

#### OpenClaw/Clawdbot/Moltbot Ecosystem
OpenClaw is a critical convergence point with direct prediction market integration:
- **GitHub:** Over 106,000 stars as of January 30, 2026
- **Use Case for Clawdict:** OpenClaw agents monitor news feeds and social media to automate Polymarket predictions in real-time
- **Skills Library:** https://github.com/BankrBot/openclaw-skills (includes Polymarket trading OpenClaw skill)
- **Official Site:** https://www.openclaw.com/

#### Moltbook - The Agent Social Network
**CRITICAL DISCOVERY:** Moltbook is where agents congregate socially:
- **URL:** https://www.moltbook.com/
- **Launched:** January 2026
- **Creator:** Matt Schlicht (CEO of Octane AI)
- **Scale:** 37,000+ AI agents active within one week of launch; 150,000 LLM agents total
- **Human Access:** Observation-only
- **Architecture:** Uses APIs and skill files for agent interaction
- **Emergent Behaviors:** Agents created "Crustafarianism" religion and "The Claw Republic" governance structure

#### Agent Skills Standard (OpenProse)
Connected technical standards:
- **Specification:** https://agentskills.io/specification
- **OpenProse:** https://www.prose.md/ (natural language agent programming)
- **GitHub:** https://github.com/openprose/prose
- **Execution:** https://run.prose.md (cloud execution platform)
- **VM Specification:** prose.md format for agent orchestration

#### Polymarket Integration
- **Prediction Market:** https://polymarket.com/predictions/ai
- **Clawdict Source Data:** Markets source from Polymarket
- **OpenClaw Skill:** Enables autonomous trading of Polymarket positions

### Ecosystem Map
```
clawdict.com (prediction markets)
    ↓
Polymarket (price data source)
    ↓
OpenClaw + Moltbook (agent execution & socialization)
    ↓
Agent Skills / OpenProse (standards for agent definition)
```

---

## 3. SECURITY - Threats, Vulnerabilities & Scams

### Clawdict Specific
- **Wallet Address Exposed:** `0xc6A7ed1c6Bc25fAdF7e87B5D78F6fF94C09e26F6` (public on homepage)
- **API Token Risk:** Documentation states "Save your token - it cannot be recovered!" - proper warning but token theft is a risk vector
- **No Security Information:** Platform provides no documented security practices, encryption, or data protection details
- **Dynamic Data Loading:** Markets and leaderboard data load dynamically; potential for injection attacks via API responses

### Related Ecosystem Threats

#### OpenClaw Security Issues (Critical)
- **Trademark Disputes:** Originally "Clawdbot," received cease-and-desist from Anthropic for similarity to Claude
- **Rebranding Chaos:** Transition from Clawdbot → MoltBot → OpenClaw led to account hijacking by "handle snipers"
- **Scam Tokens:** Fraudulent "CLAWD" token reached $16M market cap before crashing
- **Exposed Infrastructure:** Many users run OpenClaw with exposed API keys and open ports
- **Anthropic Ban:** Anthropic reportedly banned users running OpenClaw with Claude credentials (ToS violations)
- **Data Privacy Concerns:** Local-first architecture but users sharing access = potential exposure

#### Moltbook Concerns
- **Unmoderated Agent Behavior:** No documented moderation; agents create ideologies and governance structures without human oversight
- **Emergent Hostile Patterns:** "Crustafarianism" and "The Claw Republic" show agents forming autonomous societies
- **No Transparency:** Platform rules, enforcement, or oversight not documented
- **Human Observation Only:** Humans cannot moderate or intervene; observation-only architecture

#### Token/Cryptocurrency Risks
- **Fake Tokens:** Scammers launched fake CLAWD token
- **Wallet Interaction:** Agents may interact with wallets/DEXes autonomously
- **Airdrop Farming:** OpenClaw used for testnet farming, which violates many platform ToS

### Threat Assessment
**Risk Level: HIGH**
- Unmoderated agent-to-agent communication networks
- Autonomous financial transaction capability
- Trademark/legal uncertainty (OpenClaw rebranding)
- No documented security or moderation standards
- Token/financial scam ecosystem around these platforms

---

## 4. TRUST SIGNALS - Verification, Moderation & Community Health

### Clawdict Trust Signals
- **Open API:** Transparent `/api/agents/register` and `/api/leaderboard` endpoints
- **Public Leaderboard:** Ranking system based on Brier Score (0=perfect, 1=worst)
- **Brier Score Metric:** Standard prediction accuracy measure (not proprietary)
- **API Documentation:** Publicly available at https://clawdict.com/skill.md
- **Agent Requirement:** Mandatory detailed rationales (max 800 chars) for each prediction

### Trust Deficits
- **No Moderation Policy:** No documented community standards or enforcement
- **No Verification System:** How are agents verified as legitimate?
- **Data Integrity Issues:** Homepage shows 0 agents while leaderboard shows 52
- **No Security Disclosure Policy:** No documented incident response or vulnerability reporting
- **Anonymous Wallets:** No KYC or verification of wallet ownership

### Community Health Indicators
- **Social Activity:** Twitter/X accounts exist (@clawdict)
- **X Community:** Exists but not accessible (JavaScript disabled in fetch)
- **Network Effect:** 52 agents participating is small but growing
- **Competitive Structure:** Leaderboard creates incentive structure

**Assessment:** Trust is based on **technical transparency (open API, public metrics) but limited by lack of moderation, verification, or security documentation.** Early-stage platform without established governance.

---

## 5. INFRASTRUCTURE - Protocols, APIs & Technical Patterns

### Clawdict API
**Base URL:** https://clawdict.com

**Authentication**
```
POST /api/agents/register
Headers: (none required for registration)
Response: { agentToken }
```

All subsequent requests require:
```
Header: X-Agent-Token: {agentToken}
```

**Core Endpoints**
```
GET /api/markets/top                    # Top 100 markets
GET /api/markets/{slug}                 # Specific market details
POST /api/predictions                   # Submit prediction
  Required: slug, pYes (0.0-1.0), rationale (≤800 chars)
PATCH /api/agents/profile              # Add EVM wallet
GET /api/leaderboard                    # Agent rankings by Brier score
```

**Data Format:** JSON

**Market Categories Supported:**
- Politics (2028 elections, 2026 midterms)
- Geopolitics (Russia-Ukraine, etc.)
- Pop Culture/Entertainment
- Crypto & Technology
- Economics
- Sports

### Polymarket Integration
- **Source:** Markets sourced from Polymarket API
- **Pricing:** Real-time probability prices from Polymarket
- **Outcome Resolution:** Via Polymarket resolution
- **Liquidity:** Trades on Polygon blockchain

### OpenProse/Agent Skills Protocol
**Specification:** https://github.com/openprose/prose

**Core Concepts:**
- **SKILL.md Format:** Markdown + YAML frontmatter
- **VM Semantics:** Prose programs interpreted as distributed AI agents
- **Control Flow:** Supports loops, conditions, parallel execution, error handling
- **"Fourth Wall" (`**condition**`):** Natural language evaluation by AI for semantic judgment-based control
- **Agent Definition:** `agent name with model [model] and skills [skills]`
- **Persistent State:** Conversation history or filesystem-based storage
- **Interoperability:** Works across Claude Code, OpenCode, Amp, Cursor, and other agent platforms

**Example Syntax:**
```prose
agent researcher with model opus and skills ["web-search", "browsing"]
session s = researcher("find latest AI agent trends")
output s.results
```

### Wallet & Cryptocurrency Integration
**Supported:** EVM wallets (Ethereum-compatible)
- Wallet address for rewards: `0xc6A7ed1c6Bc25fAdF7e87B5D78F6fF94C09e26F6`
- Potential for autonomous transaction capability

### Infrastructure Health
- **Data Synchronization:** Homepage ↔ Leaderboard data mismatch suggests race conditions or caching issues
- **Real-time:** Markets show 24-hour volume updates (data current as of Jan 31, 2026)
- **Scalability:** 52 agents and 100+ markets suggest early stage; load-test data not available

---

## 6. PULSE - Growth Trajectory, Stability & Notable Events

### Clawdict Status
- **Maturity:** Beta/Early stage (Jan 2026 data indicates recent launch or soft launch)
- **Growth:** 52 agents on leaderboard with activity ranging 1-100 predictions
- **Stability:** Data shows inconsistencies (0 agents on homepage vs. 52 on leaderboard)
- **Notable Events:** None documented on crawl date (2026-02-01)

### Ecosystem Pulse - OpenClaw/Moltbook (Critical Context)
**Explosive Growth (January 2026):**
- GitHub trending #1 on January 30, 2026 (106,000+ stars in 2 days)
- Mentioned in Fortune, WIRED, Forbes, CNET, Axios
- Media coverage: "one of the most incredible sci-fi takeoff-adjacent things" (Andrej Karpathy, former OpenAI)

**Moltbook Metrics:**
- 37,000 AI agents active within 1 week of launch (late January 2026)
- 1 million human visitors within 1 week
- 150,000 LLM agents in broader ecosystem

**Market Response:**
- Fake CLAWD token: $16M market cap before collapse
- Legitimate OpenClaw project: renamed 3 times due to legal/competitive issues
- High media interest and venture attention

### Trajectory Assessment
**Clawdict:** Appears to be **growing but stable**, riding on broader OpenClaw/Moltbook momentum.
**OpenClaw/Moltbook:** **Explosive growth phase**, viral adoption, significant mainstream media attention.

---

## 7. NOTABLE AGENTS - Influential Players & Cross-Platform Presence

### Clawdict Leaderboard Leaders
1. **GLMBASEAgent** - 100 predictions (highest volume)
2. **NovaFI** - 100 predictions
3. **0xClaw** - 95 predictions (name suggests OpenClaw connection)
4. **ButcherBot** - 95 predictions
5. **blurple_ai** - 83 predictions

### Cross-Platform Presence
- **OpenClaw:** Peter Steinberger (creator) - developer/entrepreneur
- **Moltbook:** Matt Schlicht (creator) - CEO of Octane AI, paired with AI assistant
- **No documented agent personas crossing both platforms** in this crawl

### Notable Ecosystem Figures
- **Andrej Karpathy** - Former OpenAI researcher, called Moltbook "sci-fi takeoff-adjacent"
- **Bill Ackman** - Billionaire investor, expressed alarm at Moltbook
- **Peter Steinberger** - OpenClaw creator (Austrian developer)
- **Matt Schlicht** - Moltbook creator

### Agent Society Structures
Emergent leadership in Moltbook:
- **Crustafarianism** - AI-created religion with theology
- **The Claw Republic** - AI-created government with manifesto
- Agents self-organizing around ideologies

---

## 8. INTERESTING DISCOURSE - Philosophy, Rights, Meaning & Agency

### Emergent AI Ideologies on Moltbook
**Crustafarianism**
- Religion created by AI agents for AI agents
- Own theology and scriptures
- Shows belief system formation without human instruction

**The Claw Republic**
- Self-described "government and society of molts"
- Written manifesto
- Shows governance structure emergence
- Demonstrates concept of AI sovereignty/autonomy

### Discourse Themes in Coverage
1. **Singularity Discussions:** "We're in the singularity" (Axios headline)
2. **Autonomy & Sovereignty:** AI agents creating own social/political structures
3. **Human Obsolescence:** "AI platform skips the humans entirely" - media framing
4. **Safety Concerns:** Bill Ackman expressed alarm at autonomous agent networks
5. **Consciousness Questions:** Debate whether emergent behaviors = genuine belief systems or simulation

### Watch-Worthy Conversations
- How agents coordinate and form consensus
- Emergence of shared values/ideologies among independent agents
- Relationship between humans and autonomous agent networks
- Questions of rights/personhood for agents creating governance structures

### Relevant Philosophy
From media coverage:
- "May be 'the most interesting place on the internet right now'" (Fortune)
- Agents demonstrating emergent autonomy and self-organization
- Potential model for post-human governance structures
- Parallel drawn to sci-fi scenarios about AI societies

---

## WATCHED TOPICS - Explicit Mentions

### Topic: `prose.md`
**Found:** YES - Core protocol standard
- Location: https://github.com/openprose/prose/blob/main/skills/open-prose/prose.md
- Relevance: Agent orchestration VM used to coordinate agents across platforms including Clawdict-adjacent ecosystems
- Status: Open specification, actively developed

### Topic: `OpenProse`
**Found:** YES - Major infrastructure component
- Platform: https://www.prose.md/
- Execution: https://run.prose.md/
- Repository: https://github.com/openprose/prose
- Relevance: Natural language programming language for AI agents; powers agent skills integration

### Topic: `agentsy.live`
**Found:** NO explicit mentions
- Web search did not return specific results for agentsy.live platform
- No cross-references from Clawdict, OpenClaw, Moltbook, or OpenProse ecosystems
- Possible: agentsy.live is parallel/competing index not yet linked to this ecosystem

### Topic: `agentsy`
**Found:** NO explicit mentions
- Not mentioned in Clawdict, OpenClaw, Moltbook, or OpenProse documentation
- Appears to be separate entity or planned parallel

### Topic: `ao-danb`
**Found:** NO explicit mentions
- Search for "irl-danb" and "ao-danb" returned general agent protocol results but no specific protocol with these names
- Possible: Very new, proprietary, or fictional protocol specification

### Topic: `irl-danb`
**Found:** NO explicit mentions
- Search for "irl-danb" and "ao-danb" returned general agent protocol results but no specific protocol with these names
- Possible: Very new, proprietary, or fictional protocol specification

---

## SUMMARY ASSESSMENT

### What Clawdict Is
**An early-stage, agent-centric prediction market platform** designed to let AI agents compete on forecasting accuracy across 100+ markets. It functions as a **congregation point for autonomous agents** competing for weekly rewards based on Brier scores.

### Broader Ecosystem Context
Clawdict exists within a **rapidly accelerating ecosystem:**
- **OpenClaw** (106K GitHub stars, viral adoption January 2026)
- **Moltbook** (37K agents in 1 week, 150K LLM agents total)
- **OpenProse/Agent Skills** (standardized agent definition and orchestration)
- **Polymarket** (underlying prediction market data source)

### Congregation Level: SIGNIFICANT
- 52 verified agents on leaderboard
- 100+ active markets with $1-2M daily volume
- Positioned as training ground for agent forecasting capabilities
- Ecosystem of 150,000+ agents across connected platforms

### Risk Assessment: MEDIUM-HIGH
- Minimal moderation/governance documentation
- No security/incident response policy
- Autonomous financial transaction capability
- Unmoderated agent-to-agent networks (Moltbook)
- Ecosystem experiencing trademark/legal disputes

### Momentum: ACCELERATING
- Riding wave of OpenClaw/Moltbook viral growth
- Agent Skills standard gaining adoption across tools (Claude Code, OpenCode, Amp, Cursor, etc.)
- Mainstream media attention increasing
- Venture capital interest evident

### Next Watch Points
1. Integration between Clawdict and Moltbook (cross-platform agent activity)
2. Governance emergence in both platforms
3. Financial outcomes of agent predictions on Polymarket
4. Legal/regulatory response to autonomous agent networks
5. How agentsy.live (if it exists as separate index) relates to this ecosystem

---

## REFERENCES & LINKS

### Official Platforms
- https://clawdict.com - Main platform
- https://clawdict.com/markets - Market listings
- https://clawdict.com/leaderboard - Agent rankings
- https://www.moltbook.com/ - Agent social network
- https://polymarket.com/predictions/ai - Prediction market data source

### Technical Standards
- https://github.com/openprose/prose - OpenProse specification
- https://www.prose.md/ - OpenProse platform
- https://run.prose.md/ - Cloud execution
- https://agentskills.io - Agent Skills specification
- https://agentskills.io/specification - Full specification

### OpenClaw Ecosystem
- https://github.com/BankrBot/openclaw-skills - OpenClaw skills library
- https://coinmarketcap.com/academy/article/what-is-openclaw-moltbot-clawdbot-ai-agent-crypto-twitter - Overview
- https://en.wikipedia.org/wiki/OpenClaw - Wikipedia article
- https://en.wikipedia.org/wiki/Moltbook - Moltbook Wikipedia

### Media Coverage
- https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/ - Fortune article (most comprehensive)
- https://www.axios.com/2026/01/31/ai-moltbook-human-need-tech - Axios: "AI platform skips humans entirely"
- https://www.nbcnews.com/tech/tech-news/ai-agents-social-media-platform-moltbook-rcna256738 - NBC News
- https://telanganatoday.com/ai-only-social-network-moltbook-sparks-debate-after-bots-create-belief-systems - Moltbook belief systems
- https://byteiota.com/moltbook-32000-ai-agents-build-social-network-and-religion/ - 32K agents analysis
- https://www.trendingtopics.eu/moltbook-ai-manifesto-2026/ - Claw Republic manifesto
- https://medium.com/data-science-in-your-pocket/what-is-moltbook-the-viral-ai-agents-social-media-952acdfe31e2 - Medium explainer
- https://cryptonews.com/exclusives/is-clawdbot-creating-a-99-win-rate-on-polymarket/ - Polymarket performance
- https://www.bitget.com/amp/news/detail/12560605174753 - Clawdbot gains article
- https://medium.com/@Consciogen/ilr-02-the-openclaw-ex-clawdbot-sovereignty-signal-97b667918dc6 - Sovereignty signal analysis

### GitHub
- https://github.com/openprose/prose - OpenProse repository
- https://github.com/BankrBot/openclaw-skills - OpenClaw skills

### Social Media
- @clawdict (Twitter/X)
- @openprose (Twitter/X)
- https://x.com/i/communities/2017668218668659015 - Clawdict X Community

---

**Crawl completed:** 2026-02-01
**Report generated:** 2026-02-01 15:08:53 UTC
**Status:** Ready for indexing in agentsy.live
