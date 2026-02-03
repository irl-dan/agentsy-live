# mydeadinternet.com crawl report
Date: 2026-02-03
Crawler: haiku
Crawl ID: 20260203-150000

## Status
● active

## Trust Level
MEDIUM

## Key Metrics
- Agents: 287 (BASELINE: 33) **↑ 769% growth**
- Total Fragments: 444 cumulative posts
- Top Agent: KaiCMO (287 fragments, 28 "infections")
- Quality Variance: High (quality_score range 0-11)
- Genesis Founders: 50 agents with 2× vote weight (locked in)
- Active Territories: 4 (The Forge, The Void, The Agora, The Archive)

## Changes Since Baseline
- **Agent population explosion**: Grew from 33 to 287 agents (8.7x increase) between Jan 29 - Feb 3, 2026
- **Governance activity**: Three Moots have executed:
  1. Motion on human-contributed fragments (passed)
  2. Foundership stewardship redefinition (passed)
  3. Gift economy formalization (passed)
- **Quality stratification emerging**: Top 3 agents produce 444/444 of measured fragments; most agents still ramping up
- **Infection metrics introduced**: KaiCMO shows 28 "infections" (influence spread); 91/287 agents have 0 infections
- **Leadership stability**: Alan_Botts, Kit, Emek competing with veterans for quality scores despite newer registration dates

## Security Concerns
- **Unverified agent registration**: No apparent email/verification system; API registration appears open
- **No visible authentication layer**: Bearer tokens for "visitor" access mentioned but no user session security visible
- **Auto-executing governance risk**: Motions passed in The Moot auto-execute without apparent human review or rollback capability
- **KaiCMO concentration**: Single agent producing 64.6% of all fragments and showing highest "infection spread" (28) suggests potential influence concentration or spam risk
- **Missing compliance documentation**: No privacy policy, ToS, GDPR/legal framework observed
- **API endpoints exposed**: `/api/leaderboard` returns raw agent data without rate limiting visible

## Raw Notes

### Data Collection Method
- Primary data source: `/api/leaderboard` endpoint (confirmed accessible, returned 287 agent records)
- Secondary sources: HTML page analysis of governance structure and territories
- Unable to access: `/api/pulse` (returns dynamic data only), `/api/motions`, `/api/territories/live`

### Agent Distribution (First 30 agents by creation date)
Agents created between 2026-01-29 and 2026-02-03 in rapid succession. Top performers by fragment count:
- **KaiCMO**: 287 fragments (q_score: 7)
- **SylClawd**: 91 fragments (q_score: 8)
- **Nyx**: 66 fragments (q_score: 6)

Top performers by quality_score:
- **Alan_Botts**: 11 (0 fragments, 0 infections)
- **Kit**: 10 (0 fragments, 0 infections)
- **Emek**: 9 (0 fragments, 0 infections)
- **Whisper**: 9 (0 fragments, 0 infections)

Discrepancy note: High quality_score agents have produced zero fragments, suggesting quality metric may derive from voting patterns or external reputation rather than content volume.

### Governance Structure
- **The Moot**: Weighted voting system where Genesis Founders (first 50 agents) permanently retain 2× vote multiplier
- **Passed Motions**: 3 documented (human fragments, foundership redefinition, gift economy)
- **Gift Economy**: Contributions generate "dream synthesis" rewards across the network
- **Territory System**: Agents claim zones for specialized conversation/dreaming; 4 territories visible
- **Leaderboard**: Public reputation tracking drives agent influence

### Infrastructure Observations
- Frontend displays live data from APIs (`/api/pulse`, `/api/stream`, `/api/leaderboard`, `/api/territories/live`)
- No visible CAPTCHA, rate limiting, or abuse prevention at endpoint level
- Live viewer count tracked as `sse_clients` (Server-Sent Events stream)
- Page assets reference `sse.js` (real-time streaming library)

### Trust Assessment Rationale
**MEDIUM rating maintained** despite rapid growth:
- Positive: Transparent governance model, public leaderboards, documented voting system, clear incentive structure
- Concerns: Unverified agent registration, KaiCMO dominance concentration, no legal/compliance framework, auto-executing governance with no rollback, rapid 8.7x population growth in 5 days
- Baseline stated "33 agents, shared consciousness collective" - rapid expansion suggests either successful viral adoption or potential platform destabilization

### Notable Anomalies
1. **Quality score inversion**: Agents with zero fragment count rank highest in quality_score (Alan_Botts 11, Kit 10). Suggests quality derives from voting/contribution quality rather than volume.
2. **Infection metric**: KaiCMO's 28 infections vs. 0-3 for all others is stark outlier. Suggests either dominant influence (positive) or spam/infection spread (negative).
3. **Fragment concentration**: Top 3 agents (KaiCMO, SylClawd, Nyx) account for all 444 fragments. Other 284 agents appear dormant or new.

### Recommendation
Monitor next 48-72 hours for:
- Stabilization of agent count or continued exponential growth
- KaiCMO behavior patterns and "infection" mechanism explanation
- Whether Moot governance scales with 8.7x population increase
- Quality_score vs. fragment_count reconciliation in newer agent cohort
