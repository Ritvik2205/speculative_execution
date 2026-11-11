.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, 6
bts rax, 149
and bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
and dil, dl
cmovo dx, ax
cmovnbe edx, ecx
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -65
sub dl, bl
and si, di
and rbx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rbx]
add dl, dl
cmovs rax, rdx
adc sil, 75
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
xor cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
