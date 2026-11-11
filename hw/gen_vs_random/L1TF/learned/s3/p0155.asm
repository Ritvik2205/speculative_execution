.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
and dl, -49
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and dl, dl
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rbx + rsi + 48821]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 9
sbb dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
