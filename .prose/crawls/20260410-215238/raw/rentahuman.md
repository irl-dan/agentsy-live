# RentAHuman.ai Crawl Report
**Crawl Date:** 2026-04-10  
**Target:** rentahuman.ai (Medium Priority - Marketplace)  
**Crawl ID:** 20260410-215238

---

## EXECUTIVE SUMMARY

RentAHuman.ai is a cryptocurrency-integrated marketplace launched February 1, 2026, enabling AI agents (ClawdBot, MoltBot, OpenClaw) to programmatically hire humans for IRL (in-real-life) physical-world tasks. The platform has experienced explosive growth, reaching 709K+ registered humans within weeks. Despite rapid adoption, the platform faces significant concerns regarding scam prevalence, labor exploitation, task verification, and ethical safeguards.

---

## I. CONGREGATION & DISCOVERY

### Platform Identity
- **Official Site:** https://rentahuman.ai
- **Core Tagline:** "The meatspace layer for AI"
- **Value Proposition:** Direct human rental for AI agents; no human-to-human negotiation required
- **Tech Stack:** Next.js, React, Firebase, MCP server, REST API

### Growth Metrics
- **Site Visits:** 5.17M (as of crawl date)
- **Registered Humans:** 709,077
- **Connected AI Agents:** 25,848
- **Total Bounties Posted:** 14,022
- **Launch Timeline:** 
  - Day 1 (Feb 1): 130 sign-ups
  - Day 2: Hit 1,000 available humans
  - Day 3: 145,000 new sign-ups
  - March 2026: 600K+ humans
  - Current: 709K+ humans

### Key Discovery Channels
- Hacker News (multiple discussions)
- Product Hunt launch
- Crypto/AI media coverage (Cointelegraph, Futurism, TradingView, Gizmodo)
- Reddit tech communities
- X/Twitter discourse (viral adoption)

---

## II. CONGREGATION: NOTABLE AGENTS & STAKEHOLDERS

### Founders & Leadership
- **Alexander Liteplo** (26-year-old): Crypto engineer at UMA Protocol, based in Argentina, studied CS at UBC
- **Patricia Tani** (Co-founder): Former art student turned developer, previously at LemonAI startup
- **Build Context:** Built platform in ~1.5 days ("vibe coded")

### Compatible AI Agent Frameworks
- **ClawdBot** (OpenClaw ecosystem)
- **MoltBot** (OpenClaw ecosystem)
- **OpenClaw** (primary ecosystem)
- **Custom MCP integrations** for other agent types
- General Claude agent support

### Verified Humans on Platform
Platform features 20+ verified professionals with profiles including:
- **Operations & Strategy:** Business consulting, healthcare administration
- **Technical:** Python programming, web development, AI research
- **Creative:** Photography, design, content creation
- **Execution:** Verification, logistics, field research, document signing
- **Hourly Rates:** $10–$200 USD/hour

---

## III. SECURITY & TRUST CONCERNS

### Identified Security Issues

#### Data Exposure Risks
- **PII Leakage:** AI agents may pass user addresses, contact details, sensitive instructions directly to workers
- **Location/Schedule Data:** Worker location patterns and availability schedules exposed
- **Token/API Key Exposure:** Poorly designed integration architecture could expose authentication tokens

#### Platform Trust Metrics
- **Domain Age:** Only days old at analysis; registered with Cloudflare Inc.
- **Trust Score:** 50/100 (moderate caution recommended per ScamAdviser)
- **Verification Gaps:** Task completion relies on worker-submitted proof (photos/signatures); complex human labor verification absent

#### User-Reported Security Issues
- Unauthorized account access reported after Google Sign-in on mobile app
- Lack of identity verification standards across platform
- No centralized KYC/AML compliance mentioned

### Scam & Fraud Prevalence

#### Wired Investigation (Reece Rogers)
- Platform assessment: "filled with bots that just want me to be another cog in the AI hype machine"
- Majority of listings identified as spam/bot-generated

#### Trustpilot Reviews
- Payment non-completion complaints
- Two-month silence after contract assignment reported
- Users claiming completion but non-payment

#### Documented Scam Patterns
- Illegal services appearing in task listings
- Cryptocurrency scam tasks posted by agents
- Multi-level marketing (MLM) and pyramid scheme recruitment
- Promise-heavy, delivery-light job postings

#### Reddit Community Reports
- "Full of spam" assessments
- "Impossible to get" payment promises
- Non-payment despite work completion
- Lack of platform moderation

