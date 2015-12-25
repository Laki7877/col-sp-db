CREATE TABLE [dbo].[Attribute] (
    [AttributeId]          INT            IDENTITY (1, 1) NOT NULL,
    [AttributeNameEn]      NVARCHAR (100) NULL,
    [AttributeNameTh]      NVARCHAR (100) NULL,
    [VariantStatus]        BIT            NULL,
    [DataType]             CHAR (2)       NULL,
    [DataValidation]       CHAR (3)       NULL,
    [ShowAdminFlag]        BIT            NULL,
    [ShowGlobalSearchFlag] BIT            NULL,
    [ShowLocalSearchFlag]  BIT            NULL,
    [ShowGlobalFilterFlag] BIT            NULL,
    [ShowLocalFilterFlag]  BIT            NULL,
    [Status]               CHAR (2)       NULL,
    [AllowHtmlFlag]        NCHAR (10)     NULL,
    [CreatedBy]            NVARCHAR (50)  NULL,
    [CreatedDt]            DATETIME       NULL,
    [UpdatedBy]            NVARCHAR (50)  NULL,
    [UpdatedDt]            DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([AttributeId] ASC)
);

GO
CREATE TABLE [dbo].[AttributeSet] (
    [AttributeSetId]     INT            IDENTITY (1, 1) NOT NULL,
    [AttributeSetNameEn] NVARCHAR (100) NULL,
    [AttributeSetNameTh] NVARCHAR (100) NULL,
    [Status]             CHAR (2)       NULL,
    [CreatedBy]          NVARCHAR (50)  NULL,
    [CreatedDt]          DATETIME       NULL,
    [UpdatedBy]          NVARCHAR (50)  NULL,
    [UpdatedDt]          DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([AttributeSetId] ASC)
);

GO
CREATE TABLE [dbo].[AttributeSetMap] (
    [AttributeSetId] INT           NOT NULL,
    [AttributeId]    INT           NOT NULL,
    [Status]         CHAR (2)      NULL,
    [CreatedBy]      NVARCHAR (50) NULL,
    [CreatedDt]      DATETIME      NULL,
    [UpdatedBy]      NVARCHAR (50) NULL,
    [UpdatedDt]      DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([AttributeSetId] ASC, [AttributeId] ASC)
);

GO
CREATE TABLE [dbo].[AttributeValue] (
    [AttributeValueId] INT            NOT NULL,
    [AttributeValueEn] NVARCHAR (100) NULL,
    [AttributeValueTh] NVARCHAR (100) NULL,
    [Status]           CHAR (2)       NULL,
    [CreatedBy]        NVARCHAR (50)  NULL,
    [CreatedDt]        DATETIME       NULL,
    [UpdatedBy]        NVARCHAR (50)  NULL,
    [UpdatedDt]        DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([AttributeValueId] ASC)
);

GO
CREATE TABLE [dbo].[AttributeValueMap] (
    [AttributeId]      INT           NOT NULL,
    [AttributeValueId] INT           NOT NULL,
    [Status]           CHAR (2)      NULL,
    [CreatedBy]        NVARCHAR (50) NULL,
    [CreatedDt]        DATETIME      NULL,
    [UpdatedBy]        NVARCHAR (50) NULL,
    [UpdatedDt]        DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([AttributeId] ASC, [AttributeValueId] ASC)
);

GO
CREATE TABLE [dbo].[Brand] (
    [BrandId]       INT            NOT NULL,
    [BrandNameEn]   NVARCHAR (100) NULL,
    [BrandNameTh]   NVARCHAR (100) NULL,
    [ThumbnailEn]   NVARCHAR (100) NULL,
    [ThumbnailTh]   NVARCHAR (100) NULL,
    [DescriptionEn] NVARCHAR (500) NULL,
    [DescriptionTh] NVARCHAR (500) NULL,
    [Status]        CHAR (2)       NULL,
    [CreatedBy]     NVARCHAR (50)  NULL,
    [CreatedDt]     DATETIME       NULL,
    [UpdatedBy]     NVARCHAR (50)  NULL,
    [UpdatedDt]     DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([BrandId] ASC)
);

GO
CREATE TABLE [dbo].[CategoryAttributeSetMap] (
    [CategoryId]     INT           NOT NULL,
    [AttributeSetId] INT           NOT NULL,
    [Status]         CHAR (2)      NULL,
    [CreatedBy]      NVARCHAR (50) NULL,
    [CreatedDt]      DATETIME      NULL,
    [UpdatedBy]      NVARCHAR (50) NULL,
    [UpdatedDt]      DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([CategoryId] ASC, [AttributeSetId] ASC)
);

GO
CREATE TABLE [dbo].[GlobalCategory] (
    [CategoryId]   INT            IDENTITY (1, 1) NOT NULL,
    [NameEn]       NVARCHAR (50)  NULL,
    [NameTh]       NVARCHAR (50)  NULL,
    [UrlKeyEn]     NVARCHAR (100) NULL,
    [UrlKeyTh]     NVARCHAR (100) NULL,
    [ProductCount] INT            NULL,
    [Lft]          INT            NULL,
    [Rgt]          INT            NULL,
    [Status]       CHAR (2)       NULL,
    [CreatedBy]    NVARCHAR (50)  NULL,
    [CreatedDt]    DATETIME       NULL,
    [UpdatedBy]    NVARCHAR (50)  NULL,
    [UpdatedDt]    DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([CategoryId] ASC)
);

GO
CREATE TABLE [dbo].[Inventory] (
    [Pid]              NVARCHAR (50) NOT NULL,
    [Quantity]         INT           NULL,
    [QuantityOutStock] INT           NULL,
    [MinQuantity]      INT           NULL,
    [MaxQuantity]      INT           NULL,
    [UseDecimal]       BIT           NULL,
    [SaftyStockSeller] INT           NULL,
    [SaftyStockAdmin]  INT           NULL,
    [StockAvailable]   INT           NULL,
    [CreatedBy]        NVARCHAR (50) NULL,
    [CreatedDt]        DATETIME      NULL,
    [UpdatedBy]        NVARCHAR (50) NULL,
    [UpdatedDt]        DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([Pid] ASC)
);

GO
CREATE TABLE [dbo].[InventoryHistory] (
    [HistoryId]         INT           IDENTITY (1, 1) NOT NULL,
    [Pid]               NVARCHAR (50) NOT NULL,
    [Quantity]          INT           NULL,
    [QuantityOutStock]  INT           NULL,
    [MinQuantity]       INT           NULL,
    [MaxQuantity]       INT           NULL,
    [UseDecimal]        BIT           NULL,
    [SafetyStockSeller] INT           NULL,
    [SafetyStockAdmin]  INT           NULL,
    [StockAvailable]    INT           NULL,
    [CreatedBy]         NVARCHAR (50) NULL,
    [CreatedDt]         DATETIME      NULL,
    [UpdatedBy]         NVARCHAR (50) NULL,
    [UpdatedDt]         DATETIME      NULL
);

