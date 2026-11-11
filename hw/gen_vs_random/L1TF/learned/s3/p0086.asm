.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 84
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
xor dl, 9
add al, dil
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
imul di, ax
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
