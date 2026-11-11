.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 40 # instrumentation
btc rdi, rdi
sbb bl, sil
setno bl
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
test rax, -1576813424
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -380598914
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 35
add ecx, 23
movsx edx, cl
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rbx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
