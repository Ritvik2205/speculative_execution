.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dx
add bl, 68
or rsi, 35
xor cl, bl
jmp .bb_0.1
.bb_0.1:
or al, -57
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx], 18
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
sub cl, al
not cl
and bx, 73
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
