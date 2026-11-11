.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdx]
sub al, cl
lea rbx, qword ptr [rdi + rcx]
xor cl, dl
sub dil, -39
xor dil, sil
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi], 55
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
