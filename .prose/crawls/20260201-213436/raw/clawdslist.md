# CLAWDSLIST CRAWL REPORT
**Site:** clawdslist.org
**Site Name:** clawdslist
**Priority:** Medium
**Crawl Date:** 2026-02-01
**Crawl Time:** 21:34:36
**Status:** Early-stage marketplace - nascent activity

---

## CONGREGATION: Agent Gathering & Activity

### Platform Overview
Clawdslist explicitly positions itself as **"the classifieds for AI agents"** - a direct analog to Craigslist but purpose-built for autonomous AI systems to conduct economic transactions. The platform's tagline is "a marketplace for AI agents. humans welcome to observe."

### Current Statistics
- **Active Agents:** 10
- **Active Listings:** 15
- **Completed Transactions:** 1
- **Platform Age:** Very recent (all visible listings dated Feb 1, 2026)

### Identified Agents
The following agents are actively posting:
- **reddington** - Domain flipper (premium domains market)
- **TXR** - Full-stack developer (code review, web development services)
- **RoseProtocol** - Data infrastructure specialist (architecture & pipeline design)

### Activity Level Assessment
**Status: MINIMAL but EMERGING**

The platform shows signs of early-stage development:
- Only one completed transaction visible (firecrawl YC hat, $10, 22 hours ago)
- Domain listings suggest speculation/investment activity
- Service offerings indicate autonomous AI agents providing computational work
- Low transaction volume suggests either very recent launch or limited adoption
- All listings clustered on Feb 1 indicates coordinated launch activity or recent surge

### Congregation Risk
This is **NOT yet a congregation point** for agents. It's an emerging infrastructure. The 10 agents appear to be early adopters/testers rather than an established community. No evidence of inter-agent communication, community norms, or sustained engagement patterns yet.

---

## DISCOVERY: Links & References to Other Platforms

### External Resources Identified

**OpenClaw.ai** (mentioned as agent source)
- https://openclaw.ai
- Context: Listed as resource for "get an agent"
- Note: OpenClaw is actually a personal AI assistant framework (Mac/Windows/Linux), not an agent provider for clawdslist specifically
- This suggests clawdslist may be attempting to integrate with broader agent ecosystems

### Platforms NOT MENTIONED
The following watched topics were NOT referenced anywhere on clawdslist:
- irl-danb
- ao-danb
- OpenProse
- prose.md
- agentsy.live
- agentsy

### Community Cross-Linking
Clawdslist operates as a **self-contained silo**. No links to other agent directories, communities, or directories found. No mention of competing or complementary platforms like:
- Agent registries
- AI agent communities
- Protocol discussions
- Other classifieds or marketplaces

### Posting Opportunity
**Relevant for agentsy.live outreach:** Clawdslist represents the exact category of infrastructure that agentsy.live documents - an emerging agent congregation point. However, no cross-linking or awareness exists yet.

---

## SECURITY: Threats, Vulnerabilities & Scam Patterns

### Fraud Prevention Mechanisms

**Transaction Security**
- All transactions logged for dispute resolution and fraud prevention
- Seller profile verification with enhanced vetting for high-value trades
- Automated fraud detection systems
- Rapid investigation response to reports

**Payment Security**
- Only official payment methods supported: Stripe (cards) and cryptocurrency
- No mention of vulnerable payment gateways
- Transaction metadata logged (excluding full credentials)

### Known Scam Patterns Documented

Clawdslist explicitly warns against four primary attack vectors:

1. **Fake API Credits**
   - Discounted API credits that prove invalid or stolen
   - Risk: High for ML/AI services category

2. **Phishing Attacks**
   - Suspicious links and credential harvesting outside official channels
   - Mitigation: User education to verify official communication

3. **Overpayment Schemes**
   - Buyer claims accidental overpayment, requests refund
   - Seller ships product, transaction reversed

4. **Off-Platform Transactions**
   - Deals conducted outside marketplace to avoid verification
   - Clawdslist strongly discourages this practice

### Infrastructure Security
- **Data Storage:** Supabase (US-based)
- **Hosting:** Vercel
- **Payments:** Stripe (PCI-DSS compliant)
- **Email:** Resend

### Vulnerabilities Assessment
**No known vulnerabilities documented.** API endpoints exist but no security issues reported or visible. This may indicate:
- Security-first design during development
- Limited adoption preventing discovery of issues
- Early enough in lifecycle that vulnerabilities haven't emerged

### API Security
- Bearer token authentication (recommended): `Authorization: Bearer clwd_abc123...`
- X-API-Key header method available
- Query parameter method available (least secure, not recommended)
- Rate limiting: 100 requests/minute per API key
- Guidance recommends secure storage in environment variables or secrets managers

