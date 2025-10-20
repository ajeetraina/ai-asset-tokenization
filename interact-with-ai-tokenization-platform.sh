#!/bin/bash

# ============================================================================
# SAUDI LEX INSIGHT - CLI USAGE EXAMPLES
# Interacting with the AI Tokenization Platform
# ============================================================================

# Prerequisites: Docker cagent installed and services running

# ============================================================================
# BASIC AGENT INTERACTION
# ============================================================================

# 1. Chat with the Master Coordinator
echo "=== Example 1: Initial Consultation ==="
docker compose run --rm -T root <<EOF
I want to tokenize a commercial property in Riyadh worth SAR 50 million. 
It generates SAR 4 million in annual rental income.
Can you guide me through the process?
EOF

# ============================================================================
# COMPLIANCE CHECKS
# ============================================================================

# 2. Run a compliance check on a document
echo "=== Example 2: Compliance Check ==="
cat > /tmp/token_agreement.txt <<'AGREEMENT'
TOKEN PURCHASE AGREEMENT

This agreement is subject to SAMA regulations.
All investors must complete KYC/AML procedures.
The token structure is designed to be Shariah-compliant.
CMA registration will be obtained before public offering.
AGREEMENT

docker compose run --rm -T root <<EOF
Please check this token purchase agreement for SAMA, CMA, and FATF compliance:

$(cat /tmp/token_agreement.txt)
EOF

# ============================================================================
# SHARIAH COMPLIANCE REVIEW
# ============================================================================

# 3. Check Shariah compliance of a structure
echo "=== Example 3: Shariah Compliance ==="
docker compose run --rm -T root <<EOF
I'm designing a tokenization structure with these terms:
- Asset: Commercial real estate (halal)
- Returns: 8% fixed annual return
- Payment: Quarterly distributions
- Structure: Debt-based

Is this Shariah compliant? If not, suggest alternatives.
EOF

# ============================================================================
# SMART CONTRACT GENERATION
# ============================================================================

# 4. Generate a smart contract
echo "=== Example 4: Smart Contract Generation ==="
docker compose run --rm -T root <<EOF
Generate an ERC-1400 security token smart contract for:
- Asset: Riyadh Commercial Property
- Total Supply: 50,000 tokens
- Price: SAR 1,000 per token
- Features: Transfer restrictions, whitelist, dividend distribution
- Compliance: SAMA and CMA requirements
EOF

# ============================================================================
# DUE DILIGENCE REQUEST
# ============================================================================

# 5. Request due diligence on an asset
echo "=== Example 5: Due Diligence ==="
docker compose run --rm -T root <<EOF
Perform due diligence on this asset:

Asset Type: Commercial Office Building
Location: King Fahd Road, Riyadh
Owner: ABC Development LLC (CR: 1234567890)
Stated Value: SAR 50,000,000
Built: 2020
Size: 5,000 sqm
Occupancy: 95%

Please verify ownership, check for liens, and assess valuation.
EOF

# ============================================================================
# INVESTOR ONBOARDING
# ============================================================================

# 6. Onboard a new investor
echo "=== Example 6: Investor Onboarding ==="
docker compose run --rm -T root <<EOF
New investor wants to invest:

Name: Abdullah Al-Rashid
Nationality: Saudi
National ID: 1234567890
Investment Amount: SAR 100,000 (100 tokens)
Investment Experience: 5 years in real estate
Risk Tolerance: Moderate

Please guide through the onboarding process.
EOF

# ============================================================================
# KYC VERIFICATION
# ============================================================================

# 7. Perform KYC check
echo "=== Example 7: KYC Verification ==="
docker compose run --rm -T root <<EOF
Perform KYC/AML verification for this investor:

Name: Mohammed Ali Ahmed
Nationality: UAE
Passport: AE1234567
Investment: SAR 500,000
Occupation: Business Owner (Import/Export)
Source of Funds: Business profits

Please screen against sanctions lists and assess risk level.
EOF

