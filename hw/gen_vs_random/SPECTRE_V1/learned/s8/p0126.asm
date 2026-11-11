.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
sub bl, sil
mov dl, bl
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
sub cl, dl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 47
and rdx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdx]
sub cl, al
bswap rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
