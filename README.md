[![Build Status](https://travis-ci.org/mburns/chef-dspam.svg?branch=master)](https://travis-ci.org/mburns/chef-dspam)

Description
===========

This cookbook configures the [dspam](http://dspam.nuclearelephant.com/) daemon.

Requirements
============

* Ubuntu

Attributes
==========

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['dspam']['enable']</tt></td>
    <td>String</td>
    <td>To Enable or Not Enable, that is the question?</td>
    <td><tt>'yes'</tt></td>
  </tr>
  <tr>
    <td><tt>['dspam']['user']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'dspam'</tt></td>
  </tr>
  <tr>
    <td><tt>['dspam']['trainingMode']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'TEFT'</tt></td>
  </tr>
  <tr>
    <td><tt>['dspam']['spamAction']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'deliver'</tt></td>
  </tr>
  <tr>
    <td><tt>['dspam']['spamSubject']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'[SPAM]'</tt></td>
  </tr>
  <tr>
    <td><tt>['dspam']['enableBNR']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'on'</tt></td>
  </tr>
  <tr>
    <td><tt>['dspam']['enableWhitelist']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'on'</tt></td>
  </tr>
  <tr>
    <td><tt>['dspam']['statisicalSedation']</tt></td>
    <td>Integer</td>
    <td></td>
    <td><tt>5</tt></td>
  </tr>
  <tr>
    <td><tt>['dspam']['signatureLocation']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'message'</tt></td>
  </tr>
  <tr>
    <td><tt>['dspam']['whitelistThreshold']</tt></td>
    <td>Integer</td>
    <td></td>
    <td><tt>10</tt></td>
  </tr>
  <tr>
    <td><tt>['dspam']['showFactors']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'off'</tt></td>
  </tr>
  <tr>
    <td><tt>['dspam']['optIn']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'on'</tt></td>
  </tr>
  <tr>
    <td><tt>['dspam']['optOut']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'off'</tt></td>
  </tr>
</table>

Usage
=====

```ruby
    include_recipe 'dspam'
```