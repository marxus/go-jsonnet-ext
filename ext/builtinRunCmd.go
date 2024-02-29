package jsonnet

import (
	"bytes"
	"os/exec"
	"strings"
)

var evaluatedCmd = map[string]valueString{}

func builtinRunCmd(i *interpreter, arrv value) (value, error) {
	arr, err := i.getArray(arrv)
	if err != nil {
		return nil, err
	}

	len := arr.length()
	if len == 0 {
		return nil, i.Error("Expected an array with at least one value.")
	}

	vals := make([]string, len)
	for _i, elem := range arr.elements {
		val, err := i.evaluateString(elem)
		if err != nil {
			return nil, err
		}
		vals[_i] = val.getGoString()
	}

	key := strings.Join(vals, "")
	if val, ok := evaluatedCmd[key]; ok {
		return val, nil
	}

	cmd := exec.Command(vals[0], vals[1:]...)
	var stdout, stderr bytes.Buffer
	cmd.Stdout = &stdout
	cmd.Stderr = &stderr
	if cmd.Run() != nil {
		return nil, i.Error(stderr.String())
	}

	val := makeValueString(stdout.String())
	evaluatedCmd[key] = val
	return val, nil
}
