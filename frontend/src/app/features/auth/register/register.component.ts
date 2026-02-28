import { Component } from '@angular/core';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { Router, RouterLink } from '@angular/router';
import { MatCardModule } from '@angular/material/card';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatButtonModule } from '@angular/material/button';
import { MatSelectModule } from '@angular/material/select';
import { AuthService } from '../../../core/auth/auth.service';

@Component({
  selector: 'app-register',
  standalone: true,
  imports: [ReactiveFormsModule, RouterLink, MatCardModule, MatFormFieldModule, MatInputModule, MatButtonModule, MatSelectModule],
  template: `
    <div class="auth-container">
      <mat-card>
        <mat-card-header>
          <mat-card-title>Regisztráció</mat-card-title>
        </mat-card-header>
        <mat-card-content>
          @if (error) {
            <p class="error">{{ error }}</p>
          }
          <form [formGroup]="form" (ngSubmit)="onSubmit()">
            <mat-form-field appearance="outline" class="full-width">
              <mat-label>Név</mat-label>
              <input matInput formControlName="nev">
            </mat-form-field>

            <mat-form-field appearance="outline" class="full-width">
              <mat-label>Email</mat-label>
              <input matInput formControlName="email" type="email">
            </mat-form-field>

            <mat-form-field appearance="outline" class="full-width">
              <mat-label>Jelszó</mat-label>
              <input matInput formControlName="password" type="password">
            </mat-form-field>

            <mat-form-field appearance="outline" class="full-width">
              <mat-label>Szerepkör</mat-label>
              <mat-select formControlName="role">
                <mat-option value="MEGRENDELO">Megrendelő</mat-option>
                <mat-option value="SZAKEMBER">Szakember</mat-option>
              </mat-select>
            </mat-form-field>

            <mat-form-field appearance="outline" class="full-width">
              <mat-label>Város</mat-label>
              <input matInput formControlName="varos">
            </mat-form-field>

            <mat-form-field appearance="outline" class="full-width">
              <mat-label>Telefonszám</mat-label>
              <input matInput formControlName="telefon">
            </mat-form-field>

            <button mat-raised-button color="primary" type="submit" [disabled]="form.invalid" class="full-width">
              Regisztráció
            </button>
          </form>
        </mat-card-content>
        <mat-card-actions>
          <p>Már van fiókod? <a routerLink="/bejelentkezes">Jelentkezz be!</a></p>
        </mat-card-actions>
      </mat-card>
    </div>
  `,
  styles: [`
    .auth-container {
      display: flex;
      justify-content: center;
      padding: 2rem;
    }
    mat-card {
      max-width: 450px;
      width: 100%;
    }
    .full-width {
      width: 100%;
    }
    .error {
      color: var(--mat-sys-error);
      margin-bottom: 1rem;
    }
    mat-card-actions {
      text-align: center;
    }
  `]
})
export class RegisterComponent {
  form: FormGroup;
  error = '';

  constructor(private fb: FormBuilder, private auth: AuthService, private router: Router) {
    this.form = this.fb.group({
      nev: ['', Validators.required],
      email: ['', [Validators.required, Validators.email]],
      password: ['', [Validators.required, Validators.minLength(6)]],
      role: ['', Validators.required],
      varos: [''],
      telefon: ['']
    });
  }

  onSubmit() {
    if (this.form.valid) {
      this.auth.register(this.form.value).subscribe({
        next: () => this.router.navigate(['/']),
        error: (err) => this.error = err.error?.message || 'Hiba történt'
      });
    }
  }
}
