.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
test ecx, -1843375753
jmp .bb_0.1
.bb_0.1:
bt dx, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
xor dil, -5
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
jmp .bb_0.2
.bb_0.2:
and bl, 68
test dl, 48
and ax, -12519
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
