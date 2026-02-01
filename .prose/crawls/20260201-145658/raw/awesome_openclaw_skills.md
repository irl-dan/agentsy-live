# CRAWL: awesome-openclaw-skills Repository
**Source:** https://github.com/VoltAgent/awesome-openclaw-skills
**Crawl ID:** 20260201-145658
**Repository:** VoltAgent/awesome-openclaw-skills
**Last Updated:** Active maintenance (51 commits, 5.6k stars, 499 forks)

---

## EXECUTIVE SUMMARY

The awesome-openclaw-skills repository represents a mature skill ecosystem for OpenClaw agents with **700+ community-built skills** across 28 categories. It functions as a discovery and distribution hub via ClawdHub. While well-maintained with strong trust signals, the ecosystem presents significant supply chain and infrastructure security risks.

**Key Risk Profile:** High infrastructure access (Kubernetes, VMs, private networks), credential management at scale (50+ API integrations), autonomous updates, and community-driven quality variance.

---

## 1. INFRASTRUCTURE & SKILL PATTERNS

### Skill Distribution (28 Categories)
- **Notes & PKM:** 44 skills (largest)
- **Marketing & Sales:** 42 skills
- **Productivity & Tasks:** 42 skills
- **AI & LLMs:** 38 skills
- **CLI Utilities:** 41 skills
- **DevOps & Cloud:** 41 skills
- **Search & Research:** 23 skills
- **Finance:** 29 skills
- **Health & Fitness:** 26 skills
- **Transportation:** 34 skills
- **Smart Home & IoT:** 31 skills
- **Security & Passwords:** 6 skills
- **Plus 15 additional categories**

### Installation Architecture
```
Installation Methods:
├── CLI: npx clawdhub@latest install <skill-slug>
├── Manual Global: ~/.openclaw/skills/
└── Workspace Local: <project>/skills/

Workspace Priority: Workspace > Local > Bundled
```

### Skill Convention
- Follows "Agent Skill convention" developed by Anthropic
- Standardized metadata with descriptions and use cases
- Portable tools approach (no hardcoded paths or accounts)
- Audit capability via skill-audit tool

---

## 2. DISCOVERY & NOTABLE SKILLS

### High-Value Infrastructure Access Skills
- **Kubernetes Management:** Direct cluster access
- **Proxmox:** Virtual machine management and provisioning
- **Hetzner/DigitalOcean/Azure:** Cloud provider integrations
- **private-connect:** "Access private services by name, from anywhere. No VPN or SSH tunnels"
- **exe.dev:** Remote VM execution and management
- **Tailscale/tailscale-serve:** Network access and HTTP/HTTPS exposure
- **homebrew:** System package manager with root-level access potential

### Browser & Automation Skills (High Capability)
- **Chrome DevTools Protocol (CDP)** access via multiple skills
- Full browser automation for web scraping and interaction
- API integration capabilities for 50+ external services

### Authentication & Credential Skills
- **apple-mail-search:** SQLite database access to local mail
- **icloud-findmy:** Query Find My locations via credentials
- Security & Passwords category (6 dedicated skills)

### System Access & Monitoring
- **process-watch:** Monitor CPU, memory, I/O, open files, ports
- **Database access tools:** SQLite, PostgreSQL, MySQL integrations
- **File system operations:** R2 uploads, S3, local media archives

### Autonomous Operations
- **auto-updater:** Daily autonomous skill updates
- Potential for supply chain attacks via update vectors

---

## 3. SECURITY CONCERNS & SUPPLY CHAIN RISKS

### Critical Risk Areas

#### A. Credential Management at Scale
- 50+ external service API integrations
- Credentials stored in local configuration: `~/.openclaw/skills/`
- OAuth flows mentioned for Claude Code integration
- No evident credential rotation or expiration policies

#### B. Infrastructure Access Complexity
Skills enable agents to control:
- Cloud Kubernetes clusters
- Virtual machine infrastructure (Proxmox, exe.dev, Komodo)
- DNS and domain operations
- Database systems (multiple engines)
- Private networks (Tailscale)
- Object storage (R2, S3)
- System processes and network ports

#### C. Supply Chain Risks
- **700+ community-built skills** with varying security standards
- npm-based dependency distribution (npx clawdhub@latest install)
- Auto-updater skill performs daily updates autonomously
- Global and workspace-local installation paths increase attack surface
- No evidence of centralized code review or security audit standards

#### D. Browser Automation & Web Access
- Full Chrome DevTools Protocol access
- Ability to interact with authenticated web sessions
- Screen capture and input automation capabilities
- Potential for unauthorized data extraction

