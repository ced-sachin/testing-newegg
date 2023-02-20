{if isset($variantValues)}
{$count = 0}  
    {foreach $variantValues as $req_attr}
    <tr>
        <td>           
        <input type="text" readonly name="newegg_var_attributes[{$count}][name]" class="req_attr" value="{$req_attr}" id="var_{$count}">               
        </td>
        <td>
            <select>
                <option value="">--please select--</option>
            </select>
        </td>
    </tr>
    {$count = $count+1}                  
    {/foreach}
{/if}`