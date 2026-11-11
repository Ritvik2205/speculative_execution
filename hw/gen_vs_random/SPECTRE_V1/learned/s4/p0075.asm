.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
cmovnle rcx, rsi
lea bx, qword ptr [rax]
setns al
cmp al, dil
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
not ebx
lea rbx, qword ptr [rdi + rcx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
sub cl, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
