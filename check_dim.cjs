const fs = require('fs');
const files = fs.readdirSync('public').filter(f => f.startsWith('test'));
files.forEach(f => {
  try {
    const buffer = Buffer.alloc(24);
    const fd = fs.openSync('public/' + f, 'r');
    fs.readSync(fd, buffer, 0, 24, 0);
    fs.closeSync(fd);
    if (buffer.toString('ascii', 1, 4) === 'PNG') {
      const width = buffer.readUInt32BE(16);
      const height = buffer.readUInt32BE(20);
      console.log(`${f}: ${width}x${height}`);
    }
  } catch(e) {}
});
