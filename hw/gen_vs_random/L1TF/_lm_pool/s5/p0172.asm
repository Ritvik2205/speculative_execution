.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
xchg ebx, ecx
cmovle rsi, rdi
xor dl, 19
cwde
and rax, 1163013815
sub rdi, 72
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
or al, -57
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
or rdi, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
