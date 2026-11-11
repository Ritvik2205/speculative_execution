.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, cl
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor cl, dil
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], bl
and al, -68
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
add al, -102
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
