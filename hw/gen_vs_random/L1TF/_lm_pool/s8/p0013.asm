.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnle rdi, rbx
or sil, -44
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and al, al
and rbx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rbx]
cmp al, 27
or edi, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
