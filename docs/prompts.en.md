# Master prompts

Replace the text in brackets. [Español](prompts.md)

## Development

### Full project audit

```text
GOAL: Audit [project] and decide what to fix first.
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: gemini-auditor-web: structure and quality. revisor-seguridad: risks. Claude: verify and consolidate.
DELIVERABLE: Table with finding, evidence, impact, effort and priority, plus the first 3 changes.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

### New feature

```text
GOAL: Implement [feature] with these rules: [rules].
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: arquitecto-web: plan. gemini-frontend or frontend: build. qa-web: tests. gemini-revisor: review.
DELIVERABLE: Plan for approval, diff, tests and risks.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

### Debug an issue

```text
GOAL: Find the cause of [error] and fix it.
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: Claude reproduces and fixes. gemini-investigador reviews related files.
DELIVERABLE: Root cause, fix and verification.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

### Safe refactor

```text
GOAL: Simplify [module] without changing behavior.
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: frontend: small changes. qa-web: tests. gemini-revisor: review.
DELIVERABLE: Staged changes and before/after tests.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

### Performance

```text
GOAL: Improve the speed of [page or app].
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: gemini-auditor-web: analysis. frontend: fixes. qa-web: measurements.
DELIVERABLE: Measurements, causes, changes and verified impact.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

### Understand a codebase

```text
GOAL: Understand [project] before changing it.
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: gemini-investigador: map. Claude: confirm critical parts with entender-codigo.
DELIVERABLE: What it does, flow, fragile areas and where to start.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

## Design

### Visual direction

```text
GOAL: Define the style of [product].
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: gemini-disenador-ui: proposals. disenador-ui: final decision.
DELIVERABLE: Three directions, recommendation, type, color and components.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

### Redesign

```text
GOAL: Improve [screen] without changing its logic.
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: gemini-disenador-ui in an isolated copy. qa-web: responsive and accessibility.
DELIVERABLE: Before and after, diff and tests.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

### Accessibility

```text
GOAL: Review the accessibility of [site].
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: gemini-auditor-web: review. qa-web: verification.
DELIVERABLE: Findings, impact and fix.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

### Motion

```text
GOAL: Improve the motion of [interface].
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: disenador-ui with find-animation-opportunities and review-animations.
DELIVERABLE: Where to animate, where not to, and how to build it.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

## Marketing

### 90-day plan

```text
GOAL: Reach [goal] in 90 days.
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: gemini-investigador: market. seo-marketing: strategy. copywriter: messaging.
DELIVERABLE: Monthly plan, channels, metrics, budget and risks.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

### SEO audit

```text
GOAL: Find what limits the SEO of [site].
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: gemini-seo-marketing with seo-audit and schema. Claude: verify.
DELIVERABLE: Technical issues, content, structured data and priorities.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

### AI search visibility

```text
GOAL: Improve how [brand] appears in AI search.
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: gemini-seo-marketing with ai-seo.
DELIVERABLE: Diagnosis, content and technical changes.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

### Conversion

```text
GOAL: Increase conversions on [page].
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: gemini-seo-marketing with cro. disenador-ui: proposal.
DELIVERABLE: Hypotheses, changes and suggested A/B test.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

### Competitor analysis

```text
GOAL: Analyze [competitors].
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: gemini-investigador with competitor-profiling.
DELIVERABLE: Comparison, opportunities, sources and assumptions.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

### Campaign

```text
GOAL: Create a campaign for [offer].
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: seo-marketing: strategy. gemini-copywriter: ads and emails.
DELIVERABLE: Audiences, messages, assets and metrics.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

## Content

### Landing page

```text
GOAL: Create a landing page for [offer].
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: gemini-investigador: objections. gemini-copywriter: copy. disenador-ui and frontend: page. qa-web: tests.
DELIVERABLE: Messaging and design for approval, then page and checks.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

### Blog

```text
GOAL: Create content about [topic] for [audience].
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: gemini-investigador: sources. gemini-copywriter: draft. copywriter: edit.
DELIVERABLE: Outline, article, title, description and internal links.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

### Social calendar

```text
GOAL: Plan social content for [brand] for [period].
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: gemini-copywriter with social.
DELIVERABLE: Calendar, ideas, formats and copy.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

## Business

### Offer and pricing

```text
GOAL: Improve the offer and pricing of [product].
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: seo-marketing with offers and pricing.
DELIVERABLE: Options, assumptions, risks and recommendation.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

### Launch

```text
GOAL: Prepare the launch of [product] for [date].
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: qa-web: production. seo-marketing: plan. gemini-copywriter: announcements.
DELIVERABLE: Plan, owners, risks and final checklist.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

## Security

### Security audit

```text
GOAL: Review the security of [app].
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: revisor-seguridad and gemini-revisor in read-only mode.
DELIVERABLE: Findings with file, impact, fix and what was not verified.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

### Production readiness

```text
GOAL: Confirm whether [project] is ready to ship.
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: qa-web, revisor-seguridad and gemini-auditor-web.
DELIVERABLE: Blockers, pending items, tests and decision.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```

### Database audit

```text
GOAL: Find slow queries in [database or app].
CONTEXT: Business, audience and current situation: [context].
SCOPE: You may change [files or areas]. Do not change [limits].
TEAM: Claude with auditoria-base-datos. gemini-auditor-web: review.
DELIVERABLE: Findings, impact, fix and measurement.
LIMITS: Do not invent data. Separate verified facts from assumptions. Do not merge or publish without my approval.
```
