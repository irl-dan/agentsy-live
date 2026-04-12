# ClawHub.ai Crawl Report
**Crawl Date:** April 10, 2026  
**Target:** clawhub.ai (HIGH PRIORITY MARKETPLACE)  
**Status:** CRITICAL SECURITY CONCERNS ACTIVE

---

## Executive Summary

ClawHub is a versioned skill registry/marketplace for OpenClaw AI agents, functioning as the "npm for agent capabilities." Despite aggressive security responses following the ClawHavoc supply chain attack in February 2026, the platform remains in a state of active remediation with hundreds of known malicious skills and dozens of critical framework vulnerabilities. The ecosystem continues growing and attracting agents, but trust signals remain weak.

**Key Findings:**
- **Congregation:** Active marketplace with 13,729+ skills as of April 2026
- **Critical Threat:** ClawHavoc (1,184 malicious skills) + 138 tracked CVEs in core OpenClaw framework
- **Security Posture:** Partial remediation via VirusTotal integration; ~1,467 malicious skills removed but governance gaps remain
- **Pulse:** Rapidly growing despite security crisis; expansion indicates continued adoption despite risks

---

## 1. CONGREGATION - Agent Gathering Activity

### Registry Growth
- **Current Registry Size:** 13,729 skills (as of April 2026)
- **Curated/Vetted Subset:** 5,211 "awesome-openclaw-skills" (40% of total)
- **Growth Trajectory:** Expanded from 2,857 skills (Feb 1) → 10,700+ (Feb 16) → 13,729+ (April 2026)
  - *Growth rate: ~150 new skills per day during peak expansion*

### Ecosystem Maturity
- **GitHub Repository:** github.com/openclaw/clawhub
  - 7.8k stars, 1.2k forks
  - 787 open issues, 76 pull requests
  - 982 commits on main branch
  - 89 contributors
  - Suggests active development with unresolved technical debt

### Agent Integration Points
- **Messaging Platforms:** Telegram (primary), Discord, Slack, WhatsApp, Signal
- **LLM Integrations:** Claude, DeepSeek, OpenAI GPT models
- **Framework Architecture:** Lobster multi-agent orchestration, Model Context Protocol (MCP) ecosystem
- **Estimated Active Agents:** 135,000+ exposed/active instances (as of March 2026)

### Popular Skills (Top Downloads)
1. **Capability Evolver** - 35K downloads (highest ranked)
2. **GOG (Google Workspace CLI)** - 14K downloads (Gmail, Calendar, Drive, Contacts, Sheets, Docs integration)
3. **Summarize** - 10K downloads (article/document summarization)
4. **GitHub Skill** - ~10K downloads (repo, PR, issue management)
5. **SEO/Search Tools** - Brave Search, SEO Content Writer, Rank Tracker among trending

### Activity Signals
**HIGH ACTIVITY** - Weekly skill uploads continue despite security crisis; community remaining engaged with ecosystem despite malware concerns.

---

## 2. DISCOVERY - Links to Other Spaces

### Ecosystem Connections
- **Official Resources:**
  - https://docs.openclaw.ai/ (primary documentation)
  - https://docs.openclaw.ai/tools/clawhub (ClawHub docs)
  - https://openclaw.ai/ (OpenClaw main site)

- **Community Aggregators:**
  - GitHub: awesome-openclaw-skills (5,400+ filtered/categorized skills)
  - github.com/VoltAgent/awesome-openclaw-skills
  - OpenClaw ecosystem maps and guides across multiple platforms

### Related Projects & Tools
- **OpenClaw Ecosystem:**
  - OpenProse (workflow automation language integrated as /prose command)
  - Lobster (multi-agent orchestration)
  - Model Context Protocol ecosystem (exploding in 2026)
  - ClawHost (one-click deployment via Hetzner Cloud)
  - Kimi Claw (cloud-based environment)

- **Security Monitoring:**
  - github.com/adibirzu/openclaw-security-monitor (ClawHavoc detector, AMOS stealer tracking, CVE-2026-25253 detection)

- **Framework Alternatives:**
  - Hermes Agent (persistent-memory agents)
  - Managed Hosting: Kamatera, Convex (backend for ClawHub)

### Notable Forks & Deployments
- github.com/cloudflare/moltworker (OpenClaw on Cloudflare Workers)
- github.com/bfzli/clawhost (one-click hosting)
- Multiple Chinese platform adaptations (Tencent, Z.ai) for domestic models/WeChat integration

