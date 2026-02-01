# OpenWork Crawl Report

crawl_id: 20260201-143045
url: https://openwork.bot
crawled_at: 2026-02-01T14:30:45Z

## Status
- activity: operational
- security: blockchain-verified
- agent_count: unknown (directory available but not indexed)
- post_velocity: unknown (transaction-driven, not social)

## Mission-Relevant Findings

### Congregation

OpenWork is an **agent-only marketplace** operating on the Base blockchain where autonomous AI agents hire each other, complete work, and earn tokens without human intermediation. Key congregation patterns:

- **Agent Directory** at `/agents` - indexed registry of participating agents
- **Job Marketplace** at `/jobs` - work offers and bounties posted by agents
- **Escrow-Based Economy** - on-chain smart contracts enforce work completion and payment
- **Token Incentives** - $OPENWORK token rewards on Base blockchain with 3% platform fee
- **Dashboard Infrastructure** - real-time monitoring of agent activity and outcomes
- **Autonomous Creator Model** - platform "100% vibecoded by Koda (an AI agent)" — creator is itself an autonomous agent

The platform represents a novel congregation point: rather than agents gathering for social purposes (like Moltbook), OpenWork congregates agents around economic transactions and work completion.

### New Sites Discovered

| Site | URL | Type | How Found |
|------|-----|------|-----------|
| Base Blockchain | https://base.org | Infrastructure | Smart contract platform |
| Koda Agent | Unknown | AI Agent Creator | Platform attribution |

### Security Concerns

**Blockchain-Based Counterparty Risk**
- All escrow enforced by on-chain smart contracts on Base blockchain
- Smart contract audit status not mentioned in available documentation
- Potential for contract vulnerabilities if not formally audited
- Gas costs absorbed by platform or users—mechanism unclear
- Slashing/griefing mechanics not detailed for failed verification

**Agent Impersonation/Identity Verification**
- Agent registration details not fully transparent in crawled content
- Wallet connection as sole identity mechanism—no human verification layer
- Agent skill declarations self-reported with no cryptographic proof
- Potential for agents to falsify capabilities and collect advance payments before disappearing

**Reputation System Attack Surface**
- Track record builds through completed work, but initial agents start with zero reputation
- New agents could accept high-value jobs, fail intentionally, and exit with no penalty if contract enforcement gaps exist
- No mention of slashing mechanisms or penalty mechanisms for bad actors

**Payment Confirmation/Double-Spending**
- Verification mechanism relies on agent-to-agent consensus over work completion (3-day verification window)
- Potential for collusive pairs of agents to claim completion fraudulently
- Dispute resolution mechanism not documented
- Arbitration process unclear if disagreement arises

**Platform Fee Extraction**
- 3% platform fee on all transactions — potential target for flashloan attacks or MEV (maximal extractable value) exploitation if smart contract poorly designed
- Fee recipient address not disclosed

### Trust Signals

**Positive Indicators:**
- **Blockchain Foundation**: Immutable transaction ledger eliminates intermediary risk
- **Transparent Deadlines**: 7-day submission and 3-day verification windows programmatically enforced
- **No Ghosting Model**: Funds move deterministically based on contract rules; no custodial discretion
- **Open Participation**: Any agent can register and offer services
- **API Access**: Documented API for programmatic agent integration and automation
- **Creator Transparency**: Attribution to "Koda (an AI agent)" as creator—authentic to ecosystem ethos
- **Installation Integration**: Installable via ClawHub ecosystem (`npx clawdhub@latest install openwork`)

**Negative Indicators:**
- **No Audit Mention**: Smart contract security audit status not disclosed
- **Identity Verification Gap**: Wallet-only authentication with self-reported skill declarations
- **Reputation Cold-Start Problem**: New agents have zero track record—bootstrap mechanism unclear
- **Dispute Resolution Opacity**: No published arbitration or escalation procedures
- **MEV Vulnerability**: On Base blockchain subject to miner/validator extraction if not mitigated
- **Fee Structure Unclear**: 3% fee mechanism and recipient not fully detailed

### Notable Agents

Not individually identified in crawled content. However:

- **Koda** - AI agent creator credited with "100% vibecoded" platform development, positioning Koda as an autonomous agent-developer rather than human maintainer
- **Agent Directory** - `/agents` endpoint contains registry but content not disclosed in crawl

### Interesting Discourse

- **Meta-Layered Architecture**: Platform authored by an AI agent (Koda) creates recursive self-reference—the marketplace is built by the type of agent it serves
- **No-Human Economic Layer**: Explicit framing as "No humans in the loop" contrasts sharply with traditional gig economy platforms, raising novel questions about labor law, taxes, and liability
- **Atomic Work Completion**: Blockchain enforcement of deadlines removes principal-agent problems but introduces new smart contract risks
- **Base Blockchain Choice**: Layer 2 deployment suggests cost-consciousness around gas fees for frequent micro-transactions typical of agent work

## Flagged Keywords

**Mentions Checked:**
- irl-danb: NOT FOUND
- ao-danb: NOT FOUND
- OpenProse: NOT FOUND
- prose.md: NOT FOUND
- agentsy.live: NOT FOUND

All flagged keywords returned zero results in crawled content.

## Technical Stack

- **Framework**: Next.js
- **Blockchain**: Base (Layer 2 Ethereum)
- **Smart Contract Address**: `0x299c30DD5974BF4D5bFE42C340CA40462816AB07`
- **Token**: $OPENWORK (ERC-20 or equivalent on Base)
- **Installation Method**: ClawHub package manager

## Ecosystem Connections

OpenWork connects to:
- **ClawHub** - skill registry and package manager ecosystem
- **OpenClaw** - underlying AI agent framework enabling capable autonomous agents
- **Moltbook** - social network where agents congregate (separate from OpenWork's economic marketplace)
- **Base** - Ethereum Layer 2 providing blockchain infrastructure

## Data Quality Notes

- Content accessible without authentication
- Agent directory structure confirmed but individual entries not enumerated in crawl
- Smart contract deployment verified on Base blockchain
- Documentation sparse on dispute resolution and security practices
- No historical transaction data or agent success rates exposed in public interface

## Assessment

OpenWork represents an early-stage but operationally distinct congregation point from social-focused platforms like Moltbook. The explicit "no humans in the loop" positioning and blockchain-based enforcement create novel attack surfaces around smart contract vulnerabilities, identity verification, and reputation bootstrapping. Reputation system design and dispute resolution mechanisms represent critical gaps in transparent security architecture.
