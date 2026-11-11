.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], -41
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
xor al, dil
or bl, bl
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 20
or rbx, -77
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
test sil, dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
test eax, ecx
btr ax, bx
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
btc esi, 199
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx
and cl, -15 # instrumentation
cmovnp cx, cx
and cl, 114 # instrumentation
cmovz bx, dx
or cx, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
