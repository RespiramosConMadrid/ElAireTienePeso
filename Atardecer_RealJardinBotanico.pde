void setup(){
  
  size(1600,900);
  noStroke();
  background(0, 0, 0); //negro
  colorMode(HSB, 360, 100, 100);

  //background(40, 34, 100); //beige cuadro
  //background(28, 34, 89); //naranja cuadro
  //background(203, 17, 85); //azul cuadro
  
  //colorMode(HSB, 8100, 1000, 110);
  frameRate(1); // 5 frames por segundo
}

void draw(){
  //background(34, 100, 328);
  datos();
  datos2();
  datos3();

}

//VERDE
void datos(){
  Table table = loadTable("1Atardecer_RJB.CSV", "header");
  float [][] valores = new float [table.getRowCount()][table.getColumnCount()];
  float [][] valoresmap = new float [table.getRowCount()][table.getColumnCount()];
  //float [][] valores = new float [3][table.getRowCount()];
  for (int i = 0; i < table.getRowCount(); i++) {
    TableRow row = table.getRow(i);
    valores [i][0] = row.getInt(3);
    valores [i][1] = row.getInt(4);
    valores [i][2] = row.getInt(5);
    //println(valores);   
    valoresmap[i][0] = map(valores[i][0], 1200, 1840, 100, 0); //S
    valoresmap[i][1] = map(valores[i][1], 310, 540, 100, 0); //B
    valoresmap[i][2] = map(valores[i][2], 40, 95, 38, 42); //H
    //valoresmap[i][2] = map(valores[i][0], 10, 80, 0, 360); //H
  }
  int cont = 0;
  float radio = 1;
  float dist = 2;
  int ran = 2;
  for (float x = radio/2; x < width; x += dist) {
    for (float y = radio/2; y < height; y += dist) {
      if(random(100) < ran){
      //float ran = random(0, 300);
      noStroke();
      fill(valoresmap[cont][2], valoresmap[cont][0], valoresmap[cont][1]);
      rect(x, y, radio, radio);//ellipse(x, y, radio, radio);
      cont = cont + 1;
      if (cont==65){
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
    valoresmap[i][0] = map(valores[i][0], 1200, 1840, 100, 0); //S
    valoresmap[i][1] = map(valores[i][1], 310, 540, 100, 0); //B
    valoresmap[i][2] = map(valores[i][2], 40, 95, 26, 30); //H
    //valoresmap[i][2] = map(valores[i][0], 10, 80, 0, 360); //H
  }
  int cont = 0;
  float radio = 1;
  float dist = 2;
  int ran = 2;
  for (float x = radio/2; x < width; x += dist) {
    for (float y = radio/2; y < height; y += dist) {
      if(random(100) < ran){
      //float ran = random(0, 300);
      noStroke();
      fill(valoresmap[cont][2], valoresmap[cont][0], valoresmap[cont][1]);
      //ellipse(x, y, radio, radio);
      rect(x, y, radio, radio);
      cont = cont + 1;
      // 65 es el número máximo de filas en el fichero
      if (cont==65){
      cont = 0;}
      println(cont);
      }
     }
    }
}

//// BEIGE
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

    valoresmap[i][0] = map(valores[i][0], 1200, 1840, 100, 0); //S
    valoresmap[i][1] = map(valores[i][1], 310, 540, 100, 0); //B
    valoresmap[i][2] = map(valores[i][2], 40, 95, 201, 205); //H
  }
  int cont = 0;
  float radio = 1;
  float dist = 2;
  int ran = 2;
  for (float x = radio/2; x < width; x += dist) {
    for (float y = radio/2; y < height; y += dist) {
      if(random(100) < ran){
      //float ran = random(0, 300);
      noStroke();
      fill(valoresmap[cont][2], valoresmap[cont][0], valoresmap[cont][1]);
      //ellipse(x, y, radio, radio);
      rect(x, y, radio, radio);
      cont = cont + 1;
      // 65 es el número máximo de filas en el fichero
      if (cont==65){
      cont = 0;}
      println(cont);
      }
     }
    }
}
