import { Link } from "react-router-dom";

export default function AccessDenied() {
  return (
    <div className="flex flex-col items-center justify-center h-screen bg-gray-100">
      <h1 className="text-6xl font-bold text-gray-900">HALA KA BOI</h1>
      <p className="text-gray-700 mb-8">
        Sorry, the page you are looking for is for admin only.
      </p>
      <Link to="/" className="bg-black hover:bg-gray-950 text-white py-3 px-8">
        Go back home
      </Link>
    </div>
  );
}
