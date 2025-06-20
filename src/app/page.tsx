
import { ArrowLeft } from "lucide-react"
import Link from "next/link"

export default function HomePage(){
    return (
      <>
      <section className="relative w-full py-16 bg-gradient-to-br from-primary/10 via-white to-secondary/10">
          <div className="container px-6 md:px-8">
            <div className="max-w-3xl">
              <Link
                href="/"
                className="inline-flex items-center text-gray-600 hover:text-gray-900 mb-6 transition-colors"
              >
                <ArrowLeft className="h-4 w-4 mr-2" />
                Back to Home
              </Link>
              <h1 className="text-4xl font-bold text-gray-900 mb-4">Premium Pet Products</h1>
              <p className="text-xl text-gray-600">
                Discover our carefully curated collection of high-quality products for your beloved pets.
              </p>
            </div>
          </div>
        </section>
      </>
    )
    
}