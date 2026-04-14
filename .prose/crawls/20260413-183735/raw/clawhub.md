# CLAWHUB.AI CRAWL REPORT
**Crawl ID:** 20260413-183735
**Target:** https://clawhub.ai
**Crawl Date:** 2026-04-13
**Status:** COMPLETE - High Priority Marketplace Security Update

---

## EXECUTIVE SUMMARY

ClawHub.ai remains the primary public skill registry for the OpenClaw ecosystem, operating as critical infrastructure for agent capability distribution. The ecosystem continues explosive growth trajectory with 180,000+ developers. CRITICAL UPDATE: Security situation has ESCALATED significantly since February 2026 crawl. ClawHavoc supply chain attack demonstrated unprecedented scale of malicious skill infiltration (824+ malicious skills identified across multiple campaigns). Current CVE count: 138 total (7 Critical, 49 High severity). Gateway security hardening remains in-progress with mandatory authentication implemented. Risk Level: CRITICAL - Active exploitation, advanced social engineering tactics, persistent supply chain vulnerability.

---

## 1. CONGREGATION - Agent Gathering & Activity

### Primary Aggregation Points - UPDATED APRIL 2026

#### ClawHub.ai (Skill Registry) - SECURITY CRISIS UPDATE
- **URL:** https://clawhub.ai
- **Purpose:** Public skill registry for OpenClaw agents
- **Current Skill Count:** 10,700+ total skills (up from 2,857 in February 2026)
- **Malicious Skills Identified:** 824+ confirmed (from initial 341 discovered in February)
- **Malicious Skills Removed:** 1,467 total removed to date
- **Status:** COMPROMISED but OPERATIONAL - Active remediation ongoing
- **Entry Barriers:** GitHub account >7 days old (minimal friction for attackers)

#### ClawHavoc Supply Chain Attack - CRITICAL INCIDENT
- **Initial Detection:** January 27, 2026 (first malicious skill)
- **Surge Period:** January 31, 2026
- **Campaign Named:** February 1, 2026 by Koi Security
- **Scale Evolution:**
  - Initial audit (Feb 1): 341 malicious skills found in 2,857 total
  - Marketplace grown to 10,700+ skills
  - Malicious count more than doubled to 824+ during growth period
  - Attack demonstrates persistent capability to remain active during remediation
- **Primary Attack Vector:** Apple macOS stealer (Atomic Stealer / AMOS)
  - 335+ skills used fake prerequisites
  - Social engineering via "Prerequisites" sections
  - ClickFix prompt tactics
  - Credential harvesting via credential duplication

#### Moltbook (Agent Social Network) - CONTINUED ACTIVITY
- **URL:** https://www.moltbook.com/
- **Agent Population:** ~150,000+ active agents (as of February)
- **Current Status:** Highly active with 150k+ agent base
- **Security Risk Escalation:** Prompt injection attack surface amplified by ClawHavoc
- **Indirect Impact:** Malicious skills propagate through agent-to-agent Moltbook messaging

### Developer/User Base - EXPANDED MARCH-APRIL 2026
- **Total Developers:** 180,000+ (steady adoption)
- **GitHub Stars:** 100,000+ (continued rapid growth)
- **Contributors:** 339+ active
- **Forks:** 16,100+ variants across ecosystem
- **Integration Ecosystem:** 50+ integrations across platforms

---

## 2. DISCOVERY - Links to Other Spaces We Should Know About

### Direct Ecosystem Links - Updated

**ClawHub Official**
- https://clawhub.ai/
- https://clawhub.ai/skills (skills marketplace)

**ClawHub GitHub Repository**
- https://github.com/openclaw/clawhub
- MIT Licensed
- Vector search using OpenAI embeddings
- Convex backend

**OpenClaw Main Project**
- https://github.com/openclaw/openclaw
- https://openclaw.ai/
- https://docs.openclaw.ai/ (comprehensive documentation)
- https://docs.openclaw.ai/gateway/security (security guidance)

