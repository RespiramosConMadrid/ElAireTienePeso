void setup(){
  
  size(1600,900);
  noStroke();
  colorMode(HSB, 360, 100, 100);
  background(0, 0, 0); //negro
  //background(43, 9, 96); //beige cuadro
  //background(200, 12, 91); //azul cuadro
  //background(111, 3, 96); //verde cuadro
  
  //colorMode(HSB, 8100, 1000, 110);
  frameRate(1); // 5 frames por segundo
}

void draw(){
  //background(34, 100, 328);
  //fondo();
  datos();
  datos2();
  datos3();

}

void fondo(){
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      stroke(344, j, 87);
      point(i, j);
      //line(i, j, i, j);
    }
  }
}
//VERDE
void datos(){
  Table table = loadTable("2PraderaSanIsidro.CSV", "header");
  float [][] valores = new float [table.getRowCount()][table.getColumnCount()];
  float [][] valoresmap = new float [table.getRowCount()][table.getColumnCount()];
  //float [][] valores = new float [3][table.getRowCount()];
  for (int i = 0; i < table.getRowCount(); i++) {
    TableRow row = table.getRow(i);
    valores [i][0] = row.getInt(3);
    valores [i][1] = row.getInt(4);
    valores [i][2] = row.getInt(5);
    //println(valores);   
    valoresmap[i][0] = map(valores[i][0], 730, 1620, 100, 0); //S
    valoresmap[i][1] = map(valores[i][1], 200, 446, 100, 0); //B
    valoresmap[i][2] = map(valores[i][2], 20, 75, 110, 112); //H
    //valoresmap[i][2] = map(valores[i][0], 10, 80, 0, 360); //H
  }
  int cont = 0;
  int radio = 1;
  int dist = 1;
  int ran = 2;
  for (int x = radio/2; x < width; x += dist) {
    for (int y = radio/2; y < height; y += dist) {
      if(random(100) < ran){
      //float ran = random(0, 300);
      noStroke();
      fill(valoresmap[cont][2], valoresmap[cont][0], valoresmap[cont][1]);
      ellipse(x, y, radio, radio);
      cont = cont + 1;
      if (cont==73){
      cont = 0;}
      println(cont);
      }
     }
    }
}
//AZUL
void datos2(){
  Table table = loadTable("2PraderaSanIsidro.CSV", "header");
  float [][] valores = new float [table.getRowCount()][table.getColumnCount()];
  float [][] valoresmap = new float [table.getRowCount()][table.getColumnCount()];
  //float [][] valores = new float [3][table.getRowCount()];
  for (int i = 0; i < table.getRowCount(); i++) {
    TableRow row = table.getRow(i);
    valores [i][0] = row.getInt(3);
    valores [i][1] = row.getInt(4);
    valores [i][2] = row.getInt(5);
    //println(valores);   
    valoresmap[i][0] = map(valores[i][0], 730, 1620, 100, 0); //S
    valoresmap[i][1] = map(valores[i][1], 200, 446, 100, 0); //B
    valoresmap[i][2] = map(valores[i][2], 20, 75, 199, 201); //H
    //valoresmap[i][2] = map(valores[i][0], 10, 80, 0, 360); //H
  }
  int cont = 0;
  int radio = 1;
  int dist = 1;
  int ran = 2;
  for (int x = radio/2; x < width; x += dist) {
    for (int y = radio/2; y < height; y += dist) {
      if(random(100) < ran){
      //float ran = random(0, 300);
      noStroke();
      fill(valoresmap[cont][2], valoresmap[cont][0], valoresmap[cont][1]);
      ellipse(x, y, radio, radio);
      cont = cont + 1;
      // 65 es el número máximo de filas en el fichero
      if (cont==73){
      cont = 0;}
      println(cont);
      }
     }
    }
}
//BEIGE
void datos3(){
  Table table = loadTable("2PraderaSanIsidro.CSV", "header");
  float [][] valores = new float [table.getRowCount()][table.getColumnCount()];
  float [][] valoresmap = new float [table.getRowCount()][table.getColumnCount()];
  //float [][] valores = new float [3][table.getRowCount()];
  for (int i = 0; i < table.getRowCount(); i++) {
    TableRow row = table.getRow(i);
    valores [i][0] = row.getInt(3);
    valores [i][1] = row.getInt(4);
    valores [i][2] = row.getInt(5);
    //println(valores);   
    // AJUSTAR LOS VALORES DEL MAPEADO - S: 0-100, B: 0-100, H: COLOR
    valoresmap[i][0] = map(valores[i][0], 730, 1620, 100, 0); //S
    valoresmap[i][1] = map(valores[i][1], 200, 446, 100, 0); //B
    valoresmap[i][2] = map(valores[i][2], 20, 75, 42, 44); //H
    //valoresmap[i][2] = map(valores[i][0], 10, 80, 0, 360); //H
  }
  int cont = 0;
  int radio = 1;
  int dist = 1;
  int ran = 2;
  for (int x = radio/2; x < width; x += dist) {
    for (int y = radio/2; y < height; y += dist) {
      if(random(100) < ran){
      //float ran = random(0, 300);
      noStroke();
      fill(valoresmap[cont][2], valoresmap[cont][0], valoresmap[cont][1]);
      ellipse(x, y, radio, radio);
      cont = cont + 1;
      if (cont==73){
      cont = 0;}
      println(cont);
      }
     }
    }
}