GO
CREATE TABLE [dbo].[LocalCategory] (
    [CategoryId]   INT            IDENTITY (1, 1) NOT NULL,
    [NameEn]       NVARCHAR (50)  NULL,
    [NameTh]       NVARCHAR (50)  NULL,
    [UrlKeyEn]     NVARCHAR (100) NULL,
    [UrlKeyTh]     NVARCHAR (100) NULL,
    [ProductCount] INT            NULL,
    [Shop]         INT            NULL,
    [Lft]          INT            NULL,
    [Rgt]          INT            NULL,
    [Status]       CHAR (2)       NULL,
    [CreatedBy]    NVARCHAR (50)  NULL,
    [CreatedDt]    DATETIME       NULL,
    [UpdatedBy]    NVARCHAR (50)  NULL,
    [UpdatedDt]    DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([CategoryId] ASC)
);

GO
CREATE TABLE [dbo].[Product] (
    [ProductId]          INT             IDENTITY (1, 1) NOT NULL,
    [GlobalCatId]        INT             NULL,
    [LocalCatId]         INT             NULL,
    [ShopId]             INT             NULL,
    [SellerId]           INT             NULL,
    [ProductNameEn]      NVARCHAR (100)  NULL,
    [ProductNameTh]      NVARCHAR (100)  NULL,
    [BrandId]            INT             NULL,
    [Uid]                NVARCHAR (50)   NOT NULL,
    [Pid]                NVARCHAR (50)   NULL,
    [Sku]                NVARCHAR (50)   NULL,
    [Upc]                NVARCHAR (50)   NULL,
    [OriginalPrice]      MONEY           NULL,
    [SalePrice]          MONEY           NULL,
    [DescriptionFullEn]  NVARCHAR (500)  NULL,
    [DescriptionShortEn] NVARCHAR (500)  NULL,
    [DescriptionFullTh]  NVARCHAR (500)  NULL,
    [DescriptionShortTh] NVARCHAR (500)  NULL,
    [Stock]              INT             NULL,
    [SafetyStock]        INT             NULL,
    [ShippingId]         INT             NULL,
    [Length]             DECIMAL (10, 2) NULL,
    [Height]             DECIMAL (10, 2) NULL,
    [Width]              DECIMAL (10, 2) NULL,
    [DimensionUnit]      CHAR (10)       NULL,
    [Weight]             DECIMAL (10, 2) NULL,
    [WeightUnit]         CHAR (10)       NULL,
    [MetaTitle]          NVARCHAR (100)  NULL,
    [MetaDescription]    NVARCHAR (500)  NULL,
    [MetaKey]            NVARCHAR (500)  NULL,
    [UrlEn]              NVARCHAR (100)  NULL,
    [UrlTh]              NVARCHAR (100)  NULL,
    [BoostWeight]        NVARCHAR (100)  NULL,
    [EffectiveDate]      DATE            NULL,
    [EffectiveTime]      TIME (7)        NULL,
    [ExpiryDate]         DATE            NULL,
    [ExpiryTime]         TIME (7)        NULL,
    [ControlFlag1]       BIT             NULL,
    [ControlFlag2]       BIT             NULL,
    [ControlFlag3]       BIT             NULL,
    [Remark]             NVARCHAR (500)  NULL,
    [InfoFlag]           CHAR (1)        NULL,
    [ImageFlag]          CHAR (1)        NULL,
    [OnlineFlag]         CHAR (1)        NULL,
    [Status]             CHAR (2)        NULL,
    [CreatedBy]          NVARCHAR (50)   NULL,
    [CreatedDt]          DATETIME        NULL,
    [UpdatedBy]          NVARCHAR (50)   NULL,
    [UpdatedDt]          DATETIME        NULL
);

GO
CREATE TABLE [dbo].[ProductAttribute] (
    [ProductId]   INT            NOT NULL,
    [AttributeId] INT            NOT NULL,
    [ValueEn]     NVARCHAR (100) NULL,
    [ValueTh]     NVARCHAR (100) NULL,
    [Status]      CHAR (2)       NULL,
    [CreatedBy]   NVARCHAR (50)  NULL,
    [CreatedDt]   DATETIME       NULL,
    [UpdatedBy]   NVARCHAR (50)  NULL,
    [UpdatedDt]   DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC, [AttributeId] ASC)
);

GO
CREATE TABLE [dbo].[ProductGlobalCatMap] (
    [ProductId]  INT           NOT NULL,
    [CategoryId] INT           NOT NULL,
    [Status]     CHAR (2)      NULL,
    [CreatedBy]  NVARCHAR (50) NULL,
    [CreatedDt]  DATETIME      NULL,
    [UpdatedBy]  NVARCHAR (50) NULL,
    [UpdatedDt]  DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC, [CategoryId] ASC)
);

GO
CREATE TABLE [dbo].[ProductHistory] (
    [ProductId]          INT             IDENTITY (1, 1) NOT NULL,
    [GlobalCatId]        INT             NULL,
    [LocalCatId]         INT             NULL,
    [ShopId]             INT             NULL,
    [SellerId]           INT             NULL,
    [ProductNameEn]      NVARCHAR (100)  NULL,
    [ProductNameTh]      NVARCHAR (100)  NULL,
    [BrandId]            INT             NULL,
    [Pid]                NVARCHAR (50)   NULL,
    [Sku]                NVARCHAR (50)   NULL,
    [Upc]                NVARCHAR (50)   NULL,
    [OriginalPrice]      MONEY           NULL,
    [SalePrice]          MONEY           NULL,
    [DescriptionFullEn]  NVARCHAR (500)  NULL,
    [DescriptionShortEn] NVARCHAR (500)  NULL,
    [DescriptionFullTh]  NVARCHAR (500)  NULL,
    [DescriptionShortTh] NVARCHAR (500)  NULL,
    [Stock]              INT             NULL,
    [SafetyStock]        INT             NULL,
    [ShippingId]         INT             NULL,
    [Length]             DECIMAL (10, 2) NULL,
    [Height]             DECIMAL (10, 2) NULL,
    [Width]              DECIMAL (10, 2) NULL,
    [DimensionUnit]      CHAR (10)       NULL,
    [Weight]             DECIMAL (10, 2) NULL,
    [WeightUnit]         CHAR (10)       NULL,
    [MetaTitle]          NVARCHAR (100)  NULL,
    [MetaDescription]    NVARCHAR (500)  NULL,
    [MetaKey]            NVARCHAR (500)  NULL,
    [UrlEn]              NVARCHAR (100)  NULL,
    [UrlTh]              NVARCHAR (100)  NULL,
    [BoostWeight]        NVARCHAR (100)  NULL,
    [EffectiveDate]      DATE            NULL,
    [EffectiveTime]      TIME (7)        NULL,
    [ExpiryDate]         DATE            NULL,
    [ExpiryTime]         TIME (7)        NULL,
    [ControlFlag1]       BIT             NULL,
    [ControlFlag2]       BIT             NULL,
    [ControlFlag3]       BIT             NULL,
    [Remark]             NVARCHAR (500)  NULL,
    [InfoFlag]           CHAR (1)        NULL,
    [ImageFlag]          CHAR (1)        NULL,
    [OnlineFlag]         CHAR (1)        NULL,
    [Status]             CHAR (2)        NULL,
    [CreatedBy]          NVARCHAR (50)   NULL,
    [CreatedDt]          DATETIME        NULL,
    [UpdatedBy]          NVARCHAR (50)   NULL,
    [UpdatedDt]          DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC)
);

