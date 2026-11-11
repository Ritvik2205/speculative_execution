.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
add rdx, 43
lea rdi, qword ptr [rsi + rbx + 23]
and cl, al
jmp .bb_0.1
.bb_0.1:
setle cl
add si, -5
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
test bl, 45
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
