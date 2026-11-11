.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 3
xor sil, 110
xor dil, cl
not dil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and cl, 79
and al, 84
jmp .bb_0.1
.bb_0.1:
xor cx, -18
test bl, -114
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and cl, dil
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 10
or dl, sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