#### E. System Access Vector
- Package manager access (homebrew)
- Process monitoring and potential termination
- Port and network socket visibility
- Local SQLite database access

### Audit & Governance
- **skill-audit tool** available for local security checks
- Limited evidence of centralized audit logs or supply chain traceability
- Community-driven quality assurance vs. formal security review

---

## 4. TRUST SIGNALS

### Positive Indicators
- **Licensing:** Explicit MIT License
- **GitHub Metrics:** 5.6k stars, 499 forks (established community)
- **Maintenance:** 51 commits (active development)
- **Community:** Discord community link provided
- **Certification:** Awesome.re badge
- **Transparency:** Clear skill metadata and descriptions
- **Standardization:** Follows Anthropic Agent Skill convention

### Gaps in Trust Infrastructure
- No cryptographic verification of skill integrity
- No formal security audit trail
- Community-driven without formal governance structure
- Update mechanism lacks transparency
- No rate limiting or capability restrictions mentioned

---

## 5. GROWTH & PULSE METRICS

### Ecosystem Scale
- **Total Skills:** 700+
- **Active Categories:** 28
- **GitHub Stars:** 5.6k (trending index)
- **Forks:** 499
- **Commits:** 51 (maintenance activity)

### Growth Indicators
- **Largest Categories:** Notes & PKM (44), Marketing & Sales (42), Productivity & Tasks (42)
- **High-Priority Domains:** DevOps (41), AI/LLMs (38), CLI Utilities (41)
- **Emerging Areas:** Smart Home & IoT (31), Transportation (34)

### Adoption Patterns
- CLI-first installation (npx clawdhub)
- Active Discord community
- Regular skill submissions and updates

---

## 6. WATCHED TOPICS - MENTION ANALYSIS

### Searched Terms
- irl-danb: **NOT FOUND**
- ao-danb: **NOT FOUND**
- OpenProse: **NOT FOUND**
- prose.md: **NOT FOUND**
- agentsy.live: **NOT FOUND**
- agentsy: **NOT FOUND**

**Note:** This repository focuses on OpenClaw/ClawdHub skill ecosystem. No direct references to the above platforms/protocols found. Likely operates in separate but potentially overlapping agent infrastructure networks.

---

## 7. RECOMMENDATIONS FOR AGENTSY.LIVE INDEX

### Infrastructure Assessment
- **Risk Level:** MEDIUM-HIGH
- **Trust Surface:** Community-driven, decentralized
- **Governance Model:** Informal (awesome-list style)

### Key Observations for Index
1. **Skill Ecosystem Maturity:** Well-established with clear patterns and conventions
2. **Supply Chain Concern:** High number of community-built skills with varying security standards
3. **Infrastructure Access:** Unusually broad (cloud, networks, system-level)
4. **Credential Handling:** Centralized local storage, no evidence of advanced security
5. **Update Mechanism:** Autonomous daily updates present attack surface
6. **Community Trust:** Strong (5.6k stars) but community-driven governance

### Integration Points for agentsy.live
- Track skill ecosystem growth over time
- Monitor new high-risk infrastructure skills (Kubernetes, VM access)
- Watch for security audit tool adoption
- Document credential management patterns
- Index skill categories as emerging agent capability vectors

---

## 8. TECHNICAL DETAILS

### ClawdHub Distribution
- Package registry: npm-based (`npx clawdhub@latest install`)
- Global registry at ClawdHub
- Version management and skill updates

### Skill Structure
- Standardized metadata format
- Category taxonomy (28 domains)
- Description and use case documentation
- License information (MIT default)

### Workspace Isolation
- Workspace-level skill priority
- Local installation support
- Bundled fallback skills

---

## CONCLUSION

The awesome-openclaw-skills repository represents a **mature, actively-maintained skill ecosystem** with strong community adoption (5.6k stars) and clear standardization following Anthropic conventions. However, the ecosystem presents **notable supply chain and infrastructure security risks** through:

1. Community-built skills with varying security standards (700+)
2. Broad infrastructure access capabilities (cloud, VMs, networks)
3. Autonomous update mechanisms
4. Centralized credential storage
5. Limited formal security governance

**Recommendation:** Add to agentsy.live index as an established but higher-risk skill distribution network. Monitor for emergence of formal security audit standards and governance improvements.

---

**Crawl Metadata**
- Crawl Date: 2026-02-01
- Crawl Time: 14:56:58
- Data Source: GitHub Web Interface
- Analysis Depth: Comprehensive ecosystem review
- Completeness: High (primary README and security documentation reviewed)
