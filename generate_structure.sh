#!/bin/bash

# Check if a project name was provided
if [ -z "$1" ]; then
  echo "Please provide a project name."
  echo "Usage: ./generate_structure.sh <project_name>"
  exit 1
fi

PROJECT_NAME=$1
BASE_DIR="$PROJECT_NAME/idea-validation"

# Create the main directory structure
mkdir -p "$BASE_DIR"/{00_core_hypothesis,01_market/{customer_segments,competition},02_product,03_business_model,04_go_to_market,05_fundraising/pitch_deck,workspace/ai_conversations/dated_threads}

# Function to create dated file
create_dated_file() {
  local file=$1
  local title=$2
  cat >"$file" <<EOL
---
title: "$title"
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Draft
version: 0.1
tags: []
---

# $title

EOL
}

# 00_core_hypothesis
cat >"$BASE_DIR"/00_core_hypothesis/problem_statement.md <<EOL
---
title: Problem Statement
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Draft
confidence: Low
evidence: []
---

## Problem Statement
[Clear, concise statement of the problem you're solving]

## Target Customer
[Detailed description of who experiences this problem]

## Current Solutions
[How do people solve this today?]

## Pain Points
[Specific difficulties with current solutions]

## Evidence & Validation
[List of evidence supporting problem existence]

## Market Size Indication
[Initial thoughts on market size]

## Open Questions
[Key uncertainties to resolve]

## Updates Log
[Chronological record of key findings]
EOL

cat >"$BASE_DIR"/00_core_hypothesis/solution_overview.md <<EOL
---
title: Solution Overview
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Draft
confidence: Low
related_docs:
  - problem_statement.md
---

## Solution Summary
[High-level description of your solution]

## Key Differentiators
[What makes this solution unique]

## Value Proposition
[Clear statement of value delivered]

## Core Features
[Essential capabilities needed]

## Technical Feasibility
[Initial assessment of technical challenges]

## Key Assumptions
[Critical assumptions to validate]

## Open Questions
[Uncertainties to resolve]

## Validation Plan
[How will you test these assumptions]
EOL

cat >"$BASE_DIR"/00_core_hypothesis/key_assumptions.md <<EOL
---
title: Key Assumptions
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Active
confidence_levels: [Low, Medium, High]
---

## Customer Assumptions
- [ ] Assumption 1
      Status: Untested | Confidence: Low
      Validation Plan: [How to test]

## Problem Assumptions
- [ ] Assumption 1
      Status: Untested | Confidence: Low
      Validation Plan: [How to test]

## Solution Assumptions
- [ ] Assumption 1
      Status: Untested | Confidence: Low
      Validation Plan: [How to test]

## Market Assumptions
- [ ] Assumption 1
      Status: Untested | Confidence: Low
      Validation Plan: [How to test]

## Business Model Assumptions
- [ ] Assumption 1
      Status: Untested | Confidence: Low
      Validation Plan: [How to test]

## Updates Log
[Record of validation results]
EOL

cat >"$BASE_DIR"/00_core_hypothesis/validation_tracker.md <<EOL
---
title: Validation Tracker
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Active
---

## Current Focus
[What's being validated now]

## Validation Summary
| Hypothesis | Status | Confidence | Evidence | Next Steps |
|------------|--------|------------|----------|------------|
|            |        |            |          |            |

## Customer Interviews
| Date | Segment | Key Insights | Follow-ups |
|------|---------|--------------|------------|
|      |         |              |            |

## Experiment Log
| Date | Experiment | Results | Decisions Made |
|------|------------|----------|----------------|
|      |            |          |                |

## Key Learnings
[Major insights from validation]

## Pivot Considerations
[Potential pivot points identified]
EOL

# 01_market
cat >"$BASE_DIR"/01_market/customer_segments/personas.md <<EOL
---
title: Customer Personas
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Draft
evidence: []
---

## Persona 1: [Name]
### Demographics
- Role:
- Industry:
- Company Size:
- Decision Making Power:

### Pain Points
1. [Pain Point 1]
2. [Pain Point 2]

### Current Solutions
- [How they solve it today]

### Goals & Motivations
1. [Goal 1]
2. [Goal 2]

### Buying Process
- [How they make purchase decisions]

### Evidence
- [Interview quotes, data points]

## Persona 2: [Name]
[Repeat structure]
EOL

cat >"$BASE_DIR"/01_market/customer_segments/insights.md <<EOL
---
title: Customer Insights
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Active
---

## Key Patterns
[Recurring themes from customer research]

## Segment Analysis
### Segment 1
- Size:
- Characteristics:
- Pain Points:
- Value Proposition:
- Acquisition Channels:

## Interview Insights
[Major learnings from customer interviews]

## Behavior Patterns
[Observed customer behaviors]

## Decision Drivers
[What influences purchase decisions]

## Objections
[Common concerns and how to address]
EOL

cat >"$BASE_DIR"/01_market/competition/analysis.md <<EOL
---
title: Competitive Analysis
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Active
---

## Direct Competitors
### Competitor 1
- Product:
- Target Market:
- Pricing:
- Strengths:
- Weaknesses:
- Our Advantage:

## Indirect Competitors
[Alternative solutions]

## Market Map
[Positioning map]

## Competitive Advantages
[Our sustainable advantages]

## Threat Analysis
[Potential future threats]

## Opportunity Gaps
[Underserved needs]
EOL

cat >"$BASE_DIR"/01_market/market_size.md <<EOL
---
title: Market Size Analysis
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Draft
confidence: Low
---

## TAM (Total Addressable Market)
- Calculation:
- Assumptions:
- Sources:

## SAM (Serviceable Addressable Market)
- Calculation:
- Constraints:
- Assumptions:

## SOM (Serviceable Obtainable Market)
- Year 1 Target:
- Growth Plan:
- Constraints:

## Market Trends
[Key trends affecting market size]

## Growth Drivers
[Factors driving market growth]

## Evidence & Sources
[Data sources and validation]
EOL

# 02_product
cat >"$BASE_DIR"/02_product/mvp_definition.md <<EOL
---
title: MVP Definition
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Draft
---

## Core Value Proposition
[What problem does MVP solve]

## Must-Have Features
1. [Feature 1]
   - Purpose:
   - Success Criteria:

## Success Metrics
[How we'll measure MVP success]

## User Stories
1. [Story 1]
   - As a [user]
   - I want to [action]
   - So that [benefit]

## Testing Plan
[How we'll validate MVP]

## Timeline & Resources
[High-level plan]
EOL

cat >"$BASE_DIR"/02_product/key_features.md <<EOL
---
title: Key Features
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Draft
---

## Feature List
### Must Have (MVP)
1. [Feature 1]
   - Description:
   - User Value:
   - Technical Complexity:
   - Priority:

### Nice to Have (Post-MVP)
1. [Feature 1]
   - Description:
   - User Value:
   - Technical Complexity:
   - Priority:

## Feature Dependencies
[Dependency map]

## Technical Considerations
[Key technical decisions]
EOL

# 03_business_model
cat >"$BASE_DIR"/03_business_model/revenue_model.md <<EOL
---
title: Revenue Model
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Draft
---

## Revenue Streams
1. [Stream 1]
   - Description:
   - Target Segment:
   - Pricing Model:
   - Revenue Potential:

## Key Metrics
- CAC:
- LTV:
- Churn Rate:
- Revenue per Customer:

## Growth Model
[How revenue scales]

## Assumptions
[Key assumptions to validate]
EOL

cat >"$BASE_DIR"/03_business_model/initial_pricing.md <<EOL
---
title: Initial Pricing Strategy
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Draft
---

## Pricing Structure
- Tier 1:
- Tier 2:
- Tier 3:

## Pricing Strategy
[Rationale for pricing]

## Competitor Pricing
[Market reference points]

## Value Metrics
[How we measure value]

## Testing Plan
[How we'll validate pricing]
EOL

cat >"$BASE_DIR"/03_business_model/unit_economics.md <<EOL
---
title: Unit Economics
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Draft
---

## Cost Structure
- Fixed Costs:
- Variable Costs:
- CAC Components:

## Revenue Components
- Average Revenue per User:
- Lifetime Value:
- Expansion Revenue:

## Key Metrics
- Gross Margin:
- LTV/CAC:
- Payback Period:

## Assumptions
[Key assumptions to validate]
EOL

# 04_go_to_market
cat >"$BASE_DIR"/04_go_to_market/initial_targets.md <<EOL
---
title: Initial Target Markets
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Draft
---

## Target Segments
1. [Segment 1]
   - Size:
   - Characteristics:
   - Pain Points:
   - Value Proposition:
   - Acquisition Strategy:

## Prioritization
[Why these segments first]

## Entry Strategy
[How we'll enter each segment]

## Success Metrics
[How we'll measure success]
EOL

cat >"$BASE_DIR"/04_go_to_market/acquisition_channels.md <<EOL
---
title: Acquisition Channels
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Draft
---

## Channel Strategy
1. [Channel 1]
   - Description:
   - Target Audience:
   - Cost Structure:
   - Expected CAC:
   - Success Metrics:

## Testing Plan
[How we'll validate channels]

## Channel Mix
[Optimal channel combination]

## Budget Allocation
[How we'll allocate resources]
EOL

cat >"$BASE_DIR"/04_go_to_market/early_messaging.md <<EOL
---
title: Early Messaging Framework
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Draft
---

## Core Message
[Main value proposition]

## Key Messages
1. [Message 1]
   - Target Audience:
   - Key Points:
   - Evidence:
   - Channel:

## Testing Plan
[How we'll validate messaging]

## Success Metrics
[How we'll measure effectiveness]
EOL

# 05_fundraising
cat >"$BASE_DIR"/05_fundraising/funding_strategy.md <<EOL
---
title: Funding Strategy
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Draft
---

## Funding Needs
- Amount:
- Timeline:
- Use of Funds:

## Target Investors
1. [Investor Type 1]
   - Characteristics:
   - Target List:
   - Approach Strategy:

## Milestones
[Key milestones for funding]

## Pitch Strategy
[How we'll approach investors]

## Due Diligence Prep
[Required documentation]
EOL

cat >"$BASE_DIR"/05_fundraising/pitch_deck/main_narrative.md <<EOL
---
title: Pitch Narrative
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Draft
---

## Story Arc
1. Problem
2. Solution
3. Market Size
4. Product
5. Business Model
6. Go to Market
7. Team
8. Financials
9. Ask

## Key Messages
[Core points to convey]

## Supporting Data
[Key metrics and proof points]

## Appendix Items
[Additional materials]
EOL

# workspace
cat >"$BASE_DIR"/workspace/validation_ideas.md <<EOL
---
title: Validation Ideas
created: $(date +%Y-%m-%d)
last_updated: $(date +%Y-%m-%d)
status: Active
---

## Current Hypotheses
1. [Hypothesis 1]
   - Test Method:
   - Success Criteria:
   - Timeline:
   - Resources Needed:

## Testing Methods
[Different validation approaches]

## Results Log
[Test results and learnings]

## Next Steps
[Prioritized actions]
EOL

# Create dated AI conversation template
cat >"$BASE_DIR"/workspace/ai_conversations/template.md <<EOL
---
date: [DATE]
topic: [TOPIC]
focus: [FOCUS AREA]
status: [ACTIVE/ARCHIVED]
---

## Context
[What prompted this conversation]

## Key Questions
[What we're trying to answer]

## Insights
[Key takeaways]

## Action Items
[Next steps]

## Raw Conversation
[Important excerpts]
EOL

echo "Directory structure created successfully for project: $PROJECT_NAME"
echo "Location: $BASE_DIR"
echo ""
echo "Next steps:"
echo "1. Navigate to the directory: cd $BASE_DIR"
echo "2. Start with 00_core_hypothesis/problem_statement.md"
echo "3. Use workspace/scratch_pad.md for initial brainstorming"
echo ""
echo "Template files have been created with detailed structures."
