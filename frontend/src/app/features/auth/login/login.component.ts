import { Component } from '@angular/core';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { Router, RouterLink } from '@angular/router';
import { MatCardModule } from '@angular/material/card';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatButtonModule } from '@angular/material/button';
import { AuthService } from '../../../core/auth/auth.service';

@Component({
  selector: 'app-login',
  standalone: true,
  imports: [ReactiveFormsModule, RouterLink, MatCardModule, MatFormFieldModule, MatInputModule, MatButtonModule],
  template: `
    <div class="auth-container">
      <mat-card>
        <mat-card-header>
          <mat-card-title>Bejelentkezés</mat-card-title>
        </mat-card-header>
        <mat-card-content>
          @if (error) {
            <p class="error">{{ error }}</p>
          }
          <form [formGroup]="form" (ngSubmit)="onSubmit()">
            <mat-form-field appearance="outline" class="full-width">
              <mat-label>Email</mat-label>
              <input matInput formControlName="email" type="email">
            </mat-form-field>

            <mat-form-field appearance="outline" class="full-width">
              <mat-label>Jelszó</mat-label>
              <input matInput formControlName="password" type="password">
            </mat-form-field>

            <button mat-raised-button color="primary" type="submit" [disabled]="form.invalid" class="full-width">
              Bejelentkezés
            </button>
          </form>
        </mat-card-content>
        <mat-card-actions>
          <p>Még nincs fiókod? <a routerLink="/regisztracio">Regisztrálj!</a></p>
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
      max-width: 400px;
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
export class LoginComponent {
  form: FormGroup;
  error = '';

  constructor(private fb: FormBuilder, private auth: AuthService, private router: Router) {
    this.form = this.fb.group({
      email: ['', [Validators.required, Validators.email]],
      password: ['', Validators.required]
    });
  }

  onSubmit() {
    if (this.form.valid) {
      this.auth.login(this.form.value).subscribe({
        next: () => this.router.navigate(['/']),
        error: (err) => this.error = err.error?.message || 'Hiba történt'
      });
    }
  }
}
