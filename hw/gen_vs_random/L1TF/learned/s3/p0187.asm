.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and bl, cl
jmp .bb_0.1
.bb_0.1:
or al, -57
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
jp .bb_0.5
jmp .exit_0
.bb_0.5:
test cl, dil
sbb di, 80
sbb ax, -4845
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
