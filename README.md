# Numerical-Integration
A bunch gifs illustrating different numerical integration schemes that I created to teach an elementary numerical methods class. These gifs might be useful for a quick demonstration.

## Dependencies
Requires **imageio** to create the GIF files. Install using
```bash
pip install requirements.txt
```
## Run

### Run Matlab files
The .m files will show an animation of the integration methods and generate the images to create the GIF files.

### Create the GIFs using Python
```bash
python create_gifs.py
```
## Example GIFs

<div style="display:inline-block;">
    <div style="float:left margin-right:5px;">
      <p style="text-align:center;"> Mid Point Rule</p>
      <img src="Mid Point Rule.gif" width="400"/>
    </div>
    <div style="float:left margin-right:5px;">
      <p style="text-align:center;">Trapezoid Rule</p>
      <img class="middle-img" src="Trapezoid Rule.gif" width="400"/>
    </div>
    <div style="float:left margin-right:5px;">
      <p style="text-align:center;">Simpsons Rule</p>
      <img src="Simpsons Rule.gif" width="400"/>
    </div>
</div>
