.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
movzx ebx, sil
cmovns rsi, rsi
xor cl, 89
add cl, 42 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
sub rdi, 100
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
add al, -34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
add dl, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
test dil, -126
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
