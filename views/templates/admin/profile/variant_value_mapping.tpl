{if isset($variantValues)}
{$count = 0}  
    {foreach $variantValues as $req_attr}
    <div class="row">
        <div class="col-md-6">
            <input type="text" readonly name="newegg_var_attributes[{$count}][newegg]" class="req_attr" value="{$req_attr}" id="var_{$count}">               
        </div>
        <div class="col-md-6">
            <select name='newegg_var_attributes[{$count}][value]' >
                <option value="">--please select--</option>
                <option value="Red">Red</option>
                <option value="Green">Green</option>
                <option value="Blue">Blue</option>
                <option value="Yellow">Yellow</option>
                <option value="Purple">Purple</option>
                <option value="Black">Black</option>
                <option value="Blue">Blue</option>
                <option value="Brown">Brown</option>
                <option value="Pink">Pink</option>
                <option value="Violet">Violet</option>
                <option value="White">White</option>
                <option value="Golden">Golden</option>
            </select>
        </div>
    </div>
    {$count = $count+1}                  
    {/foreach}
{/if}