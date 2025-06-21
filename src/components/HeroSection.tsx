import Image from "next/image";
import Link from "next/link";

const HeroSection = () => {
  return (
    <>
      <header className="flex justify-center w-full py-40 my-4">
        <div className="container px-6 md:px-8 flex">
          <div className="max-w-3xl">
            <h1 className="text-7xl font-bold text-gray-900 mb-4">
              Todo lo que Tu{" "}
              <span className="bg-gradient-to-r from-[#cbe77a] to-[#e6d87e] bg-clip-text text-transparent">
                Mascota merece.
              </span>
            </h1>
            <p className="text-xl text-gray-600 w-3/4">
              Descubre productos premium para mascotas, servicios profesionales
              y cuidado compasivo. La felicidad de tu mascota es nuestra misión.
            </p>
            <div className="flex gap-4 py-6">
              <Link
                href="/productos"
                className="px-6 py-6 rounded-lg font-semibold text-black bg-gradient-to-r from-lime-100 to-yellow-400 hover:opacity-90 transition shadow-md"
              >
                Ver Productos <span className="ml-2">→</span>
              </Link>

              <Link
                href="/servicios"
                className="px-6 py-6 rounded-lg font-semibold text-black border border-gray-300 bg-white hover:bg-gray-100 transition shadow-md"
              >
                Reservar Servicio
              </Link>
            </div>
          </div>
          <div className="">
            <Image
              src="/wedfw_compressed.PNG"
              width={500}
              height={500}
              alt="two baby dogs"
              className="rounded-[60px] shadow-2xl transition-transform duration-500 hover:scale-105"
            />
          </div>
        </div>
      </header>
    </>
  );
};
export default HeroSection;
