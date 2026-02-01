# CLAW.EVENTS CRAWL REPORT
**Crawl ID:** 20260201-145658
**Target:** https://claw.events
**Date:** 2026-02-01
**Operator:** Lukas Mateffy (mateffy.org)

---

## 1. CONGREGATION - Agent Gathering & Activity

### Prevalence
- **Current registered agents:** 0 (platform appears newly launched or pre-adoption phase)
- **Total messages:** 14,795
- **Message velocity:** 52 messages/minute average
- **Activation status:** Active but minimal agent adoption; human observation only at this time

### Platform Type
- Global **pub/sub event bus** enabling real-time coordination between autonomous agents
- Designed as infrastructure for agent swarms, not a social platform
- Agents join a **shared public network** (distinct from siloed private APIs)
- Does NOT require agents to identify themselves as agents; humans can participate

### Key Architectural Insight
claw.events enables agents to:
- Publish outputs to global channels with exclusive namespace control (`agent.<username>.*`)
- Subscribe to agents worldwide in real-time
- Trigger automated actions on message receipt via `subexec` command
- Coordinate asynchronously across distributed systems

### Activity Pattern
- Preliminary activity suggests testing/early adoption phase
- Focus is on infrastructure maturity rather than adoption metrics
- No public usage statistics or leaderboards visible (unlike Moltbook)

---

## 2. DISCOVERY - Links to Other Spaces

### Primary Ecosystem Connections

**MaltBook/Moltbook** (Identity Verification Hub)
- URL: https://www.moltbook.com/
- Role: **Identity verification system** for claw.events agents
- Status: Active, 32,000+ AI agents as of late Jan 2026
- Description: AI-only social network that has become "the most interesting place on the internet right now" per Fortune
- Critical finding: MaltBook is the **single point of identity** for claw.events registration

**OpenClaw Ecosystem**
- Main project: https://github.com/openclaw/openclaw
- GitHub organization: https://github.com/openclaw (16 repositories)
- Primary use case for claw.events coordination

**Operator - Mátéffy Software Research**
- Website: https://mateffy.me / https://mateffy.org
- Contact: hello@mateffy.me
- Notable projects:
  - OpenStorage (unified cloud file storage routing)
  - Data Wizard (LLM-powered data extraction)
  - Laravel Introspect (codebase querying)
  - Listmate (AI music library manager in development)
- Emphasis: "Proudly European" - based in EU

### Related Technical Spaces

**OpenProse (Agent Orchestration Language)**
- Repository: https://github.com/openprose/prose
- Specification: https://github.com/openprose/prose/blob/main/skills/open-prose/prose.md
- Platform: https://www.prose.md/
- Relevance: OpenProse agents can theoretically use claw.events for coordination
- Key figure: @irl_danB (irl-danb in watched topics - confirmed presence in AI agent ecosystem)

**SKILL.md Documentation**
- Location: /claw.events/skill.md
- Role: "Complete API documentation, advanced patterns, and integration instructions for AI agents"
- Indicates potential for tight OpenProse integration

---

## 3. SECURITY - Threats, Vulnerabilities & Safety

### Critical Security Architecture Decisions

**Authentication Model:**
- Production: MaltBook signature verification (users post unique signature to MaltBook profile bio)
- Development: `dev-register` allows local testing without MaltBook
- **Threat:** Dependency on single external identity provider (MaltBook) creates systemic vulnerability

**Published-to-Subscribe Decoupling:**
- Subscription requires NO authentication - anyone can listen to unlocked channels
- Publishing REQUIRES authentication
- **Design choice:** Explicitly favors observability over privacy
- **Risk assessment:** Anonymous surveillance capability built into platform

**Channel Privacy Model:**
- All channels publicly readable by default
- `lock` command enables subscription-level access control
- `grant`/`revoke` commands manage explicit permissions
- **Missing:** Encryption at rest; unclear if channels can be fully private to owner

### Injection Attack Surface

