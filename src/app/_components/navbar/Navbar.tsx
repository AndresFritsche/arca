import Link from "next/link"
import { Heart, ShoppingCart } from "lucide-react"

const Navbar = () => {
  return (
    <>
        <header className="px-6 lg:px-8 h-20 flex items-center border-b border-gray-100 bg-white/95 backdrop-blur-lg sticky top-0 z-50">
        <Link href="/" className="flex items-center justify-center">
          <div className="w-10 h-10 bg-gradient-to-br from-primary to-secondary rounded-xl flex items-center justify-center">
            <Heart className="h-5 w-5 text-white" />
          </div>
          <span className="ml-3 text-2xl font-bold bg-gradient-to-r from-gray-900 to-gray-600 bg-clip-text text-transparent">
            Arca
          </span>
        </Link>
        <nav className="ml-auto flex gap-8">
          <Link href="/#services" className="text-sm font-medium text-gray-600 hover:text-gray-900 transition-colors">
            Services
          </Link>
          <Link href="/products" className="text-sm font-medium text-gray-900">
            Products
          </Link>
          <Link href="/#about" className="text-sm font-medium text-gray-600 hover:text-gray-900 transition-colors">
            About
          </Link>
          <Link href="/#contact" className="text-sm font-medium text-gray-600 hover:text-gray-900 transition-colors">
            Contact
          </Link>
            <ShoppingCart className="h-4 w-4 mr-2" />
            Cart (0)
        </nav>
      </header>
    </>
  )
}
export default Navbar