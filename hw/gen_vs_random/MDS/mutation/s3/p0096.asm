.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo ax, dx
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
xor dl, al
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
cmovno rdi, rbx
cmovns bx, di
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
btr rcx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
cmovnz rbx, rsi
cmovnz ebx, ecx
and al, 49
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
test cl, dl
test rax, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
or rdx, -48
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
