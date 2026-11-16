/** @type {import('tailwindcss').Config} */
module.exports = {
    content: ["./index.html"],
    theme: {
        extend: {
            colors: {
                brand: {
                    cream: '#FAF2E6',
                    cacao: '#422517',
                    terracotta: '#D86B28',
                    caramel: '#E5A144',
                    green: '#667653',
                    dark: '#26140B',
                    lightBg: '#F5E8D7'
                }
            },
            fontFamily: {
                title: ['Outfit', 'sans-serif'],
                body: ['Plus Jakarta Sans', 'sans-serif']
            }
        }
    }
};