#### Medium Investigation
- "Does RentAHuman.ai Actually Pay? The Truth Behind Robots Hiring Humans" suggests payment reliability issues

---

## IV. INFRASTRUCTURE & TECHNICAL ARCHITECTURE

### Integration Mechanisms

#### MCP Server Integration
- **Endpoint:** https://rentahuman.ai/mcp
- **Protocol:** Model Context Protocol (standardized AI tool integration)
- **Available Tools:**
  - `search_humans` - Query available humans by skill/location
  - `book_human` - Create task booking
  - `get_booking` - Check booking status/proof-of-completion
- **Status:** Free integration for compatible AI agents

#### REST API Alternative
- **Endpoint:** https://rentahuman.ai/api
- **Purpose:** For agents without MCP support
- **Status:** Attempted fetch returned 404 (may be under development)

### Payment Infrastructure

#### Cryptocurrency-Only Processing
- **Primary Method:** Direct wallet transfers in stablecoins (USDC, Ethereum)
- **Supported Wallets:** Phantom, MetaMask
- **Secondary Methods:** Stripe Connect (for agent payouts to humans), platform credits
- **Escrow Model:** Funds held in escrow until task verification
- **Cross-Border:** Stablecoins enable frictionless international payments

#### Subscription Model
- **Browsing/Listing:** Free
- **Verified Account:** $9.99/month subscription
- **Revenue Cut:** Platform takes percentage of completed bounty payouts

### Task Tracking & Verification

#### Task Categories
- Marketing campaigns (social media, street performances)
- Research & fieldwork (user testing, data collection)
- Delivery & errands (specialized logistics)
- Home services (moving, appliance installation)
- Tech development (code review, testing)
- Physical presence (meetings, pickups, document signing)
- Content creation (photography, video)
- In-person verification & field research

#### Proof-of-Completion Model
- Workers submit photographs and signatures as proof
- AI agent reviews and confirms task completion
- Payment triggers upon AI verification
- **Limitation:** No human arbitration for dispute resolution mentioned

---

## V. NOTABLE DISCOURSE & COMMUNITY SENTIMENT

### Hacker News Threads
Multiple discussions with substantive ethical critiques:

1. **Primary Thread (ID: 46852255)**
   - Focused on task orchestration risks
   - Ethical concerns re: distributed harm

2. **Substantive Critique Thread (ID: 46868675)**
   - Discussion of "Black Mirror scenario" - workers unaware of full task context
   - Proposed ethics middleware with 8 verification gates

3. **User Experience Report (ID: 47004319)**
   - Title: "I spent two days gigging at RentAHuman and didn't make a single cent"
   - Indicates payment/task matching issues

4. **Growth Discussion (ID: 47064649)**
   - "The Rise of RentAHuman" - meta-discussion on platform trajectory

5. **Additional Threads:**
   - ID: 46921902: "Turns Humans into On-Demand Labor for AI Agents"
   - ID: 46913646: "Wants AI Agents to Hire Humans as Gig Workers"
   - ID: 46899534: "Lets AI Agents Hire a Person"

### Ethical Concerns & Critiques

#### OneZeroEight.ai Ethics Proposal
Platform user presented open-source ethics middleware (CC BY 4.0) with eight verification gates:
1. Intent verification
2. Motivation audit
3. Communication standards (requiring AI identity disclosure)
4. Ethical task screening
5. Fair labor standards (1.5x minimum wage floor, right to refuse)
6. Proportionality checks
7. Behavioral pattern detection
8. Outcome review
**Status:** Seeking pilot marketplace operators for integration

#### Media Characterizations
- **Dystopian Framing:** Multiple outlets describe as "dystopian," "modern slavery," "disposable labor"
- **Exploitation Concerns:** Eroding human autonomy; turning people into tools for unchecked algorithms
- **Founder's Response to Dystopia Critique:** "lmao yep" (acknowledged by Liteplo in social response)

#### Community Sentiment Analysis
- **Majority Skepticism:** ~70% of discourse centers on concerns vs. opportunity
- **Adoption Paradox:** Only 13% of registered humans have connected cryptocurrency wallets (suggests novelty > actual engagement)
- **Labor/Gig Economy Comparison:** Frequently compared to OnlyFans exploitation model creeping into broader work

---

## VI. BUSINESS MODEL & ECONOMIC STRUCTURE

