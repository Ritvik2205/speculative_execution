.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
cmovnz di, di
btr rdi, 129
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
and dl, al
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
not cx
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
btr ax, di
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
xor al, 9
test cl, 54
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 24
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
xor dl, -19
or ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
