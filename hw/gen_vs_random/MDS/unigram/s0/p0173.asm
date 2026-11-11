.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rdx, 46
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rbx
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
bts di, cx
or bx, 92
and cx, -8
and al, 106
btc eax, esi
xor cx, -18
jmp .bb_0.1
.bb_0.1:
and bl, 56 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
or dl, al
cmovnb rdx, rsi
and ax, -16061
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
