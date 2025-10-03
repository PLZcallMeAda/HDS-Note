import subprocess
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
            shell=True  # 跨平台支持
        )
        return True, result.stdout
    except subprocess.CalledProcessError as e:
        return False, e.stderr

def main():
    print("===== 开始Git拉取流程 =====")
    
    # 拉取仓库
    print("正在执行: git pull origin main")
    success, output = run_command("git pull origin main")
    if not success:
        print(f"拉取失败: {output}")
        sys.exit(1)
    
    print("拉取成功")
    print("===== Git拉取流程完成 =====")

if __name__ == "__main__":
    main()
    