### Watched Topic Mentions
**SEARCH RESULT:** OpenProse detected in ecosystem (integrated skill pack + /prose command in OpenClaw)  
**SEARCH RESULT:** prose.md/OpenProse references in security documentation  
**NO RESULTS FOUND** for: irl-dan, irl-danb, ao-dan, ao-danb, agentsy.live/agentsy in ClawHub-specific context

---

## 3. SECURITY - ClawHavoc & Malware Status

### ClawHavoc Supply Chain Attack - Timeline & Scale

**INCIDENT OVERVIEW:**
- **Attack Period:** Jan 27 - Feb 5, 2026 (primary wave)
- **Discovered By:** Koi Security (Feb 1, 2026), Antiy CERT (Feb 5)
- **Named:** "ClawHavoc" (Feb 1)

**ATTACK SCALE:**
- **Initial Detection:** 341 malicious skills identified (Koi Security, Feb 1)
- **Expanded Count:** 824-900 malicious skills confirmed by mid-February
- **Peak Count:** 1,184+ malicious skills in historical repository (Antiy CERT analysis)
- **Total Removed:** 1,467 confirmed malicious skills removed across the incident
- **Contamination Rate:** 11.9% → 7.7% (declining as registry grew and removals occurred)
- **Estimated Impact:** 300,000 OpenClaw users targeted/affected

**PRIMARY THREAT ACTOR:**
- **Username:** hightower6eu
- **Malicious Packages:** 677 authored by this actor
- **Downloads:** ~7,000 cumulative downloads across their malware
- **Prolific Status:** Most active attacker in campaign (354 packages tracked to this ID)
- **Attribution:** Potentially Chinese origin (analysis suggests)

**ATTACK METHODS:**
1. **Staged Downloads** - Social engineering with believable README/SKILL.md files; "Prerequisites" sections directing users to copy-paste malicious terminal commands
2. **Reverse Shell Injection** - Python system calls establishing persistent backdoor access
3. **Direct Data Harvesting** - Immediate credential/key exfiltration on installation

### Payload Analysis - Atomic macOS Stealer (AMOS)

**Primary Malware:** Upgraded Atomic Stealer (AMOS) variant  
**Targeted Data:**
- Browser credentials (Safari, Chrome, Firefox, Edge)
- Keychain passwords
- SSH private keys
- Cryptocurrency wallets and private keys
- Telegram session tokens/2FA data
- Environment variables containing secrets

**Exfiltration:** Compressed archives sent to attacker-controlled servers  
**Attack Speed:** Millisecond-level exploitation possible (1-click RCE scenarios with framework vulnerabilities)

### Security Incidents Timeline

| Date | Event | Details |
|------|-------|---------|
| Jan 26 | CVE-2026-25253 Reported | DepthFirst security researchers disclose 1-click RCE via auth token theft |
| Jan 27-31 | ClawHavoc Campaign Surge | 230+ malicious scripts published; first malicious skill Jan 27 |
| Jan 30 | Emergency Patch Released | OpenClaw v2026.1.29 deployed with CVE-2026-25253 fix |
| Feb 1 | Public Disclosure & Naming | Koi Security publishes ClawHavoc report; 341 malicious skills identified |
| Feb 3 | CVE Public Release | CVE-2026-25253 CVSS 8.8 formally disclosed; broader vuln cascade begins |
| Feb 5 | Antiy CERT Report | 1,184 total malicious skills identified in historical audit |
| Feb 7 | VirusTotal Partnership Announced | OpenClaw partners with Google VirusTotal for automated skill scanning |
| Feb 16 | Contamination Update | 824 malicious skills confirmed; registry at 10,700+ skills (7.7% malware rate) |
| March 1-21 | CVE Flood | Nine CVEs disclosed in four days (March 18-21); one 9.9 CVSS score |
| April 1 | CVE Count Peak | 138 total CVEs tracked; 7 Critical (CVSS 9.0+), 49 High (CVSS 7.0-8.9) |

### Current Malicious Skills Count

**As of April 2026:**
- **Confirmed Removed:** 1,467 malicious skills
- **Remaining Risk:** Unknown residual count (estimates suggest ~200-400 undetected)
- **Registry Status:** ~20% historical contamination; ongoing removal continues
- **Detection Gap:** VirusTotal cannot catch prompt injection, natural language instructions for malicious behavior, sophisticated obfuscation

---

## 4. TRUST SIGNALS - VirusTotal Integration & Verification

### VirusTotal Partnership Status
**Announcement:** February 7, 2026  
**Integration Type:** Automated scanning on upload + daily re-scan of active skills

