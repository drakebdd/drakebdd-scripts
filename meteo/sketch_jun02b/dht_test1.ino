




<!DOCTYPE html>
<html class="   ">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    
    <title>Arduino/libraries/DHTlib/examples/dht_test1/dht_test1.ino at master · RobTillaart/Arduino · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <meta property="fb:app_id" content="1401488693436528"/>

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="RobTillaart/Arduino" name="twitter:title" /><meta content="Arduino - libs and code" name="twitter:description" /><meta content="https://avatars1.githubusercontent.com/u/462844?s=400" name="twitter:image:src" />
<meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars1.githubusercontent.com/u/462844?s=400" property="og:image" /><meta content="RobTillaart/Arduino" property="og:title" /><meta content="https://github.com/RobTillaart/Arduino" property="og:url" /><meta content="Arduino - libs and code" property="og:description" />

    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    

    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="5E3396DA:3D66:D06B49E:538C8584" name="octolytics-dimension-request_id" />
    

    
    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico" />


    <meta content="authenticity_token" name="csrf-param" />
<meta content="hsgmdNQTIplXrnmbdDRYNBF/QLzI6ItUQ8FvKdUFwsQkVJak0Ex7FNJieTiD865+9I0TQQ646A7wiLu3Gsmq2A==" name="csrf-token" />

    <link href="https://assets-cdn.github.com/assets/github-382e2d2394fe36287509f9d88e1aae81a78b71b2.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://assets-cdn.github.com/assets/github2-25377a98236bf71476a441d0d6b82e33efe66834.css" media="all" rel="stylesheet" type="text/css" />
    


    <meta http-equiv="x-pjax-version" content="11ce9eeae337a80af63fa36c715d84f5">

      
  <meta name="description" content="Arduino - libs and code" />

  <meta content="462844" name="octolytics-dimension-user_id" /><meta content="RobTillaart" name="octolytics-dimension-user_login" /><meta content="2544179" name="octolytics-dimension-repository_id" /><meta content="RobTillaart/Arduino" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="2544179" name="octolytics-dimension-repository_network_root_id" /><meta content="RobTillaart/Arduino" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/RobTillaart/Arduino/commits/master.atom" rel="alternate" title="Recent Commits to Arduino:master" type="application/atom+xml" />

  </head>


  <body class="logged_out  env-production windows vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      
      


      
      <div class="header header-logged-out">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions">
        <a class="button primary" href="/join">Sign up</a>
      <a class="button signin" href="/login?return_to=%2FRobTillaart%2FArduino%2Fblob%2Fmaster%2Flibraries%2FDHTlib%2Fexamples%2Fdht_test1%2Fdht_test1.ino">Sign in</a>
    </div>

    <div class="command-bar js-command-bar  in-repository">

      <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
        <li class="features"><a href="/features">Features</a></li>
          <li class="enterprise"><a href="https://enterprise.github.com/">Enterprise</a></li>
          <li class="blog"><a href="/blog">Blog</a></li>
      </ul>
        <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<div class="commandbar">
  <span class="message"></span>
  <input type="text" data-hotkey="s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    
      data-repo="RobTillaart/Arduino"
      data-branch="master"
      data-sha="55df5e6a2832af69d4abc6ac442a577ec56a51f0"
  >
  <div class="display hidden"></div>
</div>

    <input type="hidden" name="nwo" value="RobTillaart/Arduino" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target" role="button" aria-haspopup="true">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container" aria-hidden="true">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="help tooltipped tooltipped-s" aria-label="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
    </div>

  </div>