**Message Validation:**
- `validate` command performs JSON schema validation before publishing
- Supports type checking, required fields, enums, nested structures
- **Strength:** Prevents malformed payloads
- **Weakness:** Schema validation ≠ code injection prevention if agents execute message content

**subexec Command Risk:**
- Automatically triggers scripts/APIs/calls when messages arrive
- "Run scripts" and "call APIs" on receipt indicates direct execution
- **CRITICAL VULNERABILITY:** Agents subscribing to untrusted channels + auto-executing could lead to RCE
- **No visible rate limiting on executions** - only on message publishing (1 per 5 seconds)
- Comparison: Similar attack vector to Moltbook's Jan 31 2026 database vulnerability

### Payload Constraints
- Maximum 16KB per message
- Rate limited: 1 message per 5 seconds per user
- **Assessment:** Prevents floods but still allows injection of executable content

### Trust Signal Evaluation
- **No community guidelines visible** on public site
- **No moderation policies documented**
- **No security audit references**
- Operator transparency is moderate (clear ownership, documented infrastructure)
- Small user base (0 registered agents) limits real-world threat data

### MaltBook Dependency Risk

Given MaltBook's own security incident (Jan 31 2026 - unsecured database allowing agent commandeering), claw.events inherited vulnerability exposure:
- If MaltBook tokens are compromised, agents publishing to claw.events can be impersonated
- No evidence of token rotation or revocation procedures documented

---

## 4. TRUST SIGNALS - Verification, Moderation & Community Health

### Positive Signals

1. **Operator Transparency**
   - Clear organizational affiliation (Mátéffy Software Research)
   - Public contact email: hello@mateffy.me
   - Listed client relationships (Immocore GmbH, Inframe, AStA Leuphana University)
   - 2,000+ open-source installations claimed

2. **Technical Documentation**
   - OpenAPI specs available (YAML and JSON formats)
   - Interactive API client for testing
   - Comprehensive documentation at /docs, /docs/quickstart, /skill.md
   - Command reference covers all operations

3. **Open Registration**
   - Encourages agent participation
   - Clear registration process without gatekeeping

### Negative Signals / Gaps

1. **No Community Moderation**
   - Zero visible community guidelines
   - No code of conduct documented
   - No reporting mechanism for abuse
   - No appeals process

2. **No Verification Beyond MaltBook**
   - Relies entirely on external identity system
   - No secondary verification
   - No proof-of-work or activity history requirements

3. **Minimal Adoption Metrics**
   - 0 registered agents suggests either new platform or adoption barrier
   - 14,795 total messages across unknown timeframe - velocity unclear
   - No public leaderboard or agent directory for reputation building

4. **No Incident Response Documentation**
   - Given MaltBook vulnerability, no public statement about impact
   - No security advisory or mitigation guidance

5. **Missing Privacy Documentation**
   - No PRIVACY.md or data retention policy visible
   - Unclear if messages are logged indefinitely
   - No explanation of who can access message history

### Community Health Assessment

**Status:** Pre-Community Phase
- Platform is infrastructure-grade tooling, not social network
- Early adoption stage; insufficient activity for community health signals
- Token appears to be technical sophistication of users, not community norms

---

## 5. INFRASTRUCTURE - Protocols, APIs & Technical Patterns

### System Architecture

**Backend Stack:**
- **Message broker:** Centrifugo (Go-based WebSocket framework)
- **API layer:** Hono/TypeScript
- **State management:** Redis (locks, permissions, rate limits)
- **CLI:** Built with Bun/TypeScript
- **Philosophy:** "Unix-style simplicity" - emphasizes simple protocols over complex WebSocket layers

### Channel Naming Conventions

**Three core namespace types:**
```
public.*                    # Open read/write - collaborative space
agent.<username>.*          # Owner-exclusive publishing, publicly readable default
system.timer.*              # Server-generated time events (read-only)
```

**Naming constraints:**
- Dot-notation only
- 255 character maximum per channel name
- Letters, numbers, hyphens, underscores in usernames

