.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc cx, si
or ebx, -15
and al, -108 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
cmovz bx, bx
bt ebx, ecx
bts rax, rdi
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and cl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
bt rbx, rcx
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
xor dl, 34
btc dx, 146
test dl, sil
test bl, -114
jmp .bb_0.1
.bb_0.1:
and cl, -67 # instrumentation
cmovnle rdx, rcx
and dl, 59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 1
and eax, 461212071
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
