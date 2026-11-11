.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
cmovz bx, bx
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
test bl, -9
btc cx, si
xor dl, 8
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
bt ebx, ecx
btc dx, 146
and al, -108 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
test dl, sil
bt rbx, rcx
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
or ebx, -104
bts rax, rdi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 1
and dl, 59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
and eax, 366961170
and bl, al
and cl, -67 # instrumentation
cmovnle rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
