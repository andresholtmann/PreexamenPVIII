import 'package:flutter/material.dart';

class FormularioPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<FormularioPage> {
  String _nombremascota = '';
  String _nombredueno = '';
  String _telefono = '';
  String _tipoMascota = 'Perro';
  List<String> _mascotas = [
    'Perro',
    'Gato',
  ];
  String _tipoRaza = 'french';
  List<String> _razas = [
    'french',
    'Angora',
  ];
  String _tipoSexo = 'Macho';
  List<String> _sexos = [
    'Macho',
    'Hembra',
  ];
  String _edadMascota = '';
  //String _email = '';
  String _fecha = '';

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[600],
        title: Text('Veterinaria Free'),
      ),
      backgroundColor: Colors.lightBlue[50],
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearNombreMascota(),
          Divider(),
          _crearNombreDueno(),
          Divider(),
          _crearTelefono(),
          Divider(),
          _crearTipoMascota(),
          Divider(),
          _crearTipoRaza(),
          Divider(),
          _crearTipoSexo(),
          Divider(),
          _crearEdadMascota(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearResumen(context)
        ],
      ),
    );
  }

  Widget _crearNombreMascota() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letras ${_nombremascota.length}'),
          hintText: 'Nombre de la mascota',
          labelText: 'Nombre Mascota',
          helperText: 'Mascota',
          suffixIcon: Icon(Icons.accessibility, color: Colors.lightBlue[700]),
          icon: Icon(Icons.account_circle, color: Colors.lightBlue[700])),
      onChanged: (valor) {
        setState(() {
          _nombremascota = valor;
        });
      },
    );
  }

  Widget _crearNombreDueno() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letras ${_nombredueno.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Nombre Completo',
          suffixIcon: Icon(Icons.accessibility, color: Colors.lightBlue[700]),
          icon: Icon(Icons.account_circle, color: Colors.lightBlue[700])),
      onChanged: (valor) {
        setState(() {
          _nombredueno = valor;
        });
      },
    );
  }

  Widget _crearTelefono() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letras ${_telefono.length}'),
          hintText: 'Numero de Telefono',
          labelText: 'Numero',
          helperText: 'Telefono',
          suffixIcon: Icon(Icons.phone_android, color: Colors.lightBlue[700]),
          icon: Icon(Icons.account_circle, color: Colors.lightBlue[700])),

      onChanged: (valor) {
        setState(() {
          _telefono = valor;
        });
      },
    );
  }

  Widget _crearEdadMascota() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letras ${_edadMascota.length}'),
          hintText: 'Edad de la Mascota',
          labelText: 'Edad Mascota',
          helperText: 'Edad',
          suffixIcon: Icon(Icons.supervisor_account_outlined,
              color: Colors.lightBlue[700]),
          icon: Icon(Icons.account_circle, color: Colors.lightBlue[700])),
      onChanged: (valor) {
        setState(() {
          _edadMascota = valor;
        });
      },
    );
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = new List();

    _mascotas.forEach((mascota) {
      lista.add(DropdownMenuItem(
        child: Text(mascota),
        value: mascota,
      ));
    });

    return lista;
  }

  Widget _crearTipoMascota() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all, color: Colors.lightBlue[700]),
        SizedBox(width: 30.0),
        Expanded(
          child: DropdownButton<String>(
            value: _tipoMascota,
            items: getOpcionesDropdown(),
            onChanged: (opt) {
              setState(() {
                _tipoMascota = opt;
              });
            },
          ),
        )
      ],
    );
  }

  List<DropdownMenuItem<String>> getTipoRazaDropdown() {
    List<DropdownMenuItem<String>> lista = new List();

    _razas.forEach((raza) {
      lista.add(DropdownMenuItem(
        child: Text(raza),
        value: raza,
      ));
    });

    return lista;
  }

  Widget _crearTipoRaza() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all, color: Colors.lightBlue[700]),
        SizedBox(width: 30.0),
        Expanded(
          child: DropdownButton<String>(
            value: _tipoRaza,
            items: getTipoRazaDropdown(),
            onChanged: (opt) {
              setState(() {
                _tipoRaza = opt;
              });
            },
          ),
        )
      ],
    );
  }

  List<DropdownMenuItem<String>> getTipoSexoDropdown() {
    List<DropdownMenuItem<String>> lista = new List();

    _sexos.forEach((sexo) {
      lista.add(DropdownMenuItem(
        child: Text(sexo),
        value: sexo,
      ));
    });

    return lista;
  }

  Widget _crearTipoSexo() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all, color: Colors.lightBlue[700]),
        SizedBox(width: 30.0),
        Expanded(
          child: DropdownButton<String>(
            value: _tipoSexo,
            items: getTipoSexoDropdown(),
            onChanged: (opt) {
              setState(() {
                _tipoSexo = opt;
              });
            },
          ),
        )
      ],
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Fecha de nacimiento',
          labelText: 'nacimiento Mascota',
          suffixIcon:
              Icon(Icons.perm_contact_calendar, color: Colors.lightBlue[700]),
          icon: Icon(Icons.calendar_today, color: Colors.lightBlue[700])),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2018),
        lastDate: new DateTime(2025),
        locale: Locale('es', 'ES'));

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }
  }

  // This widget is the root of your application.

  Widget _crearResumen(BuildContext context) {
    return ListTile(
      title: Text('Nombre Dueño: $_nombredueno'),
      subtitle: Text('Nombre Mascota: $_nombremascota'),
      trailing: Text('Mascota  $_tipoMascota'),
    );
  }
}
