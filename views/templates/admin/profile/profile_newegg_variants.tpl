<b>Select Required Variant Attributes</b>

{if isset($variantAttributes)}
{$count = 0}  
    {foreach $variantAttributes as $req_attr}
    <tr>
        <td>           
        <input type="text" readonly name="newegg_var_attributes[{$count}][name]" class="req_attr" value="{$req_attr}" id="variant_{$count}">               
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
    <div id='variant_{$req_attr}' class="row">
    </div>               
    {/foreach}
{/if}