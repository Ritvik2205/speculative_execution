.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rsi
add al, -80
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rsi
lea rcx, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], di
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 36
test sil, 29
jmp .bb_0.1
.bb_0.1:
lea rsi, qword ptr [rax + rdi + 4]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdi]
add cl, -98 # instrumentation
setp al
and edx, ecx
add dil, -5 # instrumentation
adc bl, dil
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
test di, 19
sbb dil, dil
add sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
