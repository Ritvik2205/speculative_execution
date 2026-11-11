.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
and al, -54
or al, 19
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
adc al, -82
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rcx], 98
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
xor ax, 913
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
