import { registerPlugin } from '@capacitor/core';

import type { DemoHelperPlugin } from './definitions';

const DemoHelper = registerPlugin<DemoHelperPlugin>('DemoHelper', {
  web: () => import('./web').then((m) => new m.DemoHelperWeb()),
});

export * from './definitions';
export { DemoHelper };
