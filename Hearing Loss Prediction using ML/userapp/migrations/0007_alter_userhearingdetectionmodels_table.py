# Generated by Django 4.1.5 on 2025-04-17 09:51

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0006_predictioncount_delete_userprediction'),
    ]

    operations = [
        migrations.AlterModelTable(
            name='userhearingdetectionmodels',
            table='user_details_table',
        ),
    ]
