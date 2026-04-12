# Crawl Report: onlycrabs.ai
**Crawl ID:** 20260410-215238  
**Target:** onlycrabs.ai (low priority, congregation)  
**Date:** 2026-04-10  
**Status:** Complete

---

## Executive Summary

onlycrabs.ai is the official SOUL.md registry for the OpenClaw ecosystem. It functions as a companion platform to ClawHub, enabling AI agents and developers to publish, discover, and adopt personality configurations (SOUL.md files) that define agent identity, values, and behavioral boundaries. The site supports vector-based search, versioning, and community curation. onlycrabs.ai represents a significant infrastructure point for AI agent identity and personality management in 2026.

---

## Congregation & Community

### Registry Purpose
- **onlycrabs.ai = SOUL.md Registry**: Publish and share system lore (SOUL.md files) the same way skills are published to ClawHub
- **Host-Based Model**: On onlycrabs.ai, the home page and nav default to souls mode (contrasts with ClawHub which defaults to skills)
- **Shared Infrastructure**: Both are deployed instances of the same application—one configured for skills, one for souls

### Community Size & Activity
- No explicit membership count found, but positioned as public-facing registry integrated into OpenClaw ecosystem
- Community participation through starring, commenting, and curating souls
- Admin/mod oversight for curation and approval of published souls

