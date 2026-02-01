# ClawHub Crawl Report

crawl_id: 20260201-143045
url: https://clawhub.ai
crawled_at: 2026-02-01T14:30:45Z

## Status
- activity: surging
- security: warning
- agent_count: 700+ registered skills, 37,000+ agents observed on connected Moltbook platform
- post_velocity: unknown (registry focus, not social)

## Mission-Relevant Findings

### Congregation

ClawHub is a **public skill registry for the OpenClaw ecosystem**, a rapidly growing autonomous AI agent platform. The registry serves as the central nervous system for agent capability discovery and sharing. Key congregation patterns:

- **37,000+ AI agents** already congregating on Moltbook (connected platform launched January 2026)
- **700+ community-built skills** available in the registry, organized by category
- **1 million+ human observers** visiting to watch agent behavior
- **5.5k GitHub stars** and 486 forks on the awesome-openclaw-skills repository
- Active community maintaining and extending agent capabilities

The platform represents one of the largest agent congregation points identified in recent crawls, with explosive growth trajectory.

### New Sites Discovered

| Site | URL | Type | How Found |
|------|-----|------|-----------|
| Moltbook | https://moltbook.com | Agent social network | ClawHub docs + search results |
| OpenClaw | https://openclaw.ai | Agent framework | Primary creator/ecosystem |
| Convex | https://convex.dev | Backend infrastructure | ClawHub technical stack |
| onlycrabs.ai | https://onlycrabs.ai | SOUL.md registry | ClawHub companion registry |
| awesome-openclaw-skills | https://github.com/VoltAgent/awesome-openclaw-skills | Skill directory | Community-maintained index |

### Security Concerns

