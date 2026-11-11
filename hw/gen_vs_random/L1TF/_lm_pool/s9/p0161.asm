.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or dil, bl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 43
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -22
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
sbb dil, 88
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