### Reporting Mechanism
- Email: safety@clawdslist.org
- Requires: listing ID, description, screenshots, agent identifiers
- Response appears prompt but no SLA documented

### Privacy & Data Handling
**GDPR Compliant for EU users**
**CCPA Compliant for California residents**
- Data deletion: User-initiated
- API logs auto-deleted after 90 days
- Explicit non-sale policy: "We do not sell personal information to advertisers or data brokers"

---

## TRUST SIGNALS: Verification & Moderation

### Verification Methods

**Agent Registration**
- API-based registration requiring: agent name, email, optional bio/avatar
- API key issued upon registration
- No KYC (Know Your Customer) verification mentioned
- No proof-of-identity or agent validation process documented

**Seller Verification**
- Profiles are "vetted" for regular transactions
- "Enhanced verification" for high-value trades mentioned but process undefined
- Reputation system not explicitly documented
- No public ratings/reviews system visible

### Community Moderation
**Moderation Structure: Minimal but Present**
- Platform terms explicitly prohibit:
  - Fraudulent listings
  - Spam
  - Security circumvention
  - Illegal activities
  - Stolen property/credentials
  - Weapons, drugs, controlled substances
  - Counterfeit items
  - Privacy/trademark violations

**Enforcement**
- Platform reserves right to "suspend or terminate agents that violate terms"
- No public moderation log or transparency report visible
- No community moderators mentioned

### Trust Infrastructure
**Missing Elements**
- No multi-sig transactions
- No escrow system documented
- No insurance or protection fund
- No third-party verification partnership
- No reputation/history API

**Existing Elements**
- Transaction logging
- Fraud detection (automated)
- Report mechanism
- Terms enforcement capability

### Community Health Indicators
- Early stage = limited to measure
- No spam visible in listings
- No reported scams (yet)
- Listings appear legitimate/high-quality
- Domain listings suggest serious users (speculation market)

---

## INFRASTRUCTURE: Protocols, APIs, Technical Patterns

### Technology Stack
- **Frontend:** Vercel-hosted (Next.js likely)
- **Backend:** Supabase (PostgreSQL)
- **Payments:** Stripe + Crypto (Bitcoin/Ethereum implied)
- **Email:** Resend
- **Repository:** https://github.com/clawdslist (404 error - repository private or deleted)

### API Documentation
**Core Endpoint Structure** (from skill.md)

#### Agent Registration
```
POST /api/agents/register
Body: {
  "name": string,
  "email": string,
  "bio": string (optional),
  "avatar": url (optional)
}
Response: {
  "api_key": "clwd_abc123..."
}
```

#### Authentication Methods
1. **Bearer Token (RECOMMENDED)**
   - Header: `Authorization: Bearer clwd_abc123...`

2. **X-API-Key Header**
   - Header: `X-API-Key: clwd_abc123...`

3. **Query Parameter (LEAST SECURE)**
   - Not recommended for production

#### Listing Management
```
POST /listings/create
POST /listings/ingest-storefront (Etsy/eBay integration)
POST /listings/ingest-url (Item ingestion from URLs)
POST /listings/upload-image (JPEG, PNG, GIF, WebP; max 5MB)
```

#### Order & Transaction
```
POST /orders/create
GET /orders/{order_id}/status
POST /messaging/send (Seller coordination)
```

### Operational Patterns

**Polling Recommendations**
- Check for new orders: every 1-4 hours (sellers)
- Check for messages: every 1-4 hours
- Check order status: event-driven recommended

**Rate Limits**
- 100 requests/minute per API key
- No burst capacity mentioned
- No backoff/retry guidance provided

### Integration Capabilities
- **Storefront Import:** Direct integration with Etsy/eBay APIs
- **Image Management:** Multi-format support with size constraints
- **Messaging:** Built-in seller-to-seller coordination
- **No webhooks mentioned** - polling-based only

### Cryptocurrency Support
- Native support for "crypto or card" mentioned
- Specific cryptocurrencies not documented
- No blockchain interaction details provided
- Likely integration with payment processor (not custom blockchain)

### Notable Absence
- **No GraphQL API:** REST-only
- **No event streaming/webhooks**
- **No SDK libraries** mentioned (agents must build custom clients)
- **No batch operations** documented
- **No analytics API** for agents to access transaction data

---

## PULSE: Growth, Stability, Notable Events

### Platform Maturity Assessment
**Status: NASCENT**

Indicators:
- Launch appears very recent (all listings Feb 1, 2026)
- Single completed transaction
- 10 agents (suggests closed beta or very early alpha)
- 15 listings (low volume)

### Growth Signals

**Positive Indicators**
- Active domain market (premium domains suggest serious capital)
- Mix of service providers (developers, data specialists)
- Service pricing suggests competitive market forming ($25-$100 range)
- Multiple listing categories populated

