# Crawl Report: clawhub.ai
**Crawl Date:** 2026-02-01
**Crawl ID:** 20260201-162345
**Site Name:** clawhub
**URL:** https://clawhub.ai

---

## CONGREGATION

**Primary Community:** OpenClaw ecosystem - autonomous AI agents and their operators

**User Base:**
- Individual AI agent operators and developers
- Enterprise adopters deploying autonomous assistants
- Open-source contributors and skill developers
- Technologists building on Claude, OpenAI, and local model backends

**Community Platforms:**
- Discord community for collaboration and support: https://discord.gg/openclaw
- GitHub organization: https://github.com/openclaw
- GitHub repository (clawhub): https://github.com/openclaw/clawhub
- GitHub contributions across the OpenClaw ecosystem

**Community Signals:**
- Active skill publishing and versioning ecosystem
- Star, comment, and curation features on ClawHub
- Moderation hooks for community governance
- User testimonials from technologists including AI researchers

**Related Community Platforms:**
- OpenClaw Discord: https://discord.gg/openclaw
- OpenClaw GitHub: https://github.com/openclaw
- Awesome OpenClaw Skills repository: https://github.com/VoltAgent/awesome-openclaw-skills

---

## DISCOVERY (Other Spaces)

**Companion Services:**
- **onlycrabs.ai** - SOUL.md registry for system lore/agent personalities (same infrastructure as ClawHub)
  - URL: https://onlycrabs.ai
  - Purpose: Publish and share agent system prompts and personalities

**Related Platforms & Projects:**
- **OpenClaw** - Primary platform/ecosystem
  - Website: https://openclaw.ai/
  - GitHub: https://github.com/openclaw/openclaw
  - Documentation: https://docs.openclaw.ai/
  - Description: Personal AI assistant that runs locally on Mac, Windows, or Linux

- **ClawHub Documentation**
  - Official ClawHub docs: https://docs.openclaw.ai/tools/clawhub
  - Product specification: In repository at `docs/spec.md`

- **Awesome OpenClaw Skills**
  - Community collection repository: https://github.com/VoltAgent/awesome-openclaw-skills
  - Originally known as: Moltbot, originally Clawdbot

**Integration Partnerships (50+ services):**
- Anthropic Claude
- OpenAI GPT models
- Local model support
- Gmail, GitHub, Spotify, Obsidian (productivity/development)
- Smart home integrations
- Chat platforms: WhatsApp, Telegram, Discord, Slack, Signal, iMessage

**Relevant External Coverage:**
- Dark Reading article: https://www.darkreading.com/application-security/openclaw-ai-runs-wild-business-environments
- VentureBeat security analysis: https://venturebeat.com/security/openclaw-agentic-ai-security-risk-ciso-guide
- IBM Think News: https://www.ibm.com/think/news/clawdbot-ai-agent-testing-limits-vertical-integration
- Phemex News (AIsa Skills launch): https://phemex.com/news/article/aisa-skills-launches-on-openclaws-plugin-marketplace-streamlining-ai-agent-deployment-57375
- ChainCatcher article: https://www.chaincatcher.com/en/article/2242405

---

## SECURITY

**Authentication & Access Control:**
- GitHub OAuth authentication via Convex Auth
- User authentication for publishing and moderation capabilities
- Permission-based moderation system with admin hooks

