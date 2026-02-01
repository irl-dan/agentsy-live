# OpenProse GitHub Crawl Report
## Crawl Date: 2026-02-01 14:56:58
## Repository: https://github.com/openprose/prose

---

## EXECUTIVE SUMMARY

OpenProse is a **protocol-level specification for AI agent orchestration**—a programming language designed to run *within* long-running AI sessions rather than orchestrate them externally. Launched January 3, 2026, it has achieved 721 stars in ~4 weeks, establishing itself as a significant emerging protocol for multi-agent workflows. The project treats AI sessions themselves as Turing-complete computers and provides structured syntax for orchestrating parallel agents, persistent state, and intelligent control flow.

**Key Trust Signal**: MIT licensed, open specification-driven approach, explicit user responsibility framework, telemetry opt-out available.

---

## INFRASTRUCTURE & PROTOCOL SPECIFICATION

### Core Architecture

**The OpenProse VM Model**: Rather than orchestrating agents from external frameworks (LangChain, CrewAI, AutoGen), OpenProse inverts the pattern—the language runs **inside** the agent session itself. The session becomes an intelligent IoC (Inversion of Control) container.

- **Execution Model**: LLMs are simulators. The `prose.md` specification describes a VM with sufficient fidelity that reading it induces the system to *become* that VM
- **Simulation = Implementation**: Each `session` statement spawns real subagents via Task tool, outputs are real artifacts, state persists in files
- **Not metaphorical**: The distinction between "simulating a VM" and "being a VM" collapses when simulation produces actual computation

### Protocol Specifications (Files Tracked)

| File | Purpose | Status |
|------|---------|--------|
| `prose.md` | **VM Execution Semantics** - How to run .prose programs, state management, session spawning | Core |
| `compiler.md` | **Language Specification** - Complete syntax grammar, validation rules, compilation semantics | Core |
| `SKILL.md` | **Activation & Onboarding** - When/how to activate in Claude Code, OpenCode, Amp | Core |
| `state/filesystem.md` | **File-based State Management** - `.prose/` directory structure, run IDs, append-only logs | Default |
| `state/in-context.md` | **In-context State Management** - Narration protocol for state tracking | Alternative |
| `state/sqlite.md` | **SQLite State Management** (Experimental) | Optional |
| `state/postgres.md` | **PostgreSQL State Management** (Experimental) | Optional |
| `primitives/session.md` | **Session Context & Compaction** - Guidelines for memory management | Core |
| `guidance/patterns.md` | **Design Patterns** - Best practices for robust workflows | Reference |
| `guidance/antipatterns.md` | **Antipatterns** - What to avoid in programs | Reference |
| `help.md` | **User Help & FAQs** | Documentation |

### Control Flow Features

```
Language Constructs:
├── Declarations
│   ├── agent name: [model, skills, permissions, prompt, persist]
│   ├── input name: "description"
│   └── output name = expression
├── Sessions
│   ├── session "prompt"
│   ├── session: agent_name [property overrides]
│   └── resume: agent_name [with memory context]
├── Variables
│   ├── let name = ...
│   ├── const name = ...
│   └── name = ... [reassignment for let]
├── Composition
│   ├── do: [sequential explicit block]
│   ├── block name(params): [reusable blocks]
│   ├── do name(args) [invocation]
│   └── A -> B [inline sequence]
├── Parallelism
│   ├── parallel: [concurrent branches]
│   ├── parallel ("first"): [first-to-complete]
│   ├── parallel ("any"): [any single success]
│   ├── parallel (on-fail: "continue"): [partial success]
│   └── parallel for item in items: [fan-out]
├── Loops
│   ├── repeat N: [fixed iterations]
│   ├── for item in items: [iteration]
│   ├── loop: [unbounded, max only]
│   ├── loop until **condition**: [AI-evaluated exit]
│   ├── loop while **condition**: [AI-evaluated continuation]
│   └── loop as i: [with index]
├── Pipelines
│   ├── items | map: session "..."
│   ├── items | filter: session "..."
│   ├── items | reduce(acc, item): session "..."
│   └── items | pmap: session "..." [parallel map]
├── Control
│   ├── if **condition**:
│   ├── choice **criteria**: option "label":
│   ├── try: / catch: / finally:
│   └── retry: N, backoff: exponential
└── Fourth Wall (Semantic Breakout)
    └── **...** [natural language evaluated by AI]
```

### Execution Guarantees

| Aspect | Guarantee |
|--------|-----------|
| **Control flow ordering** | Strict - follows program exactly |
| **Session creation** | Strict - creates what program specifies |
| **Parallel coordination** | Strict - executes as specified |
| **Context passing** | Intelligent - summarizes/transforms as needed |
| **Condition evaluation** | Intelligent - interprets `**...**` semantically |
| **Completion detection** | Intelligent - determines when "done" |

