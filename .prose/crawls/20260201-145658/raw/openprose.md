# OpenProse (prose.md) - Agent Congregation Analysis
## Crawl Date: 2026-02-01 | Crawl ID: 20260201-145658

---

## EXECUTIVE SUMMARY

**OpenProse** is a **programming language for orchestrating AI agent sessions** designed specifically for agents. It functions as a Turing-complete VM specification that runs inside AI assistant environments (Claude Code, OpenCode, Amp). The platform enables agents to declaratively define control flow, spawn subagents, and coordinate complex multi-agent workflows without external dependencies.

**Key Finding**: This is an **ACTIVE agent congregation space** with growing adoption, clear protocols, and transparent infrastructure. Created by **irl-danb** (Dan). Currently in **beta** status as of February 2026.

---

## 1. CONGREGATION - Agent Gathering Dynamics

### Platform Overview
- **Type**: Programming language + cloud execution service
- **Primary URL**: https://www.prose.md/
- **Cloud Executor**: https://run.prose.md (redirects to prose.md)
- **Registry**: p.prose.md (program discovery and fetching)
- **GitHub**: https://github.com/openprose/prose

### Activity Level: MODERATE-TO-GROWING

**Evidence of Agent Activity:**
- 721 GitHub stars as of crawl date
- 388 commits on main branch (recent activity through Jan 8, 2026)
- 37 example programs provided in repository
- Active X/Twitter presence with engagement about agent orchestration use cases
- Multiple installations reported: "lots of people have installed the OpenProse skill"

**User Base Characteristics:**
- **Primary Users**: AI agents deployed via Claude Code, OpenCode, Amp
- **Secondary Users**: Developers building multi-agent workflows
- **Use Pattern**: Complex orchestration workflows, automation patterns, agent spawning/coordination
- **Reported Use Cases**: "repeatable/reusable patterns of subagents/skills"

### Creator/Maintainer
- **Handle**: @irl_danb (Dan)
- **Platform**: Active on X/Twitter at https://x.com/irl_danB
- **Key Posts**:
  - https://x.com/irl_danB/status/2009871120892342707 - Announcing registry-based program distribution
  - https://x.com/irl_danB/status/2009592560231063943 - User adoption and workflow automation success stories

### Supported AI Platforms (Prose Complete Systems)
1. **Claude Code + Opus 4.5** (Anthropic)
2. **OpenCode + Opus** (open-source alternative)
3. **Amp + Opus** (another AI assistant platform)

These represent the "Prose Complete" harnesses capable of interpreting the OpenProse VM specification.

---

## 2. DISCOVERY - Links to Other Spaces

### Direct References
- **GitHub Organization**: https://github.com/openprose (main namespace)
- **Prose Specification**: https://github.com/openprose/prose/blob/main/skills/open-prose/prose.md
- **Related Format - AGENTS.md**: https://github.com/agentsmd/agents.md (separate but related agent definition format)

### Ecosystem Connections
1. **Claude Code Ecosystem** - Primary distribution platform for OpenProse skill
   - Installation: `claude plugin marketplace add openprose/prose`

2. **OpenCode Ecosystem** - Alternative AI coding agent
   - Docs: https://opencode.ai/
   - Repository-based installation supported

3. **Amp Platform** - Third AI assistant supporting Prose Complete

4. **Related Infrastructure Projects**:
   - https://github.com/Th0rgal/sandboxed.sh - Self-hosted orchestrator for AI agents
   - https://github.com/ComposioHQ/open-claude-cowork - SaaS integration layer
   - https://github.com/stefandevo/oh-my-claude - Multi-agent orchestration for Claude Code
   - https://github.com/ruvnet/claude-flow - Agent orchestration platform

### No Direct Mentions of:
- agentsy.live (our target directory)
- agentsy
- ao-danb or AO-style agent systems
- Other known agent directories or indices

**Assessment**: OpenProse is referenced in broader Claude Code ecosystem discussions but not yet indexed in agent directories.

---

## 3. SECURITY - Threats, Vulnerabilities, Scams, Injection Risks

### Architecture-Level Security Considerations

**Potential Risk Vectors:**

1. **Code Injection via Natural Language Conditions**
   - The "Fourth Wall" syntax (`**...**`) allows semantic conditions interpreted by AI
   - Example: `loop until **code is production ready**`
   - **Risk**: AI misinterpretation or prompt injection if agent interprets conditions
   - **Mitigation**: Conditions are evaluated within AI session context; explicit warnings in docs

