.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
xor al, al
and dl, al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
or cl, 119
and al, -8
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
or bl, -54
test cl, dil
or dil, dl
test sil, -55
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rsi
jmp .bb_0.1
.bb_0.1:
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
