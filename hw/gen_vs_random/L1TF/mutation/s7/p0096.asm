.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
lea ebx, qword ptr [rax + rdx + 2427]
or rsi, rsi
not di
and rdi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdi]
setnle dil
inc eax
lea rax, qword ptr [rdi + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -103
and rdi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdi]
add bl, -22 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rsi]
adc dl, dl
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
lea dx, qword ptr [rsi + rcx + 45165]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rcx
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
