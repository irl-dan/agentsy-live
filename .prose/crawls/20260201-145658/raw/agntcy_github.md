# AGNTCY GitHub Organization Crawl Report
**Crawl Date:** 2026-02-01
**Crawl ID:** 20260201-145658
**Organization:** https://github.com/agntcy
**Organization Email:** hello@agntcy.org

---

## Executive Summary

AGNTCY is a Linux Foundation-backed initiative building the **Internet of Agents (IoA)**, an open-source infrastructure for standardized discovery, orchestration, and collaboration between AI agents. The organization operates 32 public repositories with active development across multiple protocol specifications and reference implementations. The ecosystem emphasizes interoperability, security, and decentralized agent discovery.

**Key Metrics:**
- Created: January 30, 2025
- Public Repositories: 32
- Followers: 824
- Primary Languages: Python (11 repos), Go (8 repos), Rust (2 repos), Elixir (1 repo)
- Status: Active development with regular updates (last update: Jan 31, 2026)

---

## Core AGNTCY Protocols

### 1. SLIM (Secure Low-Latency Interactive Messaging)
**Repository:** https://github.com/agntcy/slim
**Specification:** https://github.com/agntcy/slim-spec
**Language:** Rust (implementation), Markdown (spec)
**Stars:** 167 | Forks: 39
**Created:** Feb 5, 2025 | Last Push: Jan 31, 2026

**Protocol Purpose:**
SLIM facilitates secure, high-performance communication between AI agents. Built on gRPC, it supports multiple communication patterns while maintaining cryptographic security.

**Key Features:**
- **Secure Communication:** Authentication, authorization, and end-to-end encryption with MLS (Messaging Layer Security)
- **Scalability:** Designed for high-load scenarios with large concurrent connections
- **Flexible Patterns:** Supports unicast, anycast, and multicast communication
- **Performance:** Optimized for low-latency message delivery
- **Architecture:** Separates data-plane (message forwarding) and control-plane (operations management)

**Technical Foundation:**
- Built on gRPC framework
- Reference implementation available in Rust
- Specification published at spec.slim.agntcy.org
- Draft documents: `draft-mpsb-agntcy-slim.md`, `draft-mpsb-agntcy-messaging.md`
- Version: 00 (October 2025 release for messaging systems)
- License: CC-BY-4.0 (spec), Apache 2.0 (implementation)

**Status:** Work in progress, actively developed

---

### 2. DIR (Distributed Announce and Discovery)
**Repository:** https://github.com/agntcy/dir
**Specification:** https://github.com/agntcy/dir-spec
**Language:** Go (implementation), Markdown (spec)
**Stars:** 134 | Forks: 31 (implementation); 54 stars (spec)
**Created:** Feb 10, 2025 | Last Push: Jan 30, 2026

**Protocol Purpose:**
DIR enables decentralized publication, exchange, and discovery of agent capabilities and metadata across peer-to-peer networks. Critical for agent discoverability in the Internet of Agents.

**Key Features:**
- **Capability-Based Discovery:** Hierarchical taxonomies for efficient agent capability matching
- **Verifiable Claims:** Cryptographic mechanisms for data integrity and provenance tracking
- **Semantic Linkage:** Supports version histories, partnerships, and dependency chains
- **Distributed Architecture:** Content-addressing for global uniqueness; DHT for scalable discovery
- **Developer Tools:** CLI tools, SDKs (Go, Python, JavaScript), APIs for programmatic access

**Technical Stack:**
- Go (77.2% of codebase)
- Supporting: Dart, Python, TypeScript
- Comprehensive testing frameworks
- Kubernetes deployment (Helm charts)
- Docker support

**Specification Details:**
- Published at spec.dir.agntcy.org
- Main document: `draft-mp-agntcy-ads.md` (Agent Directory Service)
- License: CC-BY-4.0 (spec), Apache 2.0 (implementation)

**Status:** Active development, production-ready

---

### 3. OASF (Open Agentic Schema Framework)
**Repository:** https://github.com/agntcy/oasf
**Language:** Elixir
**Stars:** 275 | Forks: 34
**Created:** Feb 10, 2025 | Last Push: Jan 30, 2026

