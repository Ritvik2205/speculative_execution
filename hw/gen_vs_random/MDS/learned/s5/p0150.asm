.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, si
bts rsi, rdi
or al, sil
xor eax, 571592471
and rax, 41
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
and dil, dil
xor al, bl
test al, 91
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
test cl, al
jmp .bb_0.1
.bb_0.1:
cmovnp rdi, rsi
and eax, 366961170
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
cmovle rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
