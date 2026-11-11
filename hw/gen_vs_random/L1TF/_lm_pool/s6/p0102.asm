.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 104 # instrumentation
mov ecx, 94
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
add bl, dil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
cmp cx, 40
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
