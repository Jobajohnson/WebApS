CREATE TABLE MonthlyRevenueData (
    ReportDate DATE NOT NULL,
    DataYearMonth INT NOT NULL,
    CompanyCode VARCHAR(10) NOT NULL,
    CompanyName NVARCHAR(255) NOT NULL,
    Industry NVARCHAR(255) NOT NULL,
    CurrentMonthRevenue DECIMAL(18, 2) NOT NULL,
    LastMonthRevenue DECIMAL(18, 2) NULL,
    LastYearMonthRevenue DECIMAL(18, 2) NULL,
    LastMonthComparisonChange DECIMAL(10, 4) NULL,
    LastYearMonthComparisonChange DECIMAL(10, 4) NULL,
    CumulativeRevenueCurrentMonth DECIMAL(18, 2) NOT NULL,
    CumulativeRevenueLastYear DECIMAL(18, 2) NULL,
    CumulativeRevenueComparisonChange DECIMAL(10, 4) NULL,
    Remarks NVARCHAR(MAX) NULL,
    CONSTRAINT PK_MonthlyRevenueData PRIMARY KEY (ReportDate, CompanyCode, DataYearMonth)
);