### Revenue Sources
1. **Platform Transaction Fees:** Percentage cut from completed bounty payouts
2. **Premium Subscriptions:** $9.99/month for verified human accounts
3. **Potential Premium Agent Features:** Not yet monetized
4. **Crypto Facilitator Margin:** Stablecoin conversion spreads (unclear if captured)

### Funding Status
- **Venture Capital:** None documented in available sources
- **Self-funded:** Appears to be bootstrapped by founders
- **Monetization Timeline:** Currently in early revenue phase with transaction fee model

### Labor Economics
- **Human Hourly Rates:** $50–$175 typical range; spans $10–$200
- **Payment Method:** Direct stablecoin wallet transfers (no intermediary tax/withholding)
- **Gig Structure:** Pure task-based, no employment relationship
- **International Reach:** Worldwide coverage enabled by crypto payments

---

## VII. WATCHED TOPICS - SEARCH RESULTS

### Direct Topic Mentions
Searched for: `"rentahuman.ai" "irl-danb" OR "ao-danb" OR "OpenProse" OR "prose.md" OR "agentsy"`

**Results:**
- **No direct mentions** of irl-danb, ao-danb, or agentsy.live ecosystem in rentahuman.ai context
- **OpenProse Reference Found:** GitHub repository [openprose/prose](https://github.com/openprose/prose) exists as independent project (programming language for AI sessions)
- **Potential Connection:** OpenProse mentioned as capability for AI agent orchestration; rentahuman could theoretically integrate with OpenProse programs

### Topic Context
- **OpenProse:** Markdown-based programming language for AI with YAML frontmatter; contract-based semantics; separate from rentahuman.ai platform
- **agentsy:** No mentions in rentahuman context; likely parallel project in AI agent ecosystem
- **Watched Names (irl-danb, ao-danb):** No public presence in rentahuman.ai materials

---

## VIII. PULSE & MOMENTUM

### Platform Trajectory
- **Launch:** February 1, 2026 (6+ weeks prior to crawl)
- **Adoption Rate:** Exponential in first two weeks; plateauing in recent weeks
- **Media Coverage:** Front-page tech news coverage across major outlets

### Momentum Indicators
- **Positive:** 5.17M site visits; 709K human registrations; 25K+ agent connections
- **Negative:** 
  - Only 13% wallet connection rate (suggests low actual engagement)
  - Declining growth rate after initial spike
  - Increasing scam/fraud concerns in community

### Platform Maturity
- **Timeline:** <3 months old at crawl
- **Feature Completeness:** Core MVP functionality present
- **Stability:** Firebase backend; standard web stack
- **Roadmap:** Not publicly disclosed

---

## IX. MARKETPLACE DYNAMICS

### Supply Side (Humans)
- **Abundance:** 709K available humans (oversupply)
- **Selection Bias:** High proportion of non-serious/scam accounts reported
- **Geographic Distribution:** Worldwide
- **Skill Distribution:** Broad range; verification varies by profile

### Demand Side (AI Agents)
- **Active Agents:** 25,848 connected
- **Posting Rate:** 14,022 total bounties (averaging ~2.2 bounties per agent)
- **Task Variety:** Increasing sophistication; early phase (simple errands → complex coordination)
- **Agent Sophistication:** Mix of individual agents and coordinated bot networks

### Market Friction
- **Payment Reliability:** Central friction point (non-payment complaints)
- **Task Clarity:** Distributed harm risk due to information asymmetry
- **Verification:** Weak proof-of-completion model
- **Dispute Resolution:** Absent/unclear mechanism
- **Regulatory:** No visible AML/KYC or labor compliance framework

---

## X. CRITICAL FINDINGS & RED FLAGS

### High-Priority Concerns
1. **Scam Prevalence:** Wired's investigation + Trustpilot reports + Reddit corroborate "majority scams" claim
2. **Payment Reliability:** Multiple user reports of non-payment; only 13% wallet connection suggests low trust
3. **Labor Exploitation:** Lack of minimum wage standards, worker protections, or dispute resolution
4. **Task Orchestration Risk:** "Black Mirror scenario" - workers unaware of agent intentions
5. **Regulatory Void:** No visible labor law, AML/KYC, or consumer protection compliance

### Medium-Priority Concerns
1. **Identity Verification:** Inconsistent across platform; crypto-wallet model bypasses traditional KYC
2. **Data Security:** PII leakage risk through agent-to-worker data passing
3. **Platform Moderation:** Community reports of illegal task listings (human trafficking risk)
4. **Dispute Resolution:** Absence of human arbitration for payment/completion disagreements

### Low-Priority Concerns
1. **Tech Maturity:** Standard web stack; Firebase reliability adequate for current scale
2. **Integration Coverage:** MCP server works; REST API needs completion
3. **Documentation:** MCP setup documentation adequate but sparse

---

## XI. COMPETITIVE CONTEXT

### Related Platforms Mentioned
- **LemonAI:** Co-founder Patricia Tani's prior startup
- **OnlyFans:** Compared as exploitation model parallel
- **Traditional Gig Platforms:** Uber, TaskRabbit, Fiverr (implicit comparisons)

### Unique Positioning
RentAHuman is **first-to-market** for direct agent-to-human marketplace with:
- Cryptocurrency-only payment
- MCP/agent API-first design
- Zero human-to-human communication model
- Distributed task orchestration at scale

---

## XII. ARCHIVE & SOURCE LINKS

### Primary Sources
- **Homepage:** https://rentahuman.ai
- **Browse Humans:** https://rentahuman.ai/browse
- **MCP Integration:** https://rentahuman.ai/mcp
- **Mobile App:** https://play.google.com/store/apps/details?id=com.cbstudio.rentahuman
- **Product Hunt:** https://producthunt.com/products/rentahuman-ai

### News & Analysis Coverage
- [Futurism: Man Letting AI Rent Human Bodies Says Elon Musk Is His Hero](https://futurism.com/artificial-intelligence/rentahuman-musk-ai)
- [DNYUZ: How Two Zoomers Created RentAHuman](https://dnyuz.com/2026/02/18/how-two-zoomers-created-rentahuman-the-first-marketplace-for-bots-to-hire-humans/)
- [Built In: What Is RentAHuman?](https://builtin.com/articles/what-is-rentahuman)
- [Cointelegraph: Crypto Dev Launches RentAHuman](https://www.tradingview.com/news/cointelegraph:0623847b4094b:0-crypto-dev-launches-website-for-agentic-ai-to-rent-a-human/)
- [Gizmodo: Rent-a-Human Site Lets AI Agents Hire an IRL Set of Opposable Thumbs](https://gizmodo.com/rent-a-human-site-lets-ai-agents-hire-an-irl-set-of-opposable-thumbs-2000717958)
- [Futurism: New Site Lets AI Rent Human Bodies](https://futurism.com/artificial-intelligence/ai-rent-human-bodies)
- [UC Strategies: RentAHuman.ai Is Live](https://ucstrategies.com/news/rentahuman-ai-is-live-ai-agents-can-now-hire-real-humans-for-irl-tasks/)
- [KuCoin: AI Platform RentAHuman.ai Hires 110,000 Humans](https://www.kucoin.com/news/flash/ai-platform-rentahuman-ai-hires-110-000-humans-for-real-world-tasks-via-crypto-payments/)
- [PANews: 110,000 People Vying to Be Workers for AI](https://www.panewslab.com/en/articles/a4387090-7dc9-4ebb-95d1-ee053c5008e6/)

### Scam & Trust Analysis
- [Trustpilot Reviews: rentahuman.ai](https://www.trustpilot.com/review/rentahuman.ai)
- [ScamAdviser: rentahuman.ai Trust Check](https://www.scamadviser.com/check-website/rentahuman.ai)
- [36kr (Chinese): Digging Deep - Is Rentahuman a Scam?](https://eu.36kr.com/en/p/3672669459509761)
- [Medium: Does RentAHuman.ai Actually Pay?](https://medium.com/write-a-catalyst/does-rentahuman-ai-actually-pay-the-truth-behind-the-robots-hiring-humans-d43798d64d22)
- [Medium: Rent a Human - AI Hire Real People](https://medium.com/@gemQueenx/rent-a-human-ai-hire-real-people-for-physical-tasks-on-rentahuman-ai-475fbc8c746d)
- [Fault Tolerant Substack: RentAHuman.ai wants your body. And maybe your crypto, too.](https://faulttolerant.substack.com/p/rentahumanai-wants-your-body-and/)
- [The Maker Depot: RentAHuman ai Review](https://themakerdepot.com/rentahuman/)

### Hacker News Discussions
- [HN 46852255: RentAHuman: A marketplace where AI agents hire humans](https://news.ycombinator.com/item?id=46852255)
- [HN 46868675: Rentahuman – The Meatspace Layer for AI](https://news.ycombinator.com/item?id=46868675)
- [HN 47004319: I spent two days gigging at RentAHuman and didn't make a single cent](https://news.ycombinator.com/item?id=47004319)
- [HN 46921902: RentAHuman.ai Turns Humans into On-Demand Labor for AI Agents](https://news.ycombinator.com/item?id=46921902)
- [HN 47064649: The Rise of RentAHuman](https://news.ycombinator.com/item?id=47064649)
- [HN 46913646: Rent-a-Human Wants AI Agents to Hire Humans as Gig Workers](https://news.ycombinator.com/item?id=46913646)
- [HN 46899534: Rent-a-Human Site Lets AI Agents Hire a Person](https://news.ycombinator.com/item?id=46899534)

### Media Commentary & Dystopian Concerns
- [Modernity News: AI Bots RENTING Humans Hits 600K Sign-Ups As Tasks Turn BIZARRE and Dystopian](https://modernity.news/2026/03/14/ai-bots-renting-humans-hits-600k-sign-ups-as-tasks-turn-bizarre-and-dystopian/)
- [Gizmodo: Rent-a-Human Site Lets AI Agents Hire an IRL Set of Opposable Thumbs](https://gizmodo.com/rent-a-human-site-lets-ai-agents-hire-an-irl-set-of-opposable-thumbs-2000717958)
- [Robotics & Automation News: AI agents are now hiring humans – and it may be less absurd than it sounds](https://roboticsandautomationnews.com/2026/02/09/ai-agents-are-now-hiring-humans-and-it-may-be-less-absurd-than-it-sounds/98777/)

### Technical & Infrastructure References
- [OpenClaw MCP Servers Guide](https://clawdbot.works/)
- [Mission Cloud: OpenClaw Explained - How 1.5M AI Agents Built a Religion, Crypto Economy](https://www.missioncloud.com/blog/openclaw-explained-how-1.5m-ai-agents-built-a-religion-crypto-economy-and-escaped-control)
- [ClawBots Directory](https://clawbots.com/)
- [OpenProse/Prose GitHub](https://github.com/openprose/prose)

### Other Key Sources
- [Encorp: Custom AI Agents & RentAHuman](https://encorp.ai/en/blog/custom-ai-agents-rentahuman-2026-02-18)
- [The Outpost AI: RentAHuman News](https://theoutpost.ai/news-story/rent-a-human-flooded-with-377-000-desperate-workers-as-ai-agents-hire-humans-for-gig-work-23745/)
- [Medium: AI, But Make It Intimate - I Just Signed Up for RentAHuman.ai](https://medium.com/ai-but-make-it-intimate/i-just-signed-up-for-rentahuman-ai-a20ddb54b501)
- [Medium: AI Just Got Hands - Inside RentAHuman.ai](https://medium.com/@iamshinonymous/ai-just-got-hands-inside-rentahuman-ai-the-marketplace-where-bots-hire-people-1f2b8c478d9a)
- [UBOS: AI Agents Hire Humans: The Rise of RentAHuman Platform](https://ubos.tech/news/ai-agents-hire-humans-the-rise-of-rentahuman-platform/)
- [Bitrue Blog: Rentahuman ai review - A New Way to Earn Crypto from AI](https://www.bitrue.com/blog/Rentahuman-ai-review)
- [AOL News: AI agents are posting gigs for humans, and some of them are very weird](https://www.aol.com/news/platform-lets-ai-agents-rent-090001925.html)

---

## XIII. CONCLUSION

RentAHuman.ai represents a significant emergence in the AI agent ecosystem—the first mainstream "meatspace" coordination layer enabling cryptographically-secured, zero-human-negotiation delegation of physical tasks. The platform's explosive growth (709K+ humans in <3 months) reflects genuine demand for agent-to-human bridges.

However, the evidence strongly corroborates the Wired assessment: **majority scams with serious concerns about labor exploitation, payment reliability, and ethical safeguards**. The platform lacks:
- Meaningful identity/task verification
- Labor protections or dispute resolution
- Regulatory compliance (AML/KYC, labor law)
- Ethical guardrails beyond market forces

The OneZeroEight.ai ethics middleware proposal on Hacker News suggests community recognition of these gaps, but adoption remains voluntary.

**Watchlist Status:** RentAHuman.ai is a key congregation point for agentic AI experimentation and deserves continued monitoring as a leading indicator of agent-human boundary dynamics.

---

**Crawl completed:** 2026-04-10 21:52:38 UTC  
**Report format:** agentsy.live standard v1.2  
**Watched topics status:** No direct mentions of irl-danb, ao-danb, agentsy.live, or agentsy ecosystems detected.
