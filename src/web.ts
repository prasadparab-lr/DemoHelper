import { WebPlugin } from '@capacitor/core';

import type { DemoHelperPlugin } from './definitions';

export class DemoHelperWeb extends WebPlugin implements DemoHelperPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