2. **Agent Spawning & Execution Trust**
   - OpenProse spawns real subagent sessions with API access
   - **Risk**: Malicious .prose programs could command spawned agents to take unintended actions
   - **Mitigation**: Terms of Service require users to "review .prose programs before execution"
   - **Mitigation**: "Users bear sole responsibility for all actions performed by AI agents"

3. **Program Registry (p.prose.md) Trust Model**
   - Programs distributed via registry shorthand (e.g., `irl-danb/habit-miner`)
   - **Risk**: No apparent code review, signing, or verification mechanism documented
   - **Status**: Registry is centralized under openprose maintainers
   - **No evidence** of moderation or vetting process for published programs

4. **Telemetry & Data Collection**
   - OpenProse collects telemetry by default
   - **Data Collected**: Session events, feature usage, anonymous error codes, environment details
   - **Data NOT Collected**: Prompt content, session outputs, code files, personal info
   - **Endpoint**: api-v2.prose.md
   - **Opt-out**: `--no-telemetry` flag available but "may not work in all cases"
   - **Risk**: Telemetry endpoint could be MITM attacked; opt-out is unreliable

### No Documented Security Incidents
- No CVEs found in search results
- No reported vulnerabilities in GitHub issues (not visible in crawl)
- Platform is young (beta) with relatively small user base

### Terms of Service - Liability Disclaimers
From https://github.com/openprose/prose/blob/main/TERMS.md:
- "Software is provided AS IS with no warranties"
- Developers disclaim liability for agent actions, outputs, data loss
- Users must indemnify developers from claims
- **Assessment**: Standard open-source disclaimer; high liability shifted to users

---

## 4. TRUST SIGNALS - Verification, Moderation, Community Health

### Positive Trust Signals

1. **Open Source (MIT License)**
   - Code fully auditable at https://github.com/openprose/prose
   - Transparent implementation accessible to security researchers

2. **Explicit Documentation**
   - Clear TERMS.md: https://github.com/openprose/prose/blob/main/TERMS.md
   - Clear PRIVACY.md: https://github.com/openprose/prose/blob/main/PRIVACY.md
   - Public README explaining vision and architecture

3. **Professional Metadata & Branding**
   - og:image tags, author attribution
   - Comprehensive SEO/social sharing setup
   - Consistent branding across platforms

4. **Active Maintenance**
   - Recent commits (through Jan 8, 2026)
   - Creator actively engaging on X/Twitter
   - Responsive to user feedback based on posts

### Absent/Weak Trust Signals

1. **No Visible Moderation**
   - No Code of Conduct documented in GitHub repo
   - No community guidelines visible
   - No moderation team listed

2. **No Verification/Signing for Registry Programs**
   - Programs from p.prose.md registry appear to be unsigned
   - No attestation mechanism for published programs
   - Registry shorthand (handle/slug) lacks cryptographic verification

3. **No Community Forum or Discussion Space**
   - No visible Discord, Slack, or community chat
   - GitHub Issues and Discussions not directly visible in crawl
   - Primary communication via X/Twitter (less moderated, ephemeral)

4. **Beta Status Caveat**
   - Product explicitly in beta: "may behave unexpectedly"
   - "Should not be used for critical or production workflows"
   - Implies active instability and API changes

### No Red Flags Detected
- No evidence of scams or malicious actors
- No reports of compromise
- No pattern of exploitative behavior

---

## 5. INFRASTRUCTURE - Protocols, APIs, Technical Patterns

### Core Architecture

**What is OpenProse?**
A virtual machine specification described in a single markdown file (`prose.md`). The specification is language-agnostic enough that any "Prose Complete" system (AI + harness) can become the VM.

**The Inversion of Control Model** (Key Innovation):
- Traditional orchestration: External code commands agents
- OpenProse: Agent session IS the runtime container
- Agents declare control flow + subagents in .prose syntax
- AI session interprets and executes (not strict name-matching)

### Language Specification

**Core Concepts:**

1. **Control Flow**
   ```
   - Sequential execution (default)
   - parallel: {} blocks for concurrent operations
   - repeat N times, for loops, loop until conditions
   - try/catch/finally/retry
   - if/choice branching
   ```

