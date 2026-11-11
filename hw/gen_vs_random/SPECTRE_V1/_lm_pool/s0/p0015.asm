.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
adc al, -92
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and dil, -114
lea di, qword ptr [rsi + rbx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
cmovle rbx, rax
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
sub rdi, 2
not edi
sbb dl, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