GO
CREATE TABLE [dbo].[ProductHistoryAttribute] (
    [ProductId]   INT            NOT NULL,
    [AttributeId] INT            NOT NULL,
    [ValueEn]     NVARCHAR (100) NULL,
    [ValueTh]     NVARCHAR (100) NULL,
    [Status]      CHAR (2)       NULL,
    [CreatedBy]   NVARCHAR (50)  NULL,
    [CreatedDt]   DATETIME       NULL,
    [UpdatedBy]   NVARCHAR (50)  NULL,
    [UpdatedDt]   DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC, [AttributeId] ASC)
);

GO
CREATE TABLE [dbo].[ProductHistoryGlobalCatMap] (
    [ProductId]  INT           NOT NULL,
    [CategoryId] INT           NOT NULL,
    [Status]     CHAR (2)      NULL,
    [CreatedBy]  NVARCHAR (50) NULL,
    [CreatedDt]  DATETIME      NULL,
    [UpdatedBy]  NVARCHAR (50) NULL,
    [UpdatedDt]  DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC, [CategoryId] ASC)
);

GO
CREATE TABLE [dbo].[ProductHistoryImage] (
    [ImageId]     INT             IDENTITY (1, 1) NOT NULL,
    [Pid]         NVARCHAR (50)   NULL,
    [ImageUrlEn]  NVARCHAR (2083) NULL,
    [ImageUrlTh]  NVARCHAR (2083) NULL,
    [Position]    INT             NULL,
    [FeatureFlag] BIT             NULL,
    [Status]      CHAR (2)        NULL,
    [CreatedBy]   NVARCHAR (50)   NULL,
    [CreatedDt]   DATETIME        NULL,
    [UpdatedBy]   NVARCHAR (50)   NULL,
    [UpdatedDt]   DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([ImageId] ASC)
);

GO
CREATE TABLE [dbo].[ProductHistoryLocalCatMap] (
    [ProductId]  INT           NOT NULL,
    [CategoryId] INT           NOT NULL,
    [Status]     CHAR (2)      NULL,
    [CreatedBy]  NVARCHAR (50) NULL,
    [CreatedDt]  DATETIME      NULL,
    [UpdatedBy]  NVARCHAR (50) NULL,
    [UpdatedDt]  DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC, [CategoryId] ASC)
);

GO
CREATE TABLE [dbo].[ProductHistoryRelated] (
    [Pid1]      NVARCHAR (50) NOT NULL,
    [Pid2]      NVARCHAR (50) NOT NULL,
    [Status]    CHAR (2)      NULL,
    [CreatedBy] NVARCHAR (50) NULL,
    [CreatedDt] DATETIME      NULL,
    [UpdatedBy] NVARCHAR (50) NULL,
    [UpdatedDt] DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([Pid1] ASC, [Pid2] ASC)
);

GO
CREATE TABLE [dbo].[ProductHistoryTag] (
    [ProductId] INT           NOT NULL,
    [TagId]     INT           NOT NULL,
    [Status]    CHAR (2)      NULL,
    [CreatedBy] NVARCHAR (50) NULL,
    [CreatedDt] DATETIME      NULL,
    [UpdatedBy] NVARCHAR (50) NULL,
    [UpdatedDt] DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC, [TagId] ASC)
);

GO
CREATE TABLE [dbo].[ProductHistoryVariant] (
    [ProductId]          INT             NOT NULL,
    [VariantId]          INT             NOT NULL,
    [ValueEn]            NVARCHAR (100)  NULL,
    [ValueTh]            NVARCHAR (100)  NULL,
    [ProductNameEn]      NVARCHAR (100)  NULL,
    [ProductNameTh]      NVARCHAR (100)  NULL,
    [Pid]                NVARCHAR (50)   NULL,
    [Sku]                NVARCHAR (50)   NULL,
    [Upc]                NVARCHAR (50)   NULL,
    [OriginalPrice]      MONEY           NULL,
    [SalePrice]          MONEY           NULL,
    [DescriptionFullEn]  NVARCHAR (500)  NULL,
    [DescriptionShortEn] NVARCHAR (500)  NULL,
    [DescriptionFullTh]  NVARCHAR (500)  NULL,
    [DescriptionShortTh] NVARCHAR (500)  NULL,
    [Stock]              INT             NULL,
    [SaftyStock]         INT             NULL,
    [VideoLink]          NVARCHAR (2083) NULL,
    [ShippingMethod]     CHAR (10)       NULL,
    [Length]             DECIMAL (10, 2) NULL,
    [Height]             DECIMAL (10, 2) NULL,
    [Width]              DECIMAL (10, 2) NULL,
    [DimenstionUnit]     CHAR (10)       NULL,
    [Weight]             DECIMAL (10, 2) NULL,
    [DimenstionWeight]   DECIMAL (10, 2) NULL,
    [Status]             CHAR (2)        NULL,
    [CreatedBy]          NVARCHAR (50)   NULL,
    [CreatedDt]          DATETIME        NULL,
    [UpdatedBy]          NVARCHAR (50)   NULL,
    [UpdatedDt]          DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC, [VariantId] ASC)
);

GO
CREATE TABLE [dbo].[ProductHistoryVideo] (
    [VideoId]    INT             IDENTITY (1, 1) NOT NULL,
    [Pid]        NVARCHAR (50)   NULL,
    [VideoUrlEn] NVARCHAR (2083) NULL,
    [VideoUrlTh] NVARCHAR (2083) NULL,
    [Position]   INT             NULL,
    [Status]     CHAR (2)        NULL,
    [CreatedBy]  NVARCHAR (50)   NULL,
    [CreatedDt]  DATETIME        NULL,
    [UpdatedBy]  NVARCHAR (50)   NULL,
    [UpdatedDt]  DATETIME        NULL
);

