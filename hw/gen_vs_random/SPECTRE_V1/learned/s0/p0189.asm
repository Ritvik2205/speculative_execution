.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
add sil, bl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
setns cl
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 95
jb .bb_0.4
jmp .exit_0
.bb_0.4:
sub dil, al
sbb ebx, 66
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
sub dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
