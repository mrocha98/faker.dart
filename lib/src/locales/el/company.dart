class Company {

List<String> adjective = [
  "Για προχωρημένους",
  "Αυτοματοποιημένη",
  "Ισορροπημένη",
  "Συγκεντρωτική",
  "Κλωνοποιημένα",
  "Συμβατές",
  "Παραμετρικές",
  "Προσαρμόσιμα",
  "Αποκεντρωμένη",
  "Ψηφιακές",
  "Κατανεμημένα",
  "Διαφορετικές",
  "Ενισχυμένη",
  "Εργονομία",
  "Διευρυμένη",
  "Επέκταση",
  "Ειδικός",
  "Πρώτης γραμμής",
  "Πλήρως παραμετροποιήσιμο",
  "Θεμελιώδη",
  "Λαϊκά",
  "Οριζόντια",
  "Καινοτόμες",
  "ολοκληρωμένη",
  "Έξυπνο",
  "Αντιστροφή",
  "Υπεύθυνη για τη διαχείριση",
  "Υποχρεωτικά",
  "Πολυμερής",
  "Πολυεπίπεδη",
  "Πολυεπίπεδη",
  "Δικτυωμένες",
  "Ανοιχτή πηγή",
  "Λειτουργικής",
  "Βελτιστοποιημένη",
  "Προαιρετικό",
  "Βιολογικά",
  "Οργανωμένες",
  "Μένοντας",
  "Επίμονη",
  "Σταδιακή",
  "Προληπτική",
  "Προληπτική",
  "Ριζική",
  "Προοδευτική",
  "Αντιδραστική",
  "Ευθυγραμμισμένο",
  "Μειωμένη",
  "Αντίστροφης μηχανικής",
  "Ανθεκτική",
  "Αδιάλειπτη",
  "Ασφαλής",
  "Κοινόχρηστο",
  "Βελτιωμένη",
  "Εναλλαγή",
  "Σύγχρονη",
  "Αναβαθμίσιμα",
  "Χρηστοκεντρικών",
  "Φιλική προς το χρήστη",
  "Ευέλικτο",
  "Εικονική",
  "Οραματιστής"
];

List<String> bsAdjective = [
  "Προστιθέμενη αξία",
  "Κάθετη",
  "Προληπτική",
  "Εύρωστο",
  "Επαναστατικό",
  "Κλιμακούμενες",
  "Προβάδισμα",
  "Καινοτόμες",
  "Διαισθητική",
  "Στρατηγικών",
  "E-business",
  "Κρίσιμης σημασίας",
  "Κολλάει",
  "Ένα προς ένα",
  "24/7",
  "Παγκόσμια",
  "B2B",
  "B2C",
  "Κοκκώδη",
  "Τριβές",
  "Εικονική",
  "Ιογενείς",
  "Δυναμική",
  "24/365",
  "Δολοφόνος",
  "Μαγνητικά",
  "Διαδραστικό",
  "Σέξι",
  "Πραγματικός χρόνος",
  "Αποτελεσματικό",
  "Κατανεμημένες",
  "Επεκτάσιμο",
  "Κλειδί στο χέρι",
  "Παγκόσμιας κλάσης",
  "Ανοιχτή πηγή",
  "Συνεργιστική",
  "Επιχείρηση",
  "Ολοκληρωμένη",
  "Εύστοχος",
  "Ασύρματο",
  "Διαφανής",
  "Επόμενη γενιά",
  "Αιχμής",
  "Επίκεντρο τον χρήστη",
  "Οραματιστής",
  "Προσαρμοσμένη",
  "Πανταχού παρούσα",
  "Plug-and-play",
  "Συνεργατική",
  "Συναρπαστικό",
  "Ολιστική",
  "Πλούσια"
];

List<String> bsNoun = [
  "συνέργειες",
  "παραδείγματα",
  "αγορές",
  "συνεργασίες",
  "υποδομές",
  "πλατφόρμες",
  "πρωτοβουλίες",
  "κανάλια",
  "μάτια",
  "κοινότητες",
  "λύσεις",
  "δράση-αντικείμενα",
  "πύλες",
  "θέσεις",
  "τεχνολογίες",
  "περιεχόμενο",
  "αλυσίδες προμηθειών",
  "σύγκλιση",
  "σχέσεις",
  "αρχιτεκτονικές",
  "διασυνδέσεις",
  "e-αγορές",
  "ηλεκτρονικό εμπόριο",
  "συστήματα",
  "μοντέλα",
  "παραδοτέα",
  "χρήστες",
  "σχήματα",
  "δίκτυα",
  "εφαρμογές",
  "μετρήσεις",
  "e-business",
  "λειτουργίες",
  "εμπειρίες",
  "διαδικτυακές υπηρεσίες",
  "μεθοδολογίες"
];

List<String> bsVerb = [
  "χρησιμοποιούν",
  "ενσωμάτωση",
  "βελτιστοποιήσουν",
  "εξελιχθεί",
  "μεταμορφώσει",
  "αγκαλιάζουν",
  "επιτρέψει",
  "ενορχηστρώσει",
  "επανεφεύρουμε",
  "ενισχύσουν",
  "διευκολύνουν",
  "αδράξουν",
  "συνεργούν",
  "μεγαλώνουν",
  "συνθέσει",
  "παραδώσει",
  "αναλάβουν",
  "επιταχύνει",
  "απεικονίσει",
  "επαναπροσδιορίσουν",
  "καινοτομία",
  "απελευθερώσουν",
  "επεκτείνει",
  "δημιουργούν",
  "εκμεταλλεύονται",
  "επαναλάβει",
  "καλλιεργούν",
  "επαναπροσδιορίσει"
];

List<String> descriptor = [
  "24 ώρες το 24ώρο",
  "24/7",
  "3η γενιά",
  "4η γενικά",
  "5η γενιά",
  "6η γενιά",
  "asymmetric",
  "ασύγχρονο",
  "συνεχής",
  "αφιερωμένο",
  "διαδακτικό",
  "διακριτό",
  "δυναμικό",
  "παγκόσμιο",
  "υβριδικό",
  "δριαδραστικό",
  "τοπικό",
  "πολυμεσικό",
  "διεθνές",
  "επόμενης γενιάς",
  "αντικειμενοστραφή",
  "ιδανικό",
  "πραγματικού χρόνου",
  "δευτερεύων",
  "σταθερό",
  "στατικό",
  "προστιθέμενης αξίας"
];

List<String> name = [
  "#{Name.last_name} #{suffix}",
  "#{Name.last_name}-#{Name.last_name}",
  "#{Name.last_name}, #{Name.last_name} and #{Name.last_name}"
];

List<String> noun = [
  "ικανότητα",
  "πρόσβαση",
  "αλγόριθμος",
  "αναλυτής",
  "εφαρμογή",
  "προσέγγιση",
  "αρχιτεκτονική",
  "αρχείο",
  "τεχνητή νοημοσύνη",
  "χωρητικότητα",
  "πρόκληση",
  "συνεργασία",
  "περιπλοκότητα",
  "πυρήνας",
  "βάση δεδομένων",
  "ορισμός",
  "συνάρτηση",
  "Διεπαφή Χρήστη",
  "υλικό",
  "υλοποίηση",
  "εγκατάσταση",
  "εγχειρίδιο χρήστη",
  "διεπαφή",
  "υπηρεσίες internet",
  "γνωσιακή βάση",
  "τοπικό δίκτυο",
  "μετρικές",
  "μεθοδολογία",
  "μοντέλο",
  "ανοιχτή αρχιτεκτονική",
  "ενορχήστρωση",
  "προϊόν",
  "παραγωγικότητα",
  "πρωτόκολο",
  "ασφαλής γραμμή",
  "λογισμικό",
  "στρατηγική",
  "επιτυχία",
  "υποστήρυξη"
];

List<String> suffix = [
  "Ε.Π.Ε.",
  "Α.Ε.",
  "και Υιοί",
  "Όμιλος"
];

}