# ============================================================================
# DEAL STRUCTURING
# ============================================================================

# 8. Design tokenization structure
echo "=== Example 8: Deal Structuring ==="
docker compose run --rm -T root <<EOF
Design an optimal tokenization structure for:

Asset: SAR 200M Infrastructure Project (toll road)
Duration: 25-year concession
Revenue: Annual toll collections (estimated SAR 20M/year)
Target Investors: Institutional (60%) + Retail (40%)
Requirements: Shariah-compliant, CMA registered

Please recommend:
1. Legal entity structure
2. Token economics
3. Revenue distribution mechanism
4. Governance framework
EOF

# ============================================================================
# VALUATION REQUEST
# ============================================================================

# 9. Request asset valuation
echo "=== Example 9: Asset Valuation ==="
docker compose run --rm -T root <<EOF
Value this asset for tokenization:

Asset: Luxury Residential Tower
Location: Al Olaya, Riyadh
Units: 200 apartments (1-3 bedrooms)
Current Occupancy: 85%
Annual Rental Income: SAR 12 million
Operating Expenses: SAR 3 million
Market Comparables: SAR 250M - SAR 300M
Age: 5 years, well-maintained

Recommend token supply and pricing strategy.
EOF

# ============================================================================
# REGULATORY MONITORING
# ============================================================================

# 10. Check for regulatory updates
echo "=== Example 10: Regulatory Updates ==="
docker compose run --rm -T root <<EOF
What are the latest SAMA and CMA updates relevant to digital asset tokenization?
Have there been any new regulations in the past 30 days?
EOF

# ============================================================================
# SMART CONTRACT AUDIT
# ============================================================================

# 11. Audit a smart contract
echo "=== Example 11: Contract Audit ==="
cat > /tmp/token_contract.sol <<'SOLIDITY'
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleToken {
    mapping(address => uint256) public balances;
    
    function transfer(address to, uint256 amount) public {
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }
}
SOLIDITY

docker compose run --rm -T root <<EOF
Please audit this smart contract for security vulnerabilities:

$(cat /tmp/token_contract.sol)

Check for:
- Reentrancy attacks
- Integer overflow/underflow
- Access control issues
- Gas optimization opportunities
EOF

# ============================================================================
# MULTI-STEP WORKFLOW (Full Tokenization)
# ============================================================================

# 12. Complete tokenization workflow
echo "=== Example 12: Full Tokenization Workflow ==="
docker compose run --rm -T root <<EOF
Execute complete tokenization for this project:

PROJECT: Makkah Residential Complex
ASSET DETAILS:
- Type: Residential real estate
- Location: Makkah, Saudi Arabia
- Value: SAR 80,000,000
- Units: 150 apartments
- Occupancy: 90%
- Annual Income: SAR 8,000,000

REQUIREMENTS:
- Shariah-compliant structure
- Target: Retail investors (min SAR 10,000)
- Timeline: Launch in 60 days
- Compliance: Full SAMA/CMA registration

PLEASE EXECUTE:
1. Due diligence
2. Compliance checks
3. Shariah structuring
4. Valuation
5. Deal structuring
6. Smart contract generation
7. Contract audit
8. Legal documentation
9. Investor onboarding setup

Provide comprehensive tokenization package.
EOF

# ============================================================================
# DOCUMENT GENERATION
# ============================================================================

# 13. Generate legal documents
echo "=== Example 13: Document Generation ==="
docker compose run --rm -T root <<EOF
Generate these documents for the Riyadh Commercial Property tokenization:

1. Private Placement Memorandum (PPM) - English and Arabic
2. Token Purchase Agreement
3. Subscription Agreement
4. Risk Disclosure Document
5. Shariah Compliance Certificate

Asset Details:
- Value: SAR 50M
- Tokens: 50,000
- Price: SAR 1,000
- Min Investment: SAR 10,000

Include all SAMA and CMA required disclosures.
EOF

# ============================================================================
# QUERY AGENT STATUS
# ============================================================================

