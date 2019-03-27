class Bresenham {
    // 1) La línea se dibuja de izquierda a derecha.
    // 2) x1 <x2 e y1 <y2
    // 3) La pendiente de la línea está entre 0 y 1.
    // Dibujamos una línea desde la parte inferior izquierda a la superior
    // derecho. 

    int x1, y1, x2, y2,size;
    String pen;
    Bresenham(int _x1, int _y1, int _x2, int _y2,int _size,String _pen) {
        this.x1 = _x1;
        this.y1 = _y1;
        this.x2 = _x2;
        this.y2 = _y2;
        this.pen=_pen;
        this.size=_size;
        this.print();
    }
    private void print() {
        int m_new = 2 * (y2 - y1);
        int slope_error_new = m_new - (x2 - x1);
        Plumilla p = new Plumilla(size,pen);
        for (int x = x1, y = y1; x <= x2; x++) {
           p.print(x,y);
            //point(x, y);
            //agrega incremento. 
            slope_error_new += m_new;
            if (slope_error_new >= 0){
                y++;
                slope_error_new -= 2 * (x2 - x1);
            }
        }
    }

}
