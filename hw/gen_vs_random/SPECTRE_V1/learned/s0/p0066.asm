.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, al
sub dl, dil
test rax, rdx
mov dl, cl
cmp al, cl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
dec bl
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
lea dx, qword ptr [rsi]
lea ebx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
