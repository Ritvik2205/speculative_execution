.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, 933895314
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
lea rdx, qword ptr [rdx + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
cmp dl, 119
and rcx, rdi
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rsi
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
xchg dil, dil
jo .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, dl
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], ecx
add ecx, 41
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
