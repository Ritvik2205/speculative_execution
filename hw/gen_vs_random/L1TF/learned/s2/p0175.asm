.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -2
cmovno ax, di
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test al, -32
jmp .bb_0.2
.bb_0.2:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
xor eax, -2123070438
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
cmp dl, -93
sub al, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
