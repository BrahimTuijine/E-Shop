
import 'package:e_shop/features/authentication/presentation/blocs/sing_in/sing_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends HookWidget {
  final _formKey = GlobalKey<FormState>();
  final validEmailRegex = RegExp(
    r"^(?:[a-zA-Z0-9_'^&+/=?`{|}~.-]+)@(?:(?:[a-zA-Z0-9-]+\.)+[a-zA-Z]{2,})$",
  );

  SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fields = useState({
      'email': '',
      'password': '',
    });

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LOG IN'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'email is required';
                    }
                    if (!validEmailRegex.hasMatch(value)) {
                      return 'this is not a valid email';
                    }
                    return null;
                  },
                  onSaved: (String? value) {
                    fields.value['email'] = value!;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: '**********',
                    labelText: 'Password',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'password is required';
                    }
                    return null;
                  },
                  onSaved: (String? value) {
                    fields.value['password'] = value!;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                BlocConsumer<SingInBloc, SingInState>(
                  listener: (context, state) {
                    state.whenOrNull(
                      error: (message) =>
                          ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                        ),
                      ),
                      loaded: (_) => context.pushReplacement('/home'),
                    );
                  },
                  builder: (context, state) => state.maybeWhen(
                    loading: () => const CircularProgressIndicator(),
                    orElse: () => ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          BlocProvider.of<SingInBloc>(context).add(
                            SingInEvent.singIn(
                                email: fields.value['email']!,
                                password: fields.value['password']!),
                          );
                        }
                      },
                      child: const Text('LOG IN'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    context.go('/auth/singup');
                  },
                  child: const Text('SING UP HERE'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
