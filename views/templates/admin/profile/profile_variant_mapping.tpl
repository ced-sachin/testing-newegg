<table class="table table-bordered">
    <thead>
        <tr>
            <td>Newegg Variant Attribute Value</td>
            <td>Variant Attribute Value</td>
        </tr>
    </thead>
 <tbody id="variant-attributes-newegg">
{if isset($profile_var_attribute)}
{$count = 0}  
    <tr>
        <td>           
        <input type="text" readonly name="newegg_var_attributes[{$count}][name]" class="req_attr" value="{$profile_var_attribute[{$count}]['name']}" id="variant_{$count}">               
        </td>
        <td>
            <select name="newegg_var_attributes[{$count}][presta_attr_code]" class="newegg-attr-select" onchange="mapVariant(variant_{$count},'{$category}', '{$subCatId}', this)">
                <option value="">--please select--</option>
                <optgroup value="0" label="Attributes(Variants)">
                    {foreach $storeAttributes as $store_attribute}
                            <option value="attribute-{$store_attribute['id_attribute']|escape:'htmlall':'UTF-8'}">{$store_attribute['name']|escape:'htmlall':'UTF-8'}</option>
                    {/foreach}
                </optgroup>
            </select>
        </td>
        {$count = $count+1} 
    </tr>  
    {$count = 0} 
</tbody>   
</table>
    {foreach $profile_var_attribute as $req_attr}

        {foreach $req_attr['map'] as $key => $map }
    <div class="row">
        <div class="col-md-6">
            <input type="text" readonly name="newegg_var_attributes[{$count}][map][{$key}][newegg]" class="req_attr" value="{$map['newegg']}" id="var_{$count}">               
        </div>
        <div class="col-md-6">
            <select name='newegg_var_attributes[{$count}][map][{$key}][value]' >
                <option value="">--please select--</option>
                <option {if $map['value'] == 'Grey' }
                                    selected="selected"
                                {/if} value="Grey">Grey</option>
                <option {if $map['value'] == 'Taupe' }
                                    selected="selected"
                                {/if} value="Taupe">Taupe</option>
                <option {if $map['value'] == 'Belge' }
                                    selected="selected"
                                {/if} value="Belge">Belge</option>
                <option {if $map['value'] == 'White' }
                                    selected="selected"
                                {/if} value="White">White</option>
                <option {if $map['value'] == 'Off White' }
                                    selected="selected"
                                {/if} value="Off White">Off White</option>
                <option {if $map['value'] == 'Red' }
                                    selected="selected"
                                {/if}  value="Red">Red</option>
                <option {if $map['value'] == 'Black' }
                                    selected="selected"
                                {/if}  value="Black">Black</option>
                <option {if $map['value'] == 'Camel' }
                                    selected="selected"
                                {/if}  value="Camel">Camel</option>
                <option {if $map['value'] == 'Orange' }
                                    selected="selected"
                                {/if}  value="Orange">Orange</option>
                <option {if $map['value'] == 'Blue' }
                                    selected="selected"
                                {/if}  value="Blue">Blue</option>
                <option {if $map['value'] == 'Green' }
                                    selected="selected"
                                {/if}  value="Green">Green</option>
                <option {if $map['value'] == 'Yellow' }
                                    selected="selected"
                                {/if}  value="Yellow">Yellow</option>
                <option {if $map['value'] == 'Brown' }
                                    selected="selected"
                                {/if}  value="Brown">Brown</option>
                <option {if $map['value'] == 'Pink' }
                                    selected="selected"
                                {/if}  value="Pink">Pink</option>
            </select>
        </div>
    </div>
    {/foreach}
    {$count = $count+1}                  
    {/foreach}
{/if}
</tbody>
</table>