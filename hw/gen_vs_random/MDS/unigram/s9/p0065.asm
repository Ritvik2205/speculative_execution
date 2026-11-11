.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr edx, edi
xor dil, sil
btr ax, si
or si, si
and rsi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rsi]
cmovl rdi, rdi
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
cmovb rdi, rcx
and al, -8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
test ebx, -961564216
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
not eax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 117
cmovnbe ebx, edx
cmovnp ax, si
cmovb rdx, rbx
btr dx, ax
and bl, -82 # instrumentation
cmovz esi, eax
cmovz rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
