CREATE PROCEDURE sp_InsertMonthlyRevenueData (
    @ReportDate DATE,
    @DataYearMonth INT,
    @CompanyCode VARCHAR(10),
    @CompanyName NVARCHAR(255),
    @Industry NVARCHAR(255),
    @CurrentMonthRevenue DECIMAL(18, 2),
    @LastMonthRevenue DECIMAL(18, 2),
    @LastYearMonthRevenue DECIMAL(18, 2),
    @LastMonthComparisonChange DECIMAL(10, 4),
    @LastYearMonthComparisonChange DECIMAL(10, 4),
    @CumulativeRevenueCurrentMonth DECIMAL(18, 2),
    @CumulativeRevenueLastYear DECIMAL(18, 2),
    @CumulativeRevenueComparisonChange DECIMAL(10, 4),
    @Remarks NVARCHAR(MAX)
)
AS
BEGIN
    INSERT INTO MonthlyRevenueData (
        ReportDate, DataYearMonth, CompanyCode, CompanyName, Industry, 
        CurrentMonthRevenue, LastMonthRevenue, LastYearMonthRevenue, 
        LastMonthComparisonChange, LastYearMonthComparisonChange, 
        CumulativeRevenueCurrentMonth, CumulativeRevenueLastYear, 
        CumulativeRevenueComparisonChange, Remarks
    )
    VALUES (
        @ReportDate, @DataYearMonth, @CompanyCode, @CompanyName, @Industry, 
        @CurrentMonthRevenue, @LastMonthRevenue, @LastYearMonthRevenue, 
        @LastMonthComparisonChange, @LastYearMonthComparisonChange, 
        @CumulativeRevenueCurrentMonth, @CumulativeRevenueLastYear, 
        @CumulativeRevenueComparisonChange, @Remarks
    );
END;
