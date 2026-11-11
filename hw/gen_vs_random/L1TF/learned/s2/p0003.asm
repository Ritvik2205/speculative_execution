.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 38
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
sub dx, cx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and al, -68
sub al, sil
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 22
or al, -57
mov al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
