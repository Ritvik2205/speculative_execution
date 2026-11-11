.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -1185
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], esi
not dx
sbb bx, di
sub rdi, rax
and rdi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdi]
cmovs dx, cx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dl, sil
and cl, bl
btc bx, cx
cmp dl, 71
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rbx
lea ecx, qword ptr [rcx + rbx]
bt rax, rax
sub rax, -1628299544
setp cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