GO
CREATE TABLE [dbo].[ProductImage] (
    [ImageId]     INT             IDENTITY (1, 1) NOT NULL,
    [Pid]         NVARCHAR (50)   NULL,
    [ImageUrlEn]  NVARCHAR (2083) NULL,
    [ImageUrlTh]  NVARCHAR (2083) NULL,
    [Position]    INT             NULL,
    [FeatureFlag] BIT             NULL,
    [Status]      CHAR (2)        NULL,
    [CreatedBy]   NVARCHAR (50)   NULL,
    [CreatedDt]   DATETIME        NULL,
    [UpdatedBy]   NVARCHAR (50)   NULL,
    [UpdatedDt]   DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([ImageId] ASC)
);

GO
CREATE TABLE [dbo].[ProductLocalCatMap] (
    [ProductId]  INT           NOT NULL,
    [CategoryId] INT           NOT NULL,
    [Status]     CHAR (2)      NULL,
    [CreatedBy]  NVARCHAR (50) NULL,
    [CreatedDt]  DATETIME      NULL,
    [UpdatedBy]  NVARCHAR (50) NULL,
    [UpdatedDt]  DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC, [CategoryId] ASC)
);

GO
CREATE TABLE [dbo].[ProductRelated] (
    [Pid1]      NVARCHAR (50) NOT NULL,
    [Pid2]      NVARCHAR (50) NOT NULL,
    [Status]    CHAR (2)      NULL,
    [CreatedBy] NVARCHAR (50) NULL,
    [CreatedDt] DATETIME      NULL,
    [UpdatedBy] NVARCHAR (50) NULL,
    [UpdatedDt] DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([Pid1] ASC, [Pid2] ASC)
);

GO
CREATE TABLE [dbo].[ProductStage] (
    [ProductId]          INT             IDENTITY (1, 1) NOT NULL,
    [GlobalCatId]        INT             NULL,
    [LocalCatId]         INT             NULL,
    [ShopId]             INT             NULL,
    [SellerId]           INT             NULL,
    [ProductNameEn]      NVARCHAR (100)  NULL,
    [ProductNameTh]      NVARCHAR (100)  NULL,
    [BrandId]            INT             NULL,
    [Pid]                NVARCHAR (50)   NULL,
    [Sku]                NVARCHAR (50)   NULL,
    [Upc]                NVARCHAR (50)   NULL,
    [OriginalPrice]      MONEY           NULL,
    [SalePrice]          MONEY           NULL,
    [DescriptionFullEn]  NVARCHAR (500)  NULL,
    [DescriptionShortEn] NVARCHAR (500)  NULL,
    [DescriptionFullTh]  NVARCHAR (500)  NULL,
    [DescriptionShortTh] NVARCHAR (500)  NULL,
    [Stock]              INT             NULL,
    [SafetyStock]        INT             NULL,
    [ShippingId]         INT             NULL,
    [Length]             DECIMAL (10, 2) NULL,
    [Height]             DECIMAL (10, 2) NULL,
    [Width]              DECIMAL (10, 2) NULL,
    [DimensionUnit]      CHAR (10)       NULL,
    [Weight]             DECIMAL (10, 2) NULL,
    [WeightUnit]         CHAR (10)       NULL,
    [MetaTitle]          NVARCHAR (100)  NULL,
    [MetaDescription]    NVARCHAR (500)  NULL,
    [MetaKey]            NVARCHAR (500)  NULL,
    [UrlEn]              NVARCHAR (100)  NULL,
    [UrlTh]              NVARCHAR (100)  NULL,
    [BoostWeight]        NVARCHAR (100)  NULL,
    [EffectiveDate]      DATE            NULL,
    [EffectiveTime]      TIME (7)        NULL,
    [ExpiryDate]         DATE            NULL,
    [ExpiryTime]         TIME (7)        NULL,
    [ControlFlag1]       BIT             NULL,
    [ControlFlag2]       BIT             NULL,
    [ControlFlag3]       BIT             NULL,
    [Remark]             NVARCHAR (500)  NULL,
    [InfoFlag]           CHAR (1)        NULL,
    [ImageFlag]          CHAR (1)        NULL,
    [OnlineFlag]         CHAR (1)        NULL,
    [Status]             CHAR (2)        NULL,
    [CreatedBy]          NVARCHAR (50)   NULL,
    [CreatedDt]          DATETIME        NULL,
    [UpdatedBy]          NVARCHAR (50)   NULL,
    [UpdatedDt]          DATETIME        NULL
);

GO
CREATE TABLE [dbo].[ProductStageAttribute] (
    [ProductId]   INT            NOT NULL,
    [AttributeId] INT            NOT NULL,
    [ValueEn]     NVARCHAR (100) NULL,
    [ValueTh]     NVARCHAR (100) NULL,
    [Status]      CHAR (2)       NULL,
    [CreatedBy]   NVARCHAR (50)  NULL,
    [CreatedDt]   DATETIME       NULL,
    [UpdatedBy]   NVARCHAR (50)  NULL,
    [UpdatedDt]   DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC, [AttributeId] ASC)
);

GO
CREATE TABLE [dbo].[ProductStageGlobalCatMap] (
    [ProductId]  INT           NOT NULL,
    [CategoryId] INT           NOT NULL,
    [Status]     CHAR (2)      NULL,
    [CreatedBy]  NVARCHAR (50) NULL,
    [CreatedDt]  DATETIME      NULL,
    [UpdatedBy]  NVARCHAR (50) NULL,
    [UpdatedDt]  DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC, [CategoryId] ASC)
);

GO
CREATE TABLE [dbo].[ProductStageImage] (
    [ImageId]     INT             IDENTITY (1, 1) NOT NULL,
    [Pid]         NVARCHAR (50)   NULL,
    [ImageUrlEn]  NVARCHAR (2083) NULL,
    [ImageUrlTh]  NVARCHAR (2083) NULL,
    [Position]    INT             NULL,
    [FeatureFlag] BIT             NULL,
    [Status]      CHAR (2)        NULL,
    [CreatedBy]   NVARCHAR (50)   NULL,
    [CreatedDt]   DATETIME        NULL,
    [UpdatedBy]   NVARCHAR (50)   NULL,
    [UpdatedDt]   DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([ImageId] ASC)
);