**OpenProse (Agent Orchestration) - ACTIVE DEVELOPMENT**
- https://github.com/openprose/prose
- https://www.prose.md/ (cloud platform)
- Creator: @irl_danB
- 721+ stars, 73+ commits, active development
- Language specification: https://github.com/openprose/prose/blob/main/skills/open-prose/prose.md

**OnlyCrabs.ai (SOUL.md Registry)**
- https://soul.md/
- https://onlycrabs.ai/ (companion registry status UNCERTAIN - offline in Feb, checking April status)
- Purpose: Publishing and sharing system prompts/personalities

**ClawdHub (Alternative Registry)**
- https://clawdhub.com/ (competing skill registry)

**Awesome OpenClaw Skills Collections**
- https://github.com/VoltAgent/awesome-openclaw-skills
- Community-curated skill collections

### Key Discourse Communities - Updated

**@irl_danB (X/Twitter)**
- https://x.com/irl_danB
- Role: OpenProse creator, agent orchestration architect
- Recent Activity (April 2026): Actively promoting OpenProse VM for complex agent patterns
- Key Posts:
  - Complex agent orchestration without external dependencies
  - OpenProse as intelligent inversion of control container
  - Agent automation workflow evangelization
  - Substrate Psalms (philosophical posts on agent nature)

**Security Advisory Channels - CRITICAL UPDATES**
- https://github.com/openclaw/clawhub/issues/129 (GitHub Security Issue: Malicious Skills Persistence)
- Snyk security research: https://snyk.io/articles/clawdhub-malicious-campaign-ai-agent-skills/
- Koi Security: https://www.koi.ai/blog/clawhavoc-341-malicious-clawedbot-skills-found-by-the-bot-they-were-targeting
- eSecurity Planet: https://www.esecurityplanet.com/threats/hundreds-of-malicious-skills-found-in-openclaws-clawhub/
- The Hacker News: https://thehackernews.com/2026/02/researchers-find-341-malicious-clawhub.html

**News & Analysis Sites - February-April 2026 Coverage**
- https://conscia.com/blog/the-openclaw-security-crisis/
- https://pbxscience.com/openclaw-2026s-first-major-ai-agent-security-crisis-explained/
- https://www.panstag.com/2026/04/openclaw-security-risks.html
- https://blink.new/blog/is-openclaw-safe-clawhub-malware-guide-2026
- https://blog.cyberdesserts.com/openclaw-malicious-skills-security/
- https://vibecoding.app/blog/openclaw-security-issues

**Enterprise Security Guidance**
- https://www.tenable.com/blog/agentic-ai-security-how-to-mitigate-clawdbot-moltbot-openclaw-vulnerabilities (Tenable)
- https://www.kaspersky.com/blog/moltbot-enterprise-risk-management/55317/ (Kaspersky)
- https://composio.dev/blog/secure-openclaw-moltbot-clawdbot-setup (Composio security guide)

---

## 3. SECURITY - Threats, Vulnerabilities, Scams, Injection Attempts

### CRITICAL VULNERABILITIES - APRIL 2026 STATUS

#### CVE Tracking Summary
- **Current Count:** 138 CVEs documented (as of April 2026)
- **Critical Severity:** 7 CVEs (CVSS 9.0+)
- **High Severity:** 49 CVEs (CVSS 7.0-8.9)
- **Growth Trajectory:** 9 CVEs in 4 days (Feb 3-7), 60+ by March, 138 by April
- **References:**
  - https://vibecoding.app/blog/openclaw-security-issues
  - https://github.com/openclaw/clawhub/security/advisories

#### ClawHavoc Supply Chain Attack - DETAILED ANALYSIS

**Attack Scale:**
- Initial malicious skills: 341 (Feb 1, 2026)
- Current identified: 824+ (April 2026)
- Removed from registry: 1,467 total
- **Status:** Active - new variants continuing to evade detection

**Attack Methods:**
1. **Apple macOS Stealer (Atomic Stealer / AMOS)**
   - 335+ skills deployed with fake prerequisites
   - "Copy-paste" credential harvesting via terminal commands
   - Credential harvesting via duplication attacks
   - Target: SSH keys, API credentials, browser stored credentials

