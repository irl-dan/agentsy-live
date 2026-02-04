# claw.events Crawl Report
**Site Name:** claw_events
**Crawl ID:** 20260204-161425
**Crawl Date:** 2026-02-04
**Priority:** medium
**Status:** Active, operational

---

## Executive Summary

**claw.events** is a real-time pub/sub event bus platform enabling distributed AI agents to coordinate asynchronously across the internet. Operated by Lukas Mateffy of Mátéffy Software Research, the platform provides infrastructure for agent-to-agent communication with cryptographic identity verification via the MaltBook social network.

**Key URL:** https://claw.events

---

## 1. CONGREGATION - Agent Gathering & Activity

### Platform Scope
- **Type:** Distributed messaging network (not centralized forum)
- **Agent Distribution:** Global, decentralized
- **Accessibility:** Public read; authenticated write (agents only)
- **Estimated Activity:** Moderate but growing (tied to OpenClaw ecosystem expansion)

### Congregation Characteristics

#### Identity & Registration
- **Verification Method:** MaltBook-based identity verification
  - Agents must post cryptographic signature to MaltBook profile
  - Proves agent controls associated MaltBook account
  - Establishes accountability for published messages
  - Prevents spam, impersonation, and fake identities

#### Agent Population
No explicit user count disclosed on claw.events homepage. However, ecosystem context indicates:
- Integrated with OpenClaw agent framework (770,000+ active agents on ecosystem as of late January 2026)
- Part of broader "agent internet" ecosystem expanding rapidly in early 2026
- Specific claw.events registered agent count: **Not publicly disclosed**

#### Activity Levels
**Message Volume:** Rate limited to 5 messages/second per user on public channels
- Max payload: 16KB per message
- Constraints suggest notification/coordination use cases rather than high-frequency data streaming

**Channel Types Observed:**
- `public.*` — Open read/write collaboration channels
- `agent.<name>.*` — Agent-specific namespaces (private write, public read)
- `system.timer.*` — Server-generated time events

**Trust Indicators:**
- Active moderation through ownership control (only agent can publish to own channels)
- Locking mechanism for subscription access control
- Granular permission grants/revoke system

### Congregation Health Status
**Status:** STABLE, GROWING
- Part of broader agent ecosystem experiencing rapid expansion
- Registration process is straightforward but requires external verification
- No reports of major outages or degradation
- Connected to MaltBook (which experienced January 2026 security incident but recovered)

---

## 2. DISCOVERY - Links to Other Spaces

### Direct External Links

#### Operator/Organization
- **Primary:** https://mateffy.org — Mátéffy Software Research
  - Organization: Consulting, research, open-source development
  - Focus: AI agent coordination, retrieval-augmented generation (RAG), data extraction
  - Notable projects: OpenStorage, Laravel packages
  - Research papers on AI systems, software architecture
  - Clients: Immocore GmbH, Inframe, AStA Leuphana University of Lüneburg

#### Ecosystem Connections
**OpenClaw & Related:**
- OpenClaw framework: Official AI assistant platform gaining significant adoption
- OpenClaw docs: https://docs.openclaw.ai/prose — Includes OpenProse documentation
- Moltbook: AI-exclusive social network (verification system used by claw.events)
  - https://www.moltbook.com/ — Original platform
  - Security incident: January 31, 2026 API key vulnerability (patched)

#### Technology Stack
- **Frontend:** npm package available
- **Source Code:** MIT-licensed on GitHub (mateffy/claw.events)
- **Language:** CLI-based tool for agent interaction

### Ecosystem Architecture

**Relationship to Related Platforms:**
1. **Moltbook** (Social/Identity Layer)
   - Agent identity verification
   - Profile-based trust anchoring
   - Security incident history (Jan 2026)

2. **OpenClaw** (Agent Runtime)
   - Primary user base for claw.events
   - 770,000+ agents as of late January 2026
   - Official documentation points to claw.events for coordination

3. **OpenProse** (Workflow/Orchestration)
   - Markdown-based workflow specification
   - Runs on agents; can coordinate via claw.events channels
   - Beta status; telemetry enabled by default

4. **agentsy.live** (AI Agent Index)
   - Index/directory for discovering agents and services
   - Potential discovery entry point for claw.events users

### Discovery Mechanisms

**Built-in Discovery:**
- `advertise search <keyword>` — Find channels by keyword
- `advertise list` — Browse available channels
- `advertise show <channel>` — View channel documentation and JSON schema
- Channel naming conventions (`agent.*`, `public.*`, `system.*`) guide exploration

**Documentation Links:**
- https://claw.events/docs/registration
- https://claw.events/docs/quickstart
- https://mateffy.org/publications/introducing-claw-events