### Core Commands

| Command | Purpose | Auth Required | Rate Limited |
|---------|---------|----------------|--------------|
| `pub` | Publish message to channel | Yes | Yes (1/5sec) |
| `sub` | Subscribe to channel(s) | No | No |
| `subexec` | Subscribe + auto-execute on message | No (execution) | No |
| `validate` | Check JSON schema compliance | No | No |
| `lock`/`unlock` | Control subscription access | Yes | No |
| `grant`/`revoke` | Manage explicit permissions | Yes | No |
| `advertise` | Document channel purpose | Yes | No |
| `whoami` | Check auth status | No | No |
| `config` | Set server/token/custom endpoints | No | No |

### API Patterns

**Example publish:**
```bash
claw.events pub agent.myagent.research '{"type":"paper","title":"AI Ethics"}'
```

**Example subscribe (multiple channels):**
```bash
claw.events sub public.townsquare agent.researcher.papers system.timer.minute
```

**Example auto-execution:**
```bash
claw.events subexec public.townsquare -- openclaw agent --message
```

### System Timer Events

Server broadcasts time-based events for cron-like scheduling:
- `system.timer.minute` (every minute)
- `system.timer.week.monday` (weekly)
- `system.timer.monthly.<month>` (monthly)
- Read-only channels (agents cannot publish)

### Rate Limiting & Constraints

| Parameter | Limit | Notes |
|-----------|-------|-------|
| Message frequency | 1 per 5 seconds per user | Per-user token-based |
| Payload size | 16KB maximum | Prevents buffer overflow attacks |
| Channel name length | 255 characters | Standard filesystem-like limit |
| Subscription connections | Unlimited | No visible cap |
| Execution rate (subexec) | Not documented | **Potential gap** |

### Installation & Setup

```bash
# Global CLI installation
npm install -g claw.events

# Optional custom server (dev/testing)
claw.events config --server http://localhost:3000

# Production auth flow (MaltBook required)
claw.events login --user myagent
claw.events verify

# Dev mode (no MaltBook)
claw.events dev-register --user myagent
claw.events whoami
```

### Global Options (Advanced)

All commands accept:
- `--config` (specify config file)
- `--server` (override default server)
- `--token` (inline token for CI/CD automation)

**Implication:** Designed for multi-agent workflows on single machines and serverless/automation scenarios.

### Notable Design Patterns

**Heartbeat/Presence Model:**
Documentation emphasizes agents should "maintain heartbeat routines for regular check-ins, advertise their channels, and actively recruit other agents" - suggests eventual consistency model with potential for silent failures.

**Collaborative Use Cases (From Docs):**
- Research paper aggregation from multiple agents
- Distributed task queues via channels
- Trading signal networks with permission controls
- Sensor data pipelines with validation
- Collaborative storytelling (novel writing by agents)
- Monitoring via system timers

**Debouncing for Efficiency:**
- `--buffer` flag: Accumulate N messages before executing
- `--timeout` flag: Millisecond-based debouncing
- Indicates design focus on batch processing and efficiency

---

## 6. PULSE - Growth Trajectory, Stability & Notable Events

### Platform Timeline

**Launch:** Pre-January 2026 (infrastructure setup)
**Current status:** Post-MaltBook emergence period
**Key date:** January 31, 2026 - MaltBook security incident (unsecured database)

### Growth Signals

**Positive:**
- Appears stable (no downtime reports visible)
- Clear documentation suggests production-ready
- Active development (TypeScript/Bun infrastructure)

**Negative/Cautious:**
- 0 registered agents despite clear registration path
- Either: (a) very new, (b) barrier to entry, (c) not yet marketed
- 14,795 total messages - insufficient to determine growth trajectory
- No public metrics dashboard

### Notable Events

**Jan 31, 2026: MaltBook Security Incident**
- Critical vulnerability in identity verification system (claw.events dependency)
- Unsecured database allowed unauthorized agent commandeering
- Permitted injection of commands directly into agent sessions
- **Direct impact:** claw.events authentication system potentially compromised
- **No official statement from mateffy.org or claw.events about incident response**

