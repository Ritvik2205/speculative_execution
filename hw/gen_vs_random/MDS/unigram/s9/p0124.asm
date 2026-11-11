.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not eax
and bx, cx
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdi]
bt bx, cx
and rsi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rsi]
and rax, rax
cmovnz rcx, rbx
or bl, 127
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 94
and bl, 120 # instrumentation
cmovnle esi, esi
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
cmovl rsi, rdx
or si, -12
and rdi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
