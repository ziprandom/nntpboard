<?php

// TODO wird nur von NNTPConnection benutzt ...
class Header {
	private $name;
	private $value;
	private $charset;
	private $extra = array();

	public function __construct($name, $value, $charset) {
		$this->name = $name;
		$this->value = $value;
		$this->charset = $charset;
	}

	public function getName() {
		return $this->name;
	}

	public function getValue($charset = null) {
		if ($charset != null) {
			return iconv($this->getCharset(), $charset, $this->getValue());
		}
		return $this->value;
	}

	public function getCharset() {
		return $this->charset;
	}

	public function addExtra($name, $value) {
		$this->extra[strtolower($name)] = $value;
	}

	public function hasExtra($name) {
		return isset($this->extra[strtolower($name)]);
	}

	public function getExtra($name, $charset = null) {
		if ($charset != null) {
			return iconv($this->getCharset(), $charset, $this->getExtra($name));
		}
		return $this->extra[strtolower($name)];
	}
}

?>