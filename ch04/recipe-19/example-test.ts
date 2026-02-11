import { test, expect } from '@playwright/test';

test.describe('Login form', () => {
  test.beforeEach(async ({ page }) => {
    await page.goto(
      'http://localhost:3000/login'
    );
  });

  test('successful login', async ({ page }) => {
    await page.getByRole('textbox',
      { name: 'Email' }).fill('user@example.com');
    await page.getByRole('textbox',
      { name: 'Password' }).fill('password123');
    await page.getByRole('button',
      { name: 'Log in' }).click();
    await expect(page.getByRole('heading',
      { name: 'Dashboard' })).toBeVisible();
  });

  test('wrong password', async ({ page }) => {
    await page.getByRole('textbox',
      { name: 'Email' }).fill('user@example.com');
    await page.getByRole('textbox',
      { name: 'Password' }).fill('wrong');
    await page.getByRole('button',
      { name: 'Log in' }).click();
    await expect(page.getByText(
      'Invalid email or password'
    )).toBeVisible();
  });

  test('empty submission', async ({ page }) => {
    await page.getByRole('button',
      { name: 'Log in' }).click();
    await expect(page.getByText(
      'Email is required'
    )).toBeVisible();
  });
});
