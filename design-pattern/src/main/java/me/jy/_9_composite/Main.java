package me.jy._9_composite;

/**
 * @author jy
 */
public class Main {

    public static void main(String[] args) {
        Panel demoPanel = new Panel("DemoPanel");

        demoPanel.addComponent(new Button("A"));
        demoPanel.addComponent(new Button("B"));

        ButtonGroup bg = new ButtonGroup("BG");
        bg.addButton(new Button("C"));
        bg.addButton(new Button("D"));

        demoPanel.addComponent(bg);

        demoPanel.render();
    }
}