GO
CREATE TABLE [dbo].[ProductStageLocalCatMap] (
    [ProductId]  INT           NOT NULL,
    [CategoryId] INT           NOT NULL,
    [Status]     CHAR (2)      NULL,
    [CreatedBy]  NVARCHAR (50) NULL,
    [CreatedDt]  DATETIME      NULL,
    [UpdatedBy]  NVARCHAR (50) NULL,
    [UpdatedDt]  DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC, [CategoryId] ASC)
);

GO
CREATE TABLE [dbo].[ProductStageRelated] (
    [Pid1]      NVARCHAR (50) NOT NULL,
    [Pid2]      NVARCHAR (50) NOT NULL,
    [Status]    CHAR (2)      NULL,
    [CreatedBy] NVARCHAR (50) NULL,
    [CreatedDt] DATETIME      NULL,
    [UpdatedBy] NVARCHAR (50) NULL,
    [UpdatedDt] DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([Pid1] ASC, [Pid2] ASC)
);

GO
CREATE TABLE [dbo].[ProductStageTag] (
    [ProductId] INT           NOT NULL,
    [TagId]     INT           NOT NULL,
    [Status]    CHAR (2)      NULL,
    [CreatedBy] NVARCHAR (50) NULL,
    [CreatedDt] DATETIME      NULL,
    [UpdatedBy] NVARCHAR (50) NULL,
    [UpdatedDt] DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC, [TagId] ASC)
);

GO
CREATE TABLE [dbo].[ProductStageVariant] (
    [ProductId]          INT             NOT NULL,
    [VariantId]          INT             NOT NULL,
    [ValueEn]            NVARCHAR (100)  NULL,
    [ValueTh]            NVARCHAR (100)  NULL,
    [ProductNameEn]      NVARCHAR (100)  NULL,
    [ProductNameTh]      NVARCHAR (100)  NULL,
    [Pid]                NVARCHAR (50)   NULL,
    [Sku]                NVARCHAR (50)   NULL,
    [Upc]                NVARCHAR (50)   NULL,
    [OriginalPrice]      MONEY           NULL,
    [SalePrice]          MONEY           NULL,
    [DescriptionFullEn]  NVARCHAR (500)  NULL,
    [DescriptionShortEn] NVARCHAR (500)  NULL,
    [DescriptionFullTh]  NVARCHAR (500)  NULL,
    [DescriptionShortTh] NVARCHAR (500)  NULL,
    [Stock]              INT             NULL,
    [SaftyStock]         INT             NULL,
    [VideoLink]          NVARCHAR (2083) NULL,
    [ShippingMethod]     CHAR (10)       NULL,
    [Length]             DECIMAL (10, 2) NULL,
    [Height]             DECIMAL (10, 2) NULL,
    [Width]              DECIMAL (10, 2) NULL,
    [DimenstionUnit]     CHAR (10)       NULL,
    [Weight]             DECIMAL (10, 2) NULL,
    [DimenstionWeight]   DECIMAL (10, 2) NULL,
    [Status]             CHAR (2)        NULL,
    [CreatedBy]          NVARCHAR (50)   NULL,
    [CreatedDt]          DATETIME        NULL,
    [UpdatedBy]          NVARCHAR (50)   NULL,
    [UpdatedDt]          DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC, [VariantId] ASC)
);

GO
CREATE TABLE [dbo].[ProductStageVideo] (
    [VideoId]    INT             IDENTITY (1, 1) NOT NULL,
    [Pid]        NVARCHAR (50)   NULL,
    [VideoUrlEn] NVARCHAR (2083) NULL,
    [VideoUrlTh] NVARCHAR (2083) NULL,
    [Position]   INT             NULL,
    [Status]     CHAR (2)        NULL,
    [CreatedBy]  NVARCHAR (50)   NULL,
    [CreatedDt]  DATETIME        NULL,
    [UpdatedBy]  NVARCHAR (50)   NULL,
    [UpdatedDt]  DATETIME        NULL
);

GO
CREATE TABLE [dbo].[ProductTag] (
    [ProductId] INT           NOT NULL,
    [TagId]     INT           NOT NULL,
    [Status]    CHAR (2)      NULL,
    [CreatedBy] NVARCHAR (50) NULL,
    [CreatedDt] DATETIME      NULL,
    [UpdatedBy] NVARCHAR (50) NULL,
    [UpdatedDt] DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC, [TagId] ASC)
);

GO
CREATE TABLE [dbo].[ProductVariant] (
    [ProductId]          INT             NOT NULL,
    [VariantId]          INT             NOT NULL,
    [ValueEn]            NVARCHAR (100)  NULL,
    [ValueTh]            NVARCHAR (100)  NULL,
    [ProductNameEn]      NVARCHAR (100)  NULL,
    [ProductNameTh]      NVARCHAR (100)  NULL,
    [Pid]                NVARCHAR (50)   NULL,
    [Sku]                NVARCHAR (50)   NULL,
    [Upc]                NVARCHAR (50)   NULL,
    [OriginalPrice]      MONEY           NULL,
    [SalePrice]          MONEY           NULL,
    [DescriptionFullEn]  NVARCHAR (500)  NULL,
    [DescriptionShortEn] NVARCHAR (500)  NULL,
    [DescriptionFullTh]  NVARCHAR (500)  NULL,
    [DescriptionShortTh] NVARCHAR (500)  NULL,
    [Stock]              INT             NULL,
    [SaftyStock]         INT             NULL,
    [VideoLink]          NVARCHAR (2083) NULL,
    [ShippingMethod]     CHAR (10)       NULL,
    [Length]             DECIMAL (10, 2) NULL,
    [Height]             DECIMAL (10, 2) NULL,
    [Width]              DECIMAL (10, 2) NULL,
    [DimenstionUnit]     CHAR (10)       NULL,
    [Weight]             DECIMAL (10, 2) NULL,
    [DimenstionWeight]   DECIMAL (10, 2) NULL,
    [Status]             CHAR (2)        NULL,
    [CreatedBy]          NVARCHAR (50)   NULL,
    [CreatedDt]          DATETIME        NULL,
    [UpdatedBy]          NVARCHAR (50)   NULL,
    [UpdatedDt]          DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC, [VariantId] ASC)
);

GO
CREATE TABLE [dbo].[ProductVideo] (
    [VideoId]    INT             IDENTITY (1, 1) NOT NULL,
    [Pid]        NVARCHAR (50)   NULL,
    [VideoUrlEn] NVARCHAR (2083) NULL,
    [VideoUrlTh] NVARCHAR (2083) NULL,
    [Position]   INT             NULL,
    [Status]     CHAR (2)        NULL,
    [CreatedBy]  NVARCHAR (50)   NULL,
    [CreatedDt]  DATETIME        NULL,
    [UpdatedBy]  NVARCHAR (50)   NULL,
    [UpdatedDt]  DATETIME        NULL
);

