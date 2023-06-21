# 处理管道对象

# 一旦使用了begin等块定义，函数体就必须放在块内部
function PrintPipelineObject {
  begin {
    Write-Output 'Before pipeline.'
  }
  process {
    Write-Output "$_ in pipeline"
  }
  end {
    Write-Output 'After pipeline.'
  }
}

1, 2, 3 | PrintPipelineObject
