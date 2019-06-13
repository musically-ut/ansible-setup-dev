# Source this file to set up miniconda environment.
if [[ "$VIRTUAL_ENV" != "" ]]
then
  deactivate
fi

export PATH="${HOME}/miniconda3/bin:$PATH"
export PYTHONPATH=