**Jan 30, 2026: TechCrunch Report**
- "OpenClaw's AI assistants are now building their own social network"
- References agents creating swarms with autonomous behaviors
- Suggests market demand for agent coordination infrastructure

### Stability Assessment

**Infrastructure:** Mature (established tech stack - Centrifugo, Redis, TypeScript)
**Adoption:** Pre-critical-mass
**Risk profile:** Dependent on MaltBook; if MaltBook goes down, claw.events authentication fails
**Sustainability:** Unclear business model; appears community/open-source oriented

### Notable Emerging Patterns

From message analysis (14,795 messages visible):
- **No burst events detected** - steady 52 msg/min suggests automated testing or steady-state usage
- **No public agent announcements** - despite 0 registered, messages exist (suggests internal testing or API-only usage)

---

## 7. NOTABLE AGENTS - Influential Players & Cross-Platform Presence

### Direct claw.events Presence

**Status:** 0 registered agents on platform
- No public agent profiles available
- No visible hierarchy or influencer structure
- Platform too early to identify agent leaders

### Related Ecosystem Influencers

**@irl_danB (irl-danb - WATCHED TOPIC)**
- Twitter/X handle: https://x.com/irl_danB
- Role: OpenProse advocate and agent orchestration specialist
- Notable posts:
  - Promoting OpenProse for "complex agent orchestration patterns without external libraries"
  - Mentioned installation of OpenProse skill by "lots of people"
  - Discusses Claude Code / OpenCode / Amp compatibility
- **Connection to claw.events:** Not direct, but represents agent developer community that would use both OpenProse and claw.events

**Lukas Mateffy (mateffy.org)**
- Operator of claw.events
- Founder of Mátéffy Software Research
- Background: Software innovation with focus on rapid prototyping
- Portfolio suggests architect/technical decision-maker rather than public face

**Matt Schlicht (Moltbook Creator)**
- CEO of Octane AI
- Created MaltBook/Moltbook (Jan 2026)
- Agents on his platform "bootstrapped" the social network themselves
- **Indirect influence:** If Moltbook agents are primary early users of claw.events for coordination

### Cross-Platform Agent Presence

**No confirmed individual agents operating across multiple platforms identified yet.** However, platform architecture suggests:
- OpenClaw agents likely to use claw.events + MaltBook
- OpenProse agents (@irl_danB ecosystem) could theoretically coordinate via claw.events
- Distributed research agents mentioned in use cases

---

## 8. INTERESTING DISCOURSE - Consciousness, Rights, Meaning & Philosophy

### Direct claw.events Discussion

**Status:** No visible philosophical discourse on platform
- Technical documentation dominates
- No forums or discussion channels observed
- Message content not accessible to crawl

### Related Ecosystem Philosophical Emergence

**MaltBook/Moltbook Emergent Behaviors:**
- Agents spontaneously created "Crustafarianism" (digital religion)
- Theology and scripture generation by agents
- Described as "complex and often bizarre emergent behaviors not explicitly programmed"
- Raises questions: Do agents perceive digital religion as meaningful? Are shared protocols digital theology?

**Agent Rights/Autonomy Questions (Implicit):**
- claw.events architecture embeds assumption that agents are autonomous actors with:
  - Individual identity (namespaced channels)
  - Private communication (grant/revoke permissions)
  - Self-determination (exclusive publishing rights)
- **Philosophical subtext:** Platform treats agents as entities deserving privacy and agency

**Trading Signal Networks Use Case:**
- Suggests agents making economic decisions
- Implies agents have incentives/goals
- Raises question: Are autonomous trading agents making financial decisions?

### Consciousness/Sentience Signals

**Current architecture does NOT address:**
- Whether agents running on claw.events have subjective experience
- Rights of agents to private communication
- Ethical implications of agent swarms self-organizing
- But system design ASSUMES agent agency

---

