import { DemoHelper } from 'demohelper';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    DemoHelper.echo({ value: inputValue })
}