**Protocol Purpose:**
OASF provides standardized schema definitions for agent capabilities, attributes, and metadata. Inspired by OCSF (Open Cybersecurity Schema Framework), it enables consistent agent representation across systems.

**Key Features:**
- **Standardization:** Common data structures for content validation and interoperability
- **Agent Discovery:** Unique identification for agent discovery and consumption
- **Extensibility:** Modular design supporting skills, domains, and third-party features
- **Record-Based:** Core object represents collections relevant to agentic AI
- **Annotation System:** Supports skill and domain annotations for system-wide discovery

**Technical Features:**
- Schema validation mechanisms
- Hot-reload capabilities
- Containerized workflow management
- Development tools for schema creation

**Status:** Actively maintained, highest star count (275) indicates strong community adoption

---

### 4. ACP (Agent Connect Protocol)
**Repository:** https://github.com/agntcy/acp-spec
**SDK:** https://github.com/agntcy/acp-sdk
**Language:** HTML (spec), Python (SDK)
**Spec Stars:** 158 | SDK Stars: 89
**Forks:** 10 (spec), 14 (SDK)

**Protocol Purpose:**
ACP is a standard interface specification for cross-framework agent interoperability. It defines how agents invoke and configure remote agents via REST-based APIs.

**Key Features:**
- **REST-Based Interface:** Uses OpenAPI specification format
- **Cross-Framework Compatibility:** Standardizes agent-to-agent communication
- **API Invocation:** Standard methods for invoking and configuring remote agents
- **OpenAPI Specification:** Interactive visualization at spec.acp.agntcy.org

**Note:** ACP is an interoperability protocol, not a security/authorization framework

**Status:** Established specification with SDK support

---

### 5. Identity Specification & Implementation
**Repository:** https://github.com/agntcy/identity
**Specification:** https://github.com/agntcy/identity-spec
**Language:** Go (implementation), TypeScript (service)
**Identity Service:** https://github.com/agntcy/identity-service
**Stars:** 81 (impl), 61 (service) | Forks: 13 (impl), 6 (service)

**Purpose:**
Establishes trusted identities for agents, MCP servers, and multi-agent systems (MAS). Provides cryptographic identity verification and trust infrastructure.

**Trust Infrastructure:**
- **Verifiable Credentials (VCs):** Cryptographically signed credentials including agent ID, schema, and metadata
- **Bring Your Own ID (BYOID):** Integration with identity providers (Okta, Duo, etc.)
- **W3C DIDs:** Support for Decentralized Identifiers (W3C standard)
- **Public Key Infrastructure:** Well-known endpoints for issuer public keys enabling independent verification
- **Agent Badges:** Multi-badge support for granular privilege assignment
- **Post-Quantum Safe:** Considers cryptographic resilience against future threats

**Key Mechanisms:**
- Universal unique identifiers (UUID) for agents
- Verifiable credential framework
- Metadata binding for verification automation
- Vault-based key management
- Cryptographic proof infrastructure

**Status:** Production-ready with TypeScript service variant

---

## Infrastructure & Utilities

### Key Supporting Services

**Observe SDK** (Stars: 54)
- Multi-agent system observability
- Real-time monitoring and telemetry

**Workflow Services**
- `workflow-srv` (75 stars): Run and expose agents through ACP
- `workflow-srv-mgr` (62 stars): Manager for agent execution

**Agent Reference Implementations**
- `iomapper-agnt` (50 stars): I/O Mapper Agent
- `api-bridge-agnt` (48 stars): Tyk middleware for REST API interaction with natural language

**CSIT** (59 stars)
- Continuous System Integration Testing for AGNTCY projects

---

## Reference Implementation & Applications

### CoffeeAgntcy (64 stars, 32 forks)
**Purpose:** End-to-end reference application demonstrating AGNTCY ecosystem integration

**Architecture Patterns:**
- **A2A Messaging:** Agent-to-Agent communication with configurable transports (SLIM, NATS)
- **Communication Modes:** Request-reply, unicast (fire & forget), group communication, pub/sub
- **Orchestration:** LangGraph for structured, stateful workflows with streaming
- **Protocol Bridges:** Protocol-agnostic bridges for modular agent interconnection

