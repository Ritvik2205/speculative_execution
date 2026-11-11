.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], dx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 81
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
lea rbx, qword ptr [rsi + rax + 4]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
test dil, -116
sbb dl, al
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