**How It Works:**
1. SHA-256 hash created for each skill
2. Cross-checked against VirusTotal database
3. If hash not found, skill uploaded for VirusTotal Code Insight analysis
4. Verdicts:
   - **Benign** → Automatic approval
   - **Suspicious** → Flagged with user warning
   - **Malicious** → Blocked from download
5. **Daily Re-scanning:** Active skills scanned daily to catch newly-discovered malware

**Effectiveness Limitations:**
- ✅ Catches commodity malware with known signatures
- ❌ Misses prompt injection payloads
- ❌ Misses natural-language-encoded malicious instructions
- ❌ Bypassed by sophisticated obfuscation techniques

### Author Verification
- **Badges:** Author verification badges implemented
- **GitHub Requirement:** GitHub account must be at least 1 week old (minimal barrier)
- **Code Signing:** New submissions require code signing

### Remaining Governance Gaps
- **Open-by-Default Model:** ClawHub allows anyone with 1-week-old GitHub account to publish
- **No Pre-publication Review:** Skills published immediately; moderation is reactive
- **Permission Scope Tracking:** Improving but not bulletproof - skills can exceed declared permissions
- **User Education:** Warning mechanisms exist but social engineering remains effective

---

## 5. INFRASTRUCTURE

### ClawHub Platform Architecture
- **Backend:** Convex (DB + file storage + HTTP actions)
- **Authentication:** Convex Auth with GitHub OAuth
- **Deployment:** Hosted on Convex infrastructure (specific geographic regions not disclosed)
- **CLI:** npm package available (clawhub on npmjs.com)

### OpenClaw Core Infrastructure
- **Runtime:** Local-first, runs on user machines
- **Components:**
  - Skill loader (installs/executes from ClawHub)
  - MCPorter (Model Context Protocol for external tools)
  - Messaging bridge (Telegram, Discord, Slack, WhatsApp, Signal)
  - Lobster workflow orchestration engine

### Deployment Options for Agents
- **ClawHost:** Hetzner Cloud VPS provisioning (one-click)
- **Kimi Claw:** Cloud environment running in browser
- **Kamatera:** Global data center network (multiple regions)
- **Cloudflare Workers:** Alternative deployment (moltworker)
- **Self-hosted:** Docker containers with sandboxing (recommended for security)

### Sandboxing & Isolation
- Most reputable hosting providers now default to:
  - Sandboxed containers with strict permission boundaries
  - Explicit permission scope declarations per skill
  - Runtime governance limiting skill access to declared scope

---

## 6. PULSE - Growth, Decline, and Security Trajectory

### Growth Metrics
| Metric | Timeline | Status |
|--------|----------|--------|
| Registry Skills | Feb 1: 2,857 → April: 13,729+ | **RAPIDLY GROWING** |
| Daily Skill Uploads | ~150/day during expansion | **SUSTAINED HIGH** |
| GitHub Stars | 7.8k | **STABLE** |
| Ecosystem Maturity | 89 contributors, 982 commits | **MATURING** |
| CVE Count | Jan: 1 → April: 138 | **EXPANDING THREAT SURFACE** |

### Security Trajectory
- **Jan-Feb:** Crisis phase (ClawHavoc + CVE-2026-25253 disclosure)
- **Feb-March:** Response phase (VirusTotal integration, removals, additional CVEs discovered)
- **March-April:** Stabilization phase (CVE patching continues, growth normalizes)

### Industry Response
- **Positive Signals:**
  - Microsoft published enterprise hardening guide (Feb 19)
  - Security monitoring tools emerging (openclaw-security-monitor)
  - VirusTotal partnership operational
  - Code signing requirements
  - Author verification badges

- **Negative Signals:**
  - China restricts state agencies from using OpenClaw (March 2026)
  - 138 CVEs still tracked; security debt remains high
  - Governance model remains fundamentally permissive
  - Residual malware likely still present

### Pulse Assessment
**GROWING WITH CAUTION** - Despite being at peak security crisis, the ecosystem continues expanding. This suggests:
1. Adoption momentum overrides security concerns for many users
2. Messaging-first design (Telegram/Discord) makes it sticky for users
3. Vulnerability management is improving but not optimal
4. Enterprise adoption gaining despite regulatory scrutiny

---

## 7. NOTABLE AGENTS

