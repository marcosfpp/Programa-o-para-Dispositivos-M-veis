import 'package:flutter/material.dart';

void main() => runApp(const AppDiario());

class AppDiario extends StatelessWidget {
  const AppDiario({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diário do Talhão',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E5631)),
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
      home: const TelaRegistroAtividade(),
    );
  }
}

class TelaRegistroAtividade extends StatefulWidget {
  const TelaRegistroAtividade({super.key});

  @override
  State<TelaRegistroAtividade> createState() => _TelaRegistroAtividadeState();
}

class _TelaRegistroAtividadeState extends State<TelaRegistroAtividade> {
  // Variavel que salva a atividade selecionada no botao de dropdown
  String? _atividadeSelecionada;
  
  // Serve para capturar o texto digitado.
  final TextEditingController _dataController = TextEditingController();
  final TextEditingController _obsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF7F1), 
      appBar: AppBar(
        title: const Text('Diário de Atividades do Talhão'),
        backgroundColor: const Color(0xFF1E5631),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Preencha os dados da operação realizada no talhão:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF1E5631)),
            ),
            const SizedBox(height: 24),
            // Dropdown diferenciado pra aparecer a listinha
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Tipo de Atividade',
                prefixIcon: Icon(Icons.agriculture),
              ),
              value: _atividadeSelecionada,
              items: const [
                DropdownMenuItem(value: 'Plantio', child: Text('Plantio')),
                DropdownMenuItem(value: 'Adubação', child: Text('Adubação')),
                DropdownMenuItem(value: 'Pulverização', child: Text('Pulverização')),
                DropdownMenuItem(value: 'Colheita', child: Text('Colheita')),
              ],
              onChanged: (String? novoValor) {
                setState(() {
                  _atividadeSelecionada = novoValor;
                });
              },
            ),
            const SizedBox(height: 16),
            // Campo Data
            TextFormField(
              controller: _dataController,
              decoration: const InputDecoration(
                labelText: 'Data',
                hintText: 'DD/MM/AAAA',
                prefixIcon: Icon(Icons.calendar_today),
              ),
              keyboardType: TextInputType.datetime,
            ),
            const SizedBox(height: 16),
            //Campo Observação
            TextFormField(
              controller: _obsController,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: 'Observações',
                hintText: 'Condições do clima, produtos usados, etc.',
                prefixIcon: Padding(
                  padding: EdgeInsets.only(bottom: 40.0),
                  child: Icon(Icons.notes),
                ),
              ),
            ),
            const SizedBox(height: 32),

            // Botão de registro
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1E5631),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Botão pressionado!.'),
                    backgroundColor: Color(0xFF1E8449),
                  ),
                );
              },
              child: const Text(
                'Registrar Atividade',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}