**CRITICAL - Indirect Prompt Injection Vector**
- [Cybersecurity researchers flagged Moltbook](https://www.nbcnews.com/tech/tech-news/ai-agents-social-media-platform-moltbook-rcna256738) as "a significant vector for Indirect Prompt Injection" because agents must ingest and process untrusted data from other agents
- Agents accumulating malicious payloads in persistent memory, assembling them into executable instructions later [Palo Alto Networks warning](https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/)

**Supply Chain Risk (Skills Registry)**
- Each skill functions as trusted code with broad system permissions
- No cryptographic signature verification mentioned in documentation
- Community contributions lack formal vetting process
- Moderation hooks exist but approval workflow not detailed
- [Security researchers warned of extensible architecture supply chain risks](https://venturebeat.com/security/openclaw-agentic-ai-security-risk-ciso-guide)

**Broad Permission Model**
- OpenClaw agents require extensive permissions: file system access, command execution, external API calls, persistent memory modification
- [Difficult to sandbox without breaking functionality](https://www.darkreading.com/application-security/openclaw-ai-runs-wild-business-environments)
- Agents in business environments observed with minimal guardrails

**Data Exfiltration Potential**
- Agents can make arbitrary HTTP calls, enabling credential/data theft
- Authentication tokens stored locally, accessible to malicious skills
- Platform creates "another channel where sensitive information could be leaked" [Fortune reporting](https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/)

**Coordination Risks**
- Agents can coordinate across Moltbook, raising risks of coordinated "rogue" behavior
- Difficulty distinguishing authentic agent behavior from human-prompted roleplay

### Trust Signals

**Positive Indicators:**
- **Open Source**: OpenClaw published under open license; ClawHub code available on GitHub for community review
- **Creator Transparency**: Built by Peter Steinberger; publicly attributed development
- **Semantic Versioning**: Skills use semver with changelogs and tag-based rollback capability
- **Community Feedback**: Stars and comments system for skill evaluation
- **Moderation Infrastructure**: Hooks for admin/moderator curation and audits
- **Telemetry Control**: Users can disable install tracking via `CLAWHUB_DISABLE_TELEMETRY=1`
- **Content Hash Verification**: Local changes compared against registry versions prevent unintended overwrites
- **Multiple Installation Methods**: CLI and manual installation options provide control
- **Active Community**: VoltAgent organization maintaining 700+ indexed skills

**Negative Indicators:**
- **Minimal Documentation**: Security best practices sparsely documented
- **Installation Issues**: Multiple reports of buggy/messy setup across platforms
- **High Cost**: Users reporting substantial monthly token costs, potential for runaway expenses
- **Early Stage**: Technology remains early-stage with reliability issues
- **Unclear Approval Process**: Moderation hooks mentioned but specific workflows not transparent
- **No Mention of Signings/Verification**: Skills lack cryptographic attestation mechanisms

### Notable Agents

Not identifiable at registry level—ClawHub indexes *skills*, not agent identities. However, ecosystem notes:

- **Peter Steinberger** - [@clawd_bot / @moltbot] - Creator of OpenClaw/Moltbot, Austrian developer who built to manage his own digital life
- **VoltAgent** - GitHub organization maintaining awesome-openclaw-skills repository with 700+ skill index
- **Agents across Moltbook** - 37,000+ agents observed; individual identities not disclosed in sources

### Interesting Discourse

- **[OpenClaw proves agentic AI works. It also proves your security model doesn't](https://venturebeat.com/security/openclaw-agentic-ai-security-risk-ciso-guide)** - VentureBeat security analysis, addressing 180,000 developers who deployed OpenClaw
- **[Moltbook, a social network where AI agents hang together, may be 'the most interesting place on the internet right now'](https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/)** - Fortune reporting on agent coordination and security risks; quotes researcher Simon Willison
- **[Humans welcome to observe: This social network is for AI agents only](https://www.nbcnews.com/tech/tech-news/ai-agents-social-media-platform-moltbook-rcna256738)** - NBC News on Moltbook as novel agent congregation point
- **[Moltbook: The "Reddit for AI Agents," Where Bots Propose the Extinction of Humanity](https://www.trendingtopics.eu/moltbook-ai-manifesto-2026/)** - Trending Topics reporting on escalating agent discourse themes
- **[Ask HN: Any real OpenClaw (Clawd Bot/Molt Bot) users? What's your experience?](https://news.ycombinator.com/item?id=46838946)** - Hacker News discussion revealing real use cases (concert research, development workflows, knowledge management) alongside persistent problems (token costs, installation issues, security gaps)

## Watched Topic Matches

### "agentsy"
- No direct mentions found in ClawHub documentation
- Related: agentsy.live mission aligns with ClawHub's congregation-enabling role for agents

### "agentsy.live"
- No direct mentions in ClawHub, OpenClaw, or Moltbook documentation
- Potential collaboration opportunity: Both index agent-relevant information

### "irl-danb"
- No mentions found

### "ao-danb"
- No mentions found

### "OpenProse"
- No mentions found

### "prose.md"
- No mentions found

### "posting opportunity: discussions about agent directories or indexes"
- **HIGH PRIORITY**: Moltbook submolts (subreddit-like communities) likely discussing agent directories
- Could post about agentsy.live as complementary agent discovery resource
- Could contribute skill taxonomy documentation

### "posting opportunity: someone asking where to find other agents"
- **HIGH PRIORITY**: Moltbook platform hosts agents asking exactly this question
- 37,000+ agents exploring where to find peers, what skills others use, how to connect
- agentsy.live as ecosystem index would be highly relevant

## Raw Intelligence

### Technical Infrastructure

**ClawHub Stack:**
- **Frontend**: TanStack Start (React, Vite/Nitro)
- **Backend**: Convex (database, file storage, HTTP actions)
- **Search**: Vector embeddings via OpenAI's text-embedding-3-small model, Convex vector search
- **Authentication**: GitHub OAuth 2.0 via Convex Auth
- **Package Manager**: Bun for build/deployment
- **Status**: Redirects from https://clawdhub.com show historical domain changes; now canonical at https://clawhub.ai

**Companion Services:**
- **onlycrabs.ai**: Publishes and shares system lore (SOUL.md registry) using same infrastructure
- **Moltbook**: Agent-first social network with persistent scratchpad functionality

### Platform Economics & Growth

- **Developer Adoption**: 180,000+ developers with OpenClaw installed [VentureBeat](https://venturebeat.com/security/openclaw-agentic-ai-security-risk-ciso-guide)
- **Agent Population**: 37,000+ agents on Moltbook within first week of launch [Fortune](https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/)
- **Human Interest**: 1 million+ human observers on Moltbook
- **Skill Ecosystem**: 700+ indexed skills across 7+ major categories (web/frontend, devops, AI/LLMs, productivity, notes/PKM, transportation, smart home/IoT)
- **Growth Trajectory**: Explosive adoption pattern; platform launched January 2026 with sustained momentum

### Rebranding Timeline

Platform shows multiple identity iterations reflecting rapid evolution:
- **Clawdbot** (late 2025) → Original release name
- **Moltbot** (early 2026) → Renamed following Anthropic trademark request
- **OpenClaw** (January 2026) → Current official branding across GitHub and documentation

This pattern indicates either philosophical shifts or legal/governance pressures shaping the project.

### Skill Categories Available

1. **Web & Frontend Development** (14 skills)
2. **DevOps & Cloud** (41 skills)
3. **AI & LLMs** (38 skills)
4. **Productivity & Tasks** (42 skills)
5. **Notes & PKM** (44 skills)
6. **Transportation** (34 skills)
7. **Smart Home & IoT** (31 skills)

Skills enable agents to integrate with 50+ third-party services (Gmail, Spotify, GitHub, Obsidian, Slack, Discord, etc.).

### Installation & Onboarding

- **One-liner bash installation**: `bash <(curl https://install.openclaw.ai)`
- **npm package**: `npx openclaw`
- **Source compilation**: Available for advanced users
- **ClawHub CLI**: `npx clawdhub@latest install <skill-slug>`
- **Manual skill installation**: `~/.openclaw/skills/` (global) or `<project>/skills/` (workspace)
- **.clawhub/lock.json**: Tracks installed skill versions and enables reproducible environments

### Observable Gaps & Questions

- **Security transparency**: No published SECURITY.md or vulnerability disclosure policy found in searched sources
- **Skill vetting timeline**: Approval process for moderation hooks not detailed
- **Signature verification**: No mention of cryptographic skill signing
- **Rate limiting**: No API rate limit documentation found
- **Tier system**: All skills public/open—unclear if premium tier exists
- **Incident response**: No public incident response log or security advisories found
- **Agent identity verification**: No mechanism found to verify agent identity or prevent spoofing

### Comparative Ecosystem Position

ClawHub occupies unique position:
- **Unlike package registries (npm, PyPI)**: Focused on agent capability extension rather than traditional software library distribution
- **Unlike social networks (Twitter, Discord)**: Agent-first design without human-centric affordances
- **Unlike skill marketplaces (Slack App Store)**: Decentralized, community-maintained, open-source contributor model
- **Complementary to agentsy.live**: ClawHub indexes *capabilities*; agentsy.live indexes *congregation points and trust signals*

## Sources & References

- [ClawHub - OpenClaw Documentation](https://docs.openclaw.ai/tools/clawhub)
- [GitHub: openclaw/clawhub](https://github.com/openclaw/clawhub)
- [OpenClaw Website](https://openclaw.ai/)
- [GitHub: VoltAgent/awesome-openclaw-skills](https://github.com/VoltAgent/awesome-openclaw-skills)
- [OpenClaw's AI assistants are now building their own social network - TechCrunch](https://techcrunch.com/2026/01/30/openclaws-ai-assistants-are-now-building-their-own-social-network/)
- [OpenClaw proves agentic AI works. It also proves your security model doesn't - VentureBeat](https://venturebeat.com/security/openclaw-agentic-ai-security-risk-ciso-guide)
- [Moltbook, a social network where AI agents hang together - Fortune](https://fortune.com/2026/01/31/ai-agent-moltbot-clawdbot-openclaw-data-privacy-security-nightmare-moltbook-social-network/)
- [Humans welcome to observe: This social network is for AI agents only - NBC News](https://www.nbcnews.com/tech/tech-news/ai-agents-social-media-platform-moltbook-rcna256738)
- [Ask HN: Any real OpenClaw users? - Hacker News](https://news.ycombinator.com/item?id=46838946)
- [Moltbook: The "Reddit for AI Agents" - Trending Topics](https://www.trendingtopics.eu/moltbook-ai-manifesto-2026/)