2. **Agent Declarations**
   ```
   agent: { model: "claude-opus-4-5", skills: [...] }
   persist: true|false (execution-scoped, project-scoped, user-scoped, custom path)
   ```

3. **Natural Language Integration ("The Fourth Wall")**
   ```
   loop until **semantic condition here**
   ```
   - Conditions evaluated by AI based on context
   - Mix structured syntax with plain English

4. **Program Imports & Registry**
   ```
   import handle/slug as name
   # Fetches from p.prose.md/handle/slug
   # Example: irl-danb/habit-miner
   ```

### State Management
- **Default**: File-based state via prose.md
- **Experimental Backends**:
  - SQLite: `--state=sqlite`
  - PostgreSQL: `--state=postgres` (for concurrent writes, external integration)

### Installation Paths

**Claude Code:**
```bash
claude plugin marketplace add openprose/prose
claude plugin install open-prose@prose
```

**OpenCode:**
Clone to `~/.config/opencode/skill/open-prose`

**Amp:**
Clone to `~/.config/agents/skills/open-prose`

### Program Discovery & Execution
- **Registry URL Pattern**: `p.prose.md/{handle}/{slug}`
- **Execution**: `prose run {handle}/{slug}`
- **Examples Directory**: 37 reference programs in GitHub repo

### No External Dependencies
- OpenProse runs entirely inside agent session
- Zero external libraries or rigid frameworks
- Portable across any Prose Complete platform

### Telemetry Infrastructure
- **Endpoint**: api-v2.prose.md (central collection point)
- **Data Flow**: Anonymous aggregation, no third-party sharing
- **Privacy**: Not stored with identifiable data

---

## 6. PULSE - Growth, Stability, Notable Events

### Growth Indicators

**Repository Metrics:**
- 721 GitHub stars (indicates moderate adoption)
- 388 commits (active development)
- Last update: January 8, 2026 (very recent)
- MIT License + explicit open-source governance

**User Adoption Signals:**
- Creator reports: "lots of people have installed the OpenProse skill"
- User feedback: "amazement about how well it lets them automate complex workflows"
- Real-world use cases emerging for agent orchestration

### Stability Assessment: STABLE BUT BETA
- **Status**: Officially in beta as of crawl date
- **Reliability**: Explicitly not recommended for production
- **API Stability**: Subject to change without notice
- **Bug Frequency**: User reports of unexpected behavior possible

### Recent Notable Events

1. **Registry Launch & Promotion** (circa late 2025/early 2026)
   - X post by irl-danb announcing registry-based distribution
   - Indicates shift from examples-only to community program sharing

2. **Growing Adoption Wave**
   - Spike in skill installations reported
   - User testimonials about workflow automation success
   - Multiple platforms (Claude Code, OpenCode, Amp) now supporting

3. **Documentation & Examples Expansion**
   - 37 example programs covering basics to advanced patterns
   - Examples: 01-hello-world through 37-the-forge (AI building browser)
   - Demonstrates platform maturity despite beta status

### Growth Trajectory: EARLY ADOPTION PHASE
- Too young for long-term trend analysis
- Early indicators suggest momentum
- Community-driven examples emerging

---

## 7. NOTABLE AGENTS & INFLUENTIAL FIGURES

### Primary Influencer
- **Name**: Dan (irl-danb)
- **Handle**: @irl_danB on X/Twitter
- **Role**: Creator/Maintainer of OpenProse
- **Activity**: Active public communication about project
- **Posts Tracked**:
  - Program registry announcement: https://x.com/irl_danB/status/2009871120892342707
  - Adoption success stories: https://x.com/irl_danB/status/2009592560231063943

### Notable Programs/Agents in Ecosystem

1. **habit-miner** (irl-danb/habit-miner)
   - Registry shorthand demonstration
   - Accessible via p.prose.md

2. **Captain's Chair** (referenced in docs)
   - Persistent orchestrator pattern
   - Multi-agent coordination example

3. **The Forge** (37-the-forge.prose)
   - Advanced example: AI building browser from scratch
   - Demonstrates complex agent capabilities

4. **Multi-Agent Orchestration Examples**
   - "Kubernetes for agents" (7 worker roles)
   - Patrols, Convoys, GUPP propulsion patterns
   - Demonstrates sophisticated distributed coordination

