.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rcx]
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
adc bl, cl
cmovnbe dx, dx
inc cl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 47
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 51
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rdi], ax
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
setnb al
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 99
and rbx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rbx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
