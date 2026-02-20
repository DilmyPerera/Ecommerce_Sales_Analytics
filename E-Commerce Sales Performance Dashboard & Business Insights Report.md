### Product Requirements Document (PRD)  
**Project Title**  
E-Commerce Sales Performance Dashboard & Business Insights Report  

**Author**  
Dilmy Perera

**Version**  
1.0 

**Date**  
February 2026  

**Status**  
In Development  

### 1. Overview
This project delivers an **end-to-end data analytics solution** for a fictional mid-sized e-commerce company selling gifts, home décor, and accessories (inspired by datasets like UCI Online Retail or Kaggle Superstore/Retail).  

The final deliverable is:  
- An interactive **Power BI dashboard** showing sales, customer, and product performance  
- Underlying **Python-based data preparation & EDA notebook**  
- **SQL-based analytical views/queries** for reusable insights  
- A short **business recommendations report** (PDF / Markdown) translating data findings into actionable BA-style suggestions  

**Primary Goal**  
Demonstrate full-stack DA/BA skills (data wrangling → querying → visualization → business storytelling) to recruiters / hiring managers in data analyst, business analyst, or junior BI developer roles.

### 2. Problem
E-commerce businesses often struggle with:  
- Fragmented understanding of which products/regions/customers drive profit vs. loss  
- Inability to quickly spot seasonal trends, underperforming inventory, or at-risk customer segments  
- Lack of data-driven justification for pricing, promotion, or stock decisions  

**Opportunity**  
Build a modern, interactive analytics solution that empowers simulated stakeholders (CEO, Category Manager, Marketing Lead) to answer:  
- What are our top revenue and profit drivers?  
- Which products/regions should we promote, discount, or discontinue?  
- How are customers behaving (repeat purchase, AOV, retention)?  
- What quick wins can improve margins or reduce waste in next quarter?  

This showcases your ability to turn raw transactional data into clear business value — a core expectation in most DA/BA interviews.

### 3. Target Users & Personas (Simulated Stakeholders)  
| Persona              | Role in Business                  | Main Goals / Questions                                                                 | Success Looks Like                              |
|----------------------|------------------------------------|----------------------------------------------------------------------------------------|-------------------------------------------------|
| CEO / Founder        | Strategic decision maker           | Overall revenue health, YoY growth, top opportunities & risks                         | One-page executive summary + key trend visuals  |
| Category / Product Manager | Manages product assortment & inventory | Which SKUs/categories perform best/worst? Which items to push or phase out?           | Product-level rankings, margin heatmap, ABC analysis |
| Marketing / CRM Lead | Customer acquisition & retention   | Who are our best customers? What drives repeat purchases? Which segments to target?   | Customer segmentation, RFM visuals, retention curves |
| You (Analyst / BA)   | Building & presenting the solution | Show technical depth + business thinking in portfolio                                 | Clean code, reusable queries, polished dashboard, insightful narrative |

### 4. Business Objectives & Success Metrics  
**Business Objectives** (what the "company" gains)  
- Identify at least 3–5 high-impact business recommendations (e.g. discontinue bottom 10% SKUs, run promotion on mid-tier items, target high-AOV segment)  
- Reduce simulated decision time from days (manual Excel) to minutes (interactive dashboard)  

**Project Success Metrics** (for your portfolio)  
- Dashboard loads and filters smoothly (< 5 sec)  
- At least 8–10 meaningful visuals + 4–6 KPIs/cards  
- Python notebook with clear EDA + feature engineering  
- 5–10 non-trivial SQL queries (aggregations, window functions, CTEs)  
- Recommendations section with estimated impact (rough $ or % numbers)  
- Hosted publicly (GitHub repo + Power BI published link or PDF export)  
- Positive self-review: "I can explain every visual/query/decision in an interview"

### 5. Scope & Out-of-Scope  
**In Scope**  
- Data cleaning & transformation in Python (Pandas, NumPy)  
- Basic feature engineering (e.g. Month-Year, Season, Customer Cohort, Profit margin)  
- SQLite database + 8–12 analytical SQL queries  
- Power BI data model (star schema, relationships, DAX measures)  
- Interactive dashboard (slicers, drill-through, cross-filtering)  
- Business recommendations write-up with SWOT or prioritized actions  

