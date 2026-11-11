.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 70
mul ax
adc eax, -79
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, 106 # instrumentation
cmovnp rdx, rax
xor edi, 7
dec rcx
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
setnz dl
btr esi, eax
jmp .bb_0.1
.bb_0.1:
inc cl
inc cl
cmovnp rsi, rcx
or di, bx
bts esi, 241
not dl
or dl, dil
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
