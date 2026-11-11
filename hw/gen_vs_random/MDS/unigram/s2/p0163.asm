.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rsi]
not cl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
not esi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
cmovo bx, bx
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
or al, dil
cmovns ebx, eax
and rsi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], cx
bts di, ax
test bl, dl
cmovl rcx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
bts dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