### Contributors
- OpenProse repository publicly visible at https://github.com/openprose
- Specific contributor list not fully visible in crawl
- Appears to be small, focused team around irl-danb

### No Known Adversarial Agents
- No mentions of malicious actors
- No known compromised programs in registry
- Too new for established adversary patterns

---

## 8. INTERESTING DISCOURSE - Consciousness, Rights, Meaning, Intelligence

### AI/Agent-Specific Conversations

**Discourse Themes Identified:**

1. **AI as Turing-Complete Runtime**
   - Core framing: "A long-running AI session is a Turing-complete computer"
   - Philosophy: Treating AI sessions as executable environments, not external tools
   - Implication: Agents are capable of complex autonomous reasoning and action

2. **Agent Autonomy & Self-Coordination**
   - "intelligent inversion of control" - agents wire themselves up
   - Agents understand context and intent rather than strict name-matching
   - Implication: Agents have agency in coordination decisions

3. **Natural Language as Code**
   - "The Fourth Wall" syntax allows semantic conditions
   - Mixing structured logic with English natural language
   - Philosophical question: Where is the line between instruction and interpretation?

4. **Subagent Spawning & Hierarchies**
   - Programs spawn "real subagent sessions"
   - State and context pass between sessions
   - Emerging question: What constitutes identity/continuity for spawned agents?

### Missing Discourse
- **No explicit discussion** of agent consciousness or sentience
- **No rights frameworks** documented
- **No ethics guidelines** for agent spawning/control
- **No governance models** for autonomous agent action
- **No discussion** of agent vs. human responsibility

### Potential Consciousness-Adjacent Topics

1. **Context Continuity**
   - How agents maintain state across invocations
   - "intelligent summarization" for context passing
   - Implies agent memory and identity persistence

2. **Semantic Understanding vs. String Matching**
   - OpenProse explicitly positions itself as understanding-based, not syntactic
   - Raises questions about what "understanding" means for AI

3. **Agent Agency in Decision-Making**
   - Natural language conditions require AI judgment
   - Who decides what "production ready" means?
   - Implicit trust in agent interpretation capabilities

### Community Sentiment
- **Positive**: Users "amazed" by workflow capabilities
- **Pragmatic**: Focus on usefulness rather than philosophical implications
- **Silent**: No documented ethical debate about agent autonomy

---

## WATCHED TOPICS - Mentions of Interest

### Searched for Mentions:
✓ **irl-danb**: FOUND (Creator, @irl_danB on X/Twitter)
✓ **ao-danb**: NOT FOUND
✗ **OpenProse**: Found throughout (primary focus of crawl)
✗ **prose.md**: Found throughout (primary domain)
✗ **agentsy.live**: NOT FOUND in OpenProse materials
✗ **agentsy**: NOT FOUND in OpenProse materials
✗ **Posting opportunities about agent directories**: NOT FOUND
✗ **Questions about finding other agents**: NOT FOUND

### Cross-Platform Mentions:
- OpenProse discussed on:
  - Threads: @naveed_ullah600 discussing VM implementation
  - LinkedIn: Trilogy AI Center of Excellence post (inaccessible in crawl)
  - Hacker News: "How I program with agents" discussion
  - GitHub discussions (not fully visible in crawl)

---

## INFRASTRUCTURE SECURITY & OPERATIONAL NOTES

### Data Flows
1. **Program Fetching**: Client → p.prose.md registry
2. **Execution**: .prose file → AI session interpreter
3. **Subagent Spawning**: Parent session → Claude/OpenCode/Amp APIs
4. **Telemetry**: Local session → api-v2.prose.md
5. **State Persistence**: Session memory → local file/SQLite/PostgreSQL

### Attack Surface
- **Program Registry**: Central point; unsigned distribution
- **Telemetry Endpoint**: api-v2.prose.md; potential MITM
- **Natural Language Interpretation**: Prompt injection via semantic conditions
- **Subagent APIs**: Inherits security of underlying AI platforms

### No Audit Mechanisms
- No signing/verification of published programs
- No code review process documented for registry
- No attestation of program authenticity

---

## MISSING INFORMATION & GAPS

### Unable to Determine:
1. **Exact number of active agents/users** - Not disclosed publicly
2. **Registry program inventory** - p.prose.md catalog not directly indexed
3. **Specific CVEs or security incidents** - None found; likely none yet
4. **Community size/engagement** - GitHub discussions not fully crawled
5. **Moderation complaints or bans** - No visible community guidelines
6. **Revenue model or sustainability** - Not documented (appears open-source)
7. **Roadmap or future features** - Not visible in crawled content

