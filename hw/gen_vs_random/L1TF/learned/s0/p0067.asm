.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -48
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
and bl, 89
lea dx, qword ptr [rdi]
lea ebx, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
