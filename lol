import discord
from discord.ext import commands
import os, random

bot = commands.Bot(command_prefix='$', intents=discord.Intents.default())

@bot.event
async def on_ready():
    print('Я работаю')

@bot.command()
async def meme(ctx):
    img_name = random.choice(os.listdir('images2'))
    with open(f'images2/{img_name}', 'rb') as f:
        picture = discord.File(f)
    await ctx.send(file=picture)

@bot.command()
async def mem(ctx):
    img_name = random.choise(os.listdir('images'))
    with open(f'images/{img_name}', 'rb') as f:
        picture = discord.File(f)
    await ctx.send(file=picture)

bot.run('MTE1OTg3NzYyMTEyMzkyNDE3OQ.GTijeJ.1lx2N35TWNtpAPD80gnCOifCaXWn6KzIl_CEMU')
