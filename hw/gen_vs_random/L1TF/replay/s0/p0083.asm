.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rsi + rcx + 45165]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
add bl, -22 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rsi]
not di
lea ebx, qword ptr [rax + rdx + 2427]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rcx
or rsi, rsi
adc dl, dl
setnle dil
inc eax
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 77
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdi]
lea rax, qword ptr [rdi + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
