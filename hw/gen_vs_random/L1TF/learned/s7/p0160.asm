.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, sil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
cmovnle rcx, rdx
adc bx, 36
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
add sil, -61
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 89
jmp .bb_0.2
.bb_0.2:
xor ax, -24879
test ecx, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
