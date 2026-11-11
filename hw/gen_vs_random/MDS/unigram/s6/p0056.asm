.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 87
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
cmovz esi, esi
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 35
and dl, 53 # instrumentation
cmovnl rdx, rdx
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 3
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
test dl, 48
btr esi, esi
jmp .bb_0.1
.bb_0.1:
cmovnp dx, si
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ecx
and al, 42 # instrumentation
cmovz ebx, edi
xor rsi, -117
and dl, al
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
test esi, ebx
or dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