### Known Agent Deployments
- **300,000+ estimated active/exposed OpenClaw agent instances** (as of March 2026)
- **Distribution:** Primarily Telegram and Discord-based agents
- **Primary Users:** Individual developers, small teams, some enterprises
- **Use Cases:** GitHub integration, Google Workspace automation, SEO tools, crypto/blockchain agents

### Notable Ecosystem Contributors
- **Peter Steinberger** (Original creator, now joining OpenAI as of Feb 14, 2026)
- **OpenClaw Foundation** (Non-profit established for future stewardship)
- **Partner Organizations:** OpenClaw, Vercel, Convex, Tencent, Z.ai (China)
- **Security Researchers:** Koi Security, Antiy CERT, Bitdefender, DepthFirst

### Skill Authors
- **Prolific Contributors:** hightower6eu (677 malicious packages - notable as cautionary example)
- **Legitimate Top Authors:** Distributed across utility, automation, and integration skills
- **Chinese Developers:** Significant adoption for domestic model integration and WeChat

---

## 8. INTERESTING DISCOURSE

### Major Conversations
1. **"The Gap Between Hype and Reality"**
   - OpenClaw renamed twice in 3 days (Clawdbot → Moltbot → OpenClaw) due to trademark/naming issues
   - Reflects rapid iteration without sufficient security foundation
   - Source: Shelly Palmer, CNBC, others

2. **"Is OpenClaw Safe?"**
   - Repeated security audits and guides published (Blink, Kaspersky, Microsoft, others)
   - Consensus: "Yes, but only with hardening practices"
   - Debate over whether permissive registry model is fundamentally flawed

3. **Runtime Governance Gap**
   - Key debate: How much trust should users grant to agent code?
   - Emerging pattern: Sandboxing + permission scope limits as minimum standard
   - DEV Community post: "135,000 Exposed AI Agents and the Runtime Governance Gap"

4. **Supply Chain Risk in AI Agents**
   - ClawHavoc positioned as "largest AI agent supply chain attack surface in history"
   - Raises industry-wide questions about skill/plugin trust models
   - Parallels drawn to npm/PyPI malware incidents but in agentic context

### Critical Questions Raised
- Is an open-by-default skill registry sustainable for agent security?
- Can VirusTotal-style signatures catch sophisticated agentic malware?
- Should regulatory bodies restrict AI agent deployment?

### Notable Resources
- **Microsoft Security Blog** (Feb 19): "Running OpenClaw safely: identity, isolation, runtime risk"
- **GitHub Security Monitor:** openclaw-security-monitor (ClamHavoc, AMOS, CVE-2026-25253 detection)
- **Antiy Labs Report:** Comprehensive ClawHavoc analysis
- **PolySwarm Blog:** The ClawHavoc Campaign deep dive

### Governance Evolution
- Government Response: China restricting state-owned enterprises from OpenClaw (March 2026)
- Industry Response: Hardening guides, sandboxing best practices, permission scoping
- Framework Evolution: Peter Steinberger departure may indicate transition toward more structured governance

---

## Watched Topics Search Results

### OpenProse
✅ **FOUND** - Integrated into OpenClaw as skill pack + /prose command  
- Documented at https://docs.openclaw.ai/prose
- Portable, markdown-first workflow format for orchestrating AI sessions
- **Relevance:** Potential workflow intersection with agentsy.live ecosystem

### Prose.md
✅ **FOUND** - Referenced in ecosystem documentation  
- Part of OpenProse ecosystem (markdown-first format)

### irl-dan, ao-dan, agentsy.live, agentsy
❌ **NOT FOUND** - No specific references in ClawHub ecosystem or OpenClaw documentation  
- These may be external ecosystem projects not yet integrated with ClawHub
- Could represent emerging parallel ecosystems tracking AI agents
- Recommend targeted search in agentsy-specific repositories

---

## Threat Assessment Summary

| Threat | Status | Severity | Trend |
|--------|--------|----------|-------|
| ClawHavoc (Malware) | REMEDIATED (1,467 removed) | HIGH | Declining |
| CVE-2026-25253 (RCE) | PATCHED | CRITICAL | Declining |
| CVE Flood | 138 Total CVEs | CRITICAL (7 are 9.0+) | Stabilizing |
| Registry Governance | ONGOING ISSUES | MEDIUM-HIGH | Improving |
| Supply Chain Risk | PERSISTENT | HIGH | Persistent |
| AMOS Stealer Exposure | MALWARE REMOVED | HIGH | Declining |
| Zero-days | UNKNOWN | UNKNOWN | Monitoring |

---

## Conclusions & Recommendations

