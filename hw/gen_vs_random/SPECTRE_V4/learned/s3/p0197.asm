.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -30
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and ax, -14374
imul bx, dx
and al, 92
cmp bl, -79
and cl, 32
dec sil
dec cl
mov sil, cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
xor cl, dil
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
