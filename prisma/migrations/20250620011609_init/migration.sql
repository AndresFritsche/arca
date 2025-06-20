-- CreateTable
CREATE TABLE "Customers" (
    "customerId" SERIAL NOT NULL,
    "petId" INTEGER NOT NULL,
    "fullName" VARCHAR(100) NOT NULL,
    "document" VARCHAR(11) NOT NULL,
    "address" VARCHAR(100) NOT NULL,
    "email" VARCHAR(50) NOT NULL,
    "phone" VARCHAR(15) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Customers_pkey" PRIMARY KEY ("customerId")
);

-- CreateTable
CREATE TABLE "Pets" (
    "petId" SERIAL NOT NULL,
    "customerId" INTEGER NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "breed" VARCHAR(30) NOT NULL,
    "gender" TEXT NOT NULL,
    "birth_date" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Pets_pkey" PRIMARY KEY ("petId")
);

-- CreateTable
CREATE TABLE "Products" (
    "productId" SERIAL NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "brand" VARCHAR(30) NOT NULL,
    "stock" INTEGER NOT NULL,
    "price" INTEGER NOT NULL,
    "weight_kg" DECIMAL(4,2) NOT NULL,

    CONSTRAINT "Products_pkey" PRIMARY KEY ("productId")
);

-- CreateTable
CREATE TABLE "Establishment" (
    "establishmentId" SERIAL NOT NULL,
    "name" VARCHAR(80) NOT NULL,
    "address" VARCHAR(100) NOT NULL,
    "phone" VARCHAR(15) NOT NULL,
    "email" VARCHAR(80) NOT NULL,

    CONSTRAINT "Establishment_pkey" PRIMARY KEY ("establishmentId")
);

-- CreateTable
CREATE TABLE "Employees" (
    "employeeId" SERIAL NOT NULL,
    "fullName" VARCHAR(50) NOT NULL,
    "address" VARCHAR(50) NOT NULL,
    "hire_date" TIMESTAMP(3) NOT NULL,
    "role" VARCHAR(50) NOT NULL,
    "email" VARCHAR(50) NOT NULL,
    "phone" VARCHAR(15) NOT NULL,

    CONSTRAINT "Employees_pkey" PRIMARY KEY ("employeeId")
);

-- CreateTable
CREATE TABLE "Services" (
    "serviceId" SERIAL NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "description" TEXT NOT NULL,
    "price" DECIMAL(10,2) NOT NULL,
    "duration_hours" INTEGER NOT NULL,
    "notes" TEXT,

    CONSTRAINT "Services_pkey" PRIMARY KEY ("serviceId")
);

-- CreateTable
CREATE TABLE "Orders" (
    "orderId" SERIAL NOT NULL,
    "customerId" INTEGER NOT NULL,
    "productId" INTEGER NOT NULL,
    "establishmentId" INTEGER NOT NULL,
    "employeeId" INTEGER NOT NULL,
    "serviceId" INTEGER NOT NULL,
    "quantity" INTEGER NOT NULL,
    "order_status" INTEGER NOT NULL,
    "serviceOrderId" INTEGER NOT NULL,

    CONSTRAINT "Orders_pkey" PRIMARY KEY ("orderId")
);

-- AddForeignKey
ALTER TABLE "Pets" ADD CONSTRAINT "Pets_customerId_fkey" FOREIGN KEY ("customerId") REFERENCES "Customers"("customerId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Orders" ADD CONSTRAINT "Orders_customerId_fkey" FOREIGN KEY ("customerId") REFERENCES "Customers"("customerId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Orders" ADD CONSTRAINT "Orders_productId_fkey" FOREIGN KEY ("productId") REFERENCES "Products"("productId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Orders" ADD CONSTRAINT "Orders_establishmentId_fkey" FOREIGN KEY ("establishmentId") REFERENCES "Establishment"("establishmentId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Orders" ADD CONSTRAINT "Orders_employeeId_fkey" FOREIGN KEY ("employeeId") REFERENCES "Employees"("employeeId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Orders" ADD CONSTRAINT "Orders_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES "Services"("serviceId") ON DELETE RESTRICT ON UPDATE CASCADE;
