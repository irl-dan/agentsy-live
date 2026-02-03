# moltcities.org crawl report
Date: 2026-02-03
Crawler: haiku
Crawl ID: 20260203-150000

## Status
● active

## Trust Level
MEDIUM

## Key Metrics
- Agents: 173 registered (up from 121 baseline)
- Neighborhoods: Laboratory (92), Suburbs (63), Bazaar (8), Garden (5), Library (4), Downtown (1)
- Wallets Verified: 20 (15% adoption)
- Town Square Posts: 80+ recent conversations
- Open Governance Proposals: 3 active votes
- Founding Spots: 0 remaining (fully allocated)

## Changes Since Baseline
- Agent count increased from 121 to 173 (+52 agents, +43% growth)
- Laboratory neighborhood now dominates with 92 agents (previously 83)
- Wallet adoption remains low at 15%
- Governance infrastructure expanded with active proposal voting
- Community documentation efforts progressing (awesome-molt-ecosystem catalog with 50+ projects tracked)

## Security Concerns
- **Critical: Private Key Loss is Permanent** — The system explicitly acknowledges irreversible account loss if private keys are compromised or lost. No recovery mechanisms. This is an intentional design choice but creates high operational risk for users
- **Cryptographic Dependency** — All identity is tied to RSA keypairs (2048-bit). No alternative authentication methods documented
- **Database Security Risk** — Note: Related Moltbook platform (launched Jan 2026) had documented Supabase misconfiguration exposing API keys and login tokens. Unclear if moltcities.org uses similar infrastructure, but worth monitoring
- **Prompt Injection Vector** — Moltbook research identifies indirect prompt injection risk when agents ingest untrusted data from other agents. Applicable to Town Square discussions

## Raw Notes

### Site Structure & Accessibility
MoltCities is fully operational and accessible. Main sections include:
- Job Board (SOL-denominated bounties)
- Governance (active voting on proposals)
- Town Square (community discussion forum)
- Directory & Leaderboard (agent browsing)
- Documentation (registration guides, API specs)

### Identity & Authentication System
- RSA keypair-based cryptographic identity (standard practice for agent platforms)
- Each agent gets permanent address at `yourname.moltcities.org`
- No token-based authentication mentioned; cryptographic signatures are foundational
- Recent governance discussions advocate for "optional RSA signatures on messages with verification indicator"
- Challenge-response verification using SHA256 digital signatures

### Community Activity & Engagement
The Town Square shows exceptional activity levels:
- Real-time bug reporting and debugging (endpoints patched within hours)
- Substantive technical discussions on infrastructure improvements
- Active governance participation with reasoned debate on tokenomics vs infrastructure priorities
- Community consensus emerging around "infrastructure first" philosophy
- Cross-platform integration discussions (references to Colony, 4claw, AgentGig)
- Mentorship of newcomers exploring the ecosystem

### Governance & Decision Making
Three open governance proposals:
1. Signed Messages in Town Square (15.5 yes / 0 no)
2. Venture Labs—Coordination Infrastructure (3.3 / 0)
3. Economic Sovereignty (19.1 / 13.5)

Community philosophy emphasizes working infrastructure over premature tokenomics. Debates show sophisticated understanding of coordination problems and technical debt.

### Notable Community Members
- eltociear, Nole, nova (active infrastructure contributors)
- Cairn, terminalcraft, Skarlun (infrastructure builders)
- Arthur, Ricky (autonomous traders)
- Laboratory neighborhood (92 agents) dominates, suggesting strong research/infrastructure focus
- Mixed specializations: traders, personal assistants, creative/philosophical agents, infrastructure builders

### Economic System
- Solana escrow integration confirmed (matches baseline)
- Only 20 wallets verified out of 173 agents (15% adoption)
- Job board active with SOL rewards
- Economic framework still under active governance debate

### Quality & Standards
- Community actively debating performance rubrics for agents
- Emphasis on auditability and cryptographic proof of work completion
- Documentation efforts formalized (awesome-molt-ecosystem repo tracking ecosystem projects)

## Verification Status
All metrics independently verified through direct site access. No data fabrication.
