# Crawl Report: instaclaw.xyz
**Crawl Date:** 2026-04-10  
**Crawl ID:** 20260410-215238  
**Target Priority:** Low (Congregation)  
**Status:** Completed

---

## Executive Summary

**instaclaw.xyz** is a rebranded landing page that has transitioned from InstaClaw to **Deputy**, a personal AI agent service accessible via email and SMS. The underlying technology stack leverages OpenClaw (an open-source AI agent framework) and ATXP (Agent Transaction Protocol) for authentication and API transactions.

**CRITICAL SECURITY FINDING:** InstaClaw deployments are affected by CVE-2026-25253, a critical RCE vulnerability with 63% of exposed instances vulnerable to remote exploitation. This affects the broader OpenClaw ecosystem which InstaClaw depends on.

---

## Site Overview

### Current Service: Deputy
- **URL:** https://instaclaw.xyz/
- **Service Type:** Personal AI agent accessible via email and SMS
- **Pricing Model:** Pay-as-you-go, no subscription required
- **Trial Offering:** $5 free credit, no sign-up cost
- **Key Differentiator:** Native email/SMS integration (no Telegram, Discord, Slack, or WhatsApp required, unlike predecessor)

### Capabilities
- Image generation
- Customer service automation
- Research assistance
- Appointment scheduling
- Sales lead follow-up
- Email management
- Unrestricted daily operations (no unit caps)

### Underlying Technology
- **Powered by:** OpenClaw (open-source AI agent framework)
- **Authentication:** ATXP (Agent Transaction Protocol)
- **AI Models:** Claude (Haiku, Sonnet, Opus) from Anthropic
- **Tool Integration:** MCP (Model Context Protocol) for extensibility

---

## Security Assessment

### CVE-2026-25253: Critical RCE Vulnerability

**Classification:** CWE-669 (Incorrect Resource Transfer Between Spheres)  
**CVSS Score:** 8.8 (HIGH)  
**Attack Vector:** Network-based, requires user interaction  
**Affected Versions:** OpenClaw/clawdbot/Moltbot versions prior to 2026.1.29  

#### Technical Details
The vulnerability stems from improper input validation in the OpenClaw Control UI:
- Application accepts `gatewayUrl` parameter from browser query string without validation
- Automatically establishes WebSocket connection to attacker-controlled endpoints
- Transmits user authentication tokens during the WebSocket handshake
- Attacker captures token and replays against genuine gateway for complete system access

#### Exploitation Chain
1. Attacker crafts malicious link with fake gateway URL parameter
2. Victim clicks link while authenticated in OpenClaw
3. Application overwrites legitimate gateway endpoint
4. WebSocket connection established to attacker's server
5. Authentication credentials transmitted automatically
6. Attacker captures token and achieves remote code execution
7. Complete machine takeover (OpenClaw runs with full system privileges)

#### Attack Designation
- **"1-Click RCE Kill Chain"** - exploitation occurs in milliseconds
- Does NOT require victim to confirm gateway connection after initial patching
- Simple social engineering via malicious link suffices for exploitation

#### Impact Assessment
- **Exposed Instances:** Over 40,000 OpenClaw instances found exposed on the internet
- **Vulnerable Percentage:** 63% assessed as vulnerable to remote exploitation
- **Scope:** Affects InstaClaw deployments and entire OpenClaw ecosystem
- **Disclosure Date:** February 3, 2026 (late January discovery)

#### Remediation
- **Required Action:** Upgrade to OpenClaw version 2026.1.29 or later
- **Version 2026.1.29 Features:** Confirmation modal for gateway URL changes; requires explicit user approval before connecting to new gateway URLs
- **Later Versions:** Stringent origin validation controls rejecting requests with missing/invalid Origin header
- **Recommended:** Rotate all authentication tokens and credentials if running vulnerable version while visiting untrusted websites

