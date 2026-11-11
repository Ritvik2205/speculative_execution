.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rax + rdx + 2427]
inc eax
or rsi, rsi
lea rax, qword ptr [rdi + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -103
and rdi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdi]
lea dx, qword ptr [rsi + rcx + 45165]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rcx
add bl, -22 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 77
and rdi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
adc dl, dl
setnle dil
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
not di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