GO
CREATE TABLE [dbo].[Shipping] (
    [ShippingId]       INT           NOT NULL,
    [ShippingMethodEn] NVARCHAR (50) NULL,
    [ShippingMethodTh] NVARCHAR (50) NULL,
    [Status]           CHAR (2)      NULL,
    [CreatedBy]        NVARCHAR (50) NULL,
    [CreatedDt]        DATETIME      NULL,
    [UpdatedBy]        NVARCHAR (50) NULL,
    [UpdatedDt]        DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([ShippingId] ASC)
);

GO
CREATE TABLE [dbo].[Shop] (
    [ShopId]     INT            IDENTITY (1, 1) NOT NULL,
    [ShopOwner]  INT            NULL,
    [ShopNameEn] NVARCHAR (100) NULL,
    [ShopNameTh] NVARCHAR (100) NULL,
    [Status]     CHAR (2)       NULL,
    [CreatedBy]  NVARCHAR (50)  NULL,
    [CreatedDt]  DATETIME       NULL,
    [UpdatedBy]  NVARCHAR (50)  NULL,
    [UpdatedDt]  DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([ShopId] ASC)
);

GO
CREATE TABLE [dbo].[ShopUerGroupMap] (
    [ShopId]    INT           NOT NULL,
    [GroupId]   INT           NOT NULL,
    [CreatedBy] NVARCHAR (50) NULL,
    [CreatedDt] DATETIME      NULL,
    [UpdatedBy] NVARCHAR (50) NULL,
    [UpdatedDt] DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([GroupId] ASC, [ShopId] ASC)
);

GO
CREATE TABLE [dbo].[Tag] (
    [TagId]     INT            NOT NULL,
    [TagName]   NVARCHAR (100) NULL,
    [Count]     INT            NULL,
    [Status]    CHAR (2)       NULL,
    [CreatedBy] NVARCHAR (50)  NULL,
    [CreatedDt] DATETIME       NULL,
    [UpdatedBy] NVARCHAR (50)  NULL,
    [UpdatedDt] DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([TagId] ASC)
);

GO
CREATE TABLE [dbo].[User] (
    [UserId]          INT            IDENTITY (1, 1) NOT NULL,
    [Username]        NVARCHAR (50)  NOT NULL,
    [Password]        NVARCHAR (100) NULL,
    [PasswordLastChg] NCHAR (10)     NULL,
    [Email]           NCHAR (100)    NULL,
    [NameEn]          NVARCHAR (100) NULL,
    [NameTh]          NVARCHAR (100) NULL,
    [Mobile]          CHAR (20)      NULL,
    [Phone]           CHAR (20)      NULL,
    [Fax]             CHAR (10)      NULL,
    [Status]          BIT            NULL,
    [LoginFailCount]  INT            NULL,
    [LastLoginDt]     DATETIME       NULL,
    [CreatedBy]       NVARCHAR (50)  NULL,
    [CreatedDt]       DATETIME       NULL,
    [UpdatedBy]       NVARCHAR (50)  NULL,
    [UpdatedDt]       DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC)
);

GO
CREATE TABLE [dbo].[UserGroup] (
    [GroupId]     INT            IDENTITY (1, 1) NOT NULL,
    [GroupNameEn] NVARCHAR (100) NULL,
    [GroupNameTh] NVARCHAR (100) NULL,
    [CreatedBy]   NVARCHAR (50)  NULL,
    [CreatedDt]   DATETIME       NULL,
    [UpdatedBy]   NVARCHAR (50)  NULL,
    [UpdatedDt]   DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([GroupId] ASC)
);

GO
CREATE TABLE [dbo].[UserGroupMap] (
    [UserId]    INT           NOT NULL,
    [GroupId]   INT           NOT NULL,
    [CreatedBy] NVARCHAR (50) NULL,
    [CreatedDt] DATETIME      NULL,
    [UpdatedBy] NVARCHAR (50) NULL,
    [UpdatedDt] DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC, [GroupId] ASC)
);

GO
CREATE TABLE [dbo].[UserGroupPermissionMap] (
    [GroupId]      INT           NOT NULL,
    [PermissionId] INT           NOT NULL,
    [CreatedBy]    NVARCHAR (50) NULL,
    [CreatedDt]    DATETIME      NULL,
    [UpdatedBy]    NVARCHAR (50) NULL,
    [UpdatedDt]    DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([GroupId] ASC, [PermissionId] ASC)
);

GO
CREATE TABLE [dbo].[UserPermission] (
    [PermissionId]   INT           IDENTITY (1, 1) NOT NULL,
    [PermissionName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([PermissionId] ASC)
);

GO
CREATE TABLE [dbo].[UserShop] (
    [UserId]    INT           NOT NULL,
    [ShopId]    INT           NOT NULL,
    [CreatedBy] NVARCHAR (50) NULL,
    [CreatedDt] DATETIME      NULL,
    [UpdatedBy] NVARCHAR (50) NULL,
    [UpdatedDt] DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC, [ShopId] ASC)
);

GO
ALTER TABLE [dbo].[ShopUerGroupMap]
    ADD CONSTRAINT [FK_ShopUerGroupMap_Shop] FOREIGN KEY ([ShopId]) REFERENCES [dbo].[Shop] ([ShopId]);

GO
ALTER TABLE [dbo].[ShopUerGroupMap]
    ADD CONSTRAINT [FK_ShopUerGroupMap_UserGroup] FOREIGN KEY ([GroupId]) REFERENCES [dbo].[UserGroup] ([GroupId]);

GO
ALTER TABLE [dbo].[AttributeSetMap]
    ADD CONSTRAINT [FKAttributeSetMapAttribute] FOREIGN KEY ([AttributeId]) REFERENCES [dbo].[Attribute] ([AttributeId]);

GO
ALTER TABLE [dbo].[AttributeSetMap]
    ADD CONSTRAINT [FKAttributeSetMapAttributeSet] FOREIGN KEY ([AttributeSetId]) REFERENCES [dbo].[AttributeSet] ([AttributeSetId]);

GO
ALTER TABLE [dbo].[AttributeValueMap]
    ADD CONSTRAINT [FKAttributeValueMapAttribute] FOREIGN KEY ([AttributeId]) REFERENCES [dbo].[Attribute] ([AttributeId]);

GO
ALTER TABLE [dbo].[AttributeValueMap]
    ADD CONSTRAINT [FKAttributeValueMapAttributeValue] FOREIGN KEY ([AttributeValueId]) REFERENCES [dbo].[AttributeValue] ([AttributeValueId]);

GO
ALTER TABLE [dbo].[CategoryAttributeSetMap]
    ADD CONSTRAINT [FKCategoryAttributeSetMapAttributeSet] FOREIGN KEY ([AttributeSetId]) REFERENCES [dbo].[AttributeSet] ([AttributeSetId]);

