const mongoose = require('mongoose')

const workoutSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true
  },
  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  },
  exercises: [{
    type: mongoose.Schema.Types.ObjectId,
    ref: 'Exercise'
  }]
}, {
  timestamps: true
})

module.exports = mongoose.model('Workout', workoutSchema)
