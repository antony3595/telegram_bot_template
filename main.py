if __name__ == '__main__':
    from aiogram import executor
    from bot.hanldlers import dp

    executor.start_polling(dp)