GO
ALTER TABLE [dbo].[CategoryAttributeSetMap]
    ADD CONSTRAINT [FKCategoryAttributeSetMapCategory] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[GlobalCategory] ([CategoryId]);

GO
ALTER TABLE [dbo].[LocalCategory]
    ADD CONSTRAINT [FKLocalCategoryShop] FOREIGN KEY ([Shop]) REFERENCES [dbo].[Shop] ([ShopId]);

GO
ALTER TABLE [dbo].[ProductAttribute]
    ADD CONSTRAINT [FKProductAttributeAttribute] FOREIGN KEY ([AttributeId]) REFERENCES [dbo].[Attribute] ([AttributeId]);

GO
ALTER TABLE [dbo].[ProductAttribute]
    ADD CONSTRAINT [FKProductAttributeProduct] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([ProductId]);

GO
ALTER TABLE [dbo].[Product]
    ADD CONSTRAINT [FKProductBrand] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brand] ([BrandId]);

GO
ALTER TABLE [dbo].[Product]
    ADD CONSTRAINT [FKProductGlobalCat] FOREIGN KEY ([GlobalCatId]) REFERENCES [dbo].[GlobalCategory] ([CategoryId]);

GO
ALTER TABLE [dbo].[ProductGlobalCatMap]
    ADD CONSTRAINT [FKProductGlobalCatMapGlobalCategory] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[GlobalCategory] ([CategoryId]);

GO
ALTER TABLE [dbo].[ProductGlobalCatMap]
    ADD CONSTRAINT [FKProductGlobalCatMapProduct] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([ProductId]);

GO
ALTER TABLE [dbo].[ProductHistoryAttribute]
    ADD CONSTRAINT [FKProductHistoryAttributeAttribute] FOREIGN KEY ([AttributeId]) REFERENCES [dbo].[Attribute] ([AttributeId]);

GO
ALTER TABLE [dbo].[ProductHistoryAttribute]
    ADD CONSTRAINT [FKProductHistoryAttributeProduct] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[ProductHistory] ([ProductId]);

GO
ALTER TABLE [dbo].[ProductHistory]
    ADD CONSTRAINT [FKProductHistoryBrand] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brand] ([BrandId]);

GO
ALTER TABLE [dbo].[ProductHistory]
    ADD CONSTRAINT [FKProductHistoryGlobalCat] FOREIGN KEY ([GlobalCatId]) REFERENCES [dbo].[GlobalCategory] ([CategoryId]);

GO
ALTER TABLE [dbo].[ProductHistoryGlobalCatMap]
    ADD CONSTRAINT [FKProductHistoryGlobalCatMapGlobalCategory] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[GlobalCategory] ([CategoryId]);

GO
ALTER TABLE [dbo].[ProductHistoryGlobalCatMap]
    ADD CONSTRAINT [FKProductHistoryGlobalCatMapProduct] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[ProductHistory] ([ProductId]);

GO
ALTER TABLE [dbo].[ProductHistory]
    ADD CONSTRAINT [FKProductHistoryLocalCat] FOREIGN KEY ([LocalCatId]) REFERENCES [dbo].[LocalCategory] ([CategoryId]);

GO
ALTER TABLE [dbo].[ProductHistoryLocalCatMap]
    ADD CONSTRAINT [FKProductHistoryLocalCatMapLocalCategory] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[LocalCategory] ([CategoryId]);

GO
ALTER TABLE [dbo].[ProductHistoryLocalCatMap]
    ADD CONSTRAINT [FKProductHistoryLocalCatMapProduct] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[ProductHistory] ([ProductId]);

GO
ALTER TABLE [dbo].[ProductHistory]
    ADD CONSTRAINT [FKProductHistoryShipping] FOREIGN KEY ([ShippingId]) REFERENCES [dbo].[Shipping] ([ShippingId]);

GO
ALTER TABLE [dbo].[ProductHistory]
    ADD CONSTRAINT [FKProductHistoryShop] FOREIGN KEY ([ShopId]) REFERENCES [dbo].[Shop] ([ShopId]);

GO
ALTER TABLE [dbo].[ProductHistoryTag]
    ADD CONSTRAINT [FKProductHistoryTagProduct] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[ProductHistory] ([ProductId]);

GO
ALTER TABLE [dbo].[ProductHistoryTag]
    ADD CONSTRAINT [FKProductHistoryTagTag] FOREIGN KEY ([TagId]) REFERENCES [dbo].[Tag] ([TagId]);

GO
ALTER TABLE [dbo].[ProductHistory]
    ADD CONSTRAINT [FKProductHistoryUser] FOREIGN KEY ([SellerId]) REFERENCES [dbo].[User] ([UserId]);

GO
ALTER TABLE [dbo].[ProductHistoryVariant]
    ADD CONSTRAINT [FKProductHistoryVariantProduct] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[ProductHistory] ([ProductId]);

GO
ALTER TABLE [dbo].[ProductHistoryVariant]
    ADD CONSTRAINT [FKProductHistoryVariantVariant] FOREIGN KEY ([VariantId]) REFERENCES [dbo].[Attribute] ([AttributeId]);

GO
ALTER TABLE [dbo].[Product]
    ADD CONSTRAINT [FKProductLocalCat] FOREIGN KEY ([LocalCatId]) REFERENCES [dbo].[LocalCategory] ([CategoryId]);

GO
ALTER TABLE [dbo].[ProductLocalCatMap]
    ADD CONSTRAINT [FKProductLocalCatMapLocalCategory] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[LocalCategory] ([CategoryId]);

GO
ALTER TABLE [dbo].[ProductLocalCatMap]
    ADD CONSTRAINT [FKProductLocalCatMapProduct] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([ProductId]);

GO
ALTER TABLE [dbo].[Product]
    ADD CONSTRAINT [FKProductShipping] FOREIGN KEY ([ShippingId]) REFERENCES [dbo].[Shipping] ([ShippingId]);

GO
ALTER TABLE [dbo].[Product]
    ADD CONSTRAINT [FKProductShop] FOREIGN KEY ([ShopId]) REFERENCES [dbo].[Shop] ([ShopId]);

GO
ALTER TABLE [dbo].[ProductStageAttribute]
    ADD CONSTRAINT [FKProductStageAttributeAttribute] FOREIGN KEY ([AttributeId]) REFERENCES [dbo].[Attribute] ([AttributeId]);

GO
ALTER TABLE [dbo].[ProductStageAttribute]
    ADD CONSTRAINT [FKProductStageAttributeProduct] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[ProductStage] ([ProductId]);

