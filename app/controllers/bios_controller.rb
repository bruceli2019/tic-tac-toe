class BiosController < ApplicationController
  def index
    @bios = Bio.all

    render("bio_templates/index.html.erb")
  end

  def show
    @bio = Bio.find(params.fetch("id_to_display"))

    render("bio_templates/show.html.erb")
  end

  def new_form
    @bio = Bio.new

    render("bio_templates/new_form.html.erb")
  end

  def create_row
    @bio = Bio.new

    @bio.description = params.fetch("description")
    @bio.user_id = params.fetch("user_id")

    if @bio.valid?
      @bio.save

      redirect_back(:fallback_location => "/bios", :notice => "Bio created successfully.")
    else
      render("bio_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @bio = Bio.find(params.fetch("prefill_with_id"))

    render("bio_templates/edit_form.html.erb")
  end

  def update_row
    @bio = Bio.find(params.fetch("id_to_modify"))

    @bio.description = params.fetch("description")
    @bio.user_id = params.fetch("user_id")

    if @bio.valid?
      @bio.save

      redirect_to("/bios/#{@bio.id}", :notice => "Bio updated successfully.")
    else
      render("bio_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @bio = Bio.find(params.fetch("id_to_remove"))

    @bio.destroy

    redirect_to("/bios", :notice => "Bio deleted successfully.")
  end
end
