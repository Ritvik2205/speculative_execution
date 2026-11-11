.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmovno dx, cx
jmp .bb_0.2
.bb_0.2:
xor bl, cl
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and bl, sil
add cl, sil
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
test dl, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