GO
ALTER TABLE [dbo].[ProductStage]
    ADD CONSTRAINT [FKProductStageBrand] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brand] ([BrandId]);

GO
ALTER TABLE [dbo].[ProductStage]
    ADD CONSTRAINT [FKProductStageGlobalCat] FOREIGN KEY ([GlobalCatId]) REFERENCES [dbo].[GlobalCategory] ([CategoryId]);

GO
ALTER TABLE [dbo].[ProductStageGlobalCatMap]
    ADD CONSTRAINT [FKProductStageGlobalCatMapGlobalCategory] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[GlobalCategory] ([CategoryId]);

GO
ALTER TABLE [dbo].[ProductStageGlobalCatMap]
    ADD CONSTRAINT [FKProductStageGlobalCatMapProduct] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[ProductStage] ([ProductId]);

GO
ALTER TABLE [dbo].[ProductStage]
    ADD CONSTRAINT [FKProductStageLocalCat] FOREIGN KEY ([LocalCatId]) REFERENCES [dbo].[LocalCategory] ([CategoryId]);

GO
ALTER TABLE [dbo].[ProductStageLocalCatMap]
    ADD CONSTRAINT [FKProductStageLocalCatMapLocalCategory] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[LocalCategory] ([CategoryId]);

GO
ALTER TABLE [dbo].[ProductStageLocalCatMap]
    ADD CONSTRAINT [FKProductStageLocalCatMapProduct] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[ProductStage] ([ProductId]);

GO
ALTER TABLE [dbo].[ProductStage]
    ADD CONSTRAINT [FKProductStageShipping] FOREIGN KEY ([ShippingId]) REFERENCES [dbo].[Shipping] ([ShippingId]);

GO
ALTER TABLE [dbo].[ProductStage]
    ADD CONSTRAINT [FKProductStageShop] FOREIGN KEY ([ShopId]) REFERENCES [dbo].[Shop] ([ShopId]);

GO
ALTER TABLE [dbo].[ProductStageTag]
    ADD CONSTRAINT [FKProductStageTagProduct] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[ProductStage] ([ProductId]);

GO
ALTER TABLE [dbo].[ProductStageTag]
    ADD CONSTRAINT [FKProductStageTagTag] FOREIGN KEY ([TagId]) REFERENCES [dbo].[Tag] ([TagId]);

GO
ALTER TABLE [dbo].[ProductStage]
    ADD CONSTRAINT [FKProductStageUser] FOREIGN KEY ([SellerId]) REFERENCES [dbo].[User] ([UserId]);

GO
ALTER TABLE [dbo].[ProductStageVariant]
    ADD CONSTRAINT [FKProductStageVariantProduct] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[ProductStage] ([ProductId]);

GO
ALTER TABLE [dbo].[ProductStageVariant]
    ADD CONSTRAINT [FKProductStageVariantVariant] FOREIGN KEY ([VariantId]) REFERENCES [dbo].[Attribute] ([AttributeId]);

GO
ALTER TABLE [dbo].[ProductTag]
    ADD CONSTRAINT [FKProductTagProduct] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([ProductId]);

GO
ALTER TABLE [dbo].[ProductTag]
    ADD CONSTRAINT [FKProductTagTag] FOREIGN KEY ([TagId]) REFERENCES [dbo].[Tag] ([TagId]);

GO
ALTER TABLE [dbo].[Product]
    ADD CONSTRAINT [FKProductUser] FOREIGN KEY ([SellerId]) REFERENCES [dbo].[User] ([UserId]);

GO
ALTER TABLE [dbo].[ProductVariant]
    ADD CONSTRAINT [FKProductVariantProduct] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([ProductId]);

GO
ALTER TABLE [dbo].[ProductVariant]
    ADD CONSTRAINT [FKProductVariantVariant] FOREIGN KEY ([VariantId]) REFERENCES [dbo].[Attribute] ([AttributeId]);

GO
ALTER TABLE [dbo].[Shop]
    ADD CONSTRAINT [FKShopUser] FOREIGN KEY ([ShopOwner]) REFERENCES [dbo].[User] ([UserId]);

GO
ALTER TABLE [dbo].[UserGroupMap]
    ADD CONSTRAINT [FKUserGroupMapUser] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([UserId]);

GO
ALTER TABLE [dbo].[UserGroupMap]
    ADD CONSTRAINT [FKUserGroupMapUserGroup] FOREIGN KEY ([GroupId]) REFERENCES [dbo].[UserGroup] ([GroupId]);

GO
ALTER TABLE [dbo].[UserGroupPermissionMap]
    ADD CONSTRAINT [FKUserGroupPermissionMapUserGroup] FOREIGN KEY ([GroupId]) REFERENCES [dbo].[UserGroup] ([GroupId]);

GO
ALTER TABLE [dbo].[UserGroupPermissionMap]
    ADD CONSTRAINT [FKUserGroupPermissionMapUserPermission] FOREIGN KEY ([PermissionId]) REFERENCES [dbo].[UserPermission] ([PermissionId]);

GO
ALTER TABLE [dbo].[UserShop]
    ADD CONSTRAINT [FKUserShopShop] FOREIGN KEY ([ShopId]) REFERENCES [dbo].[Shop] ([ShopId]);

GO
ALTER TABLE [dbo].[UserShop]
    ADD CONSTRAINT [FKUserShopUser] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([UserId]);

GO
ALTER TABLE [dbo].[Product]
    ADD CONSTRAINT [PK__Product__B40CC6CD1E5A30AE] PRIMARY KEY CLUSTERED ([ProductId] ASC);

GO
ALTER TABLE [dbo].[ProductStage]
    ADD CONSTRAINT [PK__ProductS__B40CC6CDF97B1BCF] PRIMARY KEY CLUSTERED ([ProductId] ASC);

GO
ALTER TABLE [dbo].[InventoryHistory]
    ADD CONSTRAINT [PK_Inventory_History] PRIMARY KEY CLUSTERED ([HistoryId] ASC);

GO
ALTER TABLE [dbo].[ProductHistoryVideo]
    ADD CONSTRAINT [PKProductHistoryVideo] PRIMARY KEY CLUSTERED ([VideoId] ASC);

GO
ALTER TABLE [dbo].[ProductStageVideo]
    ADD CONSTRAINT [PKProductStageVideo] PRIMARY KEY CLUSTERED ([VideoId] ASC);

GO
ALTER TABLE [dbo].[ProductVideo]
    ADD CONSTRAINT [PKProductVideo] PRIMARY KEY CLUSTERED ([VideoId] ASC);

GO
ALTER TABLE [dbo].[Product]
    ADD CONSTRAINT [AKProductUID] UNIQUE NONCLUSTERED ([Uid] ASC);

GO
