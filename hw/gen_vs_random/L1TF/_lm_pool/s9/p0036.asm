.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -70
cmp rdx, 44
add dl, 22
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
sub sil, -99
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
xor sil, 64
cmp di, -78
jmp .bb_0.2
.bb_0.2:
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