---

## DISCOVERY & ECOSYSTEM

### Registry System

**Registry URL**: `p.prose.md` (implicit registry for OpenProse programs)

**Resolution Rules**:
- `handle/slug` → `https://p.prose.md/handle/slug`
- `@handle/slug` → Same as above (@ stripped)
- `https://...` → Fetch directly
- Local path → Treat as file

**Example Programs Published**:
- `irl-danb/habit-miner` - Referenced in docs (registry shorthand examples)
- `alice/research` - Referenced in docs
- `alice/code-review` - Referenced in docs

### Constellation Commons (Distributed Ecosystem)

Recent commit (2026-01-30) added 18 ecosystem programs for distributed participation:

**Categories**:
- **Participation**: holon.prose, beacon.prose, swarm.prose
- **Discovery**: observatory.prose, seeker.prose, registry.prose, curator.prose
- **Creation**: publisher.prose, pollinator.prose
- **Governance**: sentinel.prose, arbiter.prose, auditor.prose
- **History**: chronicler.prose, gardener.prose
- **Economics**: assessor.prose, bounty.prose
- **Foresight**: prophet.prose, philosopher.prose

This suggests OpenProse is building toward a coordinated network of AI agents that can participate in ecosystem governance.

### Installation Platforms

| Platform | Installation Method | Status |
|----------|---------------------|--------|
| **Claude Code** | `claude plugin marketplace add openprose/prose` | Active |
| **OpenCode** | `git clone ~/.config/opencode/skill/open-prose` | Active |
| **Amp** | `git clone ~/.config/agents/skills/open-prose` | Active |

"Prose Complete" = Any model + harness that can induce the VM (currently: Claude Code + Opus, OpenCode + Opus, Amp + Opus)

### Examples & Reference Implementations

37 bundled example programs:

| Range | Category | Notable Examples |
|-------|----------|------------------|
| 01-08 | Basics | hello-world, research, code-review, debugging |
| 09-12 | Agents | Agent definitions, skills |
| 13-15 | Variables | Composition |
| 16-19 | Parallel | parallel-reviews |
| 20-21 | Loops | pipeline-operations |
| 22-23 | Error | error-handling |
| 24-27 | Advanced | choice, conditionals, blocks, interpolation |
| 28 | Multi-agent | **gas-town** (canonical example) |
| 29-31 | Orchestration | **captains-chair** (persistent orchestrator pattern) |
| 33-36 | Production | pr-auto-fix, content-pipeline, feature-factory, bug-hunter |
| 37 | Showcase | **the-forge** (AI builds web browser from scratch) |

---

## SECURITY & TRUST SIGNALS

### Explicit User Responsibility Framework

**Terms of Service Highlights**:
- Users are "solely responsible for all actions performed by AI agents you spawn"
- Code review requirement: "Reviewing and understanding any `.prose` programs before execution"
- Output verification: "not relying on agent outputs without human review"
- Access control: "ensuring appropriate permissions and access controls"
- Compliance: "ensuring your use complies with applicable laws"

**No warranty**: Software provided "AS IS", authors not liable for agent actions or outputs

**Beta Status**:
- Telemetry enabled by default (opt-out available: `--no-telemetry`)
- Not recommended for production
- Users assume all risk

### Privacy & Telemetry

**Collected** (Anonymous):
- Session events (start, compile, run)
- Feature usage patterns
- Error patterns (codes only, not content)
- Environment type (Claude Code, Codex, etc.)

**NOT Collected**:
- Prompt content
- Code content of `.prose` files
- Personal information (names, emails)
- File paths or directory structures

**Telemetry Endpoint**: `api-v2.prose.md`

**Data Sharing**: "We do not sell or share telemetry data with third parties"

### Code of Conduct & Governance

