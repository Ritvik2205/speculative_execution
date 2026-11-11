.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, di
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
lea rcx, qword ptr [rdi + rdx + 67]
setb bl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, -92
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
sub cl, -21
lea dx, qword ptr [rax + rsi + 94]
lea dx, qword ptr [rdi + rcx]
test sil, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
