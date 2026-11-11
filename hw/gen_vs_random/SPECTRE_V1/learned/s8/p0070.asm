.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
sub dl, dil
or cx, 27
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
sub cl, al
jmp .bb_0.3
.bb_0.3:
setle al
cmp al, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
