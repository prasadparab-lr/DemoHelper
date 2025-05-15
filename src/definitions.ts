export interface DemoHelperPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