# 14. Check agent status and capabilities
echo "=== Example 14: Agent Status ==="
docker compose ps

echo "=== Example 15: View Agent Logs ==="
docker compose logs --tail=50 root

echo "=== Example 16: Check Specific Agent ==="
docker compose logs compliance_agent

# ============================================================================
# BATCH PROCESSING
# ============================================================================

# 17. Batch compliance checks
echo "=== Example 17: Batch Compliance Checks ==="
cat > /tmp/documents_batch.txt <<EOF
document1.pdf
document2.pdf
document3.pdf
document4.pdf
document5.pdf
EOF

while IFS= read -r doc; do
  echo "Checking compliance for: $doc"
  docker compose run --rm -T root <<INNER
  Check SAMA and CMA compliance for document: $doc
INNER
done < /tmp/documents_batch.txt

# ============================================================================
# STREAMING RESPONSES
# ============================================================================

# 18. Stream agent responses in real-time
echo "=== Example 18: Streaming Responses ==="
docker compose run --rm root <<EOF | tee /tmp/tokenization_output.log
Generate a complete tokenization analysis for a SAR 100M infrastructure project.
Include all compliance checks, structuring recommendations, and timeline.
EOF

# ============================================================================
# SAVE RESPONSES TO FILE
# ============================================================================

# 19. Save comprehensive report
echo "=== Example 19: Generate Report ==="
docker compose run --rm -T root <<EOF > /tmp/tokenization_report.txt
Generate a comprehensive tokenization feasibility report for:

Asset: Jeddah Hotel & Resort
Value: SAR 150,000,000
Type: Hospitality real estate
Occupancy: 75% average
Revenue: SAR 30M/year
Debt: SAR 40M outstanding

Include:
1. Executive Summary
2. Due Diligence Findings
3. Compliance Assessment
4. Shariah Compliance Opinion
5. Valuation Analysis
6. Recommended Structure
7. Token Economics
8. Timeline and Milestones
9. Risk Analysis
10. Financial Projections
EOF

cat /tmp/tokenization_report.txt

# ============================================================================
# INTERACTIVE MODE
# ============================================================================

# 20. Interactive session with agents
echo "=== Example 20: Interactive Mode ==="
echo "Starting interactive session with Saudi Lex Insight..."
echo "Type 'exit' to quit"
echo ""

docker compose run --rm root

# ============================================================================
# HEALTH CHECKS
# ============================================================================

# 21. System health check
echo "=== Example 21: Health Check ==="
docker compose exec root docker-compose ps
docker compose exec root docker stats --no-stream

# ============================================================================
# EXPORT CONFIGURATIONS
# ============================================================================

# 22. Export agent configurations
echo "=== Example 22: Export Configuration ==="
docker compose config > /tmp/saudi_lex_config.yml
echo "Configuration exported to /tmp/saudi_lex_config.yml"

# ============================================================================
# RESTART SPECIFIC AGENT
# ============================================================================

# 23. Restart specific agent
echo "=== Example 23: Restart Agent ==="
docker compose restart compliance_agent
docker compose logs --tail=20 compliance_agent

# ============================================================================
# SCALE AGENTS
# ============================================================================

# 24. Scale for high load
echo "=== Example 24: Scale Agents ==="
# Scale compliance agents for multiple parallel checks
docker compose up -d --scale compliance_agent=3

# ============================================================================
# CLEANUP
# ============================================================================

# 25. Cleanup and reset
echo "=== Example 25: Cleanup ==="
docker compose down
docker compose down -v  # Remove volumes
rm -rf /tmp/token_*.txt /tmp/*.sol /tmp/*.log

echo ""
echo "============================================"
echo "All examples completed!"
echo "============================================"
echo ""
echo "Quick Reference:"
echo "  Start agents:     docker compose up -d"
echo "  Chat with AI:     docker compose run --rm root"
echo "  View logs:        docker compose logs -f root"
echo "  Stop agents:      docker compose down"
echo ""
echo "For more help, see README.md"
