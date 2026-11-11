.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, cx
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
test cl, -86
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
or al, 54
btr dx, 47
or bl, cl
bts rax, rbx
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
test al, cl
and dil, dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rax, 627810357
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
or al, 25
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
