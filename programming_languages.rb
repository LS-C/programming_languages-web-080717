require 'pry'

def languages
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
  }
}
end

def oo_lang
  languages[:oo]
end

def f_lang
  languages[:functional]
end

def oo_style
  a=oo_lang
  a.values.map {|language| language[:style]=[:oo] }
  a
end

def add_f_style
  b=f_lang
  b.values.map {|language| language[:style]=[:functional] }
  b
end

def merge_hash
  c=oo_style.merge(add_f_style)
  c[:javascript][:style]=[:oo, :functional]
  c
end


def reformat_languages(languages)
  merge_hash
end
