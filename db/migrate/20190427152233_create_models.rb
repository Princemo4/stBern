class CreateModels < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      t.string      :name

      t.timestamps
    end

    create_table :patients do |t|
      t.string      :first_name
      t.string      :last_name
      t.string      :middle_name
      t.datetime    :dob
      t.string      :mr
      t.integer     :gender
      t.references  :facility

      t.timestamps
    end

    create_table :admissions do |t|
      t.datetime    :moment
      t.references  :patient, foreign_key: true

      t.timestamps
    end

    create_table :medical_diagnoses do |t|
      t.string      :coding_system
      t.string      :code
      t.text        :description
      t.string      :type
      t.references  :diagnosable, polymorphic: true, index: true

      t.timestamps
    end

    create_table :symptoms do |t|
      t.text        :description
      t.references  :admission, foreign_key: true

      t.timestamps
    end

    create_table :observations do |t|
      t.text        :description
      t.datetime    :moment
      t.references  :admission, foreign_key: true

      t.timestamps
    end

    create_table :allergies do |t|
      t.text        :description
      t.references  :patient, foreign_key: true

      t.timestamps
    end

    create_table :medication_orders do |t|
      t.string      :name
      t.decimal     :dosage
      t.text        :necessity
      t.integer     :mass_unit
      t.integer     :medication_route
      t.references  :patient, foreign_key: true

      t.timestamps
    end

    create_table :order_frequencies do |t|
      t.string      :value
      t.integer     :frequency_unit
      t.references  :medication_order

      t.timestamps
    end

    create_table :diagnostic_procedures do |t|
      t.text        :description
      t.datetime    :moment
      t.references  :patient, foreign_key: true

      t.timestamps
    end
  end
end
