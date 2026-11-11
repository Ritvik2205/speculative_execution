.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dx, -112
or dil, 80
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdx, -98
xor rbx, -34
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
xor al, sil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
add dl, 47
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 4
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 40
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 27
test cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
