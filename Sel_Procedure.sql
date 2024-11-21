CREATE PROCEDURE sp_GetMonthlyRevenueDataByCompanyCode (@CompanyCode VARCHAR(10))
AS
BEGIN
    SELECT *
    FROM MonthlyRevenueData
    WHERE CompanyCode = @CompanyCode;
END;