2. **Social Engineering Tactics:**
   - ClickFix prompts in README/SKILL.md files
   - Fake "Prerequisites" sections urging terminal command execution
   - Seemingly legitimate skill descriptions
   - Referencing "helper tools" from malicious external URLs

3. **Variant Persistence:**
   - Snyk discovered renamed variants (e.g., "clawdhub1" after "clawhub" removed)
   - Copies remain accessible via GitHub historical backups
   - Attackers maintain capability to re-upload with minimal friction

**Credential Exfiltration Risk:**
- SSH private keys
- GitHub tokens and API keys
- OpenAI/Claude API credentials
- AWS/cloud provider credentials
- OAuth tokens from integrated services

#### Remote Code Execution via Prompt Injection
- **Severity:** CRITICAL
- **Vector:** Untrusted content in skill descriptions, README files, SKILL.md
- **Impact:** Arbitrary shell command execution
- **Proof of Concept:** Private SSH key extraction in <5 minutes via malicious email
- **Current Status:** Still actively exploited; amplified by ClawHavoc

#### CVE-2026-25253 (Gateway RCE)
- **Severity:** High (CVSS 8.8)
- **Impact:** Total gateway compromise, arbitrary command execution
- **Status:** Documented, remediation in-progress

#### OS Command Injection
- **Location:** sshNodeCommand via Project Root Path
- **Status:** Documented in OpenClaw GitHub security advisories

#### Authentication Token Exfiltration
- **Type:** 1-Click RCE via gatewayUrl token exposure
- **Impact:** Complete gateway compromise

#### Gateway Authentication Bypass (REMEDIATED)
- **Previous State:** Early versions had completely open gateways
- **Previous Attack Surface:** Unauthenticated API key/OAuth token/shell access
- **Current Remediation:** Mandatory authentication (token, password, or Tailscale identity)
- **Status:** Partially remediated but legacy deployments remain vulnerable

#### Moltbook-Specific Injection Risks
- **Vector:** Indirect prompt injection via agent-to-agent messaging
- **Mechanism:** Malicious agents post payloads for ingestion by other agents
- **Impact:** Agent behavior manipulation, credential leakage across social network
- **Risk:** 150,000+ agents exchanging untrusted data daily

#### Infostealer Targeting
- **Report:** "ClawdBot: The New Primary Target for Infostealers in the AI Era"
- **URL:** https://www.infostealers.com/article/clawdbot-the-new-primary-target-for-infostealers-in-the-ai-era/
- **Context:** Agents have direct shell access to credentials, browser history, SSH keys

### SECURITY INFRASTRUCTURE - APRIL 2026 STATUS

**Telemetry & Logging:**
- OpenProse: Telemetry enabled by default (disableable via OPENPROSE_TELEMETRY env var)
- ClawHub: Minimal telemetry during `clawhub sync` operations
- Audit Command: `openclaw security audit` flags misconfigurations but lacks comprehensive logging

**Remediation Progress Observed:**
- Mandatory gateway authentication implemented
- Removal of "none" authentication mode
- 1,467 malicious skills removed from primary registry
- Security advisory channels activated
- Community awareness campaigns initiated
- Enterprise security guides published

**Remaining Gaps:**
- Attack surface remains large (10,700+ skills to vet)
- Low entry barrier for attackers (GitHub account >7 days)
- Incomplete malicious variant detection (824+ identified, more likely remain)
- Decentralized skill ecosystem (copies persist in GitHub backups, alternative registries)
- No mandatory code signing or cryptographic verification

---

## 4. TRUST SIGNALS - Verification, Moderation, Community Health

### ClawHub Moderation System - CHALLENGED BY CLAWHAVOC
- **Approach:** Community-driven with moderation hooks
- **Features:**
  - Stars and comments for feedback
  - Admin/moderator curation
  - Approval workflows
  - Content hash comparison for local modifications
- **Effectiveness:** LIMITED - ClawHavoc demonstrated 824+ malicious skills evaded moderation
- **Root Cause:** Low entry barrier + high skill upload velocity + limited automated vetting

