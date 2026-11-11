.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
xchg edx, edi
and dil, cl
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 83
btc esi, 13
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 71
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
sub cx, 20
imul eax
sbb bl, bl
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
and al, 33
lea rsi, qword ptr [rdi]
test dl, cl
and rdi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
