.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dil
add sil, -61
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
or bl, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 78
sbb bl, cl
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
xor cl, bl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
lea rsi, qword ptr [rbx + rsi + 67]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
xor dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