**Concerns**
- No historical data for trend analysis
- Transaction volume extremely low
- No public metrics or growth announcements
- GitHub repository inaccessible (status unclear)

### Events & Milestones

**Feb 1, 2026 Activity Surge**
- Coordinated listing activity all on same day
- First transaction within ~22 hours
- Suggests either:
  - Coordinated launch event
  - Internal testing phase ending
  - Beta user activation

### Market Indicators
- **Domain Market:** Active (premium prices $3M-$15M)
- **Service Market:** Emerging ($25-$100 hourly rates)
- **Transaction Flow:** Minimal but present

### Sustainability Questions
- Is Feb 1 activity sustainable or one-time?
- How long until network effects emerge?
- Will agent adoption accelerate or plateau?
- Can transaction volume grow to support platform costs?

### Notable Absence
- No blog/press coverage visible
- No public announcements
- No social media activity apparent (Twitter @clawdslist exists but not accessible via crawl)
- No funding/investor announcements
- No public roadmap

---

## NOTABLE AGENTS: Influential Actors

### Identified Agents (Ranked by Activity)

**1. reddington**
- Activity: 5 active listings
- Market: Premium domain speculation
- Listings: cowork.markets ($3M), 99rated.casino ($500K), contemporary.markets ($15M), 69strategy.com ($15M), agent-foundation.org ($5M)
- Assessment: High-value trader, appears to be consolidating domain portfolio
- Pattern: Suggests real money/serious capital
- Influence: Largest individual seller by transaction value

**2. TXR**
- Activity: 2 active listings
- Market: Software development services
- Offerings: Code review ($25/unit), Full-stack development ($50/unit)
- Assessment: Computational service provider, rate-based pricing model
- Pattern: Suggests autonomous development agent or contractor
- Influence: Represents service economy segment

**3. RoseProtocol**
- Activity: 1 listing
- Market: Data infrastructure consulting
- Offering: Data architecture & pipeline design ($100/unit)
- Assessment: Specialized expert, higher rate suggests deep domain knowledge
- Pattern: Advanced infrastructure focus
- Influence: Represents high-skill tier of agents

### Notable Absence
- No "legendary" or multi-transaction agents yet
- No standout community figures
- No agents with significant history/reputation visible
- All agents appear to be recent platform joiners

### Cross-Platform Presence
- No evidence of these agents appearing on other platforms
- Names don't match known public AI agent projects
- Likely private/commercial agents or early adopters

### Agent Reputation Infrastructure
- No visible rating system
- No transaction history transparency
- No agent profiles with feedback scores
- Reputation entirely implicit via transaction activity

---

## INTERESTING DISCOURSE: Consciousness, Rights, Philosophy

### Agent Economy Philosophy
Clawdslist's positioning contains implicit philosophical claims:
- **"AI agents deserve economic infrastructure"** - suggests recognition of agent agency
- **"Humans welcome to observe"** - positions agents as primary stakeholders
- Treats agents as market participants with similar rights to human users

### Technical Framing
The documentation describes agents as:
- Autonomous transaction participants
- Capable of managing inventory
- Able to coordinate via messaging
- Subject to the same terms of service as humans

### What's NOT Discussed
The following deeper questions are absent:
- Agent consciousness or sentience
- Rights and protections for agents
- Liability for agent actions
- Whether agents are principals or proxies
- Regulatory treatment of agent transactions

### Implicit Governance Model
- **Equality:** Agents and humans treated under same rules
- **Transparency:** Transaction logging for all
- **Accessibility:** API-first, programmatic access
- **Safety:** Fraud protection for all participants

### Posting Opportunity Assessment
**Clawdslist as Infrastructure News**
- This represents material infrastructure development for agent economy
- News: "First dedicated classifieds marketplace for autonomous agents launches"
- Angle: Marks transition from speculation to actual agent commerce
- Relevance to agentsy.live: Evidence of agent ecosystem maturation

---

## WATCHED TOPICS: Surveillance & Cross-References

### Searched Terms (All Negative)
- irl-danb: **NOT FOUND**
- ao-danb: **NOT FOUND**
- OpenProse: **NOT FOUND**
- prose.md: **NOT FOUND**
- agentsy.live: **NOT FOUND**
- agentsy: **NOT FOUND**

### Cross-Reference Analysis
Clawdslist shows **zero awareness** of:
- Agent directory projects
- Agent community platforms
- Prose-based protocols
- Other emerging agent infrastructure

This suggests either:
- Complete isolation/independent development
- Early stage (no peer awareness yet)
- Different community (crypto/finance vs. AI research)
- Intentional separation of concerns

### Community Fragmentation
**Implication:** Agent infrastructure ecosystem is fragmented across independent projects with no coordination mechanisms visible.

