.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 85
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], ebx
cmovb esi, eax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 16
cmovz esi, edi
xor sil, dl
and bl, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and cl, -26 # instrumentation
cmovnp rdx, rcx
cmovs cx, ax
or rcx, 93
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
test ebx, 245771113
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 58
xor rdx, 12
or al, -8
not al
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
