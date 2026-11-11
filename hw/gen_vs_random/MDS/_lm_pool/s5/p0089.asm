.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
or dl, bl
and rax, -2039117613
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test dl, -119
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
xor al, -4
bt si, ax
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 77
xor rcx, 71
xor dil, -70
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
test esi, 1857129931
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
