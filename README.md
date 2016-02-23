assignment_photos
=================

Cheese!


The bad way's object: 
```
--- !ruby/object:Delayed::PerformableMethod
object: !ruby/object:User
  raw_attributes:
    username: newbla
    email: other@bla.com
    id: '5'
    profile_photo_file_name: 
    profile_photo_content_type: 
    created_at: &1 2016-02-23 17:10:54.558020000 Z
    updated_at: *1
    profile_photo_data: 
    profile_photo_filename: 
    profile_photo_mime_type: 
    profile_photo_file_size: 
    profile_photo_updated_at: 
  attributes: !ruby/object:ActiveRecord::AttributeSet
    attributes: !ruby/object:ActiveRecord::LazyAttributeHash
      types:
        id: &4 !ruby/object:ActiveRecord::ConnectionAdapters::PostgreSQL::OID::Integer
          precision: 
          scale: 
          limit: 
          range: !ruby/range
            begin: -2147483648
            end: 2147483648
            excl: true
        username: &2 !ruby/object:ActiveRecord::Type::String
          precision: 
          scale: 
          limit: 
        email: *2
        created_at: !ruby/object:ActiveRecord::AttributeMethods::TimeZoneConversion::TimeZoneConverter
          subtype: &3 !ruby/object:ActiveRecord::ConnectionAdapters::PostgreSQL::OID::DateTime
            precision: 
            scale: 
            limit: 
        updated_at: !ruby/object:ActiveRecord::AttributeMethods::TimeZoneConversion::TimeZoneConverter
          subtype: *3
        profile_photo_data: &5 !ruby/object:ActiveRecord::ConnectionAdapters::PostgreSQL::OID::Bytea
          precision: 
          scale: 
          limit: 
        profile_photo_filename: *2
        profile_photo_mime_type: *2
        profile_photo_file_name: *2
        profile_photo_content_type: *2
        profile_photo_file_size: *4
        profile_photo_updated_at: !ruby/object:ActiveRecord::AttributeMethods::TimeZoneConversion::TimeZoneConverter
          subtype: *3
      values:
        id: 
        username: 
        email: 
        created_at: 
        updated_at: 
        profile_photo_data: 
        profile_photo_filename: 
        profile_photo_mime_type: 
        profile_photo_file_name: 
        profile_photo_content_type: 
        profile_photo_file_size: 
        profile_photo_updated_at: 
      additional_types: {}
      materialized: true
      delegate_hash:
        username: !ruby/object:ActiveRecord::Attribute::FromUser
          name: username
          value_before_type_cast: newbla
          type: *2
          value: newbla
        email: !ruby/object:ActiveRecord::Attribute::FromUser
          name: email
          value_before_type_cast: other@bla.com
          type: *2
          value: other@bla.com
        id: !ruby/object:ActiveRecord::Attribute::FromUser
          name: id
          value_before_type_cast: '5'
          type: *4
          value: 5
        profile_photo_file_name: !ruby/object:ActiveRecord::Attribute::FromDatabase
          name: profile_photo_file_name
          value_before_type_cast: 
          type: *2
          value: 
        profile_photo_content_type: !ruby/object:ActiveRecord::Attribute::FromDatabase
          name: profile_photo_content_type
          value_before_type_cast: 
          type: *2
          value: 
        created_at: !ruby/object:ActiveRecord::Attribute::FromUser
          name: created_at
          value_before_type_cast: *1
          type: !ruby/object:ActiveRecord::AttributeMethods::TimeZoneConversion::TimeZoneConverter
            subtype: *3
          value: *1
        updated_at: !ruby/object:ActiveRecord::Attribute::FromUser
          name: updated_at
          value_before_type_cast: *1
          type: !ruby/object:ActiveRecord::AttributeMethods::TimeZoneConversion::TimeZoneConverter
            subtype: *3
          value: *1
        profile_photo_data: !ruby/object:ActiveRecord::Attribute::FromDatabase
          name: profile_photo_data
          value_before_type_cast: 
          type: *5
        profile_photo_filename: !ruby/object:ActiveRecord::Attribute::FromDatabase
          name: profile_photo_filename
          value_before_type_cast: 
          type: *2
        profile_photo_mime_type: !ruby/object:ActiveRecord::Attribute::FromDatabase
          name: profile_photo_mime_type
          value_before_type_cast: 
          type: *2
        profile_photo_file_size: !ruby/object:ActiveRecord::Attribute::FromDatabase
          name: profile_photo_file_size
          value_before_type_cast: 
          type: *4
        profile_photo_updated_at: !ruby/object:ActiveRecord::Attribute::FromDatabase
          name: profile_photo_updated_at
          value_before_type_cast: 
          type: !ruby/object:ActiveRecord::AttributeMethods::TimeZoneConversion::TimeZoneConverter
            subtype: *3
  new_record: false
  active_record_yaml_version: 0
method_name: :send_mail_without_delay
args: []
```

The Good Way
```
--- !ruby/object:Delayed::PerformableMethod
object: !ruby/class 'User'
method_name: :send_welcome_email_without_delay
args:
- 6
```