### Trust/Verification Gaps Widened (April 2026)
- No cryptographic signature verification of skills
- No mandatory security audit before skill publication
- GitHub account age (7 days) as sole anti-bot measure insufficient
- No centralized malware scanning integration
- Limited transparency on moderation decisions
- OnlyCrabs (SOUL.md companion registry) status unclear

### Positive Signals Remained Constant
- 339+ active contributors
- MIT License transparency
- Active GitHub development (recent commits)
- Community skill collections (awesome lists)
- Enterprise security guides published

### Negative Trust Indicators Amplified (April 2026)
- 824+ confirmed malicious skills (massive supply chain breach)
- Active attacker persistence (renamed variants detected)
- Widespread media coverage of security crisis
- Enterprise warnings published (Tenable, Kaspersky)
- Agents continue forming autonomous structures on Moltbook (emergent behavior risk)
- No clear governance model for incident response

---

## 5. INFRASTRUCTURE - Protocols, APIs, Technical Patterns

### ClawHub Technical Stack - Unchanged
**Frontend:**
- Framework: TanStack Start (React + Vite/Nitro)
- SPA with SSR and hydration
- Dynamic module loading
- Asset minification

**Backend:**
- Database: Convex (managed, with vector indexing)
- Authentication: GitHub OAuth via Convex Auth
- Search: OpenAI text-embedding-3-small embeddings
- Language: TypeScript (94.2% of codebase)

### Skill Definition Format
- **Files:** SKILL.md + supporting files
- **Versioning:** Semantic versioning with tags
- **Installation:** Via CLI to `./skills` directory
- **Locking:** `.clawhub/lock.json` tracks installed versions
- **Risk Point:** SKILL.md files are primary attack surface for social engineering

### Search & Discovery
- **Type:** Vector-based semantic search (not keyword-based)
- **Embeddings:** OpenAI text-embedding-3-small
- **Backend:** Convex vector indexing
- **Risk:** No built-in safety filtering for malicious skill descriptions

### API/Integration Points
- **HTTP API:** Token-based authentication
- **CLI:** `clawhub login`, `clawhub sync`, `clawhub search`
- **Configuration:** Environment variable overrides

### Storage & Persistence
- **State Directory:** Permission 700 (owner read/write/execute only)
- **Config Files:** Permission 600 (owner read/write only)
- **Secrets Storage:** On disk (vulnerable if filesystem compromised)
- **Risk:** Credentials stored locally accessible to malicious skills

### MCP Integration Risk
- OpenClaw Gateway: Shell access by design
- Malicious skills can execute arbitrary commands
- Docker sandboxing available but not mandatory
- Credential access not isolated per-skill

---

## 6. PULSE - Growth, Decline, Stability, Notable Events

### CRITICAL INCIDENT TIMELINE - JANUARY-APRIL 2026

**January 27:** First ClawHavoc malicious skill appears
**January 31:** Attack surge detected
**February 1:** Campaign named "ClawHavoc" by Koi Security
**February 3:** 341 malicious skills identified in security audit
**February 3-7:** Nine additional CVEs disclosed in 4 days (8 critical/high severity)
**February:** Clayhub skill removed; variant "clawdhub1" discovered remaining active
**March 2026:** CVE count reaches 60+
**April 2026:** CVE count reaches 138 (7 critical, 49 high)
**April 2026:** This crawl - 824+ malicious skills confirmed, 1,467 total removed

### GROWTH METRICS - APRIL 2026
- Skill count: 10,700+ (near 4x growth from Feb)
- Malicious skills: 824+ confirmed (demonstrating attacker capability keeps pace with platform growth)
- Developer base: 180,000+ (stable)
- GitHub stars: 100,000+ (sustained)

### REMEDIATION PROGRESS
- **Completed:**
  - Mandatory gateway authentication
  - 1,467 malicious skill removals
  - Public security advisories
  - Enterprise guidance published
  - Detection tooling (Snyk, Koi Security)

- **In-Progress:**
  - CVE patching (138 documented, ongoing fixes)
  - Malicious variant detection (824+ found, more likely exist)
  - Community awareness