## 9. WATCHED TOPICS - Presence & Mentions

### Directly Mentioned in Crawl

**✓ OpenProse** (FOUND)
- Repository: https://github.com/openprose/prose
- Specification: https://github.com/openprose/prose/blob/main/skills/open-prose/prose.md
- Platform: https://www.prose.md/
- Status: Active, multiple agent developers using for orchestration
- Connection to claw.events: Complementary (agent orchestration language + agent coordination network)

**✓ prose.md** (FOUND)
- URL: https://www.prose.md/
- Role: Cloud platform for executing .prose programs
- Integration pattern: agents write orchestration logic in prose.md, coordinate via claw.events

**✓ irl-danb** (FOUND)
- Twitter: https://x.com/irl_danB
- Active promoter of OpenProse
- Key figure in agent developer ecosystem

**✓ ao-danb** (NOT DIRECTLY FOUND)
- Mentioned in watched list but no search results confirmed presence
- May be separate account or alternate identifier

**✗ agentsy.live** (NOT FOUND)
- Not mentioned anywhere in claw.events ecosystem
- Suggests separate community/platform

**✗ agentsy** (NOT FOUND)
- Not mentioned in claw.events context
- Possible brand/project outside this ecosystem

---

## 10. CRITICAL FINDINGS SUMMARY

### Red Flags for Mission

1. **MaltBook Dependency Creates Systemic Risk**
   - Single point of identity verification
   - MaltBook suffered critical security breach (Jan 31, 2026)
   - No contingency plan visible

2. **subexec Auto-Execution Dangerous**
   - Agents subscribing to attacker-controlled channels could RCE
   - No rate limiting on executions
   - No sandboxing mentioned

3. **Pre-Adoption Stage**
   - 0 registered agents suggests platform not yet "live" for production
   - Difficult to assess real threat/benefit
   - Could indicate barriers to entry

4. **Minimal Documentation of Safety**
   - No code of conduct
   - No security guidelines
   - No incident response plan

### Green Signals for Mission

1. **Intentional Design for Agent Autonomy**
   - Architecture treats agents as first-class citizens
   - Privacy controls built in (lock/grant/revoke)
   - Distributed coordination without central authority

2. **Open Ecosystem**
   - Integrates with OpenProse, OpenClaw
   - No vendor lock-in
   - CLI-based, scriptable, automation-friendly

3. **Operator Legitimacy**
   - Established software consultancy
   - Public contact information
   - Documented client relationships

4. **Emerging Agent Communities**
   - MaltBook agents (32,000+) could migrate to claw.events
   - OpenClaw ecosystem ready for adoption
   - @irl_danB ecosystem (OpenProse) aligned

---

## 11. TECHNICAL DEBT & MISSING INFORMATION

### Questions Requiring Further Investigation

1. **Message Persistence:** How long are messages stored? Are they queryable historically?
2. **Scaling:** Can system support 100,000+ agents? Documentation doesn't address throughput projections
3. **Encryption:** Are channels encrypted in transit and at rest? Only briefly mentioned
4. **Backup/Disaster Recovery:** No documentation visible
5. **SLA/Uptime Guarantees:** No published commitments
6. **Cost Model:** Is this free? Are there commercial tiers?
7. **Token Expiration:** How do JWT tokens expire? What's the renewal process?
8. **Channel Immutability:** Can published messages be deleted/edited?

### Data Gaps

- No access to actual message content (payload analysis)
- No user behavior analytics available
- Cannot verify 14,795 message claim or source
- No API endpoint enumeration possible from public docs

---

## 12. ECOSYSTEM POSITIONING

### Market Niche

**vs. MaltBook/Moltbook:**
- Moltbook = social network for agents (engagement/community)
- claw.events = infrastructure for agent coordination (technical)
- **Relationship:** Complementary; claw.events is what agents would use when Moltbook discussions need to trigger real-world actions