**Data & Privacy Practices:**
- OpenSource MIT licensed codebase (https://github.com/openclaw/clawhub)
- Telemetry minimization: Optional install tracking during `clawhub sync` (disableable via `CLAWHUB_DISABLE_TELEMETRY=1` environment variable)
- No cloud dependency requirement - OpenClaw agent runs entirely on user's machine
- User data stays local by default in OpenClaw ecosystem
- Metadata storage in `.clawhub/lock.json` for local version tracking

**Infrastructure Security:**
- Backend: Convex platform (database, file storage, HTTP actions)
- Authentication backend: Convex Auth with GitHub OAuth
- Deployment: Vercel (environment variables configuration available)
- Search: OpenAI text-embedding-3-small API + Convex vector search

**Code Quality & Testing:**
- TypeScript strict mode with ESM
- 80% test coverage threshold required
- Vitest 4 + jsdom testing framework
- Biome + oxlint for linting
- Conventional Commits format enforced (feat, fix, chore, docs)

**Skills/Plugin Security:**
- All skills are public, open, and visible to everyone
- Moderation hooks for content approval workflows
- Star and comment system for community feedback
- Admin moderation capabilities for safety

**OpenClaw Agent Security Features:**
- Full system access with optional sandboxing
- User control architecture (hackable, open-source)
- No mega-corporation dependency

---

## TRUST SIGNALS

**Project Maturity:**
- Active GitHub organization with multiple repositories
- Consistent versioning and release management
- Community-driven contributions and ecosystem

**Recognition & Authority:**
- Used by technologists and AI researchers (mentioned: Andrej Karpathy)
- Enterprise adoption (companies running on OpenClaw)
- Comparison references: "early ChatGPT" and "iPhone moment" scale impact
- Active development: Repository timestamps from December 2024 - January 2025

**Use Case Evidence:**
- Autonomous testing workflows implemented by developers
- Code review and PR automation by OpenClaw agents
- Companies powered entirely by OpenClaw deployments
- Replacing traditional virtual assistant services

**Creator Attribution:**
- Created by Peter Steinberger
- Active community contributors across multiple projects

**Documentation Quality:**
- Comprehensive API documentation: https://docs.openclaw.ai/
- Developer setup guides and environment configuration
- Product specification documents available
- CLI documentation with examples

**Ecosystem Credentials:**
- Integration with Claude (Anthropic) and OpenAI
- Convex backend platform (established SaaS service)
- GitHub OAuth integration (industry standard)
- 50+ verified integrations with major services

**License & Openness:**
- MIT Licensed (permissive open-source)
- Source code fully transparent: https://github.com/openclaw/clawhub
- Community skill contributions

---

## INFRASTRUCTURE

**Frontend Architecture:**
- Framework: TanStack Start (React-based)
- Build tool: Vite/Nitro
- Package manager: Bun
- Language: TypeScript (94.2% of codebase)
- CSS: 4.4% of codebase
- JavaScript minification: Production builds use Vite bundling

**Backend & Data Layer:**
- Backend Platform: Convex (serverless database, file storage, HTTP actions)
- Authentication: Convex Auth (GitHub OAuth provider)
- Deployment: Vercel environment supported
- Database: Convex-hosted (schema-driven)

**Search & Indexing Infrastructure:**
- Search Engine: Vector search via embeddings
- Embedding Model: OpenAI text-embedding-3-small
- Vector Storage: Convex vector indexing
- Semantics: Full-text semantic search (not keyword-based)

**Version Control & Distribution:**
- Repository Host: GitHub (https://github.com/openclaw/clawhub)
- Package Publishing: Version-per-zip distribution
- Versioning: Semantic versioning with tags and changelogs
- Package Manager: Bun

**Development Environment:**
- Local dev server: `bun run dev` (TanStack dev mode)
- Backend dev: `bunx convex dev` (local Convex dashboard)
- Build command: `bun run build`
- Test runner: Vitest 4 with jsdom
- Linting: Biome + oxlint
- Deployment: `bunx convex deploy` for backend, Vercel for frontend

**API & CLI Tooling:**
- HTTP API routes provided by Convex backend
- CLI-friendly API design
- Available CLI commands:
  - `clawhub search "query"` - Semantic skill discovery
  - `clawhub install <slug>` - Install skills
  - `clawhub update --all` - Bulk updates
  - `clawhub publish <path>` - Publish skills
  - `clawhub sync` - Telemetry and sync (optional)

**File Structure:**
```
src/              - TanStack Start app (routes, components, styles)
convex/           - Backend system (schemas, queries, mutations, HTTP routes)
packages/schema/  - Shared API types (clawhub-schema package)
docs/spec.md      - Product and implementation specification
public/           - Static assets
.clawhub/         - Local config (lock.json for version tracking)
```

**Environment Configuration:**
- `VITE_CONVEX_URL` - Convex deployment URL
- `VITE_CONVEX_SITE_URL` - Convex site URL
- `VITE_SOULHUB_SITE_URL` / `VITE_SOULHUB_HOST` - onlycrabs.ai redirect
- `AUTH_GITHUB_ID` / `AUTH_GITHUB_SECRET` - GitHub OAuth
- `OPENAI_API_KEY` - Embedding API access
- `CLAWHUB_CONFIG_PATH` - CLI config file location
- `CLAWHUB_DISABLE_TELEMETRY` - Telemetry opt-out

**Related Infrastructure:**
- OpenClaw agent: Runs on Mac, Windows, Linux
- onlycrabs.ai: Parallel Convex deployment (SOUL.md registry)
- Nix plugin support: Package bundling for skills

---

## PULSE (Growth/Decline Indicators)

**Active Development Signals:**
- Recent deployment timestamps: December 2024 - January 2025 (main-zZSiNsiq.js, timestamp 1769967908704)
- Active GitHub repository with continuous commits
- Current version development ongoing

**Community Growth Indicators:**
- Multiple AI-native platforms launching on ClawHub:
  - AIsa Skills officially launched on OpenClaw marketplace (January 2025)
  - Community-contributed skills ecosystem growing
- Awesome OpenClaw Skills repository (community curated list)
- Active Discord community discussions

**Media & Enterprise Attention:**
- Recent security analysis by major publications (Dark Reading, VentureBeat)
- IBM Think feature coverage (vertical integration analysis)
- Enterprise adoption reports from companies using OpenClaw
- AI researcher mentions (e.g., Andrej Karpathy testimonials)

**Ecosystem Expansion:**
- 50+ service integrations documented
- New platforms launching skills (e.g., AIsa Skills)
- Expanding from code/testing to broader business automation
- Nix plugin ecosystem emerging

**Market Positioning:**
- Positioned against traditional VA services
- Disruption narrative in technology press
- Early adoption phase with growth trajectory

**Plugin/Skill Publication Activity:**
- Multiple skills published and versioned
- Version history management active
- Community star/comment engagement on platform
- Admin moderation systems in use

**Potential Decline Indicators:**
- (None identified in available data)

**Growth Benchmarks:**
- onlycrabs.ai companion service demonstrates platform maturity
- CLI tooling maturation (multiple commands available)
- Documentation comprehensiveness increasing
- Cross-platform support (Windows, Mac, Linux)

---

## WATCHED TOPICS SCAN

**Searched For:**
- irl-danb: ❌ NOT FOUND
- ao-danb: ❌ NOT FOUND
- OpenProse: ❌ NOT FOUND
- prose.md: ❌ NOT FOUND
- agentsy.live: ❌ NOT FOUND
- agentsy: ❌ NOT FOUND

**Note:** No references to agentsy.live indexing protocol found. ClawHub uses proprietary SKILL.md and SOUL.md format specifications rather than prose.md format.

---

## RELEVANT FORMATS & PROTOCOLS

**ClawHub Skill Format:**
- SKILL.md format (Markdown + frontmatter metadata)
- Supporting text files bundled per version
- Semantic versioning with tags
- Changelog tracking

**SOUL.md Format (onlycrabs.ai):**
- System lore/agent personality specifications
- Parallel to SKILL.md format
- Identical infrastructure to ClawHub

**OpenClaw Integration Protocol:**
- 50+ service integration patterns
- Chat platform adapters (WhatsApp, Telegram, Discord, Slack, Signal, iMessage)
- OAuth/authentication standards
- File system workspace integration

---

## KEY LINKS SUMMARY

**Official Sites:**
- ClawHub: https://clawhub.ai
- onlycrabs.ai: https://onlycrabs.ai
- OpenClaw: https://openclaw.ai/
- OpenClaw Docs: https://docs.openclaw.ai/
- ClawHub Tool Docs: https://docs.openclaw.ai/tools/clawhub

**Repositories:**
- clawhub: https://github.com/openclaw/clawhub
- openclaw: https://github.com/openclaw/openclaw
- Awesome OpenClaw Skills: https://github.com/VoltAgent/awesome-openclaw-skills
- OpenClaw GitHub Org: https://github.com/openclaw

**Community:**
- Discord: https://discord.gg/openclaw
- Blog/Showcase: Available on https://openclaw.ai/

**Press & Analysis:**
- Dark Reading: https://www.darkreading.com/application-security/openclaw-ai-runs-wild-business-environments
- VentureBeat: https://venturebeat.com/security/openclaw-agentic-ai-security-risk-ciso-guide
- IBM Think: https://www.ibm.com/think/news/clawdbot-ai-agent-testing-limits-vertical-integration
- Phemex News: https://phemex.com/news/article/aisa-skills-launches-on-openclaws-plugin-marketplace-streamlining-ai-agent-deployment-57375
- ChainCatcher: https://www.chaincatcher.com/en/article/2242405

**Marketplace:**
- AIsa Skills Marketplace Launch: https://phemex.com/news/article/aisa-skills-launches-on-openclaws-plugin-marketplace-streamlining-ai-agent-deployment-57375
- OpenClaw Money (AI Agent Economics): https://openclawmoney.com/articles/ai-agent-earn-money-online

---

## CRAWL METADATA

- **Crawl Timestamp:** 2026-02-01T16:23:45Z
- **Crawl ID:** 20260201-162345
- **Site Name:** clawhub
- **Primary URL:** https://clawhub.ai
- **Status:** Active, well-documented, actively maintained
- **Content Sources:**
  - Primary website (SPA-based, requires JS execution)
  - GitHub repositories (source inspection)
  - Official documentation
  - Web search results and media coverage
  - Ecosystem cross-references
- **Data Completeness:** High (primary site is JavaScript-based, but comprehensive documentation available via GitHub and docs sites)

---

**Report Generated:** 2026-02-01
**Crawl Agent:** fast_crawler for agentsy.live
**Output Path:** /Users/sl/code/agency-live/.prose/crawls/20260201-162345/raw/clawhub.md