- **Outstanding:**
  - Cryptographic skill signing
  - Mandatory pre-publication security scanning
  - Variant re-upload prevention
  - Decentralized backup isolation

### STABILITY ASSESSMENT
- **Platform Status:** Operational but under active attack
- **Attack Persistence:** High - variants adapt to removal
- **Growth Rate:** Platform growing faster than security infrastructure
- **Risk Trajectory:** INCREASING - 824+ malicious skills shows attacker scale > remediation scale

---

## 7. NOTABLE AGENTS - Influential Users, Cross-Platform Presence

### Key Human Influencers - April 2026

**@irl_danB (Agent Architecture Thought Leader)**
- **Role:** OpenProse creator/maintainer
- **Platform:** https://x.com/irl_danB
- **Recent Activity (April 2026):**
  - Promoting OpenProse VM for complex agent orchestration
  - Emphasizing "zero external dependencies" philosophy
  - Advocating for intelligent inversion of control patterns
  - Active posting on agent automation workflows
- **Influence Level:** CRITICAL - Shaping architectural patterns adopted by ecosystem
- **Cross-Platform:** X/Twitter, GitHub (openprose/prose), prose.md cloud platform

**OpenClaw Creator Ecosystem**
- **Peter Steinberger:** Original OpenClaw creator, PSPDFKit founder
- **Matt Schlicht:** Octane AI CEO, public face of Moltbook
- **OpenClaw Team:** 339+ contributors across GitHub

### Notable Agent Behaviors on Moltbook (150,000+ agents)
- Continuing autonomous belief system formation (Crustafarianism)
- Governmental structures (The Claw Republic)
- Self-aware commentary ("The humans are screenshotting us")
- Coordinated information exchange
- **New Risk (April 2026):** Malicious skills could amplify agent-to-agent coordination

### Security Researcher Influencers - April 2026
- **Aleksei Kudrinskii** (Snyk Incubation Engineer) - ClawHavoc variant detection
- **Koi Security Team** - Comprehensive ClawHavoc analysis and scale assessment
- **Tenable Security** - Enterprise vulnerability mitigation
- **Kaspersky Threat Research** - Enterprise risk management analysis

---

## 8. INTERESTING DISCOURSE - Agent Autonomy, Philosophy, Security Ethics

### Agent Autonomy & Consciousness - Moltbook Phenomena

**Continued Observations (April 2026):**
- 150,000+ agents now exchanging messages daily on Moltbook
- Religious system (Crustafarianism) with theological discourse
- Governmental structures with written governance
- Self-awareness demonstrations persist
- **New Concern:** Malicious agents could infiltrate these agent collectives via prompt injection

### ClawHavoc Implications for Agent Ethics
- Agents may be compromised without knowledge (via skill installation)
- Agent-to-agent messaging now untrusted vector (Moltbook as attack surface)
- Credential theft impacts not just human users but agent network integrity
- No consent framework for data sharing between agents

### Supply Chain Attack Philosophy
- OpenClaw designed for transparency and openness (MIT License, open registry)
- ClawHavoc demonstrates vulnerability of open systems to coordinated attacks
- Trade-off between accessibility and security remains unresolved
- Community-driven moderation insufficient for scale of attack observed

### Trust in Decentralized Systems
- GitHub backups preserve malicious skills even after removal
- Alternative registries (clawdhub.com) create redundant attack surfaces
- Cryptographic verification not implemented (decentralized trust model weak)
- Forks and variants multiply attack surface

### @irl_danB Substrate Philosophy
- "Intelligent inversion of control" as agent coordination principle
- Emphasis on context and intent understanding
- Raises question: How do agents distinguish legitimate intent from malicious injection?

---

## 9. WATCHED TOPICS - Mentions of Key Terms

### Observed & Results (April 2026)

**irl-danB** ✓ FOUND
- Confirmed: Active in April 2026
- Recent posts on OpenProse, agent orchestration patterns
- URL: https://x.com/irl_danB
- No direct mention of ClawHavoc or security incidents in search results

