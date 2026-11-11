.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 100
cmp rdi, 77
cmp bl, cl
test sil, -101
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 98
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 25
xor si, 23
movsx ax, dil
sbb dil, 9
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rsi]
test sil, dl
adc dil, 5
movzx ebx, dil
xor edi, 65
add cl, -29 # instrumentation
lea rax, qword ptr [rdi + rdi + 93]
lea rbx, qword ptr [rdx + rax + 93]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
