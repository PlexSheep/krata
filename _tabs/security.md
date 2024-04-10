---
icon: fas fa-lock
order: 6
---

# Security Guidelines, Scope for cscherr.de and associated hosts

- **[A] Scope**
    - You may search for security issues ONLY on public facing services,
      such as <https://git.cscherr.de>, <https://www.cscherr.de>, the
      Minecraft server and others. You may not do so on sites
      not visible without authentication. For example, <https://git.cscherr.de> is okay
      (except private repositories), but <https://transmission.cscherr.de> is not
      (I seed only Linux images). The ONLY machine you may target is my public
      facing VPS (IP: `194.13.82.193` (`cscherr.de`)) and those machines
      virtualised on it.
    - You may NOT infiltrate any non-public machines (virtual or not).
    - You may NOT exfiltrate data without explicit permission.
    - You may NOT endanger the confidentiality, Availability and Integrity of
      any data, service, or machine, unless with explicit permission.
    - Any findings must be reported to the server owner (Christoph J. Scherr),
      you can typically contact me on admin@cscherr.de.
    - You may NOT cause any effect that would be considered "harmful" to the
      server owner, the users, any service or machine, or any third party. If
      you would like clarification on if your case would be considered harmful,
      seek contact with me (admin@cscherr.de).

- **[B] Bounty**
    - If you actually manage to find something good, I would like to reward you with a
      minor sum of money (~10EUR). I'm only an individual, and still a student,
      so I cannot offer much, but you would have earned it. Preferably, you have
      an account in Europe, so I can just use SEPA to transfer money. I don't have
      PayPal or cryptocurrencies.
    - You also have my honest thanks! If you want, you can get an entry in the
      hall of fame below.
    - I've been getting a lot of mail recently reporting very minor things, that
      are often not security issues, like "exposed information on
      https://static.cscherr.de". I encourage you all to report things you might
      find suspicious, but you will not gain a bounty or entry in the HOF for
      something that I deem not a thread or unknown risk. Furthermore, I reserve the right to
      disagree with your reports and not put you in the HOF or pay a bounty as I
      see fit. Bounties and the HOF are based on goodwill.
    - If you want your entry removed from the HOF, please mail me (admin@cscherr.de),
      we can work something out.

- **[C] Known Risks**
    - The following is a list of possible risks that are currently accepted:
    - I don't have CAA Records (just using caddy+letsencrypt)
    - no MTA-STS for cscherr.de
    - Including of my sites as I-frames to trick users into clicking on something
    - No rate limiting on my web server
    - Possible brute forcing of login forms (I use strong random passwords and MFA)
    - No BIMI Record for cscherr.de

- Christoph J. Scherr, 2024

--------------------------------------------------------------------------------

<h2 class="display-1 text-center text-huge">Hall of Fame</h2>

--------------------------------------------------------------------------------

Parth Narula, who found a DOS vulnerability in my WordPress site, resulting in
near 100% server load by repeatedly sending requests to an endpoint which
allowed users to load multiple JS and CSS files at once, and also tested the
other subdomains.

Mitigation: Removal of the WordPress site, as it wasn't actively used anyway.

--------------------------------------------------------------------------------

Mesum Raza, who found an open redirect in authentik (used on <auth.cscherr.de>)
prior to version 2024.2.2, and reported it to the authentik maintainers after
correspondence. The open redirect has been removed in subsequent versions
of authentik.

See: <https://github.com/goauthentik/authentik/pull/8796>

--------------------------------------------------------------------------------