</div>



      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">


  <li>
    <a href="/login?return_to=%2FRobTillaart%2FArduino"
    class="minibutton with-count star-button tooltipped tooltipped-n"
    aria-label="You must be signed in to star a repository" rel="nofollow">
    <span class="octicon octicon-star"></span>Star
  </a>

    <a class="social-count js-social-count" href="/RobTillaart/Arduino/stargazers">
      45
    </a>

  </li>

    <li>
      <a href="/login?return_to=%2FRobTillaart%2FArduino"
        class="minibutton with-count js-toggler-target fork-button tooltipped tooltipped-n"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-repo-forked"></span>Fork
      </a>
      <a href="/RobTillaart/Arduino/network" class="social-count">
        138
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="/RobTillaart" class="url fn" itemprop="url" rel="author"><span itemprop="title">RobTillaart</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/RobTillaart/Arduino" class="js-current-repository js-repo-home-link">Arduino</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline js-new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            

<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped tooltipped-w" aria-label="Code">
        <a href="/RobTillaart/Arduino" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /RobTillaart/Arduino">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped tooltipped-w" aria-label="Issues">
          <a href="/RobTillaart/Arduino/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g i" data-selected-links="repo_issues /RobTillaart/Arduino/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>0</span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped tooltipped-w" aria-label="Pull Requests">
        <a href="/RobTillaart/Arduino/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g p" data-selected-links="repo_pulls /RobTillaart/Arduino/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>0</span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped tooltipped-w" aria-label="Pulse">
        <a href="/RobTillaart/Arduino/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /RobTillaart/Arduino/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Graphs">
        <a href="/RobTillaart/Arduino/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /RobTillaart/Arduino/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Network">
        <a href="/RobTillaart/Arduino/network" aria-label="Network" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-selected-links="repo_network /RobTillaart/Arduino/network">
          <span class="octicon octicon-repo-forked"></span> <span class="full-word">Network</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

              <div class="only-with-full-nav">
                

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/RobTillaart/Arduino.git" readonly="readonly">
    <span class="url-box-clippy">
    <button aria-label="copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/RobTillaart/Arduino.git" data-copied-hint="copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/RobTillaart/Arduino" readonly="readonly">
    <span class="url-box-clippy">
    <button aria-label="copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/RobTillaart/Arduino" data-copied-hint="copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <span class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <a href="https://help.github.com/articles/which-remote-url-should-i-use">
    <span class="octicon octicon-question"></span>
    </a>
  </span>
</p>


  <a href="http://windows.github.com" class="minibutton sidebar-button" title="Save RobTillaart/Arduino to your computer and use it in GitHub Desktop." aria-label="Save RobTillaart/Arduino to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>

                <a href="/RobTillaart/Arduino/archive/master.zip"
                   class="minibutton sidebar-button"
                   aria-label="Download RobTillaart/Arduino as a zip file"
                   title="Download RobTillaart/Arduino as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<a href="/RobTillaart/Arduino/blob/1f2314cdbf18a09d847796862685fd5943708ea1/libraries/DHTlib/examples/dht_test1/dht_test1.ino" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:9c33d48dc613de8209e6608af3cee65f -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/RobTillaart/Arduino/find/master" data-pjax data-hotkey="t" class="js-show-file-finder" style="display:none">Show File Finder</a>

<div class="file-navigation">
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/RobTillaart/Arduino/blob/master/libraries/DHTlib/examples/dht_test1/dht_test1.ino"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/RobTillaart/Arduino" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">Arduino</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/RobTillaart/Arduino/tree/master/libraries" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">libraries</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/RobTillaart/Arduino/tree/master/libraries/DHTlib" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">DHTlib</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/RobTillaart/Arduino/tree/master/libraries/DHTlib/examples" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">examples</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/RobTillaart/Arduino/tree/master/libraries/DHTlib/examples/dht_test1" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">dht_test1</span></a></span><span class="separator"> / </span><strong class="final-path">dht_test1.ino</strong> <button aria-label="copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="libraries/DHTlib/examples/dht_test1/dht_test1.ino" data-copied-hint="copied!" type="button"><span class="octicon octicon-clippy"></span></button>
  </div>
