<b>Select Required Variant Attributes</b>

{if isset($variantAttributes)}
{$count = 0}  
    {foreach $variantAttributes as $req_attr}
    <tr>
        <td>           
        <input type="text" readonly name="newegg_var_attributes[{$count}][name]" class="req_attr" value="{$req_attr}" id="variant_{$count}">               
        </td>
        <td>
            <select name="newegg_attributes[{$count}][presta_attr_code]" class="newegg-attr-select" onchange="mapVariant(variant_{$count},'{$category}', '{$subCatId}', this)">
                <option value="">--please select--</option>
               {* <option value="--Set Default Value--">--Set Default Value--</option>
                <optgroup value="0" label="System (Default)">
                    {foreach $storeDefaultAttributes as $key => $system_attribute}
                            <option value="system-{$key|escape:'htmlall':'UTF-8'}">{$system_attribute|escape:'htmlall':'UTF-8'}</option>
                    {/foreach}                    
                </optgroup> *}
                <optgroup value="0" label="Attributes(Variants)">
                    {foreach $storeAttributes as $store_attribute}
                            <option value="attribute-{$store_attribute['id_attribute']|escape:'htmlall':'UTF-8'}">{$store_attribute['name']|escape:'htmlall':'UTF-8'}</option>
                    {/foreach}
                </optgroup>
            </select>
        </td>
</tr>   {$count = $count+1}   
    <tr id='variant_{$req_attr}'></tr>                 
    {/foreach}
{/if}