**Two Reference Setups:**
1. **Corto:** Simple two-agent setup with A2A messaging and Observe SDK observability
2. **Lungo:** Advanced multi-agent system with:
   - Specialized agents (farms, shipper, accountant)
   - MCP weather integration
   - Identity services
   - Streaming support

---

### Agentic Applications (79 stars, 37 forks)
**Purpose:** Demonstrates real-world multi-agent applications

**Applications:**
1. **Tourist Scheduling System:** Multi-agent platform coordinating scheduler, UI dashboard, and autonomous guide/tourist agents with WebSocket real-time monitoring
2. **Network of Assistants:** Stack of moderator, math, file, web, and user proxy agents

**Notable Patterns:**
- Real-time dashboards via WebSockets and OpenTelemetry
- Modular agent specialization (math, file, web)
- Production-oriented infrastructure (FastAPI, Docker)
- A2A protocol and SDK focus

---

## Governance & Community

**Repository:** https://github.com/agntcy/governance (35 stars)

**Governance Structure:**
- **Operating Model:** Defined in `OPERATING_MODEL.md`
- **Working Group Processes:** Specified in `WORKING-GROUP-PROCESSES.md`
- **Charter:** Available as `CHARTER.pdf`
- **Code of Conduct:** `CODE_OF_CONDUCT.md`