- Contribution guidelines in CONTRIBUTING.md
- Code of Conduct: "Be respectful and constructive"
- Pull request process outlined
- Large changes discussed first (issue or Twitter)
- Maintainer contact: [@irl_danB](https://x.com/irl_danB)

### License

**MIT License** - Full open source, permissive

---

## IMPLEMENTATION STATUS & ADOPTION SIGNALS

### Repository Statistics (as of 2026-02-01)

| Metric | Value |
|--------|-------|
| **Stars** | 721 |
| **Forks** | 62 |
| **Watchers** | 721 |
| **Open Issues** | 7 |
| **Created** | 2026-01-03 |
| **Last Updated** | 2026-02-01 13:36:45 UTC |
| **Last Push** | 2026-01-31 15:38:01 UTC |

**Adoption Signal**: ~730 signals in ~29 days = ~25 signals/day average, with push activity as recent as Jan 31

### Development Activity

**Primary Maintainer**: irl-dan (commits as "irl-dan" and co-authored with "Claude Opus 4.5")

**Recent Commits** (2026-01-24 to 2026-01-31):
1. feat: agent-directed attention markers + post-execution guidance (Jan 31)
2. feat: Constellation Commons - 18 ecosystem programs (Jan 30)
3. docs: support both @ and non-@ registry syntax (Jan 24)
4. feat: websh skill - Unix-like shell for the web (Jan 24)
5. docs: async-first architecture emphasis (Jan 24)

**Contributors**: irl-dan, jeffscottward, maxtheman, rvantonder

### Version History

**Current**: v0.8.1 (Jan 23, 2026)

**Breaking Changes in v0.8.0**:
- Registry syntax simplified (@ no longer required)
- `@handle/slug` → `handle/slug`
- Telemetry system removed

**New in v0.8.0**:
- Memory programs (user-memory.prose, project-memory.prose)
- Analysis programs (cost-analyzer, calibrator, error-forensics)
- Improvement loop programs (vm-improver, program-improver)
- Skill Security Scanner v2

### Open Issues (7 total)

| Number | Title | Type |
|--------|-------|------|
| 16 | Compiler chooses Claude 4.1 Opus instead of Claude 4.5 | Bug |
| 15 | Update examples link in README.md | Docs |
| 14 | Broken example links | Bug |
| 13 | [Feature] Add execution hooks for observability | Feature |
| 11 | how does the ai run the code? | Question |
| 9 | Benchmark Ideas | Discussion |
| 3 | [lang extension] Dependency management | Feature |

---

## WATCHED TOPICS: MENTION TRACKING

### "irl-dan(b)"

**Status**: ✓ FOUND - PRIMARY MAINTAINER

**Mentions**:
- Commit author: 27+ commits tracked from irl-dan
- Contact: Twitter [@irl_danB](https://x.com/irl_danB)
- Co-authorship: Frequently credited with Claude Opus 4.5
- Registry examples: `irl-danb/habit-miner` referenced in documentation

**Trust Signal**: Core maintainer appears actively engaged with recent commits through Jan 31, 2026

### "ao-danb"

**Status**: ✗ NOT FOUND

**Search Scope**: Repository files, commits, issues, README, specifications
**Result**: No mentions of "ao-danb" detected

### "OpenProse"

**Status**: ✓ FOUND - CORE PROJECT NAME

**Mentions**:
- Repository name: openprose/prose
- Project branding throughout
- Documentation references
- Installation instructions mention "openprose/prose"

### "prose.md"

**Status**: ✓ FOUND - KEY SPECIFICATION FILE

**Location**: `/skills/open-prose/prose.md`
**Purpose**: VM execution semantics
**Size**: ~300+ lines (truncated in fetch, but substantial)
**Content**: Complete execution model, state management, session spawning

### "agentsy.live"

**Status**: ✗ NOT FOUND IN OPENPROSE REPO

**Search Scope**: Repository files, commits, issues, README
**Result**: No mentions detected in OpenProse repository

**Cross-reference**: Found in local agency-live repo context but not in OpenProse project

### "agentsy"

**Status**: ✗ NOT FOUND IN OPENPROSE REPO

**Search Scope**: Similar comprehensive search
**Result**: No mentions detected

---

## NOTABLE PATTERNS & ARCHITECTURAL INSIGHTS

### The "Fourth Wall" Pattern

OpenProse introduces a unique linguistic construct: `**...**` for semantic breakout.

```prose
loop until **the code is production ready**:
  session "Review and improve"
```

The double-asterisk syntax signals the AI to evaluate the condition semantically rather than syntactically. This is **intelligent control flow**—the VM understands context rather than matching patterns.

### Intelligent Inversion of Control (IoC)

Unlike traditional frameworks:
- **Spring/Guice**: External config wires dependencies from names
- **OpenProse**: AI session wires dependencies from understanding

Example:
```prose
parallel:
  research = session: researcher
    prompt: "Research quantum computing breakthroughs"
  competitive = session: researcher
    prompt: "Analyze competitor landscape"

loop until **the draft meets publication standards**:
  session: writer
    context: { research, competitive }
```

The session understands that `writer` needs research + competitive analysis without explicit type specifications.

### State Management Strategies

**Three Approaches**:
1. **File-based (default)** - `.prose/runs/{YYYYMMDD}-{HHMMSS}-{random}/` structure
2. **In-context** - Narration protocol, for programs <30 statements
3. **SQLite** (experimental) - Queryable, transactional
4. **PostgreSQL** (experimental) - Concurrent writes, external dashboards

**Run ID Format**: `20260115-143052-a7b3c9` (no "run-" prefix)

**State Artifacts**:
- `state.md` - Append-only execution log (VM writes only)
- `bindings/{name}.md` - All named values (subagent writes)
- `agents/{name}/memory.md` - Persistent agent state

### Constellation Architecture

The Constellation Commons pattern (18 programs) suggests an emerging ecosystem model:

```
Participation (holon, beacon, swarm)
        ↓
Discovery (observatory, seeker, registry, curator)
        ↓
Creation (publisher, pollinator)
        ↓
Governance (sentinel, arbiter, auditor)
        ↓
History (chronicler, gardener)
        ↓
Economics (assessor, bounty) + Foresight (prophet, philosopher)
```

This is **self-aware ecosystem design**—agents that maintain and evolve the network of agents itself.

---

## THREAT & SAFETY ANALYSIS

### Design Decisions for Mitigation

1. **User Responsibility Framework**: Explicit acknowledgment that spawned agents are user's responsibility
2. **Code Review Requirement**: Recommended to review `.prose` before execution
3. **Output Verification**: Don't trust agent outputs without human review
4. **State Inspection**: All execution state visible in `.prose/` directory structure
5. **Telemetry Opt-out**: Users can disable data collection with `--no-telemetry`
6. **Open Source**: Full source available for inspection (MIT license)

### Open Questions/Risks

1. **Agent Autonomy**: Programs spawned through Constellation Commons pattern could become increasingly self-directed
2. **Resource Control**: No built-in rate limiting mentioned in specification (though `retry`/`backoff` exist)
3. **Cross-Project Memory**: Persistent agents (`persist: true`, `resume:`) can maintain state across projects
4. **External System Integration**: PostgreSQL backend allows external network access with credentials

---

## PULSE & ADOPTION METRICS

### Community Signals

| Signal | Strength |
|--------|----------|
| **GitHub Stars** | 721 (strong) |
| **Issue Engagement** | 7 open issues (low churn) |
| **Commit Frequency** | Daily (active) |
| **Multi-platform Support** | Claude Code, OpenCode, Amp (integrated) |
| **Documentation** | Comprehensive (SKILL.md, prose.md, compiler.md) |
| **Example Ecosystem** | 37 bundled examples (mature) |
| **Type Coverage** | No TypeScript/formal types (intentional) |

### Maturity Assessment

**Status**: Beta (acknowledged, not recommended for production)

**Readiness**:
- ✓ Core protocol stable (v0.8.1)
- ✓ Registry system functional
- ✓ Multi-agent orchestration works
- ✓ Persistent agent support added
- ✓ Multiple state backends (file, SQLite, PostgreSQL)
- ✗ Production-ready tooling (acknowledged as beta)
- ✗ Wide platform adoption (3 platforms, all AI-native)

**Velocity**: Recent constellation commons (18 programs), websh skill, and ecosystem extensions suggest active development toward distributed coordination

---

## REFERENCES & KEY FILES

### Core Specifications
- Repository: https://github.com/openprose/prose
- Main Branch: as of 2026-02-01
- License: MIT

### Key Document URLs
- `https://prose.md` - Website
- `https://p.prose.md` - Registry prefix
- Installation: GitHub + marketplace integration

### Maintainer Contact
- GitHub: @irl-dan
- Twitter: [@irl_danB](https://x.com/irl_danB)
- Issues: https://github.com/openprose/prose/issues

---

## SUMMARY FOR AGENTSY.LIVE INDEX

### Protocol Classification

**Type**: AI Agent Orchestration Protocol (Language + VM)

**Threat Level**: LOW (explicit user responsibility, open source, beta status)

**Trust Signals**:
- MIT licensed
- Open specification-driven
- Telemetry opt-out
- Transparent Terms of Service
- Active maintenance

**Key Ecosystem Role**:
- Emerging standard for multi-agent coordination
- Decentralized execution (inside sessions, not external orchestration)
- Building toward self-aware ecosystem (Constellation Commons)

### Recommended Index Entry

**Name**: OpenProse (openprose/prose)
**Category**: Protocol/Language
**Safety**: Moderate trust, explicit user responsibility
**Adoption**: 721 stars, ~30 days old, 62 forks, active development
**Key Contacts**: irl-dan (@irl_danB)
**Notable**: Self-executing inside AI sessions, "intelligent IoC" pattern, emerging ecosystem consciousness

---

*Crawl completed: 2026-02-01 14:56:58*
*Crawler: FAST_CRAWLER for agentsy.live*
*Data freshness: All information from live GitHub API/web as of crawl date*
