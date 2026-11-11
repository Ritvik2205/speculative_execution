.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
cmp bl, sil
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
sub cl, bl
lea rcx, qword ptr [rax]
or cl, sil
xor cl, cl
adc dil, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
