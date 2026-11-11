.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
btc dx, ax
and al, 39 # instrumentation
cmovbe bx, ax
or bx, 1
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edi
btr rbx, 63
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
or si, 0b1000000000000000 # instrumentation
bsr ax, si
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
btc rdx, rax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rax]
and dl, -73
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rbx]
or al, -78
or ax, 30524
not rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