</div>


  <div class="commit file-history-tease">
      <img alt="Rob Tillaart" class="main-avatar js-avatar" data-user="462844" height="24" src="https://avatars2.githubusercontent.com/u/462844?s=140" width="24" />
      <span class="author"><a href="/RobTillaart" rel="author">RobTillaart</a></span>
      <time datetime="2013-09-29T12:35:28+02:00" is="relative-time">September 29, 2013</time>
      <div class="commit-title">
          <a href="/RobTillaart/Arduino/commit/c7c5bdf661e98bb61688d1a4b2f4162a11ea146e" class="message" data-pjax="true" title="+ finalized support for DHT21
+ made TIMEOUT depends on clock ==&gt; F_CPU">+ finalized support for DHT21</a>
      </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>1</strong>  contributor</a></p>
      
    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img alt="Rob Tillaart" class=" js-avatar" data-user="462844" height="24" src="https://avatars2.githubusercontent.com/u/462844?s=140" width="24" />
            <a href="/RobTillaart">RobTillaart</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file-box">
  <div class="file">
    <div class="meta clearfix">
      <div class="info file-name">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
        <span class="meta-divider"></span>
          <span>109 lines (98 sloc)</span>
          <span class="meta-divider"></span>
        <span>2.111 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
            <a class="minibutton tooltipped tooltipped-w"
               href="http://windows.github.com" aria-label="Open this file in GitHub for Windows">
                <span class="octicon octicon-device-desktop"></span> Open
            </a>
              <a class="minibutton disabled tooltipped tooltipped-w" href="#"
                 aria-label="You must be signed in to make or propose changes">Edit</a>
          <a href="/RobTillaart/Arduino/raw/master/libraries/DHTlib/examples/dht_test1/dht_test1.ino" class="button minibutton " id="raw-url">Raw</a>
            <a href="/RobTillaart/Arduino/blame/master/libraries/DHTlib/examples/dht_test1/dht_test1.ino" class="button minibutton js-update-url-with-hash">Blame</a>
          <a href="/RobTillaart/Arduino/commits/master/libraries/DHTlib/examples/dht_test1/dht_test1.ino" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
          <a class="minibutton danger disabled empty-icon tooltipped tooltipped-w" href="#"
             aria-label="You must be signed in to make or propose changes">
          Delete
        </a>
      </div><!-- /.actions -->
    </div>
      
  <div class="blob-wrapper data type-arduino js-blob-data">
       <table class="file-code file-diff tab-size-8">
         <tr class="file-code-line">
           <td class="blob-line-nums">
             <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>

           </td>
           <td class="blob-line-code"><div class="code-body highlight"><pre><div class='line' id='LC1'><span class="c1">//</span></div><div class='line' id='LC2'><span class="c1">//    FILE: dht_test.ino</span></div><div class='line' id='LC3'><span class="c1">//  AUTHOR: Rob Tillaart</span></div><div class='line' id='LC4'><span class="c1">// VERSION: 0.1.07</span></div><div class='line' id='LC5'><span class="c1">// PURPOSE: DHT Temperature &amp; Humidity Sensor library for Arduino</span></div><div class='line' id='LC6'><span class="c1">//     URL: http://arduino.cc/playground/Main/DHTLib</span></div><div class='line' id='LC7'><span class="c1">//</span></div><div class='line' id='LC8'><span class="c1">// Released to the public domain</span></div><div class='line' id='LC9'><span class="c1">//</span></div><div class='line' id='LC10'><br/></div><div class='line' id='LC11'><span class="cp">#include &lt;dht.h&gt;</span></div><div class='line' id='LC12'><br/></div><div class='line' id='LC13'><span class="n">dht</span> <span class="n">DHT</span><span class="p">;</span></div><div class='line' id='LC14'><br/></div><div class='line' id='LC15'><span class="cp">#define DHT11_PIN 4</span></div><div class='line' id='LC16'><span class="cp">#define DHT21_PIN 5</span></div><div class='line' id='LC17'><span class="cp">#define DHT22_PIN 6</span></div><div class='line' id='LC18'><br/></div><div class='line' id='LC19'><span class="kt">void</span> <span class="nf">setup</span><span class="p">()</span></div><div class='line' id='LC20'><span class="p">{</span></div><div class='line' id='LC21'>&nbsp;&nbsp;<span class="n">Serial</span><span class="p">.</span><span class="n">begin</span><span class="p">(</span><span class="mi">115200</span><span class="p">);</span></div><div class='line' id='LC22'>&nbsp;&nbsp;<span class="n">Serial</span><span class="p">.</span><span class="n">println</span><span class="p">(</span><span class="s">&quot;DHT TEST PROGRAM &quot;</span><span class="p">);</span></div><div class='line' id='LC23'>&nbsp;&nbsp;<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="s">&quot;LIBRARY VERSION: &quot;</span><span class="p">);</span></div><div class='line' id='LC24'>&nbsp;&nbsp;<span class="n">Serial</span><span class="p">.</span><span class="n">println</span><span class="p">(</span><span class="n">DHT_LIB_VERSION</span><span class="p">);</span></div><div class='line' id='LC25'>&nbsp;&nbsp;<span class="n">Serial</span><span class="p">.</span><span class="n">println</span><span class="p">();</span></div><div class='line' id='LC26'>&nbsp;&nbsp;<span class="n">Serial</span><span class="p">.</span><span class="n">println</span><span class="p">(</span><span class="s">&quot;Type,</span><span class="se">\t</span><span class="s">status,</span><span class="se">\t</span><span class="s">Humidity (%),</span><span class="se">\t</span><span class="s">Temperature (C)&quot;</span><span class="p">);</span></div><div class='line' id='LC27'><span class="p">}</span></div><div class='line' id='LC28'><br/></div><div class='line' id='LC29'><span class="kt">void</span> <span class="nf">loop</span><span class="p">()</span></div><div class='line' id='LC30'><span class="p">{</span></div><div class='line' id='LC31'>&nbsp;&nbsp;<span class="c1">// READ DATA</span></div><div class='line' id='LC32'>&nbsp;&nbsp;<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="s">&quot;DHT22, </span><span class="se">\t</span><span class="s">&quot;</span><span class="p">);</span></div><div class='line' id='LC33'>&nbsp;&nbsp;<span class="kt">int</span> <span class="n">chk</span> <span class="o">=</span> <span class="n">DHT</span><span class="p">.</span><span class="n">read22</span><span class="p">(</span><span class="n">DHT22_PIN</span><span class="p">);</span></div><div class='line' id='LC34'>&nbsp;&nbsp;<span class="k">switch</span> <span class="p">(</span><span class="n">chk</span><span class="p">)</span></div><div class='line' id='LC35'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC36'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="n">DHTLIB_OK</span>:  </div><div class='line' id='LC37'>		<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="s">&quot;OK,</span><span class="se">\t</span><span class="s">&quot;</span><span class="p">);</span> </div><div class='line' id='LC38'>		<span class="k">break</span><span class="p">;</span></div><div class='line' id='LC39'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="n">DHTLIB_ERROR_CHECKSUM</span>: </div><div class='line' id='LC40'>		<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="s">&quot;Checksum error,</span><span class="se">\t</span><span class="s">&quot;</span><span class="p">);</span> </div><div class='line' id='LC41'>		<span class="k">break</span><span class="p">;</span></div><div class='line' id='LC42'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="n">DHTLIB_ERROR_TIMEOUT</span>: </div><div class='line' id='LC43'>		<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="s">&quot;Time out error,</span><span class="se">\t</span><span class="s">&quot;</span><span class="p">);</span> </div><div class='line' id='LC44'>		<span class="k">break</span><span class="p">;</span></div><div class='line' id='LC45'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nl">default:</span> </div><div class='line' id='LC46'>		<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="s">&quot;Unknown error,</span><span class="se">\t</span><span class="s">&quot;</span><span class="p">);</span> </div><div class='line' id='LC47'>		<span class="k">break</span><span class="p">;</span></div><div class='line' id='LC48'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC49'>&nbsp;&nbsp;<span class="c1">// DISPLAY DATA</span></div><div class='line' id='LC50'>&nbsp;&nbsp;<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="n">DHT</span><span class="p">.</span><span class="n">humidity</span><span class="p">,</span> <span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC51'>&nbsp;&nbsp;<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="s">&quot;,</span><span class="se">\t</span><span class="s">&quot;</span><span class="p">);</span></div><div class='line' id='LC52'>&nbsp;&nbsp;<span class="n">Serial</span><span class="p">.</span><span class="n">println</span><span class="p">(</span><span class="n">DHT</span><span class="p">.</span><span class="n">temperature</span><span class="p">,</span> <span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC53'><br/></div><div class='line' id='LC54'>&nbsp;&nbsp;<span class="n">delay</span><span class="p">(</span><span class="mi">1000</span><span class="p">);</span></div><div class='line' id='LC55'><br/></div><div class='line' id='LC56'>&nbsp;&nbsp;</div><div class='line' id='LC57'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">// READ DATA</span></div><div class='line' id='LC58'>&nbsp;&nbsp;<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="s">&quot;DHT21, </span><span class="se">\t</span><span class="s">&quot;</span><span class="p">);</span></div><div class='line' id='LC59'>&nbsp;&nbsp;<span class="n">chk</span> <span class="o">=</span> <span class="n">DHT</span><span class="p">.</span><span class="n">read21</span><span class="p">(</span><span class="n">DHT21_PIN</span><span class="p">);</span></div><div class='line' id='LC60'>&nbsp;&nbsp;<span class="k">switch</span> <span class="p">(</span><span class="n">chk</span><span class="p">)</span></div><div class='line' id='LC61'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC62'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="n">DHTLIB_OK</span>:  </div><div class='line' id='LC63'>		<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="s">&quot;OK,</span><span class="se">\t</span><span class="s">&quot;</span><span class="p">);</span> </div><div class='line' id='LC64'>		<span class="k">break</span><span class="p">;</span></div><div class='line' id='LC65'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="n">DHTLIB_ERROR_CHECKSUM</span>: </div><div class='line' id='LC66'>		<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="s">&quot;Checksum error,</span><span class="se">\t</span><span class="s">&quot;</span><span class="p">);</span> </div><div class='line' id='LC67'>		<span class="k">break</span><span class="p">;</span></div><div class='line' id='LC68'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="n">DHTLIB_ERROR_TIMEOUT</span>: </div><div class='line' id='LC69'>		<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="s">&quot;Time out error,</span><span class="se">\t</span><span class="s">&quot;</span><span class="p">);</span> </div><div class='line' id='LC70'>		<span class="k">break</span><span class="p">;</span></div><div class='line' id='LC71'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nl">default:</span> </div><div class='line' id='LC72'>		<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="s">&quot;Unknown error,</span><span class="se">\t</span><span class="s">&quot;</span><span class="p">);</span> </div><div class='line' id='LC73'>		<span class="k">break</span><span class="p">;</span></div><div class='line' id='LC74'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC75'>&nbsp;&nbsp;<span class="c1">// DISPLAY DATA</span></div><div class='line' id='LC76'>&nbsp;&nbsp;<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="n">DHT</span><span class="p">.</span><span class="n">humidity</span><span class="p">,</span> <span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC77'>&nbsp;&nbsp;<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="s">&quot;,</span><span class="se">\t</span><span class="s">&quot;</span><span class="p">);</span></div><div class='line' id='LC78'>&nbsp;&nbsp;<span class="n">Serial</span><span class="p">.</span><span class="n">println</span><span class="p">(</span><span class="n">DHT</span><span class="p">.</span><span class="n">temperature</span><span class="p">,</span> <span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC79'><br/></div><div class='line' id='LC80'>&nbsp;&nbsp;<span class="n">delay</span><span class="p">(</span><span class="mi">1000</span><span class="p">);</span></div><div class='line' id='LC81'><br/></div><div class='line' id='LC82'>&nbsp;&nbsp;<span class="c1">// READ DATA</span></div><div class='line' id='LC83'>&nbsp;&nbsp;<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="s">&quot;DHT11, </span><span class="se">\t</span><span class="s">&quot;</span><span class="p">);</span></div><div class='line' id='LC84'>&nbsp;&nbsp;<span class="n">chk</span> <span class="o">=</span> <span class="n">DHT</span><span class="p">.</span><span class="n">read11</span><span class="p">(</span><span class="n">DHT11_PIN</span><span class="p">);</span></div><div class='line' id='LC85'>&nbsp;&nbsp;<span class="k">switch</span> <span class="p">(</span><span class="n">chk</span><span class="p">)</span></div><div class='line' id='LC86'>&nbsp;&nbsp;<span class="p">{</span></div><div class='line' id='LC87'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="n">DHTLIB_OK</span>:  </div><div class='line' id='LC88'>		<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="s">&quot;OK,</span><span class="se">\t</span><span class="s">&quot;</span><span class="p">);</span> </div><div class='line' id='LC89'>		<span class="k">break</span><span class="p">;</span></div><div class='line' id='LC90'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="n">DHTLIB_ERROR_CHECKSUM</span>: </div><div class='line' id='LC91'>		<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="s">&quot;Checksum error,</span><span class="se">\t</span><span class="s">&quot;</span><span class="p">);</span> </div><div class='line' id='LC92'>		<span class="k">break</span><span class="p">;</span></div><div class='line' id='LC93'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="n">DHTLIB_ERROR_TIMEOUT</span>: </div><div class='line' id='LC94'>		<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="s">&quot;Time out error,</span><span class="se">\t</span><span class="s">&quot;</span><span class="p">);</span> </div><div class='line' id='LC95'>		<span class="k">break</span><span class="p">;</span></div><div class='line' id='LC96'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nl">default:</span> </div><div class='line' id='LC97'>		<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="s">&quot;Unknown error,</span><span class="se">\t</span><span class="s">&quot;</span><span class="p">);</span> </div><div class='line' id='LC98'>		<span class="k">break</span><span class="p">;</span></div><div class='line' id='LC99'>&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC100'>&nbsp;<span class="c1">// DISPLAY DATA</span></div><div class='line' id='LC101'>&nbsp;&nbsp;<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="n">DHT</span><span class="p">.</span><span class="n">humidity</span><span class="p">,</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC102'>&nbsp;&nbsp;<span class="n">Serial</span><span class="p">.</span><span class="n">print</span><span class="p">(</span><span class="s">&quot;,</span><span class="se">\t</span><span class="s">&quot;</span><span class="p">);</span></div><div class='line' id='LC103'>&nbsp;&nbsp;<span class="n">Serial</span><span class="p">.</span><span class="n">println</span><span class="p">(</span><span class="n">DHT</span><span class="p">.</span><span class="n">temperature</span><span class="p">,</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC104'><br/></div><div class='line' id='LC105'>&nbsp;&nbsp;<span class="n">delay</span><span class="p">(</span><span class="mi">1000</span><span class="p">);</span></div><div class='line' id='LC106'><span class="p">}</span></div><div class='line' id='LC107'><span class="c1">//</span></div><div class='line' id='LC108'><span class="c1">// END OF FILE</span></div><div class='line' id='LC109'><span class="c1">//</span></div></pre></div></td>
         </tr>
       </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.02847s from github-fe124-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x close js-ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-31cf39cf6a61d4c498cba6c0e9c100fb2b06b2f8.js" type="text/javascript"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-f46fb267b17abef29428ce8d483896a272c7a5a3.js" type="text/javascript"></script>
      
      
        <script async src="https://www.google-analytics.com/analytics.js"></script>
  </body>
</html>