**Out of Scope** (to keep realistic for portfolio)  
- Machine learning / churn prediction  
- Real-time data ingestion  
- Mobile-specific layout  
- User authentication / row-level security  
- A/B testing simulation  
- Deployment to Power BI Service with scheduled refresh  

### 6. Key Features & Requirements  
| ID  | Feature / Requirement                                      | Priority | Details / Acceptance Criteria                                                                                   |
|-----|--------------------------------------------------------------------|----------|-----------------------------------------------------------------------------------------------------------------|
| F1  | Data Ingestion & Cleaning (Python)                                 | Must     | Load CSV/Excel → handle nulls, duplicates, data types, negative quantities, create InvoiceDate datetime, TotalPrice = Quantity × UnitPrice |
| F2  | Customer & Product Dimension Tables                                | Must     | Create dimCustomer (CustomerID, Country, RFM segments), dimProduct (StockCode, Description, Category if possible) |
| F3  | Analytical SQL Layer                                               | Must     | ≥8 queries: top products by revenue/profit, sales by country/month, repeat purchase rate, top customers by spend |
| F4  | Power BI Data Model                                                | Must     | Star schema: factSales + dimDate, dimCustomer, dimProduct; relationships active & correct cardinality           |
| F5  | Core KPIs / Cards                                                  | Must     | Total Revenue, Total Profit, # Orders, # Customers, AOV, Profit Margin %, YoY Growth %, Repeat Purchase %      |
| F6  | Time-series Visuals                                                | Must     | Line/area chart: Revenue & Profit trend by month/quarter; ability to compare YoY via DAX                        |
| F7  | Product & Category Performance                                     | Must     | Bar/column chart: Top 10 products/categories by revenue/profit; Treemap or Donut for category share             |
| F8  | Geographic Insights                                                | Should   | Map visual: Revenue by Country (bubble or filled map)                                                           |
| F9  | Customer Segmentation                                              | Should   | Table/matrix or scatter: RFM segments, top 20 customers by spend                                               |
| F10 | Interactivity & Usability                                          | Must     | Page-level slicers (Date range, Country, Category), bookmarks for different views, tooltips with extra context  |
| F11 | Business Recommendations Report                                    | Must     | 1–2 page PDF/Markdown: 4–6 prioritized insights + rationale + rough business impact (e.g. "Discontinue X → save $Y in holding cost") |
| F12 | Documentation & Portfolio Polish                                   | Must     | GitHub README: problem → approach → key findings → screenshots + .pbix link + Python/SQL snippets               |

### 7. Non-Functional Requirements  
- Dataset: Use public dataset (e.g. Online Retail UCI, ~500k rows)  
- Performance: Dashboard refresh < 5–8 seconds on mid-range laptop  
- File formats: Python (.ipynb), SQL (.sql or in notebook), Power BI (.pbix), Report (.pdf)  
- Tools/Versions: Python 3.9+, Pandas 2+, Power BI Desktop (latest free version)  
- Visual Style: Clean, professional (corporate blues/greens), readable fonts ≥10 pt, consistent color scheme  

### 8. Assumptions & Constraints  
- Dataset is already anonymized and public → no privacy/GDPR concerns  
- No live API connection — static CSV/Excel import  
- Limited to free Power BI Desktop (no premium visuals needed)  
- Time budget: 2–4 weeks part-time for a strong portfolio piece  

### 9. Risks & Mitigations  
- Dataset quality issues → spend extra time on cleaning & document decisions  
- Overly ambitious scope → prioritize F1–F6 first, then add F7–F10  
- Power BI visuals not rendering well → test on multiple screen sizes early  
- Recommendations feel generic → tie every suggestion to a specific number/visual from your analysis  

### 10. Next Steps / Timeline (Suggested for You)  
1. Week 1 → Download dataset, Python cleaning & EDA notebook  
2. Week 2 → Build SQLite DB + write & test SQL queries  
3. Week 3 → Import to Power BI, create model + core visuals + KPIs  
4. Week 4 → Add interactivity, polish design, write recommendations report  
5. Final → GitHub repo, README with screenshots, publish Power BI report
