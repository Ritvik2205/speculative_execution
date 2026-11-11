.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
cmovno rdi, rbx
sub al, cl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 9
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -58
jmp .bb_0.2
.bb_0.2:
cmovl rcx, rcx
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
add dil, 104 # instrumentation
sbb rdi, 53
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rax, 1163013815
test dx, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