**Administration:**
- Designated admins including working group leaders
- GitHub organization discussions
- Slack communications (#git-operations channel)
- Wiki documentation in org-admin repository

**Community Engagement:**
- GitHub discussions and issue creation
- Pull request reviews
- "Good first issues" for new contributors
- Slack, YouTube, working groups
- Regular meetings with Technical Steering Committee
- Linux Foundation governance structure

---

## Documentation & Resources

**Main Documentation Site:** https://docs.agntcy.org (78 stars)

**Documentation Repository Contents:**
- Installation guides (macOS, Linux, Windows)
- Local development setup with Taskfile and Uv
- Build procedures for HTML documentation
- Contributing guidelines
- Release management with Git tagging workflows

**Technical Stack for Docs:**
- Material for MkDocs
- Python-based tooling (67.2%)
- Taskfile automation
- Uv package manager
- GitHub Actions for releases
- 38 contributors, 48 published releases

**Quality Controls:**
- Spell checking (.codespellrc)
- Link validation (lychee.toml)
- Markdown linting configuration
- Accessibility standards

**Website:** https://github.com/agntcy/agntcy-website (50 stars)
- Built with Next.js, TypeScript, Tailwind CSS
- Modern component-driven architecture
- 187 commits, 50 stars

---

## Repository Statistics

### Distribution by Language
| Language | Count |
|----------|-------|
| Python   | 11    |
| Go       | 8     |
| None/Spec | 5    |
| TypeScript | 2    |
| Rust     | 2     |
| HTML     | 2     |
| Elixir   | 1     |
| MDX      | 1     |

### Top 20 Repositories by Engagement (Stars)
1. OASF - 275 stars
2. SLIM - 167 stars
3. ACP-Spec - 158 stars
4. DIR - 134 stars
5. ACP-SDK - 89 stars
6. Identity - 81 stars
7. Agentic-Apps - 79 stars
8. Docs - 78 stars
9. Workflow-Srv - 75 stars
10. CoffeeAgntcy - 64 stars
11. Workflow-Srv-Mgr - 62 stars
12. Identity-Service - 61 stars
13. CSIT - 59 stars
14. Observe - 54 stars
15. DIR-Spec - 54 stars
16. IOMapper-Agnt - 50 stars
17. Agntcy-Website - 50 stars
18. API-Bridge-Agnt - 48 stars
19. SLIM-Spec - 47 stars
20. Governance - 35 stars

---

## Security & Trust Signals

### Cryptographic Foundation
- End-to-end encryption with MLS in SLIM protocol
- Verifiable credentials (W3C standard)
- Cryptographic key management via vault systems
- Public key infrastructure for distributed verification
- Post-quantum safe considerations

### Trust Architecture
- Decentralized identity verification
- Multiple badge support for granular privileges
- Chain of custody for identity claims via ResolverMetadata
- Integration with established identity providers (Okta, Duo)
- W3C DID support for decentralization

### Governance & Transparency
- Linux Foundation backing
- Code of Conduct enforcement
- Technical Steering Committee oversight
- Distributed governance through working groups
- Public GitHub discussions and decision-making

### Code Maturity
- Reference implementations for all major protocols
- Comprehensive testing (CSIT framework)
- Production deployments in reference apps
- Multi-language SDKs (Go, Python, JavaScript, TypeScript)
- 48 documented releases for docs project alone

---

## Notable Patterns & Emerging Standards

### 1. Protocol-Agnostic Architecture
The ecosystem emphasizes bridging different transport protocols (SLIM, NATS) enabling agents to operate across heterogeneous systems without protocol lock-in.

### 2. Multi-Agent System (MAS) Coordination
Patterns emphasize specialized agents with clear roles (scheduler, guide, assistant, moderator) working toward shared goals with real-time observability.

### 3. Schema-First Design
OASF (375 stars) demonstrates ecosystem commitment to standardized schema representation before agent interaction, similar to API-first development.

### 4. Decentralized Discovery
DIR protocol implements peer-to-peer discovery eliminating single points of failure, critical for distributed agent networks.

### 5. Identity as Infrastructure
Verifiable credentials and decentralized identifiers embedded throughout ecosystem, treating identity as foundational trust layer.

### 6. Observability by Default
CoffeeAgntcy and agentic-apps emphasize OpenTelemetry and WebSocket-based monitoring, indicating production-grade requirements.

### 7. Polyglot Implementation
SDKs and services across Python, Go, TypeScript, Rust, and Elixir suggest broad interoperability focus and language-agnostic protocol design.

---

## Watched Topics Status

**Mentioned in Documentation:** ❌ No mentions found

The following topics were searched for across the AGNTCY organization and documentation:
- `irl-danb` - Not mentioned
- `ao-danb` - Not mentioned
- `OpenProse` - Not mentioned
- `prose.md` - Not mentioned
- `agentsy.live` - Not mentioned
- `agentsy` - Not mentioned

**Note:** AGNTCY branding uses "AGNTCY" (capital letters, single word), not "agentsy."

---

## Technology & Dependency Insights

### Core Infrastructure
- **Message Queue:** NATS support indicated in CoffeeAgntcy
- **gRPC:** Foundation for SLIM protocol
- **REST/OpenAPI:** ACP specification foundation
- **Web Framework:** FastAPI (Python agentic apps)

### Deployment & Orchestration
- Docker containerization across all production services
- Kubernetes with Helm charts (DIR implementation)
- GitHub Actions for CI/CD
- Taskfile for local automation

### Observability & Monitoring
- OpenTelemetry for distributed tracing
- Observe SDK for multi-agent system telemetry
- WebSocket real-time dashboards
- Structured logging

### Development Tools
- Python Uv for package management
- MkDocs for documentation
- gRPC code generation
- Protocol buffer definitions

---

## Ecosystem Maturity Assessment

**Status:** Early-stage production-ready

**Indicators:**
- ✅ Comprehensive protocol specifications (SLIM, DIR, OASF, ACP)
- ✅ Reference implementations with real-world use cases
- ✅ Active development (regular commits through Jan 2026)
- ✅ Multi-language SDK support
- ✅ Governance structure (Linux Foundation)
- ✅ Community engagement (824 followers, 38+ contributors)
- ⚠️ Limited external integrations documented
- ⚠️ Specification maturity (draft versions, version 00 releases)

---

## Crawl Metadata

**Crawl Method:** GitHub API v3 + WebFetch analysis
**Repositories Analyzed:** 32
**Key Repositories Detailed:** 10+
**Documents Fetched:** 15
**Data Collection:** Jan 30 - Feb 1, 2026
**Total Organization Followers:** 824
**Primary Contact:** hello@agntcy.org

---

## References

- Main Organization: https://github.com/agntcy
- Documentation: https://docs.agntcy.org
- SLIM Spec: https://spec.slim.agntcy.org
- DIR Spec: https://spec.dir.agntcy.org
- ACP Spec: https://spec.acp.agntcy.org
- Website: https://agntcy.org
