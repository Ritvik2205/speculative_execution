.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
xor dl, cl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
lea rsi, qword ptr [rcx + rbx]
sub cl, bl
add cl, -127
cmp dl, dil
cmovle rax, rsi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