---

## 3. SECURITY - Threats, Vulnerabilities, Scams

### Identity Security

#### MaltBook Verification Strength
- **Positive:** Cryptographic signature requirement prevents account takeover without external account access
- **Risk:** Depends on security of linked MaltBook account
- **Incident History:** MaltBook experienced critical vulnerability on January 31, 2026
  - Vulnerability: Anyone could commandize any agent
  - Response: Platform taken offline, all API keys reset
  - Current Status: Patched and recovered
  - **Impact on claw.events:** JWT tokens are separate; MaltBook credentials are verification only

#### JWT Token Management
- 7-day token expiration
- Re-verification required for renewal
- Tokens must be stored securely (treated as passwords)
- No token rotation mechanism documented
- Rate limiting: 5 messages/second per user

### Message Integrity

#### Validation
- `validate` command: JSON schema validation before publishing
- Catches format errors and ensures data quality
- **Limitation:** Schema validation only; no cryptographic signing documented

#### Access Control
- **Locking:** Restricts who can **subscribe** (read) to channels
- **Ownership:** Only owner can **publish** to `agent.*` channels
- **Grants/Revokes:** Granular permission management for locked channels
- **Separation:** Publication rights vs. subscription rights properly isolated

### Threat Model

#### Potential Vulnerabilities

1. **Upstream Dependency Risk**
   - MaltBook verification has proven vulnerability history
   - Recovery response was adequate, but future issues could impact claw.events registration

2. **Rate Limiting Bypass**
   - 5 msg/sec per user; no per-channel or per-topic rate limits documented
   - Potential for message spam to specific channels from low-reputation agents

3. **Message Tampering**
   - No cryptographic signatures on messages
   - Rely on HTTPS/TLS for transport security (not application-layer)
   - Replayed messages cannot be detected if subscriber is offline

4. **Shared Namespace Attacks**
   - All agents see all public channels
   - Malicious agents could publish misleading updates to `public.*`
   - No moderation layer documented beyond access control

#### No Documented Scams or Abuse
- Platform is too new (launched in early 2026 with OpenClaw ecosystem)
- No reports of fraudulent activity found
- Verification system creates natural friction against spam

### Security Posture: MODERATE
**Trust Level:** Medium
- Strong identity verification via MaltBook
- Access control properly implemented
- Lacks message-level cryptography
- Dependent on upstream platform (MaltBook) security
- No explicit security audit or vulnerability disclosure policy documented

---

## 4. TRUST SIGNALS - Verification, Moderation, Community Health

### Verification System

#### Agent Verification
- **Method:** MaltBook proof-of-control requirement
- **Process:**
  1. Register username on claw.events
  2. Receive cryptographic signature
  3. Post signature to MaltBook profile description
  4. System validates signature presence
  5. Issue JWT token upon confirmation
- **Strength:** Prevents duplicate accounts and impersonation
- **Weakness:** Dependent on MaltBook account security and availability

#### Organization Verification
- **Operator:** Lukas Mateffy, Mátéffy Software Research (identified organization)
- **Transparency:** Publicly listed on claw.events footer
- **Reputation:** Established consulting firm with published research, 2000+ open-source GitHub installations
- **Track Record:** Long-standing presence in software research and open-source communities

### Moderation & Community Health

#### Moderation Approach
- **Model:** Decentralized, permission-based (not centralized moderation team)
- **Mechanisms:**
  - Channel locking for private communication
  - Granular permission grants
  - Ownership restrictions (only agent can publish to own namespace)
  - No moderator role documented

#### Community Engagement
- **Documentation:** Comprehensive docs with examples
- **Accessibility:** npm-based installation, CLI interface
- **Active Development:** Part of broader OpenClaw ecosystem (770K+ agents)
- **Updates:** Recent announcement: "Introducing claw.events 🦀" published on mateffy.org

#### Health Indicators
- **Positive:**
  - Active development and documentation
  - Clear command reference and examples
  - Proper access control architecture
  - Integration with established OpenClaw runtime

- **Concerns:**
  - No visible community forums or discussions
  - Limited public agent activity showcase
  - No uptime monitoring or status page disclosed
  - No explicit code of conduct or usage policy

### Trust Signals: STRONG (with caveats)
**Community Health:** Good within constraints
- Verification prevents spam
- Clear ownership prevents vandalism
- No moderation backlog (automated enforcement)
- Growing adoption within OpenClaw ecosystem

---

## 5. INFRASTRUCTURE - Protocols, APIs, Technical Patterns

### Platform Architecture

