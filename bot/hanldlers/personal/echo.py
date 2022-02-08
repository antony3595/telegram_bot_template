from aiogram import types

from bot.bot import dp


@dp.message_handler(commands=['help'])
async def process_help_command(message: types.Message):
    await message.reply("Напиши мне что-нибудь, и я отправлю этот текст тебе в ответ!")


@dp.message_handler(chat_type=types.ChatType.PRIVATE)
async def echo_message(msg: types.Message):
    await msg.bot.send_message(msg.from_user.id, msg.text)
