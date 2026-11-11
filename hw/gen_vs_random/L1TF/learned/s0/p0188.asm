.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea dx, qword ptr [rax]
setb al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rax
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
sub al, -3
and cx, 127
bt ebx, ecx
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
sub al, 9
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
sbb cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
