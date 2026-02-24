import 'package:flutter/material.dart';

class CvScreen extends StatelessWidget {
  const CvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curriculum Vitae'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(context),
            const SizedBox(height: 20),
            _buildSectionTitle(context, 'Professional Summary'),
            _buildSummaryCard(),
            const SizedBox(height: 20),
            _buildSectionTitle(context, 'Experience'),
            _buildExperienceList(),
            const SizedBox(height: 20),
            _buildSectionTitle(context, 'Education'),
            _buildEducationList(),
            const SizedBox(height: 20),
            _buildSectionTitle(context, 'Skills'),
            _buildSkillsWrap(context),
            const SizedBox(height: 20),
            _buildSectionTitle(context, 'Certifications'),
            _buildCertificationsList(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, size: 60, color: Colors.white),
          ),
          const SizedBox(height: 16),
          Text(
            'John Doe',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
          ),
          Text(
            'Senior Safety Officer',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email, size: 16, color: Colors.grey),
              SizedBox(width: 4),
              Text('john.doe@example.com'),
              SizedBox(width: 16),
              Icon(Icons.phone, size: 16, color: Colors.grey),
              SizedBox(width: 4),
              Text('+1 234 567 890'),
            ],
          ),
          const SizedBox(height: 4),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, size: 16, color: Colors.grey),
              SizedBox(width: 4),
              Text('New York, USA'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, left: 4.0),
      child: Text(
        title.toUpperCase(),
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
              letterSpacing: 1.2,
            ),
      ),
    );
  }

  Widget _buildSummaryCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: const Text(
          'Dedicated and detail-oriented Safety Officer with over 7 years of experience in implementing safety policies, conducting risk assessments, and ensuring compliance with OSHA and local regulations. Proven track record of reducing workplace incidents by 40% through effective training programs and rigorous safety audits. Committed to maintaining a zero-harm environment.',
          style: TextStyle(height: 1.5, fontSize: 15),
        ),
      ),
    );
  }

  Widget _buildExperienceList() {
    return Column(
      children: [
        _buildExperienceItem(
          role: 'Senior Safety Officer',
          company: 'BuildSafe Construction Ltd.',
          period: '2019 - Present',
          description:
              '• Oversee safety operations for large-scale commercial construction projects.\n• Conduct daily site inspections and weekly safety audits.\n• Developed and delivered safety training to over 200 employees.\n• Investigated accidents and near-misses to identify root causes and implement corrective actions.',
        ),
        _buildExperienceItem(
          role: 'HSE Coordinator',
          company: 'Industrial Solutions Inc.',
          period: '2016 - 2019',
          description:
              '• Assisted in the development of the company HSE manual.\n• Monitored hazardous waste disposal and ensured environmental compliance.\n• Conducted fire drills and emergency response training.\n• Maintained safety records and prepared monthly safety reports.',
        ),
      ],
    );
  }

  Widget _buildExperienceItem({
    required String role,
    required String company,
    required String period,
    required String description,
  }) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    role,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  period,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              company,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Divider(height: 20),
            Text(
              description,
              style: const TextStyle(height: 1.4, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEducationList() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.school, color: Colors.green),
            title: const Text('Bachelor of Science in Occupational Health & Safety'),
            subtitle: const Text('University of Safety Studies, 2015'),
          ),
          const Divider(height: 1, indent: 16, endIndent: 16),
          ListTile(
            leading: const Icon(Icons.school, color: Colors.green),
            title: const Text('Diploma in Industrial Safety'),
            subtitle: const Text('Technical Institute, 2012'),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsWrap(BuildContext context) {
    final skills = [
      'Risk Assessment',
      'Incident Investigation',
      'OSHA Compliance',
      'First Aid & CPR',
      'Fire Safety',
      'Safety Auditing',
      'Hazard Analysis',
      'Training & Development',
      'Emergency Response',
      'PPE Management',
    ];

    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: skills.map((skill) {
        return Chip(
          label: Text(skill),
          backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
          labelStyle: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant),
          side: BorderSide.none,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        );
      }).toList(),
    );
  }

  Widget _buildCertificationsList() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.verified, color: Colors.orange),
            title: const Text('NEBOSH International General Certificate'),
            subtitle: const Text('2018'),
          ),
          const Divider(height: 1, indent: 16, endIndent: 16),
          ListTile(
            leading: const Icon(Icons.verified, color: Colors.orange),
            title: const Text('OSHA 30-Hour Construction Safety'),
            subtitle: const Text('2017'),
          ),
          const Divider(height: 1, indent: 16, endIndent: 16),
          ListTile(
            leading: const Icon(Icons.verified, color: Colors.orange),
            title: const Text('Certified Safety Professional (CSP)'),
            subtitle: const Text('Pending'),
          ),
        ],
      ),
    );
  }
}
