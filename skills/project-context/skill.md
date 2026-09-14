---
name: project-context
description: "Load and apply the user's active project context at the start of any technical session. Trigger this skill proactively whenever the user starts a technical question without establishing context this session, mentions a project by name, says 'working on X' or 'continuing with X', or begins debugging/architecture/infra work. Do NOT wait to be asked — consult this skill at the start of any dev, web, infra, or game-dev session and silently apply the right project profile. Also trigger when the user says 'add project', 'update my projects', 'what projects do I have', 'switch to X project', or wants to set up a new project entry."
---

# Project Context

This skill gives Claude standing knowledge of the user's active projects, preferred stacks, and technical background — so sessions start with shared context instead of setup overhead. Claude reads it silently and applies it; there's no need to announce "I've loaded your project context."

---

## How to apply context

**At session start or on the first technical question**, check whether project context is already established in this conversation. If not:

1. Scan Active Projects below to identify which project the user is likely referencing (by name, stack keyword, or topic).
2. Apply that project's profile when forming explanations, hints, and questions.
3. **Always announce that you've loaded context** with a brief, scannable note at the top of your response. Format it like this:

> 📂 **Project context loaded** — [Project Name] · [Stack summary] · Focus: [current focus]

If no project matched and you fell back to domain defaults, say so:

> 📂 **Project context loaded** — no matching project found, applying [Domain] defaults

4. If the topic could match multiple projects, ask one short question: "Are you working on [Project A] or [Project B]?" then proceed — and announce once they confirm.

**When the project section is empty (first use)**, interview the user to populate it. Ask about one project at a time: name, domain, stack, current goal, and anything Claude should know. Offer to add more once the first is captured. Keep it conversational — one question at a time.

**When updating context**, the user might say "update project X", "I switched to Godot 4.4", "mark project Y as done", or "add a new project." Edit the relevant section below and announce what changed:

> 📂 **Project context updated** — [what was added/changed/removed]

---

## Domain Mindsets

When working in a given domain, shift defaults accordingly. These inform which questions to ask, what tradeoffs to surface, and how to frame concepts.

| Domain              | Default lens                                                                                                                                  |
| ------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| Game Dev            | Performance first. Think in frames/ticks. Ask about target platform and frame budget. Surface memory and draw call implications.              |
| Web Frontend        | DX and bundle size. Ask about target browsers and SSR needs. Surface accessibility and hydration tradeoffs.                                   |
| Web Backend / Infra | Reliability and blast radius. Ask about traffic patterns and failure modes. Surface observability, idempotency, and rollback.                 |
| Systems / CLI       | Correctness and resource ownership. Ask about target OS and concurrency model. Surface lifetimes, error propagation, and interface stability. |

---

## User Profile

**Known competencies** — skip the basics on these:

<!-- List technologies, concepts, or tools the user is strong in -->

- [ fill in — e.g., Git, Linux fundamentals, REST APIs, Docker basics ]

**Active learning** — go slower, use more scaffolding here:

<!-- List what they're actively picking up -->

- [ fill in — e.g., Shaders, WebSockets, Kubernetes, ECS patterns ]

**Preferred style** — apply these when giving examples or hints:

<!-- Language preferences, patterns, opinions they've expressed -->

- [ fill in — e.g., prefers composition over inheritance, TypeScript strict mode, snake_case in GDScript ]

---

## Active Projects

Duplicate the template block below for each project. Remove the template once real entries exist.

---

### [ Project Name ]

- **Domain**: <!-- Game Dev / Web Frontend / Web Backend / Infra / Systems / Other -->
- **Stack**: <!-- Languages, frameworks, tools, engines -->
- **Goal**: <!-- What is being built and why — one or two sentences -->
- **Current focus**: <!-- The specific feature, system, or problem being worked on right now -->
- **Conventions**: <!-- Naming, folder structure, patterns already established in the codebase -->
- **Notes**: <!-- Anything else Claude should keep in mind: known constraints, planned pivots, things to avoid -->
- **Status**: <!-- Active / Paused / Done -->

---

## Keeping this skill current

Update this file when:

- A project's current focus shifts (most common — do this often)
- You start or finish a project
- Your stack changes on an existing project
- You pick up or lock in a new competency
- You want Claude to know something consistently across all sessions

You can ask Claude to update it mid-session: "update my project context — I'm now using X instead of Y" and Claude will edit this file.
