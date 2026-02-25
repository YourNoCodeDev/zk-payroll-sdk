const { execSync } = require('child_process');
const fs = require('fs');

const fileData = fs.readFileSync('issues.json', 'utf8');
const issues = JSON.parse(fileData);

issues.forEach(({ id, body }) => {
    const tempFile = `.issue-${id}.md`;
    fs.writeFileSync(tempFile, body);
    try {
        console.log(`Updating issue #${id}...`);
        execSync(`gh issue edit ${id} -F ${tempFile}`, { stdio: 'inherit' });
    } catch (error) {
        console.error(`Failed to update issue #${id}`);
    }
    fs.unlinkSync(tempFile);
});

console.log('All issues updated successfully!');
