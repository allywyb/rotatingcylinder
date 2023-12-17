void UI() {
  bar = new ControlP5(this, createFont("微软雅黑", 12));
  //bar.addSlider("aValue", 0, 1, 0.5, canvasLeftCornerX, canvasLeftCornerY, barSize, barHeight).setLabel("A值");
  //bar.addSlider("bValue", 1, 2, 1, canvasLeftCornerX, canvasLeftCornerY + barInterval, barSize, barHeight).setLabel("B值");

  bar.addSlider("r", 100, 400, 200, 20, 20, 200, 7).setLabel("半径");
  bar.addSlider("layer", 1, 9, 6, 20, 35, 200, 7).setLabel("层数");
   bar.addSlider("cyHigth", 40, 200, 50, 20, 50, 200, 7).setLabel("高度");
   bar.addSlider("section", 1, 15, 8, 20, 65, 200, 7).setLabel("分隔");
   bar.addSlider("rot", 0, 30, 16, 20, 80, 200, 7).setLabel("旋转角");
 //bar.addSlider("section")
 //    .setPosition(100,50)
 //    .setRange(1,10)
 //    ;
 //bar.addSlider("rot")
 //    .setPosition(100,70)
 //    .setRange(0,30)
 //    ;

bar.setAutoDraw(false);
}
