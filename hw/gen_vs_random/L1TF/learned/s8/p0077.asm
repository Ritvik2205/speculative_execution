.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -104 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
xor cl, 89
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
or al, -5
cwde
or rdx, 11
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 0
bt ebx, eax
not dl
lea rcx, qword ptr [rax + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
