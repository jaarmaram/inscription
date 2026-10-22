
class Validators {
  static String? nom(String? value, {String champ = 'Le nom'}) {
    if (value == null || value.trim().isEmpty) {
      return '$champ est obligatoire';
    }
    return null;
  }

  static String? email(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'L’email est obligatoire';
    }
    if (!RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$')
        .hasMatch(value.trim())) {
      return 'Email invalide';
    }
    return null;
  }

  static String? motDePasse(String? value) {
    if (value == null || value.isEmpty) {
      return 'Le mot de passe est obligatoire';
    }
    if (value.length < 8) {
      return '8 caractères minimum';
    }
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Ajoutez au moins une majuscule';
    }
    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Ajoutez au moins un chiffre';
    }
    return null;
  }

  static String? confirmation(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'Confirmez le mot de passe';
    }
    if (value != password) {
      return 'Les mots de passe ne correspondent pas';
    }
    return null;
  }

  static String? tjm(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Le TJM est obligatoire';
    }
    final montant = double.tryParse(value.trim().replaceAll(',', '.'));
    if (montant == null || montant <= 0) {
      return 'Saisissez un montant valide';
    }
    return null;
  }
    static String? profession(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'La profession est obligatoire';
    }
    return null;
  }

  static String? experience(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "L'expérience est obligatoire";
    }

    final annees = int.tryParse(value.trim());

    if (annees == null || annees < 0 || annees > 50) {
      return 'Saisissez un nombre entre 0 et 50';
    }

    return null;
  }

  static String? biographie(String? value) {
    if (value != null && value.length > 300) {
      return '300 caractères maximum';
    }
    return null;
  }
}
