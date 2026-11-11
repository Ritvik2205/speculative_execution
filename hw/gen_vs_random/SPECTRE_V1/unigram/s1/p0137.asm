.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ebx, eax
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 3
btc edx, 65
bt eax, 127
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
inc bl
add esi, 81
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rsi + rax + 36]
cmovs bx, si
test edx, 1380346728
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 33
add bl, -52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -4
and rdi, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
