.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
or ebx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
test dl, sil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
and al, -68
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
lea ax, qword ptr [rdx + rsi + 86]
add dil, al
or dl, dil
test sil, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
