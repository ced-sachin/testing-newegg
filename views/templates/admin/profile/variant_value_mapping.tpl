{if isset($variantValues)}
{$count = 0} 
{$var_count = 0} 
    {foreach $variantValues as $req_attr}
    <div class="row">
        <div class="col-md-6">
            <input type="text" readonly name="newegg_var_attributes[{$count}][map][{$var_count}][newegg]" class="req_attr" value="{$req_attr}" id="var_{$var_count}">               
        </div>
        <div class="col-md-6">
            <select name='newegg_var_attributes[{$count}][map][{$var_count}][value]' >
                <option value="">--please select--</option>
                <option value="Grey">Grey</option>
                <option value="Taupe">Taupe</option>
                <option value="Belge">Belge</option>
                <option value="White">White</option>
                <option value="Off White">Off White</option>
                <option value="Red">Red</option>
                <option value="Black">Black</option>
                <option value="Camel">Camel</option>
                <option value="Orange">Orange</option>
                <option value="Blue">Blue</option>
                <option value="Green">Green</option>
                <option value="Yellow">Yellow</option>
                <option value="Brown">Brown</option>
                <option value="Pink">Pink</option>
            </select>
        </div>
    </div>       
    {$var_count = $var_count+1}         
    {/foreach}  
    {$count = $count+1}    
{/if}