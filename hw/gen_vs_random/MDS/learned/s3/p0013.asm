.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
test cl, 101
or rdx, -109
xor dil, bl
test bl, dil
jmp .bb_0.1
.bb_0.1:
test bl, -14
cmovnb rdi, rbx
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
