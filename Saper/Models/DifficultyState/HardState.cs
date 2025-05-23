﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Saper.Models.DifficultyState
{
    public class HardState : IDifficultyState
    {
        private readonly GameManager _game;

        private const int MIN_MINES = 15;

        public HardState(GameManager game)
        {
            _game = game;
        }

        public void GenerateMinefield()
        {
            int rows = _game.Rows;
            int cols = _game.Columns;
            int percent = rows * cols / 4;
            int mines = Math.Max(MIN_MINES, percent); 

            _game.Minefield.InitializeField(rows, cols, mines);
        }

        public void UpdateScore(CellType cellType)
        {
            int score = cellType switch
            {
                CellType.Zero => 0,
                CellType.Five or CellType.Six => 15,
                CellType.Seven or CellType.Eight => 25,
                _ => 10
            };

            _game.Score += score;
        }

        public void SetHints()
        {
            _game.SafeClick = 0;
        }
    }
}
