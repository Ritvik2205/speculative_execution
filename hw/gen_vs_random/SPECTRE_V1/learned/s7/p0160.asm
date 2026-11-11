.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, sil
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov al, dl
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb edx, 105
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
adc bx, 38
sbb bl, dl
sub al, cl
add sil, -68
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
add al, al
lea ax, qword ptr [rdx + rcx]
jns .bb_0.3
jmp .exit_0
.bb_0.3:
lea ax, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
