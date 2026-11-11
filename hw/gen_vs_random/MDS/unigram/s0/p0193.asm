.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
and cl, -38 # instrumentation
cmovp rcx, rbx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
and bl, -66 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
cmovnb esi, esi
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
and al, -61 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 8
jmp .bb_0.1
.bb_0.1:
or si, 0b1000000000000000 # instrumentation
bsr si, si
xor cl, al
xor bl, al
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
and bl, -55 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
bt ecx, 89
xor eax, eax
cmovns esi, esi
cmovnle ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
