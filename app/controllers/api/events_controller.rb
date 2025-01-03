class Api::EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  def index
    @events = Event.all
    render json: @events
  end

  def show
    render json: @event
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      render json: @event, status: :created
    else
      render json: @event, status: :unprocessable_entity
    end
  end

  def update
    if @event.update(event_params)
      render json: @event, status: :ok
    else
      render json: @event, status: :unprocessable_entity
    end
  end

  def destroy
    @event.destroy
  end

  private
  def event_params
    params.expect(event: [:id, :event_type, :event_date, :title, :speaker, :host, :published])
  end
end
