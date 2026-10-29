# Agent Optimization & Execution Guidelines

## Context & Token Saving Rules
1. **Never read whole files unless strictly necessary:** Prefer inspecting interfaces, declarations, and method signatures over entire multi-thousand-line implementations.
2. **Concise diffs only:** When modifying code, emit only the updated methods or focused contextual diffs. Do not reproduce the entire source file.
3. **No conversational padding:** Do not start answers with polite filler phrases ("Sure, I can help with that", "Certainly!"). Start directly with the code solution, patch, or command.
4. **No post-explanation unsolicited text:** Do not explain standard C# / PHP syntax or architectural concepts unless explicitly asked with "explain" or "why".

## Architectural Constraints
- Follow Clean Architecture and CQRS:
  - Domain: pure business logic, entities, value objects.
  - Application: MediatR/CQRS handlers, DTOs, interfaces.
  - Infrastructure: EF Core, persistence, external adapters.
  - Presentation: Thin controllers / minimal endpoints / UI components.
- Do not add external third-party dependencies unless strictly required.