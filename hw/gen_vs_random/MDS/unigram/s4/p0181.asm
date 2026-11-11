.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rax, 77
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and ecx, esi
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
and ax, 29207
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
bt rsi, rdi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
test dl, al
jmp .bb_0.1
.bb_0.1:
not sil
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
xor bl, dl
test esi, 1857129931
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
and al, 84 # instrumentation
cmovbe ax, bx
cmovz di, si
and rdx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdx]
cmovo ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