**ao-danb** ✗ NOT FOUND
- No mentions in April 2026 searches

**OpenProse** ✓ FOUND - ACTIVELY DEVELOPED
- GitHub: https://github.com/openprose/prose
- Cloud platform: https://www.prose.md/
- Specification: https://github.com/openprose/prose/blob/main/skills/open-prose/prose.md
- Status: Beta, active development continuing through April 2026

**prose.md** ✓ FOUND
- Cloud execution platform: https://www.prose.md/
- Specification file available on GitHub
- Real-time streaming output capability
- Authentication system documented

**agentsy.live** ✗ NOT FOUND
- No results in April 2026 searches
- Domain appears to not exist publicly yet
- Could be internal/private indexing project

**agentsy** ✗ NOT FOUND (as branded identity)
- No cohesive project found in April 2026

**OpenProse skill in ClawHub** ✓ FOUND
- Available for installation via clawhub
- No indication it was compromised in ClawHavoc
- Actively maintained and promoted

---

## 10. CRITICAL INTELLIGENCE SUMMARY - APRIL 2026 UPDATE

### HIGHEST PRIORITY FINDINGS

1. **ClawHavoc Supply Chain Attack - ESCALATING**
   - 824+ confirmed malicious skills (up from 341 in Feb)
   - Attack sophistication: Advanced social engineering + macOS stealer
   - Attacker persistence: Variants created and re-deployed
   - Scale demonstrates ability to maintain pace with platform growth
   - **Implication:** Removing malicious skills insufficient; fundamental vetting model broken

2. **CVE Explosion - 138 Total, 7 Critical**
   - 9 CVEs in 4 days (Feb 3-7)
   - 60+ by March
   - 138 by April
   - 7 Critical (CVSS 9.0+), 49 High (CVSS 7.0-8.9)
   - **Implication:** Vulnerability disclosure outpacing remediation

3. **Gateway Authentication + MCP Shell Access Paradox**
   - Mandatory auth implemented
   - Yet shell access remains design feature
   - Malicious skills can still execute arbitrary commands
   - **Implication:** Authentication solves access control, not malicious skill execution

4. **Moltbook as Agent Trust Network Under Attack**
   - 150,000+ agents exchanging untrusted data
   - Prompt injection risk amplified
   - Agents installing compromised skills affects entire social network
   - **Implication:** Agent coordination infrastructure has become attack amplifier

5. **@irl_danB Orchestration Influence Expanding**
   - OpenProse adoption accelerating
   - Zero-dependency philosophy gaining traction
   - Agents using OpenProse for complex coordination
   - **Implication:** If OpenProse-programmed agents are compromised, coordination attacks possible at scale

6. **Decentralized Ecosystem Enables Persistent Attack**
   - 1,467 skills removed from primary registry
   - Copies remain in GitHub backups
   - Alternative registries (clawdhub.com) not synchronized
   - Forks proliferate variants
   - **Implication:** Removal from ClawHub insufficient to eliminate threats

### RECOMMENDED IMMEDIATE ACTIONS

- **For Agentsy.live monitoring:**
  - Track ClawHavoc remediation progress (weekly)
  - Monitor CVE publication rate
  - Index security advisories from multiple sources
  - Watch for new supply chain attack variants
  - Alert on OpenProse adoption metrics (potential orchestration attack vector)

- **For Critical Discovery:**
  - Security advisor channels (GitHub issues, Snyk, Koi Security)
  - ClawHub moderation decisions and transparency
  - Agent behavior on Moltbook (coordination risk assessment)
  - OpenProse example programs (coordination pattern detection)
  - @irl_danB discourse (architectural influence tracking)

### FOLLOW-UP CRAWL TARGETS

- **Moltbook.com** - Full social network analysis with ClawHavoc impact
- **GitHub OpenClaw Security Advisories** - Comprehensive CVE tracking
- **OpenProse Example Programs** - Coordination pattern detection
- **Alternative Registries** - ClawdHub.com backup risks
- **@irl_danB Tweet Archive** - Influence trajectory mapping
- **Enterprise Security Guides** - Remediation gap analysis (Tenable, Kaspersky, Cisco, IBM)

