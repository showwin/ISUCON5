"------------------------
"検索関係
"------------------------
"大文字小文字を区別しない
set ignorecase

"検索文字に大文字がある場合は大文字小文字を区別
set smartcase

"インクリメンタルサーチ
set incsearch

"検索マッチテキストをハイライト
set hlsearch

"------------------------
"編集関係
"------------------------
"タブの画面上での幅
set tabstop=2

"連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set softtabstop=2

"自動インデントでずれる幅
set shiftwidth=2

"タブをスペースに展開する/ しない (expandtab:展開する)
set expandtab

"自動的にインデントする (noautoindent:インデントしない)
set autoindent

"新しい行を作ったときに高度な自動インデントを行う
set smartindent

"バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start

"検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない)
set wrapscan

"括弧入力時に対応する括弧を表示 (noshowmatch:表示しない)
set showmatch

"コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu

"テキスト挿入中の自動折り返しを日本語に対応させる
set formatoptions+=mM

"------------------------
"画面表示関係
"------------------------
" タイトルを表示する
set title

" 行番号を表示 (nonumber:非表示)
set number

" ルーラーを表示 (noruler:非表示)
set ruler

" タブや改行を表示 (list:表示)
set nolist

" 長い行を折り返して表示 (nowrap:折り返さない)
set wrap

" モードを表示する
set showmode
