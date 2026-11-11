.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rcx]
cmovp si, dx
cmovnbe rax, rbx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 91
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
or rsi, 98
cmovnz esi, ecx
cmovp cx, dx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and eax, -574348013
xor al, 99
test edi, edx
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 38
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
test cl, -86
bts di, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
