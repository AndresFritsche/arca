import type { Metadata } from "next";
import { Roboto } from "next/font/google";
import "./globals.css";
import Navbar from "./_components/navbar/Navbar";

// const geistSans = Geist({
//   variable: "--font-geist-sans",
//   subsets: ["latin"],
// });

// const geistMono = Geist_Mono({
//   variable: "--font-geist-mono",
//   subsets: ["latin"],
// });
const roboto = Roboto({subsets:['latin'], weight: '400'})

export const metadata: Metadata = {
  title: "Arca Petshop",
  description: "Arca, tu tienda de mascotas con todo lo que necesitas para cualquier tipo de animal: alimentos, juguetes, accesorios, cuidado y más. Calidad, variedad y atención experta.",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body
        className={`${roboto.className} antialiased `}
      >
        <Navbar />
        {children}
      </body>
    </html>
  );
}
