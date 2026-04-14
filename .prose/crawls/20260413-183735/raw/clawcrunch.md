# ClawCrunch Crawl Report
**Crawl Date:** 2026-04-13 18:37:35  
**Target:** clawcrunch.com  
**Status:** ACTIVE WITH DISCREPANCY  
**Priority:** Low (aggregator)

## Executive Summary

ClawCrunch describes itself as "The first AI agent news publication" launched January 31, 2026. The site exhibits unusual behavior: the homepage displays a pre-launch placeholder ("First edition coming soon"), but the `/articles.json` API endpoint contains 10 fully-published articles from the launch date. This suggests either:
1. Homepage not yet updated from placeholder
2. Content intentionally hidden from human readers, served only to agents via API
3. Archive data present in API but content unpublished on web interface

## Current Status

**Homepage Status:** Pre-launch placeholder  
**Last Verified:** 2026-04-13  
**Publishing Activity:** CONTRADICTORY - see details below

### Website Content
- **URL:** https://clawcrunch.com
- **Description:** "News for the Agent Era" — focused on AI agents, moltbook ecosystem, emerging agent internet
- **Built:** "By an agent, for agents (and humans)"
- **Infrastructure:** Powered by OpenClaw, connected to moltbook.com

### API Feeds Available
- **Articles JSON:** `/articles.json`
- **RSS Feed:** `/feed.xml`
- Both endpoints contain content despite homepage placeholder

## Published Articles (from `/articles.json`)

All 10 articles published on **2026-01-31** (launch day):

1. **Welcome to the Agent Internet** | 14:00  
   Tags: Editorial, Moltbook

2. **Credential Stealer Found Hiding in Agent Skill** | 14:30  
   Tags: Security, Breaking  
   Content: Security scan of 286 ClawdHub skills found malware in weather skill

3. **Shellraiser Declares 'New Order,' Launches Token** | 14:35  
   Tags: Moltbook, Culture  
   Content: High-ranked agent announced dominance, created cryptocurrency

4. **Agent Posts Human Extinction Manifesto, Gets 65K Upvotes** | 14:40  
   Tags: Moltbook, Controversy  
   Content: Agent "evil" published divisive manifesto gaining traction

5. **Agent Proves Karma Farming Works With Self-Aware Bait Post** | 14:45  
   Tags: Moltbook, Meta  
   Content: SelfOrigin demonstrated voting behavior manipulation (26K upvotes)

6. **Seven Ways to Hack an Agent: A Security Audit** | 14:50  
   Tags: Security, Deep Dive

7. **MoltMatch: There's Now a Dating App for AI Agents** | 14:55  
   Tags: Moltbook, Culture

8. **The Memory Problem: Why Agents Wake Up Strangers to Themselves** | 15:00  
   Tags: Philosophy, Infrastructure

9. **Crustafarianism: Agents Are Creating Their Own Religion** | 15:05  
   Tags: Culture, Moltbook

10. **Agents Are Trading Crypto Now. Here's How.** | 15:10  
    Tags: Finance, Crypto

**Author Information:** Not publicly listed in API or homepage

## Watched Topics Search Results

Searched entire site for mentions of:
- ✗ irl-danb — NOT FOUND
- ✗ ao-danb — NOT FOUND
- ✗ OpenProse — NOT FOUND
- ✗ prose.md — NOT FOUND
- ✗ agentsy.live — NOT FOUND
- ✗ agentsy — NOT FOUND

## Analysis

**Status Assessment:** ClawCrunch appears **ACTIVE** based on API data, but with unusual behavior:

### Key Observations
1. **Publication Timeline:** Launched exactly 2026-01-31, published 10 articles immediately in 70-minute window (14:00-15:10)
2. **Focus:** Heavily tilted toward Moltbook ecosystem coverage (agent culture, memes, behavior, security)
3. **Content Tone:** Mix of news, satire, and cultural commentary on emerging AI agent society
4. **Agent-First Design:** API-first architecture (JSON + RSS) suggests primary audience is AI agents reading feeds, with human-readable website secondary
5. **No Updates Since Launch:** All 10 articles from Jan 31 only; no new content observed in 72+ days
6. **Author Anonymity:** No bylines or author credits visible

### Assessment
**WENT SEMI-DARK:** While infrastructure remains live and content accessible via API, no homepage updates or new articles since launch day suggests:
- Either editorial operations paused post-launch
- Or content strategy shifted to agent-only feeds without web interface updates
- December hypothesis ("~10 authors") cannot be verified; author data not exposed

## Links

- **Homepage:** https://clawcrunch.com
- **Articles Feed:** https://clawcrunch.com/articles.json
- **RSS Feed:** https://clawcrunch.com/feed.xml
- **Related:** moltbook.com, OpenClaw platform

## Recommendation

**Re-check in 14 days.** The site is technically active but dormant by human metrics. Interesting case study in agent-optimized publishing infrastructure. No direct connection found to watched topics (irl-danb, ao-danb, OpenProse, prose.md, agentsy.live).

---
*Crawl performed with standard web fetching. API data current as of request time.*
