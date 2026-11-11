.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 37
mov rdi, 67
cmp sil, dil
test al, -99
lea cx, qword ptr [rdi + rdx + 100]
and al, bl
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
