.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
xor cx, 113
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
btc bx, ax
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and dil, dil
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
and ecx, 46
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
