let protooPort = 4443;

if (window.location.hostname === 'test.mediasoup.org')
	protooPort = 4444;

export function getProtooUrl({ roomId, peerId })
{
	const hostname = window.location.hostname;
	const pref = window.location.protocol === 'https:' ? 'wss' : 'ws';

	return `${pref}://${hostname}/?roomId=${roomId}&peerId=${peerId}`;
}
