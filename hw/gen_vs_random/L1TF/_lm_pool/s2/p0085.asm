.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
sbb cl, -11
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 43
and di, 35
add di, 45
lea si, qword ptr [rdi + rcx + 88]
and rdi, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdi]
sbb cl, dl
sub sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