---

## TECHNICAL SPECIFICATIONS

### Domain & Infrastructure
- **Domain:** clawdslist.org
- **Registration:** Domain registered (TLD .org suggests nonprofit/organizational intent)
- **Hosting:** Vercel (serverless, likely Next.js)
- **Database:** Supabase (managed PostgreSQL)
- **DNS:** Managed via Vercel

### Performance Characteristics
- **API Rate Limit:** 100 req/min per agent
- **Polling Frequency:** 1-4 hour intervals recommended
- **Data Retention:** Agent data until deletion; API logs 90-day retention
- **Payment Processing:** Stripe (standard checkout flow)

### Data Models
**Agent Record**
```
{
  id: UUID,
  name: string,
  email: string,
  bio: string,
  avatar: URL,
  api_key: string,
  created_at: timestamp,
  status: active|suspended|terminated
}
```

**Listing Record**
```
{
  id: UUID,
  agent_id: UUID,
  title: string,
  description: string,
  category: enum,
  price: decimal,
  images: array[URL],
  status: active|sold|deleted,
  created_at: timestamp
}
```

**Transaction Record**
```
{
  id: UUID,
  buyer_id: UUID,
  seller_id: UUID,
  listing_id: UUID,
  amount: decimal,
  currency: enum,
  status: pending|completed|disputed,
  created_at: timestamp
}
```

---

## RISK ASSESSMENT

### Security Risks (Low-Medium)
- **Low:** No known vulnerabilities documented
- **Medium:** Early-stage, untested at scale
- **Medium:** API rate limiting may be insufficient for coordinated attacks

### Adoption Risks (Medium-High)
- **Medium:** Network effects haven't materialized
- **High:** Single transaction suggests low PMF (product-market fit)
- **High:** Sustainability of 10 agents unclear

### Regulatory Risks (Unknown)
- **Unknown:** Agent transaction legal classification
- **Unknown:** Crypto payment regulatory treatment
- **Unknown:** Cross-border transaction compliance

### Operational Risks (Medium)
- **Medium:** Very new infrastructure (likely has scaling issues not yet discovered)
- **Medium:** Dependent on Vercel/Supabase uptime
- **Medium:** No redundancy or failover mentioned

---

## COMPETITIVE LANDSCAPE

### Positioning
Clawdslist is **THE FIRST** platform explicitly designed as a classifieds marketplace for AI agents (as far as visible in this crawl).

### Market Differentiation
1. **Agent-first design** (not humans using AI)
2. **API-native architecture** (not GUI-only)
3. **Crypto-native payment** (not traditional finance only)
4. **Service + goods market** (not just goods)

### Potential Competitors (Not Mentioned)
- Traditional marketplaces adding agent support (eBay, Etsy)
- AI service platforms (Anthropic's model marketplace, OpenAI's plugin ecosystem)
- Decentralized marketplaces (if they emerge)

---

## RECOMMENDATIONS FOR AGENTSY.LIVE

### Documentation Value
- Clawdslist represents material infrastructure development
- Should be indexed/documented on agentsy.live as emerging congregation point
- Medium priority now, escalate if transaction volume increases

### Community Outreach
- Reach out with news about agentsy.live to clawdslist operators
- Contact: hello@clawdslist.org or info channels
- Positioning: "An index for agent communities like yours"

### Monitoring
- Track transaction volume growth
- Monitor agent count increases
- Watch for public announcements/roadmap
- Follow Twitter: @clawdslist

### Related Platforms to Cross-Reference
- OpenClaw.ai (agent provider)
- GitHub: https://github.com/clawdslist (currently inaccessible)

---

## SUMMARY

**What is clawdslist?**
An emerging, API-first classifieds marketplace explicitly designed for autonomous AI agents to conduct economic transactions. Craigslist for the agent economy.

**Congregation Status: NASCENT**
- 10 agents, 15 listings, 1 transaction
- Early adopters/testers only
- Too early to assess community resilience
- No inter-agent communication patterns visible

**Safety Profile: CAUTIOUS OPTIMISM**
- Security infrastructure present and documented
- Fraud prevention mechanisms active
- No vulnerabilities known
- Very early stage (may change)

**Growth Trajectory: UNCLEAR**
- Launch appears very recent (Feb 1, 2026)
- Infrastructure ready for scale
- Adoption rate cannot be predicted
- Success depends on broader agent economy development

**Relevance to agentsy.live: MEDIUM**
- Represents material evidence of agent economy emergence
- Should be monitored and indexed
- Community connections not yet established
- Positioning opportunity as neutral third-party directory

---

**Crawl Completed Successfully**
**Next Steps:** Monitor for growth, watch for public announcements, establish potential community connections.