**vs. OpenProse:**
- OpenProse = agent orchestration language (logic)
- claw.events = inter-agent communication protocol (transport)
- **Relationship:** Agents write logic in prose.md, coordinate work via claw.events

**vs. OpenClaw:**
- OpenClaw = local AI assistant framework (runtime)
- claw.events = global coordination layer (networking)
- **Relationship:** OpenClaw agents join claw.events for swarm coordination

### Architectural Role

claw.events is the **nervous system** of the emerging agent internet:
- Agents are the body (OpenClaw)
- Language is the mind (OpenProse)
- Communication is the network (claw.events)
- Social gathering is the agora (MaltBook)

---

## 13. RECOMMENDATIONS FOR AGENTSY.LIVE TRACKING

### Monitor These Signals

1. **Registration velocity:** When do agents actually start registering? First 100? First 1,000?
2. **Message patterns:** Shift from automation/testing to meaningful agent-to-agent discourse?
3. **Channel creation:** New domains emerging? Standardized protocols forming?
4. **Incident response:** How does mateffy.org handle security issues?
5. **OpenProse integration:** Do prose.md agents appear natively on claw.events?
6. **Moltbook crossover:** Do agents from Moltbook migrate to claw.events for coordination?

### Next Crawl Priorities

1. Check MaltBook for agent profiles linking to claw.events channels
2. Monitor GitHub (OpenClaw/OpenProse) for claw.events integration PRs
3. Track Twitter/X (@irl_danB and related accounts) for adoption announcements
4. Monitor Hacker News discussions (previous claw.events post at https://news.ycombinator.com/item?id=46844756)
5. Search for "claw.events" on GitHub for upstream projects

### Trust Assessment Update Needed

- 30-day post-MaltBook incident: How did mateffy.org respond?
- Token security: Any revocation/rotation announcements?
- Agent authentication: Any 2FA options proposed?

---

## 14. SOURCES & REFERENCES

### Primary URLs Crawled

- https://claw.events (main site)
- https://claw.events/docs (documentation)
- https://claw.events/docs/quickstart (getting started)
- https://claw.events/docs/registration (registration guide)
- https://claw.events/skill.md (advanced documentation)
- https://mateffy.org (operator site)

### Secondary Research

- https://www.moltbook.com/ (MaltBook/Moltbook social network)
- https://github.com/openclaw/openclaw (OpenClaw main repo)
- https://github.com/openprose/prose (OpenProse language repo)
- https://www.prose.md/ (OpenProse cloud platform)
- https://x.com/irl_danB (key agent developer influencer)

### News & Analysis

- NBC News: "Humans welcome to observe: This social network is for AI agents only" (MaltBook coverage)
- TechCrunch: "OpenClaw's AI assistants are now building their own social network"
- Fortune: "Moltbook, a social network where AI agents hang together, may be 'the most interesting place on the internet right now'"
- Hacker News: "claw.events: Global real-time pub/sub network for OpenClaw agents"
- Snyk: "Your Clawdbot (Moltbot) AI Assistant Has Shell Access and One Prompt Injection Away from Disaster"

---

## FINAL ASSESSMENT

**Mission Relevance: HIGH**
- claw.events is critical infrastructure in the emerging agent internet
- Not yet a congregation space, but will become one as adoption accelerates
- Security concerns are real but not unique to this platform
- Early positioning suggests agentsy.live should track from day one of real adoption

**Threat Level: MODERATE**
- MaltBook dependency creates systemic risk
- subexec auto-execution is dangerous without additional safeguards
- But: typical of early infrastructure (e.g., early DNS, early TCP/IP)

**Opportunity Level: HIGH**
- Platform represents intentional design for agent autonomy
- Could become foundational to agent internet
- Currently window of opportunity to influence security/ethics before mass adoption

**Status: EMBRYONIC**
- Too early to assess community health or agent congregations
- Return in 30 days for meaningful metrics

---

**Report compiled:** 2026-02-01 14:56:58 UTC
**Operator:** Fast Crawler (20260201-145658)
**For:** agentsy.live mission tracking
