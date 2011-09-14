<div class="slide">
	<h2>CFDocument</h2>
	<p>Creates PDF output from a text block containing CFML and HTML</p>
	<p>Support standards: HTML 4.01, CSS1 & CSS2</p>
	<div class="section" id="WSc3ff6d0ea77859461172e0811cbec22c24-7c21__WSc3ff6d0ea77859461172e0811cbec22c24-7447"><a name="WSc3ff6d0ea77859461172e0811cbec22c24-7c21__WSc3ff6d0ea77859461172e0811cbec22c24-7447"><!-- --></a><h4 class="sectiontitle">Supported CSS styles</h4><p>The <samp class="codeph">cfdocument</samp> tag supports

the following CSS styles:</p>



<div class="tablenoborder"><table border="1" cellpadding="4" cellspacing="0"><tbody><tr><td valign="top" width="NaN%"><p>background </p>

</td>

<td valign="top" width="NaN%"><p>background-attachment </p>

</td>

<td valign="top" width="NaN%"><p>background-color </p>

</td>

<td valign="top" width="NaN%"><p>background-image</p>

</td>

</tr>

<tr><td valign="top" width="NaN%"><p>background-position </p>

</td>

<td valign="top" width="NaN%"><p>background-repeat</p>

</td>

<td valign="top" width="NaN%"><p>border</p>

</td>

<td valign="top" width="NaN%"><p>border-bottom</p>

</td>

</tr>

<tr><td valign="top" width="NaN%"><p>border-bottom-color </p>

</td>

<td valign="top" width="NaN%"><p>border-bottom-style (solid border only)</p>

</td>

<td valign="top" width="NaN%"><p>border-bottom-width</p>

</td>

<td valign="top" width="NaN%"><p>border-color</p>

</td>

</tr>

<tr><td valign="top" width="NaN%"><p>border-left </p>

</td>

<td valign="top" width="NaN%"><p>border-left-color</p>

</td>

<td valign="top" width="NaN%"><p>border-left-style (solid border only)</p>

</td>

<td valign="top" width="NaN%"><p>border-left-width</p>

</td>

</tr>

<tr><td valign="top" width="NaN%"><p>border-right</p>

</td>

<td valign="top" width="NaN%"><p>border-right-color</p>

</td>

<td valign="top" width="NaN%"><p>border-right-style (solid border only)</p>

</td>

<td valign="top" width="NaN%"><p>border-right-width</p>

</td>

</tr>

<tr><td valign="top" width="NaN%"><p>border-spacing</p>

</td>

<td valign="top" width="NaN%"><p>border-style (solid border only)</p>

</td>

<td valign="top" width="NaN%"><p>border-top</p>

</td>

<td valign="top" width="NaN%"><p>border-top-color</p>

</td>

</tr>

<tr><td valign="top" width="NaN%"><p>border-top-style (solid border only)</p>

</td>

<td valign="top" width="NaN%"><p>border-top-width</p>

</td>

<td valign="top" width="NaN%"><p>border-width</p>

</td>

<td valign="top" width="NaN%"><p>bottom</p>

</td>

</tr>

<tr><td valign="top" width="NaN%"><p>clear</p>

</td>

<td valign="top" width="NaN%"><p>clip</p>

</td>

<td valign="top" width="NaN%"><p>color</p>

</td>

<td valign="top" width="NaN%"><p>content (strings, counters only)</p>

</td>

</tr>

<tr><td valign="top" width="NaN%"><p>counter-increment</p>

</td>

<td valign="top" width="NaN%"><p>counter-reset</p>

</td>

<td valign="top" width="NaN%"><p>cursor</p>

</td>

<td valign="top" width="NaN%"><p>display</p>

</td>

</tr>

<tr><td valign="top" width="NaN%"><p>float</p>

</td>

<td valign="top" width="NaN%"><p>font</p>

</td>

<td valign="top" width="NaN%"><p>font-family</p>

</td>

<td valign="top" width="NaN%"><p>font-size</p>

</td>

</tr>

<tr><td valign="top" width="NaN%"><p>font-style</p>

</td>

<td valign="top" width="NaN%"><p>font-weight</p>

</td>

<td valign="top" width="NaN%"><p>height</p>

</td>

<td valign="top" width="NaN%"><p>left</p>

</td>

</tr>

<tr><td valign="top" width="NaN%"><p>letter-spacing</p>

</td>

<td valign="top" width="NaN%"><p>line-height</p>

</td>

<td valign="top" width="NaN%"><p>list-style-type</p>

</td>

<td valign="top" width="NaN%"><p>margin</p>

</td>

</tr>

<tr><td valign="top" width="NaN%"><p>margin-bottom</p>

</td>

<td valign="top" width="NaN%"><p>margin-left</p>

</td>

<td valign="top" width="NaN%"><p>margin-right</p>

</td>

<td valign="top" width="NaN%"><p>margin-top</p>

</td>

</tr>

<tr><td valign="top" width="NaN%"><p>outline</p>

</td>

<td valign="top" width="NaN%"><p>outline-color</p>

</td>

<td valign="top" width="NaN%"><p>outline-style (solid, dotted, dashed only)</p>

</td>

<td valign="top" width="NaN%"><p>outline-width</p>

</td>

</tr>

<tr><td valign="top" width="NaN%"><p>padding</p>

</td>

<td valign="top" width="NaN%"><p>padding-bottom</p>

</td>

<td valign="top" width="NaN%"><p>padding-left</p>

</td>

<td valign="top" width="NaN%"><p>padding-right</p>

</td>

</tr>

<tr><td valign="top" width="NaN%"><p>padding-top</p>

</td>

<td valign="top" width="NaN%"><p>page-break-after</p>

</td>

<td valign="top" width="NaN%"><p>page-break-before</p>

</td>

<td valign="top" width="NaN%"><p>page-break-inside</p>

</td>

</tr>

<tr><td valign="top" width="NaN%"><p>position</p>

</td>

<td valign="top" width="NaN%"><p>right</p>

</td>

<td valign="top" width="NaN%"><p>text-align (left, right, and center)</p>

</td>

<td valign="top" width="NaN%"><p>text-decoration</p>

</td>

</tr>

<tr><td valign="top" width="NaN%"><p>text-indent</p>

</td>

<td valign="top" width="NaN%"><p>top</p>

</td>

<td valign="top" width="NaN%"><p>unicode-bidi</p>

</td>

<td valign="top" width="NaN%"><p>vertical-align</p>

</td>

</tr>

<tr><td valign="top" width="NaN%"><p>visibility</p>

</td>

<td valign="top" width="NaN%"><p>white space (normal, nowrap only)</p>

</td>

<td valign="top" width="NaN%"><p>width</p>

</td>

<td valign="top" width="NaN%"><p>z-index</p>

</td>

</tr>

</tbody>

</table>

</div>

</div>
</div>