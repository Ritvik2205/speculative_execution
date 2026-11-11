.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, bl
lea dx, qword ptr [rbx + rdx + 56387]
cmovle si, dx
bswap rdi
and rdi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdi]
test rcx, -1420345926
adc sil, -77
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
sub al, dil
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 77
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
inc eax
lea cx, qword ptr [rcx + rbx + 11]
and rax, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rax]
add dl, 59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
