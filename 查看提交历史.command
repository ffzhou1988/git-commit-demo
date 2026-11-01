#!/bin/bash
cd "$(dirname "$0")" || exit 1
clear

echo ""
echo "  ┌────────────────────────────────────────────────────┐"
echo "  │           Git 提交历史 · 查看指南                    │"
echo "  └────────────────────────────────────────────────────┘"
echo ""

echo "  ▸ 提交历史（含改动文件统计）"
echo "  ────────────────────────────────────────────"
git log --graph --oneline --stat --color=always
echo ""

echo "  ▸ 单个提交详情：feat: 再加一句 Git 很好用"
echo "  ────────────────────────────────────────────"
git show --color=always 9ab9746
echo ""

echo "  ▸ 各提交改了哪些行"
echo "  ────────────────────────────────────────────"
git log --patch --color=always -2
echo ""

echo "  ┌────────────────────────────────────────────────────┐"
echo "  │  自己试试看：                                        │"
echo "  │    git log --oneline          简洁历史              │"
echo "  │    git show <commit-id>       看某个提交            │"
echo "  │    git status                 看当前改动状态        │"
echo "  │    git diff                   看未提交的差异        │"
echo "  │                                                   │"
echo "  │  想退出演示目录：输入 cd ~ 然后回车                   │"
echo "  └────────────────────────────────────────────────────┘"
echo ""
read -r -p "  按回车键关闭此窗口..."