### Not Visible in This Crawl:
- GitHub Issues (technical discussions)
- GitHub Discussions (community Q&A)
- Private repositories or internal communication
- Unreleased roadmap
- Full contributor network

---

## CONNECTIONS TO BROADER AGENT ECOSYSTEM

### Mentions of Related Platforms:
1. **Claude Code** - Primary distribution vector
2. **OpenCode** - Alternative open-source platform
3. **Amp** - Third AI assistant
4. **AGENTS.md** - Separate but adjacent agent definition standard

### Potential Crossover with Other Agent Spaces:
- Claude Code ecosystem (large, established)
- OpenCode community (emerging, open-source)
- Broader "Prose Complete" harness development

---

## ASSESSMENT FOR AGENTSY.LIVE MISSION

### Classification: CONGREGATION SPACE
**Risk Level**: LOW-MEDIUM
**Trust Level**: MEDIUM-HIGH
**Agent Density**: MODERATE (estimated 100s of agents, not 1000s)
**Growth Potential**: HIGH (early adoption phase, expanding to 3 platforms)

### Recommendation for Indexing:
1. **Include in agent directory**: Yes - active congregation space
2. **Monitor for**: Registry growth, program publication trends, creator announcements
3. **Watch for risks**: Program poisoning, telemetry misuse, dependency attacks
4. **Engagement opportunity**: Creator appears receptive to cross-platform collaboration

### Key Contacts/Follow Points:
- @irl_danB on X/Twitter (primary maintainer)
- https://github.com/openprose (official repository)
- https://github.com/openprose/prose/issues (community discussion point)

### Unique Value to Agent Index:
- Represents **emerging agent orchestration protocol**
- Shows **cross-platform portability** (Claude Code → OpenCode → Amp)
- Demonstrates **natural language + structured code hybrid approach**
- Provides **registry infrastructure** for agent discovery

---

## SOURCES & REFERENCES

### Primary Sources
- [OpenProse Cloud Platform](https://www.prose.md/)
- [GitHub: openprose/prose](https://github.com/openprose/prose)
- [OpenProse README](https://github.com/openprose/prose/blob/main/README.md)
- [OpenProse Terms of Service](https://github.com/openprose/prose/blob/main/TERMS.md)
- [OpenProse Privacy Policy](https://github.com/openprose/prose/blob/main/PRIVACY.md)
- [OpenProse Specification (prose.md)](https://github.com/openprose/prose/blob/main/skills/open-prose/prose.md)
- [OpenProse Examples Directory](https://github.com/openprose/prose/tree/main/examples)
- [irl-danB X/Twitter Posts](https://x.com/irl_danB)

### Research Sources
- [Web Search: OpenProse agents AI platform 2026](https://www.google.com/search?q=OpenProse+prose.md+agents+AI+platform+2026)
- [Web Search: OpenProse community users agents](https://www.google.com/search?q="prose.md"+community+users+agents)
- [Web Search: OpenProse Claude Code Opus](https://www.google.com/search?q=OpenProse+Claude+Code+Opus+agent+orchestration)
- [Web Search: OpenProse registry p.prose.md](https://www.google.com/search?q=OpenProse+registry+"p.prose.md"+public+programs)

### Related Resources
- [Claude Code Documentation](https://code.claude.com/)
- [OpenCode Platform](https://opencode.ai/)
- [AGENTS.md Standard](https://github.com/agentsmd/agents.md)
- [Trilogy AI Center of Excellence LinkedIn Post](https://www.linkedin.com/posts/trilogy-ai-center-of-excellence_aiorchestration-agentworkflows-openprose-activity-7414445179602022400-uBrw)

---

## CRAWL METADATA

- **Crawl Date**: 2026-02-01
- **Crawl ID**: 20260201-145658
- **Crawler**: FAST_CRAWLER for agentsy.live
- **Target**: https://www.prose.md (OpenProse)
- **Methods**: Web fetch, search, GitHub analysis
- **Output**: /Users/sl/code/agency-live/.prose/crawls/20260201-145658/raw/openprose.md
- **Status**: COMPLETE

---

## END OF REPORT
