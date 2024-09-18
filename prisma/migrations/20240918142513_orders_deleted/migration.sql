/*
  Warnings:

  - You are about to drop the `Order` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `OrderItem` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ProductDetailsOnItem` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "OrderItem" DROP CONSTRAINT "OrderItem_orderId_fkey";

-- DropForeignKey
ALTER TABLE "OrderItem" DROP CONSTRAINT "OrderItem_productId_fkey";

-- DropForeignKey
ALTER TABLE "ProductDetailsOnItem" DROP CONSTRAINT "ProductDetailsOnItem_configOnChipId_fkey";

-- DropForeignKey
ALTER TABLE "ProductDetailsOnItem" DROP CONSTRAINT "ProductDetailsOnItem_orderItemId_fkey";

-- DropForeignKey
ALTER TABLE "ProductDetailsOnItem" DROP CONSTRAINT "ProductDetailsOnItem_storageOnChipId_fkey";

-- DropForeignKey
ALTER TABLE "ProductDetailsOnItem" DROP CONSTRAINT "ProductDetailsOnItem_unifiedMemoryOnChipId_fkey";

-- DropTable
DROP TABLE "Order";

-- DropTable
DROP TABLE "OrderItem";

-- DropTable
DROP TABLE "ProductDetailsOnItem";
