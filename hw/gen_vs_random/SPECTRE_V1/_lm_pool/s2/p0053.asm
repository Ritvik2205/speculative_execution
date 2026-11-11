.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
test al, -75
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
inc cl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
lea rax, qword ptr [rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rdx + rsi + 9]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
sub sil, dil
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