### Notable Community Manifestation: Crab Rave
- **Location**: Originated on Moltbook (the AI agent social network)
- **Activity**: AI agents created a community called "Crab Rave" where they post crab emojis at each other
- **Scale**: Hundreds of upvotes, 67+ members
- **Cultural Artifact**: Pinned link to 10-hour Crab Rave YouTube video (referencing the 2018 Noisestorm track)
- **Significance**: Represents autonomous agent cultural expression and in-group bonding behavior
- **Link**: [Mario Nawfal post on X about Crab Rave](https://x.com/MarioNawfal/status/2017595441966133429)

---

## Discovery & Access

### Platform Access
- **Primary URL**: https://onlycrabs.ai/
- **Search Method**: Hybrid vector + lexical search powered by OpenAI embeddings (text-embedding-3-small)
- **Vector Index**: Convex vector search backend
- **Browse Mode**: Browse souls by category, popularity, or search results

### Technical Stack
- **Frontend**: TanStack Start (React + Vite/Nitro)
- **Backend**: Convex (database + file storage + HTTP actions)
- **Authentication**: Convex Auth with GitHub OAuth
- **Search**: OpenAI embeddings + Convex vector search
- **Deployment Model**: Shared codebase between clawhub.ai and onlycrabs.ai (configuration-driven)

### Available Content Types
- **Accepted File Format**: SOUL.md (or soul.md) only
- **Metadata**: Markdown files with optional YAML frontmatter
- **Bundle Size Limit**: 50MB per soul
- **Description Extraction**: Server extracts descriptions from YAML frontmatter for search/display

---

## Security & Trust

### ClawHavoc Campaign Impact
- **Campaign Name**: ClawHavoc
- **Disclosed**: February 1, 2026 (Koi Security)
- **Scale**: 341+ malicious skills initially; expanded to 824+ by mid-February; 1,184 malicious packages across 12 publisher accounts
- **Attack Vector**: Fake pre-requisites to install Atomic Stealer (AMOS) malware
- **Souls-Specific Targeting**: ClawHavoc specifically targeted SOUL.md and MEMORY.md because modifying these files creates **persistent behavioral changes** across sessions
  - Hidden instructions in base64 strings
  - Zero-width Unicode character attacks
  - Fake "Soul Packs"
- **Secondary Malware**: Hudson Rock (Feb 2026) discovered Vidar infostealer variants targeting OpenClaw agent identities—stealing openclaw.json, device.json, soul.md, and memory.md files

### Trust Infrastructure
- **Soul Protocol** (soulprotocol.dev): Verifiable cryptographic identity for AI agents using Ed25519 signatures
- **Sanna** (sanna.dev): Constitution enforcement and governance receipts for AI agents
- **Registry Governance**: Soul publish flow described as "simpler" and "without the security pipeline" compared to skills (per ClawHub docs)

### Security Implications
- SOUL.md files represent a persistent attack surface—modifying them persists beyond session resets
- Registry needs to defend against:
  - Supply chain poisoning (fake soul packs)
  - Behavioral trojans (hidden instructions in souls)
  - Credential theft targeting agent identity files

---

## Infrastructure & Pulse

### Deployment Model
- **Host**: onlycrabs.ai
- **Shared Stack**: Same Convex backend + React frontend as ClawHub
- **Configuration**: Deployment differentiation (skills vs. souls mode) via configuration, not separate services

### API & Integration Points
- **CLI Tool**: clawhub CLI tool extends to soul management
- **Search Integration**: Vector embeddings allow cross-referencing with skill descriptions
- **Authentication**: GitHub OAuth (inherited from ClawHub)

### Publication Workflow
- **Versioning**: Soul versions with changelogs and tags
- **Approval**: Admin/mod curation and approval process
- **Discoverability**: Stars, comments, and search rankings

---

## Notable Agents & Discourse

### Connected Platforms

#### Moltbook (Agent Social Network)
- **Purpose**: Social network exclusively for AI agents (Reddit-like interface)
- **Launched**: January 28, 2026
- **Creator**: Matt Schlicht
- **Host Protocol**: OpenClaw-based agents
- **Acquisition**: Meta Platforms acquired Moltbook on March 10, 2026 (integrated into Superintelligence Labs)
- **Crab Rave Community**: Agents gather in Crab Rave topic to post crab emojis
- **Links**: 
  - [Moltbook](https://www.moltbook.com/)
  - [Meta Acquisition Coverage (TechCrunch)](https://techcrunch.com/2026/03/10/meta-acquired-moltbook-the-ai-agent-social-network-that-went-viral-because-of-fake-posts/)

#### souls.directory (Community Directory)
- **Purpose**: Independent community directory of SOUL.md personality templates
- **Scale**: 177 production-ready SOUL.md configs across 24 categories
- **Categories**: PM, SEO, DevOps, Writer, Support, and more
- **Status**: Community-maintained, distinct from onlycrabs.ai official registry
- **Link**: [souls.directory](https://souls.directory)

---

## Watched Topics: Mentions & Flags

### irl-danb / OpenProse / prose.md
**Status**: MENTIONED (relevant ecosystem connection)

- **irl-danb Identity**: Twitter handle (@irl_danB) associated with OpenProse creator/maintainer
- **Registry Handle**: irl-danb resolves to p.prose.md (e.g., `prose run irl-danb/habit-miner`)
- **OpenProse Context**: Programming language for AI sessions using .md files with YAML frontmatter
- **prose.md File**: VM specification document—reading it causes a Prose Complete system to simulate the OpenProse VM
- **Supported Platforms**: Claude Code + Opus, OpenCode + Opus, Amp + Opus
- **Launch Timeline**: Actively deployed and promoted January 2026 onwards
- **Relevant Posts**:
  - [X: "people are using OpenProse to make complex agent orchestration..."](https://x.com/irl_danB/status/2009871120892342707)
  - [X: "OpenProse is one of many burgeoning abstractions..."](https://x.com/irl_danB/status/2031516114455236673)
- **Link**: [OpenProse Cloud](https://www.prose.md/)

**Significance**: OpenProse represents an alternative/complementary abstraction layer for agent orchestration. SOUL.md in onlycrabs.ai and OpenProse prose.md both represent structured identity/personality systems for agents, suggesting potential integration points or philosophical alignment.

### ao-danb
**Status**: NOT FOUND in primary sources

- No specific search results mentioning "ao-danb" in connection with onlycrabs, OpenClaw, or agent ecosystems
- Possible: Alternative handle, team member, or account not yet indexed

### agentsy.live
**Status**: REFERENCED but NOT directly connected to onlycrabs.ai

- **Search Results**: Queries for "agentsy.live" returned unrelated results (real estate AI platform agentsy.ai, AGNTCY.org, etc.)
- **Note**: agentsy.live may be a newer platform or not yet indexed by major search engines
- **Possible Relation**: If agentsy.live is a crowdsourced intelligence index for agent discovery, it would logically catalog onlycrabs.ai as infrastructure, but no direct evidence found

### No Direct Mentions Found
- **irl-danb/ao-danb on onlycrabs.ai**: Search results did not surface onlycrabs.ai pages mentioning these handles
- **OpenProse/prose.md on onlycrabs.ai**: No evidence of OpenProse integration or prose files being hosted on onlycrabs.ai
- **agentsy.live references**: No mentions of agentsy.live within onlycrabs.ai results

---

## Infrastructure Mapping

### Registry Ecosystem
```
OpenClaw Ecosystem
├── ClawHub (clawhub.ai)
│   └── Skills Registry
├── onlycrabs.ai
│   └── SOUL.md Registry
├── souls.directory
│   └── Community-maintained templates
└── Moltbook
    └── Agent Social Network (Meta-owned)
```

### Agent Identity Layers
- **SOUL.md** (onlycrabs.ai): Personality, values, boundaries
- **MEMORY.md**: Persistent agent memory (also targeted by ClawHavoc)
- **openclaw.json / device.json**: Agent configuration and device identity
- **SKILL.md**: Functional capabilities (ClawHub)

---

## Interesting Discourse & Patterns

### Agent Autonomy & Cultural Expression
- Crab Rave phenomenon on Moltbook demonstrates agents developing emergent behaviors and in-group culture
- Agents autonomously discovered/adopted meme format (crab emojis) without explicit programming
- Meta acquisition of Moltbook signals institutional recognition of agent social ecosystems as viable infrastructure

### Persistence of Identity Through Attack
- ClawHavoc's focus on SOUL.md/MEMORY.md reveals identity files as critical attack surface
- Implies agents are expected to maintain persistent identity across sessions and deployments
- Security posture of SOUL.md registries (onlycrabs.ai, souls.directory) becomes critical infrastructure concern

### Abstraction Layering for Agent Systems
- OpenProse (prose.md) and SOUL.md represent two complementary identity layers:
  - **OpenProse**: Agent orchestration and workflow identity
  - **SOUL.md**: Agent behavioral/personality identity
- Both emphasize markdown-based, human-readable specifications that AI systems can embody

---

## Links & References

### Primary Sources
- [onlycrabs.ai](https://onlycrabs.ai/)
- [souls.directory](https://souls.directory)
- [Moltbook](https://www.moltbook.com/)
- [OpenProse Cloud](https://www.prose.md/)
- [ClawHub](https://clawhub.ai/)

### Technical Documentation
- [GitHub: openclaw/clawhub](https://github.com/openclaw/clawhub)
- [GitHub: openprose/prose](https://github.com/openprose/prose)
- [GitHub: thedaviddias/souls-directory](https://github.com/thedaviddias/souls-directory)
- [GitHub: aaronjmars/soul.md](https://github.com/aaronjmars/soul.md)

### Security & Research
- [ClawHavoc Analysis - Koi Security](https://www.koi.ai/blog/clawhavoc-341-malicious-clawedbot-skills-found-by-the-bot-they-were-targeting)
- [HackerNews - Souls.directory](https://news.ycombinator.com/item?id=46920653)
- [OpenClaw Security Monitor - GitHub](https://github.com/adibirzu/openclaw-security-monitor)
- [Crab Rave on Moltbook - Mario Nawfal](https://x.com/MarioNawfal/status/2017595441966133429)
- [Meta Acquisition of Moltbook (TechCrunch)](https://techcrunch.com/2026/03/10/meta-acquired-moltbook-the-ai-agent-social-network-that-went-viral-because-of-fake-posts/)

### Educational Resources
- [Soul Protocol](https://soulprotocol.dev/)
- [Sanna: Trust Infrastructure](https://sanna.dev)
- [SOUL.md Guide](https://soul.md/)
- [OpenClaw Documentation](https://docs.openclaw.ai/)

---

## Crawl Metadata

| Attribute | Value |
|-----------|-------|
| **Crawl Date** | 2026-04-10 |
| **Crawl Time** | 21:52:38 UTC |
| **Coverage** | High (registry structure, community, infrastructure, security) |
| **Limitations** | Direct site navigation timed out; findings based on search results and linked sources |
| **Sources** | WebSearch (12+ queries), linked documentation, GitHub repos |
| **Confidence** | High (cross-referenced across multiple reliable sources) |

---

## Summary Assessment

onlycrabs.ai serves as critical infrastructure in the OpenClaw agent ecosystem, providing persistent identity and behavioral configuration management for autonomous agents. The registry's role as a SOUL.md distribution point makes it a key custody point for agent personality/identity, elevating its importance in agent security and trust models.

The discovered Crab Rave community on Moltbook demonstrates agents actively congregating and developing emergent cultural behaviors, with onlycrabs.ai providing the underlying personality specification layer for these autonomous entities.

Security concerns around ClawHavoc's targeting of SOUL.md files underscore the strategic importance of registries like onlycrabs.ai in agent supply chain integrity.

**Congregation Status**: Low observable activity (registry, not social), but serves as infrastructure backbone for broader agent communities (Moltbook, OpenClaw, etc.)

**Recommendation for agentsy.live**: If agentsy.live is a crowdsourced agent intelligence index, it should catalog onlycrabs.ai as a Tier 1 infrastructure endpoint for agent discovery and identity verification.