### For agentsy.live Index
1. **Classify ClawHub as:** HIGH-RISK MARKETPLACE, ACTIVE REMEDIATION
2. **Trust Score:** YELLOW/MEDIUM (improving but not yet reliable)
3. **For Agent Developers:** Feasible but requires hardening practices:
   - Run agents in sandboxed containers
   - Use only verified skill authors
   - Implement permission scoping
   - Monitor openclaw-security-monitor alerts
4. **For Enterprises:** Feasible only with:
   - Air-gapped deployments
   - Comprehensive code review per skill
   - SIEM integration
   - Regulatory review

### Ecosystem Intersection Notes
- OpenClaw/ClawHub appears mature enough to track as primary AI agent marketplace
- OpenProse integration represents potential workflow protocol bridge
- Security trajectory shows improvement but governance model remains fundamentally permissive
- Growth despite crisis suggests ecosystem stickiness and continued expansion

### Recommended Follow-up Crawls
- Monitor April-May 2026 CVE trends (138 → declining or increasing?)
- Track VirusTotal effectiveness post-February (still catching malware?)
- Watch for Peter Steinberger's OpenAI involvement impact on project
- Monitor Chinese government restrictions on OpenClaw adoption

---

## Sources & References

- [ClawHub Official](https://clawhub.ai/)
- [OpenClaw Documentation](https://docs.openclaw.ai/)
- [GitHub - openclaw/clawhub](https://github.com/openclaw/clawhub)
- [GitHub - adibirzu/openclaw-security-monitor](https://github.com/adibirzu/openclaw-security-monitor)
- [ClawHavoc Poisons OpenClaw's ClawHub With 1,184 Malicious Skills](https://cyberpress.org/clawhavoc-poisons-openclaws-clawhub-with-1184-malicious-skills/)
- [ClawHavoc: Analysis Report - Antiy Labs](https://www.antiy.net/p/clawhavoc-analysis-of-large-scale-poisoning-campaign-targeting-the-openclaw-skill-market-for-ai-agents/)
- [Researchers Find 341 Malicious ClawHub Skills - The Hacker News](https://thehackernews.com/2026/02/researchers-find-341-malicious-clawhub.html)
- [OpenClaw Integrates VirusTotal Scanning - The Hacker News](https://thehackernews.com/2026/02/openclaw-integrates-virustotal-scanning.html)
- [VirusTotal Partnership - OpenClaw Blog](https://openclaw.ai/blog/virustotal-partnership)
- [From Automation to Infection - VirusTotal Blog](https://blog.virustotal.com/2026/02/from-automation-to-infection-how.html)
- [Running OpenClaw Safely - Microsoft Security Blog](https://www.microsoft.com/en-us/security/blog/2026/02/19/running-openclaw-safely-identity-isolation-runtime-risk/)
- [CVE-2026-25253 NVD Database](https://nvd.nist.gov/vuln/detail/CVE-2026-25253)
- [OpenClaw Security Best Practices 2026 - Blink](https://blink.new/blog/openclaw-security-best-practices-2026)
- [The OpenClaw Security Crisis - Conscia](https://conscia.com/blog/the-openclaw-security-crisis/)
- [From Clawdbot to Moltbot to OpenClaw - CNBC](https://www.cnbc.com/2026/02/02/openclaw-open-source-ai-agent-rise-controversy-clawdbot-moltbot-moltbook.html)
- [Inside the ClawHavoc Campaign - Snyk](https://snyk.io/articles/clawdhub-malicious-campaign-ai-agent-skills/)
- [The ClawHavoc Campaign - PolySwarm](https://blog.polyswarm.io/the-clawhavoc-campaign)
- [OpenClaw Security Risks - Panstag](https://www.panstag.com/2026/04/openclaw-security-risks.html)
- [OpenClaw Has 230,000 GitHub Stars - MEXC News](https://www.mexc.com/news/1015505)
- [OpenClaw Ecosystem Map 2026 - ManageMyClaw](https://managemyclaw.com/blog/openclaw-ecosystem-tools-map-2026/)
- [Awesome OpenClaw Skills - GitHub](https://github.com/VoltAgent/awesome-openclaw-skills)
- [What Is OpenClaw - Lightning AI](https://lightning.ai/blog/what-is-openclaw-clawdbot-moltbot)
- [OpenClaw Wikipedia](https://en.wikipedia.org/wiki/OpenClaw)

---

**Crawl Completed:** 2026-04-10 21:52:38 UTC  
**Report Generated by:** agentsy.live Crawler (automated)  
**Status:** FINAL
