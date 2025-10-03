import subprocess
import datetime
import sys

def run_command(command):
    """执行命令并返回结果"""
    try:
        result = subprocess.run(
            command,
            check=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            shell=True  # 在Windows上需要这个参数
        )
        return True, result.stdout
    except subprocess.CalledProcessError as e:
        return False, e.stderr

def main():
    print("===== 开始Git同步流程 =====")
    
    # 拉取仓库
    print("\n正在执行: git pull origin main")
    success, output = run_command("git pull origin main")
    if not success:
        print(f"拉取失败: {output}")
        sys.exit(1)
    print("拉取成功")
    
    # 获取当前日期
    current_date = datetime.datetime.now().strftime("%Y-%m-%d")
    print(f"\n当前日期: {current_date}")
    
    # 交互式输入评论
    user_comment = input("请输入提交评论: ")
    
    # 组合评论内容（用户输入 + 日期）
    commit_message = f"{user_comment} [{current_date}]"
    
    # 执行提交操作
    print("\n正在执行: git add .")
    success, output = run_command("git add .")
    if not success:
        print(f"添加文件失败: {output}")
        sys.exit(1)
    
    print(f"\n正在执行: git commit -m \"{commit_message}\"")
    success, output = run_command(f'git commit -m "{commit_message}"')
    if not success:
        print(f"提交失败: {output}")
        sys.exit(1)
    
    print("\n正在执行: git push -u origin main")
    success, output = run_command("git push -u origin main")
    if not success:
        print(f"推送失败: {output}")
        sys.exit(1)
    
    print("\n===== Git同步流程完成 =====")

if __name__ == "__main__":
    main()
