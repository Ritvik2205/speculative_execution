.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, 248
test esi, 1857129931
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and al, sil
or dl, dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 39
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and al, 35
test bl, -14
and cl, cl
xor al, dil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and cl, -71
and di, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
