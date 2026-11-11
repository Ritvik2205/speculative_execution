.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 60 # instrumentation
cmovno esi, esi
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and bl, -26 # instrumentation
cmovnp rdi, rbx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and bl, -30 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
cmovle ecx, eax
xor dil, dl
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
bts rdi, rdi
and al, dil
xor sil, 23
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
and al, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
cmovz rdx, rax
or ax, 6575
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
xor ax, 24729
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
and al, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
