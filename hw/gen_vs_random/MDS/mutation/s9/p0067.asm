.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
test dl, sil
and al, -108 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
xor dl, 40
btc dx, 67
btc cx, si
bt ebx, ecx
cmovz bx, bx
or ebx, -15
test bl, -14
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
bts rax, rdi
bt rbx, rcx
and cl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 1
and cl, -67 # instrumentation
cmovnle rdx, rcx
and eax, 561041355
and dl, 59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
