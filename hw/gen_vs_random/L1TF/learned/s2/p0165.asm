.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 7
xor al, al
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
or rax, -443578116
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
or al, -2
and dl, al
jmp .bb_0.1
.bb_0.1:
setp cl
sbb dl, dil
imul di, si
sub rax, 1806572419
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
