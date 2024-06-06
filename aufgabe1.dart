class Tools {
  String name;

  Tools(this.name);

  void use() {
    print('Benutze $name');
  }
}

class Handtools extends Tools {
  Handtools(String name) : super(name);
  void use() {
    print('$name ist ein Handwerkzeug.');
  }
}

class MachineTools extends Tools {
  String useForWhichMachine;
  bool hasInterchangeableBlades;

  MachineTools(super.name, this.useForWhichMachine, this.hasInterchangeableBlades);

  void use() {
    print('$name wird für die Machine $useForWhichMachine verwendet.');
    if (hasInterchangeableBlades) {
      print('Dieses Werkzeug hat wechselbare Schneiden');
    } else {
      print('Dieses Werkzeug hat keine wechselbare Schneiden');
    }
  }
}

void main() {
  Handtools hammer = Handtools('Hammer');
  MachineTools sawBlade = MachineTools('Sägeblatt', 'Kreissäge', false);
  MachineTools foldingHead = MachineTools('Falzkopf Fräser', 'Tischfräse', true);

  hammer.use();
  sawBlade.use();
  foldingHead.use();
}