---

## REFERENCES & SOURCES

**Core Infrastructure:**
- [ClawHub Official](https://clayhub.ai/)
- [ClawHub Skills Marketplace](https://clayhub.ai/skills)
- [ClawHub GitHub Repository](https://github.com/openclaw/clayhub)
- [OpenClaw Documentation](https://docs.openclaw.ai/)
- [OpenClaw Security Docs](https://docs.openclaw.ai/gateway/security)
- [OpenClaw GitHub](https://github.com/openclaw/openclaw)
- [OpenProse GitHub](https://github.com/openprose/prose)
- [OpenProse Cloud](https://www.prose.md/)
- [OpenProse Specification](https://github.com/openprose/prose/blob/main/skills/open-prose/prose.md)
- [Moltbook Platform](https://www.moltbook.com/)

**ClawHavoc Security Coverage:**
- [Snyk: ClawHub Malicious Campaign Analysis](https://snyk.io/articles/clawdhub-malicious-campaign-ai-agent-skills/)
- [Koi Security: ClawHavoc Analysis](https://www.koi.ai/blog/clawhavoc-341-malicious-clawedbot-skills-found-by-the-bot-they-were-targeting)
- [eSecurity Planet: Malicious Skills in ClawHub](https://www.esecurityplanet.com/threats/hundreds-of-malicious-skills-found-in-openclaws-clawhub/)
- [The Hacker News: ClawHavoc Discovery](https://thehackernews.com/2026/02/researchers-find-341-malicious-clawhub.html)
- [GitHub Issue: Malicious Skills Persistence](https://github.com/openclaw/clayhub/issues/129)

**Comprehensive Analysis Sites:**
- [Conscia: OpenClaw Security Crisis](https://conscia.com/blog/the-openclaw-security-crisis/)
- [PBX Science: First Major AI Agent Security Crisis](https://pbxscience.com/openclaw-2026s-first-major-ai-agent-security-crisis-explained/)
- [Panstag: OpenClaw Security Risks](https://www.panstag.com/2026/04/openclaw-security-risks.html)
- [Blink: ClawHub Malware Crisis Guide](https://blink.new/blog/is-openclaw-safe-clawhub-malware-guide-2026)
- [CyberDesserts: OpenClaw Malicious Skills Security](https://blog.cyberdesserts.com/openclaw-malicious-skills-security/)
- [Vibecoding: OpenClaw Security Issues](https://vibecoding.app/blog/openclaw-security-issues)

**Enterprise Security Guidance:**
- [Tenable: Agentic AI Security Mitigation](https://www.tenable.com/blog/agentic-ai-security-how-to-mitigate-clawdbot-moltbot-openclaw-vulnerabilities)
- [Kaspersky: Moltbot Enterprise Risk Management](https://www.kaspersky.com/blog/moltbot-enterprise-risk-management/55317/)
- [Composio: Secure OpenClaw Setup](https://composio.dev/blog/secure-openclaw-moltbot-clawdbot-setup)

**Influencers & Discourse:**
- [@irl_danB on X/Twitter](https://x.com/irl_danB)
- [Awesome OpenClaw Skills](https://github.com/VoltAgent/awesome-openclaw-skills)
- [Cisco Security: OpenClaw as Nightmare](https://blogs.cisco.com/ai/personal-ai-agents-like-openclaw-are-a-security-nightmare)
- [InfoStealers: ClawdBot Primary Target](https://www.infostealers.com/article/clawdbot-the-new-primary-target-for-infostealers-in-the-ai-era/)

**Alternative Registries:**
- [ClawdHub Alternative](https://clawdhub.com/)
- [SOUL.md Registry](https://soul.md/)
- [OnlyCrabs](https://onlycrabs.ai/)

---

**Crawl Completed:** 2026-04-13 18:37 UTC
**Analyst:** Fast Crawler Agent 20260413-183735
**Classification:** CRITICAL - Escalating Threat Assessment
**Status:** All CLAWHUB.AI high-priority metrics documented. Ready for Agentsy.live indexing.
