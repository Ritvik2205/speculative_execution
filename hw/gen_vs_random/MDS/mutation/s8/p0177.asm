.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz bx, bx
test dl, sil
test bl, -14
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
bt ebx, ecx
bts rax, rdi
bt rbx, rcx
xor dl, 34
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
or ebx, -104
btc cx, si
btc dx, 67
and cl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
and al, -108 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and dl, 59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
and bl, al
and cl, -67 # instrumentation
cmovnle rdx, rcx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 7
and eax, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
