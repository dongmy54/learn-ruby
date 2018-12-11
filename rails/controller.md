#### Controller 相关
- `render xx and return` 终止action动作

##### rescue_from
> 在controller中捕获并处理异常
```ruby
class xxController < ApplicationController
  rescue_from GameSublevel::MultiSaveError, with: :show_error_flash

  private
    def show_error_flash(exception)          # 默认异常参数
      flash[:warning] = exception.messages
      redirect_to xx_path                    # 可render/redirect_to
    end
end

class GameSublevel < ActiveRecord::Base
  class MutilSaveError < StandardError; end

  # 错误类可放到 Model中
end
```