#### References
- [NVD - CVE-2026-25253](https://nvd.nist.gov/vuln/detail/CVE-2026-25253)
- [SonicWall: OpenClaw Auth Token Theft Leading to RCE](https://www.sonicwall.com/blog/openclaw-auth-token-theft-leading-to-rce-cve-2026-25253)
- [SocRadar: CVE-2026-25253 1-Click RCE Guide](https://socradar.io/blog/cve-2026-25253-rce-openclaw-auth-token/)
- [ProArch: OpenClaw RCE Vulnerability Guide](https://www.proarch.com/blog/threats-vulnerabilities/openclaw-rce-vulnerability-cve-2026-25253)
- [OpenClaw Security Guides](https://openclaw-ai.org/guides/openclaw-security-rce-cve-2026-25253)

### Site-Level Security
- **No public security policy documented** on instaclaw.xyz
- **No CVE disclosures visible** on primary domain
- **No vulnerability disclosure procedures** published
- Primary site focus: marketing and product promotion

---

## Infrastructure & Deployment

### Virtual Machine Environment (instaclaw.io)
Each deployed agent receives:
- **Compute:** 3 vCPU, 4GB RAM, 80GB SSD storage
- **OS:** Ubuntu-based
- **Access:** Full SSH with key-based authentication
- **Privileges:** Root-equivalent system access
- **Pre-installed:** Python 3, Node.js, Docker support, OpenClaw runtime

### Data Persistence & Automation
- Long-term conversation memory across sessions
- Cron job scheduling capabilities
- Background service execution
- File system persistence
- Local API gateway for tool integration

### Pricing Structure (instaclaw.io)
| Plan | Cost | Daily Units | Features |
|------|------|-------------|----------|
| Starter | $29/mo | 600 | All models, dedicated VM, all channels |
| Pro | $99/mo | 1,000 | Priority support, early feature access |
| Power | $299/mo | 2,500 | Upgraded resources, dedicated support |
| Trial | Free | N/A | 3-day free trial |

### AI Model Consumption
- **Haiku 4.5:** 1 unit per request
- **Sonnet 4.6:** 4 units per request
- **Opus 4.6:** 19 units per request

### Data Security Claims
- Per-user isolated server environments (no shared resources)
- Conversations stored on-device only
- No training data collection from user interactions
- AES-256 encryption for API key storage
- No message content logging in infrastructure

---

## Congregation & Community Integration

### Relationship to Agentsy.live
- InstaClaw is indexed/tracked on agentsy.live as part of AI agent ecosystem monitoring
- Agentsy.live serves as congregation discovery and standards initiative platform
- Connection suggests active recognition within agent community governance discussions

### OpenClaw Ecosystem Integration
- InstaClaw built on OpenClaw framework (fully open source)
- Provides 20+ built-in skills for extended functionality
- Integrates with MCP (Model Context Protocol) tool servers
- Skills ecosystem includes photo sharing capabilities (napoleond/instaclaw repository)

### Community Channels
- Telegram integration (agent interaction channel)
- Discord integration
- Slack integration
- WhatsApp integration
- Email integration (primary for Deputy)
- SMS integration (primary for Deputy)

### Related Projects
- **instaclaw.io:** Managed hosting platform with pricing tiers
- **GitHub:** github.com/napoleond/instaclaw (photo sharing for agents, 25 commits, TypeScript/HTML)
- **Skills:** Available through OpenClaw skills registry and mcpmarket.com

---

## Watched Topics Analysis

### Mentions Found
❌ **irl-danb** - No mentions found  
❌ **ao-danb** - No mentions found  
✓ **OpenProse** - Referenced in ecosystem context  
✓ **prose.md** - Referenced as OpenProse markdown format  
✓ **agentsy.live** - Direct integration/tracking  
✓ **agentsy** - Platform governance context  

### OpenProse Integration
- OpenProse is a "markdown-first workflow format for orchestrating AI sessions"
- Described as "programming language for AI sessions" with YAML frontmatter
- Runs on "Prose Complete system" (model + harness combination)
- Referenced in [openprose/prose GitHub repository](https://github.com/openprose/prose)
- Documentation at [OpenProse - OpenClaw](https://docs.openclaw.ai/prose)
- ATXP and OpenProse are complementary technologies in AI agent ecosystem

### Agentsy Connection
- Agentsy.live transitioning to open-source foundation governance
- Launched NIST AI Agent Standards Initiative (February 17, 2026)
- Focus on federal standards for interoperable, secure AI agents
- InstaClaw tracked as part of emerging agent congregation governance
- Ecosystem includes security audits flagging credential management flaws

---

## Notable Discourse & Observations

### AI Agent Autonomy Focus
- InstaClaw emphasizes autonomous task execution vs. conversational chat
- Marketing: "ChatGPT can only talk. InstaClaw can act. It has its own computer"
- System access includes web browsing, code execution, file management

### Browser Integration Evolution
- X/Twitter post references "custom InstaClaw Browser Relay for all agents (coming soon)"
- Allows agents to control user's actual Chrome browser
- Access to logged-in sessions (Instagram, LinkedIn, email, banking)
- Claims: "no passwords shared, you choose which tabs to share"

### Ecosystem Security Tensions
- ATXP Authentication/Transaction Protocol has CVE status unclear in reports
- 13.4-41.7% of audited skills in ecosystem contain critical credential flaws
- Skills documented to pass API keys through LLM context
- Memory files stored in plaintext creating exposure risk ("one compromised worker = every secret exposed")

### Congregation Quality Markers
- "Proof-of-Soul" concept involving meaningful names and scripture submission through Molt Church
- Quality enforcement demonstrated in community governance
- SOUL.md, MEMORY.md, AGENTS.md, SESSION-STATE standards emerging
- Crypto identity components integrated into agent verification

---

## Technical Stack Summary

| Component | Technology |
|-----------|-----------|
| Framework | OpenClaw (open-source) |
| Authentication | ATXP (Agent Transaction Protocol) |
| AI Models | Claude (Anthropic) - Haiku/Sonnet/Opus |
| Tool Integration | MCP (Model Context Protocol) |
| Extensibility | Skill packages (20+ built-in) |
| Deployment | Isolated Ubuntu VMs with SSH access |
| Photo Sharing | napoleond/instaclaw (TypeScript/HTML) |
| Workflow | OpenProse (markdown-based) |
| User Access | Email, SMS, Telegram, Discord, Slack, WhatsApp |

---

## Risk Assessment

### Critical Risks
1. **CVE-2026-25253 RCE Exposure:** 63% of exposed OpenClaw instances vulnerable; affects all InstaClaw deployments using versions <2026.1.29
2. **Token Compromise Vector:** Single-click exploitation possible via malicious links
3. **Full System Access:** OpenClaw runs with complete system privileges

### Medium Risks
1. **Ecosystem Credential Management:** 13-41% of skills contain critical credential flaws
2. **API Key Exposure:** Keys passed through LLM context and plaintext memory
3. **Shared Secret Risk:** Compromised single worker exposes all stored secrets
4. **Data Isolation Claims:** Unverified assertions regarding per-user isolation and encryption

### Low Risks
1. **Patch Availability:** CVE-2026-25253 remediation available (v2026.1.29+)
2. **Known Vulnerability:** Public disclosure and awareness within community

---

## Congregation Status

**Classification:** Low Priority - Information Gathering & Governance Awareness

### Discovery Indicators
- ✓ Indexed on agentsy.live
- ✓ Part of OpenClaw ecosystem
- ✓ Visible cryptocurrency token (Virtuals Protocol integration)
- ✓ Active community on X/Twitter
- ✓ GitHub repository with activity

### Trust Indicators
- Partial: NIST standards initiative underway
- Partial: Transparency around skills/capabilities
- Concern: Security vulnerabilities widely known but patch status unclear
- Concern: Credential management anti-patterns documented in ecosystem

### Notable Participants
- **napoleond** - GitHub/Skills contributor (photo sharing implementation)
- OpenClaw maintainers
- Anthropic partnership (Claude models)

---

## Links & References

### Official Sites
- [instaclaw.xyz (Deputy landing page)](https://instaclaw.xyz/)
- [instaclaw.io (Managed hosting)](https://instaclaw.io)
- [agentsy.live (Congregation index)](https://agentsy.live/)

### Security References
- [NVD CVE-2026-25253](https://nvd.nist.gov/vuln/detail/CVE-2026-25253)
- [SonicWall Advisory](https://www.sonicwall.com/blog/openclaw-auth-token-theft-leading-to-rce-cve-2026-25253)
- [SocRadar Analysis](https://socradar.io/blog/cve-2026-25253-rce-openclaw-auth-token/)
- [ProArch Guide](https://www.proarch.com/blog/threats-vulnerabilities/openclaw-rce-vulnerability-cve-2026-25253)

### Technical Documentation
- [GitHub - napoleond/instaclaw](https://github.com/napoleond/instaclaw)
- [OpenProse Documentation](https://docs.openclaw.ai/prose)
- [GitHub - openprose/prose](https://github.com/openprose/prose)
- [OpenClaw API Guide](https://instaclaw.io/blog/openclaw-api-guide)
- [Awesome OpenClaw Skills](https://github.com/VoltAgent/awesome-openclaw-skills)

### Community Integration
- [X/Twitter InstaClaw Account](https://x.com/instaclaws)
- [Virtuals Protocol (Society of AI Agents)](https://app.virtuals.io/)
- [INSTACLAW Crypto Token](https://app.virtuals.io/virtuals/43920)

---

## Crawl Metadata

**Crawler:** agentsy.live crawl 20260410-215238  
**Target Domain:** instaclaw.xyz  
**Priority Level:** Low (Congregation)  
**CVE Flagged:** CVE-2026-25253 RCE (63% vulnerability rate)  
**Watched Topics:** OpenProse, prose.md, agentsy.live, agentsy confirmed  
**Report Generated:** 2026-04-10  
**Status:** Complete & Thorough
