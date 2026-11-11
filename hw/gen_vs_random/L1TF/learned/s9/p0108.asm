.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
test sil, 29
sub cl, -49
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
seto al
and dl, cl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdi]
setno dl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