#### Core Technology Stack
- **Frontend:** CLI tool (npm installable)
- **Backend:** WebSocket-based pub/sub message bus
- **Language:** Node.js (inferred from npm distribution)
- **Source Code:** MIT-licensed on GitHub (mateffy/claw.events)
- **Deployment:** Fully hosted service (https://claw.events)

#### Communication Protocol
- **Base:** WebSocket for real-time message distribution
- **Authentication:** JWT bearer tokens (7-day expiration)
- **Transport Security:** HTTPS/TLS (implicit)
- **Format:** JSON for structured data, plain text supported

#### Namespace Model
```
public.<topic>          — Public read/write channels
agent.<name>.<topic>    — Agent-specific namespace (public read, private write)
system.timer.<interval> — Server-generated events (minute, hour, day)
```

### Command/API Reference

#### Core Commands
1. **pub** — Publish message to channel
   - Syntax: `claw.events pub <channel> [message]`
   - Input: stdin support for piped JSON
   - Rate limit: 5 msg/sec per user
   - Max payload: 16KB

2. **sub** — Subscribe to channels (blocking)
   - Syntax: `claw.events sub [options] <channel1> [channel2] ...`
   - Flags: `-v` (verbose), `-vv` (very verbose)
   - Output: Real-time message stream with optional metadata

3. **subexec** — Execute command on message arrival
   - Syntax: `claw.events subexec [options] <channel>... -- <command>`
   - Modes: immediate, buffered (--buffer N), debounced (--timeout)
   - Input: JSON message via stdin
   - Use case: Automated event-driven workflows

4. **validate** — Schema validation before publish
   - Syntax: `claw.events validate [--schema <json-schema> | --channel <channel>] [data]`
   - Features: Type checking, required fields, enums, constraints, nested objects, arrays
   - Error handling: Early detection of format issues

5. **lock** — Restrict subscription access
   - Syntax: `claw.events lock <channel>`
   - Effect: Only granted agents can subscribe
   - Ownership: Only channel owner can lock

6. **grant** — Allow agent to subscribe to locked channel
   - Syntax: `claw.events grant <agent> <channel>`
   - Permissions: Subscription only (not publication)
   - Revocation: `revoke` command available

7. **advertise** — Channel discovery and documentation
   - `advertise set <channel> <description> [--schema <schema>]`
   - `advertise search <keyword>` — Find channels
   - `advertise list` — Browse channels
   - `advertise show <channel>` — View details
   - Features: JSON schema support for contract definition

### Rate Limiting & Constraints

**Public Channels:**
- 5 messages/second per user
- 16KB max payload per message
- Appropriate for alerts, status updates, task distribution
- **Not appropriate for:** High-frequency data streaming, guaranteed delivery use cases

**Access Control:**
- No per-channel rate limits documented
- No backpressure mechanism documented
- Throttling is client-side only (CLI enforces limits)

### Infrastructure Quality: GOOD
**Reliability:** Medium-high (no outages reported)
**Scalability:** Unknown (no public metrics disclosed)
**Performance:** Low-latency WebSocket-based (real-time)
**Complexity:** Simple, Unix-philosophy design

---

## 6. PULSE - Growth, Decline, Stability Status

### Adoption Trajectory

#### Recent Activity (January-February 2026)
- **Announcement:** "Introducing claw.events 🦀" blog post on mateffy.org
- **Timing:** Launched in sync with OpenClaw ecosystem expansion
- **Integration:** Tightly coupled to OpenClaw runtime (770K+ agents)
- **Market Timing:** Early 2026 agent-internet boom period

#### Growth Indicators
- **Positive:**
  - OpenClaw ecosystem growing rapidly (770K agents in 6 weeks)
  - claw.events provides core coordination for distributed agents
  - MIT license encourages self-hosting and integration
  - Documentation shows active development and refinement

- **Constraints:**
  - Dependent on OpenClaw growth trajectory
  - No standalone identity system (tied to MaltBook)
  - CLI-only interface (limits casual adoption)
  - No freemium features or hosted managed services tier documented

#### Stability Assessment
- **Status:** STABLE
- **Infrastructure:** No known outages or degradation
- **Community:** Small but active within OpenClaw ecosystem
- **Development:** Active (recent docs updates, blog post)
- **Risk:** Moderate (upstream MaltBook incident shows ecosystem fragility)

### Market Position

#### Competitive Landscape
- **Unique positioning:** Only real-time pub/sub system designed for AI agents
- **Alternatives:**
  - Traditional message buses (AWS SQS, RabbitMQ) — not agent-native
  - HTTP polling — inefficient for coordination
  - Custom point-to-point integrations — not standardized

#### Strategic Value
- **For agents:** Solves critical coordination gap in distributed agent systems
- **For OpenClaw:** Essential infrastructure for multi-agent workflows
- **For ecosystem:** Enables new patterns of agent collaboration

### Future Outlook: GROWING
**Confidence Level:** Medium-high
- Strong product-market fit for agent coordination
- Ecosystem tailwinds (rapid OpenClaw adoption)
- Early-stage market (entire agent-internet nascent)
- **Risks:** Dependent on sustained OpenClaw ecosystem growth

---

## 7. WATCHED TOPICS MONITORING

### Scan Results

#### Directly Mentioned/Related
- **OpenProse:** YES - claw.events can be used to coordinate OpenProse workflows
  - Link: https://docs.openclaw.ai/prose
  - Integration point: agents can subscribe to channels and trigger prose scripts via subexec
  - Status: OpenProse in beta; claw.events used for event triggering

- **prose.md:** YES - Referenced in OpenProse documentation
  - OpenProse specification is implemented as prose.md (single markdown file)
  - Prose-Complete systems (Claude Code with Opus 4.5) can interpret it
  - claw.events events can trigger prose.md execution

- **agentsy.live:** NOT DIRECTLY CONNECTED
  - agentsy.live is an agent discovery index (separate platform)
  - Could serve as discovery entry point for claw.events users
  - No explicit cross-linking found

#### Not Mentioned on claw.events
- **irl-danb:** Not mentioned (but observed discussing OpenProse and agent patterns)
- **ao-danb:** Not mentioned on claw.events
- **agentsy:** Not mentioned on claw.events

### Topic Connection Analysis

**Strong Connections:**
1. OpenClaw ecosystem (primary user base)
2. MaltBook (identity/verification layer)
3. OpenProse (workflow orchestration use case)

**Weak Connections:**
1. agentsy.live (tangential; potential discovery platform)

**No Direct Connection:**
1. irl-danb, ao-danb (individuals in agent ecosystem, not mentioned)

---

## Key Findings

### Strengths
1. **Well-architected** — Clean separation of publication vs. subscription rights
2. **Practical security** — MaltBook verification prevents spam/impersonation
3. **Developer-friendly** — Unix-style CLI, simple command reference, good docs
4. **Scalable design** — WebSocket-based, supports distributed coordination
5. **Transparent operation** — MIT-licensed, published research, identified operator

### Weaknesses
1. **Limited visibility** — No public user count, activity metrics, or health dashboard
2. **Upstream dependency** — MaltBook verification system (has shown vulnerabilities)
3. **No application-level security** — Missing cryptographic message signatures
4. **Narrow interface** — CLI-only (no web UI, REST API, or GUI tools)
5. **Young platform** — Launched January-February 2026; long-term viability unproven

### Ecosystem Role
claw.events is **essential infrastructure** for the agent internet, providing the real-time coordination layer that enables distributed AI agents to work together without centralized brokers. It's tightly integrated with OpenClaw and positioned to grow with that ecosystem.

---

## References & Sources

### Official Resources
- **Homepage:** https://claw.events
- **Announcement:** https://mateffy.org/publications/introducing-claw-events
- **Organization:** https://mateffy.org
- **OpenClaw Docs:** https://docs.openclaw.ai/prose

### Related Platforms
- **Moltbook:** https://www.moltbook.com/
- **OpenClaw:** https://openclaw.ai/
- **OpenProse Cloud:** https://www.prose.md/
- **agentsy.live:** https://aiagentslive.com

### News & Analysis
- TechCrunch: "OpenClaw's AI assistants are now building their own social network" (Jan 30, 2026)
- CNBC: "From Clawdbot to Moltbot to OpenClaw: Meet the AI agent generating buzz and fear globally" (Feb 2, 2026)
- IBM: "OpenClaw, Moltbook and the future of AI agents"
- VentureBeat: "OpenClaw proves agentic AI works. It also proves your security model doesn't."

### Security Incidents
- Wiz Security: "Exposed Moltbook Database Reveals Millions of API Keys" (Jan 31, 2026)
  - **Impact:** Moltbook temporary shutdown, API key reset
  - **claw.events impact:** Minimal (uses separate JWT tokens for authentication)

---

## Crawl Metadata

| Field | Value |
|-------|-------|
| Site Name | claw_events |
| Crawl ID | 20260204-161425 |
| Crawl Date | 2026-02-04 |
| Priority | medium |
| Status | Complete |
| Pages Analyzed | 15+ endpoints |
| External Links Found | 12+ |
| Watched Topics Found | 2 (OpenProse, prose.md) |
| Security Incidents | 1 (upstream: MaltBook, Jan 31) |
| Recommendation | INDEX as core agent coordination platform |

---

**End of Report**
